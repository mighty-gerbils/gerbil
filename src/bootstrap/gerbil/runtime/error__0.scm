(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1701718632)
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
      (lambda _$args10454_
        (apply make-class-instance Exception::t _$args10454_)))
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
      (lambda _$args10451_
        (apply make-class-instance StackTrace::t _$args10451_)))
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
      (let ((__tmp10474
             (let ((__tmp10475
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp10475))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp10474
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args10448_ (apply make-class-instance Error::t _$args10448_)))
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
      (let ((__tmp10476
             (let ((__tmp10477
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp10477))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp10476
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args10445_
        (apply make-class-instance RuntimeException::t _$args10445_)))
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
      (lambda (_exn10440_ _continue10441_)
        (let ((_exn10443_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn10440_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn10443_ _continue10441_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn10436_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn10436_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn10436_ 'continuation))
                '#!void
                (let ((__tmp10478
                       (lambda (_cont10438_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn10436_
                            'continuation
                            _cont10438_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp10478)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn10436_))))
    (define error
      (lambda (_message10433_ . _irritants10434_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message10433_
                  'irritants:
                  _irritants10434_)))))
    (define with-exception-handler
      (lambda (_handler10426_ _thunk10427_)
        (if (let () (declare (not safe)) (procedure? _handler10426_))
            '#!void
            (raise (let ((__tmp10479
                          (let ()
                            (declare (not safe))
                            (cons _handler10426_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp10479))))
        (if (let () (declare (not safe)) (procedure? _thunk10427_))
            '#!void
            (raise (let ((__tmp10480
                          (let ()
                            (declare (not safe))
                            (cons _thunk10427_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp10480))))
        (let ((__tmp10481
               (lambda (_exn10429_)
                 (let ((_exn10431_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn10429_))))
                   (_handler10426_ _exn10431_)))))
          (declare (not safe))
          (##with-exception-handler __tmp10481 _thunk10427_))))
    (define with-catch
      (lambda (_handler10419_ _thunk10420_)
        (if (let () (declare (not safe)) (procedure? _handler10419_))
            '#!void
            (raise (let ((__tmp10482
                          (let ()
                            (declare (not safe))
                            (cons _handler10419_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp10482))))
        (if (let () (declare (not safe)) (procedure? _thunk10420_))
            '#!void
            (raise (let ((__tmp10483
                          (let ()
                            (declare (not safe))
                            (cons _thunk10420_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp10483))))
        (let ((__tmp10484
               (lambda (_cont10422_)
                 (with-exception-handler
                  (lambda (_exn10424_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont10422_
                       _handler10419_
                       _exn10424_)))
                  _thunk10420_))))
          (declare (not safe))
          (##continuation-capture __tmp10484))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn10410_)
        (if (or (heap-overflow-exception? _exn10410_)
                (stack-overflow-exception? _exn10410_))
            _exn10410_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn10410_))
                _exn10410_
                (if (macro-exception? _exn10410_)
                    (let ((_rte10415_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn10410_))))
                      (let ((__tmp10485
                             (lambda (_cont10417_)
                               (let ((__tmp10486
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont10417_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte10415_
                                  'continuation
                                  __tmp10486)))))
                        (declare (not safe))
                        (##continuation-capture __tmp10485))
                      _rte10415_)
                    _exn10410_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj10405_)
        (let ((_$e10407_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj10405_))))
          (if _$e10407_ _$e10407_ (error-exception? _obj10405_)))))
    (define error-message
      (lambda (_obj10403_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj10403_))
            (let () (declare (not safe)) (slot-ref _obj10403_ 'message))
            (if (error-exception? _obj10403_)
                (error-exception-message _obj10403_)
                '#f))))
    (define error-irritants
      (lambda (_obj10401_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj10401_))
            (let () (declare (not safe)) (slot-ref _obj10401_ 'irritants))
            (if (error-exception? _obj10401_)
                (error-exception-parameters _obj10401_)
                '#f))))
    (define error-trace
      (lambda (_obj10399_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj10399_))
            (let () (declare (not safe)) (slot-ref _obj10399_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e10381_ _port10382_)
        (let ((_$e10384_
               (let ()
                 (declare (not safe))
                 (method-ref _e10381_ 'display-exception))))
          (if _$e10384_
              ((lambda (_f10387_) (_f10387_ _e10381_ _port10382_)) _$e10384_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e10381_ _port10382_))))))
    (define display-exception__0
      (lambda (_e10392_)
        (let ((_port10394_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e10392_ _port10394_))))
    (define display-exception
      (lambda _g10488_
        (let ((_g10487_ (let () (declare (not safe)) (##length _g10488_))))
          (cond ((let () (declare (not safe)) (##fx= _g10487_ 1))
                 (apply (lambda (_e10392_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e10392_)))
                        _g10488_))
                ((let () (declare (not safe)) (##fx= _g10487_ 2))
                 (apply (lambda (_e10396_ _port10397_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e10396_ _port10397_)))
                        _g10488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g10488_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self10370_ _message10371_ . _rest10372_)
        (let ((_message10378_
               (if (let () (declare (not safe)) (string? _message10371_))
                   _message10371_
                   (call-with-output-string
                    '""
                    (lambda (_g1037310375_)
                      (display _message10371_ _g1037310375_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self10370_ 'message _message10378_))
          (apply class-instance-init! _self10370_ _rest10372_))))
    (define Error:::init!::specialize
      (lambda (__t10456)
        (let ((__message10457
               (let ((__tmp10458
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10456 'message))))
                 (if __tmp10458
                     (let () (declare (not safe)) (##fx+ __tmp10458 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self10370_ _message10371_ . _rest10372_)
            (let ((_message10378_
                   (if (let () (declare (not safe)) (string? _message10371_))
                       _message10371_
                       (call-with-output-string
                        '""
                        (lambda (_g1037310375_)
                          (display _message10371_ _g1037310375_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self10370_
                 _message10378_
                 __message10457
                 __t10456
                 '#f))
              (apply class-instance-init! _self10370_ _rest10372_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define Error::display-exception
      (lambda (_self10228_ _port10229_)
        (let ((_tmp-port10231_ (open-output-string))
              (_display-error-newline10232_
               (> (output-port-column _port10229_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port10231_))
          (let ((__tmp10489
                 (lambda ()
                   (if _display-error-newline10232_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e10235_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self10228_ 'where))))
                     (if _$e10235_ (display _$e10235_) (display '"?")))
                   (let ((__tmp10490
                          (let ((__tmp10491
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self10228_))))
                            (declare (not safe))
                            (##type-name __tmp10491))))
                     (declare (not safe))
                     (display* '" [" __tmp10490 '"]: "))
                   (let ((__tmp10492
                          (let ()
                            (declare (not safe))
                            (slot-ref _self10228_ 'message))))
                     (declare (not safe))
                     (displayln __tmp10492))
                   (let ((_irritants10238_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self10228_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants10238_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj10240_)
                              (write _obj10240_)
                              (write-char '#\space))
                            _irritants10238_)
                           (newline))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance? StackTrace::t _self10228_))
                       (let ((_cont1024110243_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self10228_ 'continuation))))
                         (if _cont1024110243_
                             (let ((_cont10246_ _cont1024110243_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont10246_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp10489
             current-output-port
             _tmp-port10231_))
          (let ((__tmp10493 (get-output-string _tmp-port10231_)))
            (declare (not safe))
            (##write-string __tmp10493 _port10229_)))))
    (define Error::display-exception::specialize
      (lambda (__t10459)
        (let ((__where10460
               (let ((__tmp10464
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10459 'where))))
                 (if __tmp10464
                     (let () (declare (not safe)) (##fx+ __tmp10464 '1))
                     (error '"Unknown slot" 'where))))
              (__message10461
               (let ((__tmp10465
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10459 'message))))
                 (if __tmp10465
                     (let () (declare (not safe)) (##fx+ __tmp10465 '1))
                     (error '"Unknown slot" 'message))))
              (__continuation10462
               (let ((__tmp10466
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10459 'continuation))))
                 (if __tmp10466
                     (let () (declare (not safe)) (##fx+ __tmp10466 '1))
                     (error '"Unknown slot" 'continuation))))
              (__irritants10463
               (let ((__tmp10467
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10459 'irritants))))
                 (if __tmp10467
                     (let () (declare (not safe)) (##fx+ __tmp10467 '1))
                     (error '"Unknown slot" 'irritants))))
              (__class10468
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t10459))))
          (lambda (_self10228_ _port10229_)
            (let ((_tmp-port10231_ (open-output-string))
                  (_display-error-newline10232_
                   (> (output-port-column _port10229_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port10231_))
              (let ((__tmp10494
                     (lambda ()
                       (if _display-error-newline10232_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e10235_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self10228_
                                 __where10460
                                 __t10459
                                 '#f))))
                         (if _$e10235_ (display _$e10235_) (display '"?")))
                       (let ((__tmp10495
                              (let ((__tmp10496
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self10228_))))
                                (declare (not safe))
                                (##type-name __tmp10496))))
                         (declare (not safe))
                         (display* '" [" __tmp10495 '"]: "))
                       (let ((__tmp10497
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self10228_
                                 __message10461
                                 __t10459
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp10497))
                       (let ((_irritants10238_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self10228_
                                 __irritants10463
                                 __t10459
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants10238_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj10240_)
                                  (write _obj10240_)
                                  (write-char '#\space))
                                _irritants10238_)
                               (newline))))
                       (if __class10468
                           (let ((_cont1024110243_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self10228_
                                     __continuation10462
                                     __t10459
                                     '#f))))
                             (if _cont1024110243_
                                 (let ((_cont10246_ _cont1024110243_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont10246_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp10494
                 current-output-port
                 _tmp-port10231_))
              (let ((__tmp10498 (get-output-string _tmp-port10231_)))
                (declare (not safe))
                (##write-string __tmp10498 _port10229_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self10095_ _port10096_)
        (let ((_tmp-port10098_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port10098_))
          (let ((__tmp10499
                 (let ()
                   (declare (not safe))
                   (slot-ref _self10095_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp10499 _tmp-port10098_))
          (let ((_cont1009910101_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self10095_ 'continuation))))
            (if _cont1009910101_
                (let ((_cont10104_ _cont1009910101_))
                  (display '"--- continuation backtrace:" _tmp-port10098_)
                  (newline _tmp-port10098_)
                  (display-continuation-backtrace _cont10104_ _tmp-port10098_))
                '#f))
          (let ((__tmp10500 (get-output-string _tmp-port10098_)))
            (declare (not safe))
            (##write-string __tmp10500 _port10096_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t10469)
        (let ((__exception10470
               (let ((__tmp10472
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10469 'exception))))
                 (if __tmp10472
                     (let () (declare (not safe)) (##fx+ __tmp10472 '1))
                     (error '"Unknown slot" 'exception))))
              (__continuation10471
               (let ((__tmp10473
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t10469 'continuation))))
                 (if __tmp10473
                     (let () (declare (not safe)) (##fx+ __tmp10473 '1))
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self10095_ _port10096_)
            (let ((_tmp-port10098_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port10098_))
              (let ((__tmp10501
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self10095_
                        __exception10470
                        __t10469
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp10501 _tmp-port10098_))
              (let ((_cont1009910101_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self10095_
                        __continuation10471
                        __t10469
                        '#f))))
                (if _cont1009910101_
                    (let ((_cont10104_ _cont1009910101_))
                      (display '"--- continuation backtrace:" _tmp-port10098_)
                      (newline _tmp-port10098_)
                      (display-continuation-backtrace
                       _cont10104_
                       _tmp-port10098_))
                    '#f))
              (let ((__tmp10502 (get-output-string _tmp-port10098_)))
                (declare (not safe))
                (##write-string __tmp10502 _port10096_)))))))
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
      (lambda (_port9967_)
        (if (macro-character-port? _port9967_)
            (let ((_old-width9969_
                   (macro-character-port-output-width _port9967_)))
              (macro-character-port-output-width-set!
               _port9967_
               (lambda (_port9971_) '256))
              _old-width9969_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port9964_ _old-width9965_)
        (if (macro-character-port? _port9964_)
            (macro-character-port-output-width-set! _port9964_ _old-width9965_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e9962_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e9962_))))
    (define abandoned-mutex-exception?
      (lambda (_exn9956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9956_))
            (let ((_e9959_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9956_ 'exception))))
              (macro-abandoned-mutex-exception? _e9959_))
            (macro-abandoned-mutex-exception? _exn9956_))))
    (define cfun-conversion-exception?
      (lambda (_exn9952_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9952_))
            (let ((_e9954_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9952_ 'exception))))
              (macro-cfun-conversion-exception? _e9954_))
            (macro-cfun-conversion-exception? _exn9952_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn9948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9948_))
            (let ((_e9950_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9948_ 'exception))))
              (if (macro-cfun-conversion-exception? _e9950_)
                  (macro-cfun-conversion-exception-arguments _e9950_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10504
                                (let ()
                                  (declare (not safe))
                                  (cons _e9950_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp10504)))))
            (if (macro-cfun-conversion-exception? _exn9948_)
                (macro-cfun-conversion-exception-arguments _exn9948_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10503
                              (let ()
                                (declare (not safe))
                                (cons _exn9948_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp10503)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn9944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9944_))
            (let ((_e9946_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9944_ 'exception))))
              (if (macro-cfun-conversion-exception? _e9946_)
                  (macro-cfun-conversion-exception-code _e9946_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10506
                                (let ()
                                  (declare (not safe))
                                  (cons _e9946_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp10506)))))
            (if (macro-cfun-conversion-exception? _exn9944_)
                (macro-cfun-conversion-exception-code _exn9944_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10505
                              (let ()
                                (declare (not safe))
                                (cons _exn9944_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp10505)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn9940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9940_))
            (let ((_e9942_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9940_ 'exception))))
              (if (macro-cfun-conversion-exception? _e9942_)
                  (macro-cfun-conversion-exception-message _e9942_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10508
                                (let ()
                                  (declare (not safe))
                                  (cons _e9942_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp10508)))))
            (if (macro-cfun-conversion-exception? _exn9940_)
                (macro-cfun-conversion-exception-message _exn9940_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10507
                              (let ()
                                (declare (not safe))
                                (cons _exn9940_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp10507)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn9934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9934_))
            (let ((_e9937_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9934_ 'exception))))
              (if (macro-cfun-conversion-exception? _e9937_)
                  (macro-cfun-conversion-exception-procedure _e9937_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp10510
                                (let ()
                                  (declare (not safe))
                                  (cons _e9937_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp10510)))))
            (if (macro-cfun-conversion-exception? _exn9934_)
                (macro-cfun-conversion-exception-procedure _exn9934_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp10509
                              (let ()
                                (declare (not safe))
                                (cons _exn9934_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp10509)))))))
    (define datum-parsing-exception?
      (lambda (_exn9930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9930_))
            (let ((_e9932_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9930_ 'exception))))
              (macro-datum-parsing-exception? _e9932_))
            (macro-datum-parsing-exception? _exn9930_))))
    (define datum-parsing-exception-kind
      (lambda (_exn9926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9926_))
            (let ((_e9928_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9926_ 'exception))))
              (if (macro-datum-parsing-exception? _e9928_)
                  (macro-datum-parsing-exception-kind _e9928_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp10512
                                (let ()
                                  (declare (not safe))
                                  (cons _e9928_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp10512)))))
            (if (macro-datum-parsing-exception? _exn9926_)
                (macro-datum-parsing-exception-kind _exn9926_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp10511
                              (let ()
                                (declare (not safe))
                                (cons _exn9926_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp10511)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn9922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9922_))
            (let ((_e9924_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9922_ 'exception))))
              (if (macro-datum-parsing-exception? _e9924_)
                  (macro-datum-parsing-exception-parameters _e9924_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp10514
                                (let ()
                                  (declare (not safe))
                                  (cons _e9924_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp10514)))))
            (if (macro-datum-parsing-exception? _exn9922_)
                (macro-datum-parsing-exception-parameters _exn9922_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp10513
                              (let ()
                                (declare (not safe))
                                (cons _exn9922_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp10513)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn9916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9916_))
            (let ((_e9919_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9916_ 'exception))))
              (if (macro-datum-parsing-exception? _e9919_)
                  (macro-datum-parsing-exception-readenv _e9919_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp10516
                                (let ()
                                  (declare (not safe))
                                  (cons _e9919_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp10516)))))
            (if (macro-datum-parsing-exception? _exn9916_)
                (macro-datum-parsing-exception-readenv _exn9916_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp10515
                              (let ()
                                (declare (not safe))
                                (cons _exn9916_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp10515)))))))
    (define deadlock-exception?
      (lambda (_exn9910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9910_))
            (let ((_e9913_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9910_ 'exception))))
              (macro-deadlock-exception? _e9913_))
            (macro-deadlock-exception? _exn9910_))))
    (define divide-by-zero-exception?
      (lambda (_exn9906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9906_))
            (let ((_e9908_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9906_ 'exception))))
              (macro-divide-by-zero-exception? _e9908_))
            (macro-divide-by-zero-exception? _exn9906_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn9902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9902_))
            (let ((_e9904_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9902_ 'exception))))
              (if (macro-divide-by-zero-exception? _e9904_)
                  (macro-divide-by-zero-exception-arguments _e9904_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp10518
                                (let ()
                                  (declare (not safe))
                                  (cons _e9904_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp10518)))))
            (if (macro-divide-by-zero-exception? _exn9902_)
                (macro-divide-by-zero-exception-arguments _exn9902_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp10517
                              (let ()
                                (declare (not safe))
                                (cons _exn9902_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp10517)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn9896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9896_))
            (let ((_e9899_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9896_ 'exception))))
              (if (macro-divide-by-zero-exception? _e9899_)
                  (macro-divide-by-zero-exception-procedure _e9899_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp10520
                                (let ()
                                  (declare (not safe))
                                  (cons _e9899_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp10520)))))
            (if (macro-divide-by-zero-exception? _exn9896_)
                (macro-divide-by-zero-exception-procedure _exn9896_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp10519
                              (let ()
                                (declare (not safe))
                                (cons _exn9896_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp10519)))))))
    (define error-exception?
      (lambda (_exn9892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9892_))
            (let ((_e9894_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9892_ 'exception))))
              (macro-error-exception? _e9894_))
            (macro-error-exception? _exn9892_))))
    (define error-exception-message
      (lambda (_exn9888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9888_))
            (let ((_e9890_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9888_ 'exception))))
              (if (macro-error-exception? _e9890_)
                  (macro-error-exception-message _e9890_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp10522
                                (let ()
                                  (declare (not safe))
                                  (cons _e9890_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp10522)))))
            (if (macro-error-exception? _exn9888_)
                (macro-error-exception-message _exn9888_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp10521
                              (let ()
                                (declare (not safe))
                                (cons _exn9888_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp10521)))))))
    (define error-exception-parameters
      (lambda (_exn9882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9882_))
            (let ((_e9885_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9882_ 'exception))))
              (if (macro-error-exception? _e9885_)
                  (macro-error-exception-parameters _e9885_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp10524
                                (let ()
                                  (declare (not safe))
                                  (cons _e9885_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp10524)))))
            (if (macro-error-exception? _exn9882_)
                (macro-error-exception-parameters _exn9882_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp10523
                              (let ()
                                (declare (not safe))
                                (cons _exn9882_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp10523)))))))
    (define expression-parsing-exception?
      (lambda (_exn9878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9878_))
            (let ((_e9880_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9878_ 'exception))))
              (macro-expression-parsing-exception? _e9880_))
            (macro-expression-parsing-exception? _exn9878_))))
    (define expression-parsing-exception-kind
      (lambda (_exn9874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9874_))
            (let ((_e9876_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9874_ 'exception))))
              (if (macro-expression-parsing-exception? _e9876_)
                  (macro-expression-parsing-exception-kind _e9876_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp10526
                                (let ()
                                  (declare (not safe))
                                  (cons _e9876_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp10526)))))
            (if (macro-expression-parsing-exception? _exn9874_)
                (macro-expression-parsing-exception-kind _exn9874_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp10525
                              (let ()
                                (declare (not safe))
                                (cons _exn9874_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp10525)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn9870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9870_))
            (let ((_e9872_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9870_ 'exception))))
              (if (macro-expression-parsing-exception? _e9872_)
                  (macro-expression-parsing-exception-parameters _e9872_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp10528
                                (let ()
                                  (declare (not safe))
                                  (cons _e9872_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp10528)))))
            (if (macro-expression-parsing-exception? _exn9870_)
                (macro-expression-parsing-exception-parameters _exn9870_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp10527
                              (let ()
                                (declare (not safe))
                                (cons _exn9870_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp10527)))))))
    (define expression-parsing-exception-source
      (lambda (_exn9864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9864_))
            (let ((_e9867_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9864_ 'exception))))
              (if (macro-expression-parsing-exception? _e9867_)
                  (macro-expression-parsing-exception-source _e9867_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp10530
                                (let ()
                                  (declare (not safe))
                                  (cons _e9867_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp10530)))))
            (if (macro-expression-parsing-exception? _exn9864_)
                (macro-expression-parsing-exception-source _exn9864_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp10529
                              (let ()
                                (declare (not safe))
                                (cons _exn9864_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp10529)))))))
    (define file-exists-exception?
      (lambda (_exn9860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9860_))
            (let ((_e9862_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9860_ 'exception))))
              (macro-file-exists-exception? _e9862_))
            (macro-file-exists-exception? _exn9860_))))
    (define file-exists-exception-arguments
      (lambda (_exn9856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9856_))
            (let ((_e9858_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9856_ 'exception))))
              (if (macro-file-exists-exception? _e9858_)
                  (macro-file-exists-exception-arguments _e9858_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp10532
                                (let ()
                                  (declare (not safe))
                                  (cons _e9858_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp10532)))))
            (if (macro-file-exists-exception? _exn9856_)
                (macro-file-exists-exception-arguments _exn9856_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp10531
                              (let ()
                                (declare (not safe))
                                (cons _exn9856_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp10531)))))))
    (define file-exists-exception-procedure
      (lambda (_exn9850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9850_))
            (let ((_e9853_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9850_ 'exception))))
              (if (macro-file-exists-exception? _e9853_)
                  (macro-file-exists-exception-procedure _e9853_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp10534
                                (let ()
                                  (declare (not safe))
                                  (cons _e9853_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp10534)))))
            (if (macro-file-exists-exception? _exn9850_)
                (macro-file-exists-exception-procedure _exn9850_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp10533
                              (let ()
                                (declare (not safe))
                                (cons _exn9850_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp10533)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn9846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9846_))
            (let ((_e9848_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9846_ 'exception))))
              (macro-fixnum-overflow-exception? _e9848_))
            (macro-fixnum-overflow-exception? _exn9846_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn9842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9842_))
            (let ((_e9844_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9842_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e9844_)
                  (macro-fixnum-overflow-exception-arguments _e9844_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp10536
                                (let ()
                                  (declare (not safe))
                                  (cons _e9844_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp10536)))))
            (if (macro-fixnum-overflow-exception? _exn9842_)
                (macro-fixnum-overflow-exception-arguments _exn9842_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp10535
                              (let ()
                                (declare (not safe))
                                (cons _exn9842_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp10535)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn9836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9836_))
            (let ((_e9839_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9836_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e9839_)
                  (macro-fixnum-overflow-exception-procedure _e9839_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp10538
                                (let ()
                                  (declare (not safe))
                                  (cons _e9839_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp10538)))))
            (if (macro-fixnum-overflow-exception? _exn9836_)
                (macro-fixnum-overflow-exception-procedure _exn9836_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp10537
                              (let ()
                                (declare (not safe))
                                (cons _exn9836_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp10537)))))))
    (define heap-overflow-exception?
      (lambda (_exn9830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9830_))
            (let ((_e9833_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9830_ 'exception))))
              (macro-heap-overflow-exception? _e9833_))
            (macro-heap-overflow-exception? _exn9830_))))
    (define inactive-thread-exception?
      (lambda (_exn9826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9826_))
            (let ((_e9828_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9826_ 'exception))))
              (macro-inactive-thread-exception? _e9828_))
            (macro-inactive-thread-exception? _exn9826_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn9822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9822_))
            (let ((_e9824_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9822_ 'exception))))
              (if (macro-inactive-thread-exception? _e9824_)
                  (macro-inactive-thread-exception-arguments _e9824_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp10540
                                (let ()
                                  (declare (not safe))
                                  (cons _e9824_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp10540)))))
            (if (macro-inactive-thread-exception? _exn9822_)
                (macro-inactive-thread-exception-arguments _exn9822_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp10539
                              (let ()
                                (declare (not safe))
                                (cons _exn9822_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp10539)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn9816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9816_))
            (let ((_e9819_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9816_ 'exception))))
              (if (macro-inactive-thread-exception? _e9819_)
                  (macro-inactive-thread-exception-procedure _e9819_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp10542
                                (let ()
                                  (declare (not safe))
                                  (cons _e9819_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp10542)))))
            (if (macro-inactive-thread-exception? _exn9816_)
                (macro-inactive-thread-exception-procedure _exn9816_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp10541
                              (let ()
                                (declare (not safe))
                                (cons _exn9816_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp10541)))))))
    (define initialized-thread-exception?
      (lambda (_exn9812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9812_))
            (let ((_e9814_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9812_ 'exception))))
              (macro-initialized-thread-exception? _e9814_))
            (macro-initialized-thread-exception? _exn9812_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn9808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9808_))
            (let ((_e9810_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9808_ 'exception))))
              (if (macro-initialized-thread-exception? _e9810_)
                  (macro-initialized-thread-exception-arguments _e9810_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp10544
                                (let ()
                                  (declare (not safe))
                                  (cons _e9810_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp10544)))))
            (if (macro-initialized-thread-exception? _exn9808_)
                (macro-initialized-thread-exception-arguments _exn9808_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp10543
                              (let ()
                                (declare (not safe))
                                (cons _exn9808_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp10543)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn9802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9802_))
            (let ((_e9805_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9802_ 'exception))))
              (if (macro-initialized-thread-exception? _e9805_)
                  (macro-initialized-thread-exception-procedure _e9805_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp10546
                                (let ()
                                  (declare (not safe))
                                  (cons _e9805_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp10546)))))
            (if (macro-initialized-thread-exception? _exn9802_)
                (macro-initialized-thread-exception-procedure _exn9802_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp10545
                              (let ()
                                (declare (not safe))
                                (cons _exn9802_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp10545)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn9798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9798_))
            (let ((_e9800_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9798_ 'exception))))
              (macro-invalid-hash-number-exception? _e9800_))
            (macro-invalid-hash-number-exception? _exn9798_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn9794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9794_))
            (let ((_e9796_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9794_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e9796_)
                  (macro-invalid-hash-number-exception-arguments _e9796_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp10548
                                (let ()
                                  (declare (not safe))
                                  (cons _e9796_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp10548)))))
            (if (macro-invalid-hash-number-exception? _exn9794_)
                (macro-invalid-hash-number-exception-arguments _exn9794_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp10547
                              (let ()
                                (declare (not safe))
                                (cons _exn9794_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp10547)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn9788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9788_))
            (let ((_e9791_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9788_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e9791_)
                  (macro-invalid-hash-number-exception-procedure _e9791_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp10550
                                (let ()
                                  (declare (not safe))
                                  (cons _e9791_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp10550)))))
            (if (macro-invalid-hash-number-exception? _exn9788_)
                (macro-invalid-hash-number-exception-procedure _exn9788_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp10549
                              (let ()
                                (declare (not safe))
                                (cons _exn9788_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp10549)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn9784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9784_))
            (let ((_e9786_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9784_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e9786_))
            (macro-invalid-utf8-encoding-exception? _exn9784_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn9780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9780_))
            (let ((_e9782_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9780_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e9782_)
                  (macro-invalid-utf8-encoding-exception-arguments _e9782_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp10552
                                (let ()
                                  (declare (not safe))
                                  (cons _e9782_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp10552)))))
            (if (macro-invalid-utf8-encoding-exception? _exn9780_)
                (macro-invalid-utf8-encoding-exception-arguments _exn9780_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp10551
                              (let ()
                                (declare (not safe))
                                (cons _exn9780_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp10551)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn9774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9774_))
            (let ((_e9777_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9774_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e9777_)
                  (macro-invalid-utf8-encoding-exception-procedure _e9777_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp10554
                                (let ()
                                  (declare (not safe))
                                  (cons _e9777_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp10554)))))
            (if (macro-invalid-utf8-encoding-exception? _exn9774_)
                (macro-invalid-utf8-encoding-exception-procedure _exn9774_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp10553
                              (let ()
                                (declare (not safe))
                                (cons _exn9774_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp10553)))))))
    (define join-timeout-exception?
      (lambda (_exn9770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9770_))
            (let ((_e9772_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9770_ 'exception))))
              (macro-join-timeout-exception? _e9772_))
            (macro-join-timeout-exception? _exn9770_))))
    (define join-timeout-exception-arguments
      (lambda (_exn9766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9766_))
            (let ((_e9768_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9766_ 'exception))))
              (if (macro-join-timeout-exception? _e9768_)
                  (macro-join-timeout-exception-arguments _e9768_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp10556
                                (let ()
                                  (declare (not safe))
                                  (cons _e9768_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp10556)))))
            (if (macro-join-timeout-exception? _exn9766_)
                (macro-join-timeout-exception-arguments _exn9766_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp10555
                              (let ()
                                (declare (not safe))
                                (cons _exn9766_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp10555)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn9760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9760_))
            (let ((_e9763_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9760_ 'exception))))
              (if (macro-join-timeout-exception? _e9763_)
                  (macro-join-timeout-exception-procedure _e9763_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp10558
                                (let ()
                                  (declare (not safe))
                                  (cons _e9763_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp10558)))))
            (if (macro-join-timeout-exception? _exn9760_)
                (macro-join-timeout-exception-procedure _exn9760_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp10557
                              (let ()
                                (declare (not safe))
                                (cons _exn9760_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp10557)))))))
    (define keyword-expected-exception?
      (lambda (_exn9756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9756_))
            (let ((_e9758_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9756_ 'exception))))
              (macro-keyword-expected-exception? _e9758_))
            (macro-keyword-expected-exception? _exn9756_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn9752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9752_))
            (let ((_e9754_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9752_ 'exception))))
              (if (macro-keyword-expected-exception? _e9754_)
                  (macro-keyword-expected-exception-arguments _e9754_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp10560
                                (let ()
                                  (declare (not safe))
                                  (cons _e9754_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp10560)))))
            (if (macro-keyword-expected-exception? _exn9752_)
                (macro-keyword-expected-exception-arguments _exn9752_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp10559
                              (let ()
                                (declare (not safe))
                                (cons _exn9752_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp10559)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn9746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9746_))
            (let ((_e9749_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9746_ 'exception))))
              (if (macro-keyword-expected-exception? _e9749_)
                  (macro-keyword-expected-exception-procedure _e9749_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp10562
                                (let ()
                                  (declare (not safe))
                                  (cons _e9749_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp10562)))))
            (if (macro-keyword-expected-exception? _exn9746_)
                (macro-keyword-expected-exception-procedure _exn9746_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp10561
                              (let ()
                                (declare (not safe))
                                (cons _exn9746_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp10561)))))))
    (define length-mismatch-exception?
      (lambda (_exn9742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9742_))
            (let ((_e9744_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9742_ 'exception))))
              (macro-length-mismatch-exception? _e9744_))
            (macro-length-mismatch-exception? _exn9742_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn9738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9738_))
            (let ((_e9740_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9738_ 'exception))))
              (if (macro-length-mismatch-exception? _e9740_)
                  (macro-length-mismatch-exception-arg-id _e9740_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp10564
                                (let ()
                                  (declare (not safe))
                                  (cons _e9740_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp10564)))))
            (if (macro-length-mismatch-exception? _exn9738_)
                (macro-length-mismatch-exception-arg-id _exn9738_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp10563
                              (let ()
                                (declare (not safe))
                                (cons _exn9738_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp10563)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn9734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9734_))
            (let ((_e9736_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9734_ 'exception))))
              (if (macro-length-mismatch-exception? _e9736_)
                  (macro-length-mismatch-exception-arguments _e9736_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp10566
                                (let ()
                                  (declare (not safe))
                                  (cons _e9736_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp10566)))))
            (if (macro-length-mismatch-exception? _exn9734_)
                (macro-length-mismatch-exception-arguments _exn9734_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp10565
                              (let ()
                                (declare (not safe))
                                (cons _exn9734_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp10565)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn9728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9728_))
            (let ((_e9731_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9728_ 'exception))))
              (if (macro-length-mismatch-exception? _e9731_)
                  (macro-length-mismatch-exception-procedure _e9731_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp10568
                                (let ()
                                  (declare (not safe))
                                  (cons _e9731_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp10568)))))
            (if (macro-length-mismatch-exception? _exn9728_)
                (macro-length-mismatch-exception-procedure _exn9728_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp10567
                              (let ()
                                (declare (not safe))
                                (cons _exn9728_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp10567)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn9724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9724_))
            (let ((_e9726_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9724_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e9726_))
            (macro-mailbox-receive-timeout-exception? _exn9724_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn9720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9720_))
            (let ((_e9722_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9720_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e9722_)
                  (macro-mailbox-receive-timeout-exception-arguments _e9722_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp10570
                                (let ()
                                  (declare (not safe))
                                  (cons _e9722_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp10570)))))
            (if (macro-mailbox-receive-timeout-exception? _exn9720_)
                (macro-mailbox-receive-timeout-exception-arguments _exn9720_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp10569
                              (let ()
                                (declare (not safe))
                                (cons _exn9720_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp10569)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn9714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9714_))
            (let ((_e9717_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9714_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e9717_)
                  (macro-mailbox-receive-timeout-exception-procedure _e9717_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp10572
                                (let ()
                                  (declare (not safe))
                                  (cons _e9717_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp10572)))))
            (if (macro-mailbox-receive-timeout-exception? _exn9714_)
                (macro-mailbox-receive-timeout-exception-procedure _exn9714_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp10571
                              (let ()
                                (declare (not safe))
                                (cons _exn9714_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp10571)))))))
    (define module-not-found-exception?
      (lambda (_exn9710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9710_))
            (let ((_e9712_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9710_ 'exception))))
              (macro-module-not-found-exception? _e9712_))
            (macro-module-not-found-exception? _exn9710_))))
    (define module-not-found-exception-arguments
      (lambda (_exn9706_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9706_))
            (let ((_e9708_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9706_ 'exception))))
              (if (macro-module-not-found-exception? _e9708_)
                  (macro-module-not-found-exception-arguments _e9708_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp10574
                                (let ()
                                  (declare (not safe))
                                  (cons _e9708_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp10574)))))
            (if (macro-module-not-found-exception? _exn9706_)
                (macro-module-not-found-exception-arguments _exn9706_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp10573
                              (let ()
                                (declare (not safe))
                                (cons _exn9706_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp10573)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn9700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9700_))
            (let ((_e9703_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9700_ 'exception))))
              (if (macro-module-not-found-exception? _e9703_)
                  (macro-module-not-found-exception-procedure _e9703_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp10576
                                (let ()
                                  (declare (not safe))
                                  (cons _e9703_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp10576)))))
            (if (macro-module-not-found-exception? _exn9700_)
                (macro-module-not-found-exception-procedure _exn9700_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp10575
                              (let ()
                                (declare (not safe))
                                (cons _exn9700_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp10575)))))))
    (define multiple-c-return-exception?
      (lambda (_exn9694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9694_))
            (let ((_e9697_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9694_ 'exception))))
              (macro-multiple-c-return-exception? _e9697_))
            (macro-multiple-c-return-exception? _exn9694_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn9690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9690_))
            (let ((_e9692_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9690_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e9692_))
            (macro-no-such-file-or-directory-exception? _exn9690_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn9686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9686_))
            (let ((_e9688_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9686_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e9688_)
                  (macro-no-such-file-or-directory-exception-arguments _e9688_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp10578
                                (let ()
                                  (declare (not safe))
                                  (cons _e9688_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp10578)))))
            (if (macro-no-such-file-or-directory-exception? _exn9686_)
                (macro-no-such-file-or-directory-exception-arguments _exn9686_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp10577
                              (let ()
                                (declare (not safe))
                                (cons _exn9686_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp10577)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn9680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9680_))
            (let ((_e9683_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9680_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e9683_)
                  (macro-no-such-file-or-directory-exception-procedure _e9683_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp10580
                                (let ()
                                  (declare (not safe))
                                  (cons _e9683_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp10580)))))
            (if (macro-no-such-file-or-directory-exception? _exn9680_)
                (macro-no-such-file-or-directory-exception-procedure _exn9680_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp10579
                              (let ()
                                (declare (not safe))
                                (cons _exn9680_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp10579)))))))
    (define noncontinuable-exception?
      (lambda (_exn9676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9676_))
            (let ((_e9678_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9676_ 'exception))))
              (macro-noncontinuable-exception? _e9678_))
            (macro-noncontinuable-exception? _exn9676_))))
    (define noncontinuable-exception-reason
      (lambda (_exn9670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9670_))
            (let ((_e9673_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9670_ 'exception))))
              (if (macro-noncontinuable-exception? _e9673_)
                  (macro-noncontinuable-exception-reason _e9673_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp10582
                                (let ()
                                  (declare (not safe))
                                  (cons _e9673_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp10582)))))
            (if (macro-noncontinuable-exception? _exn9670_)
                (macro-noncontinuable-exception-reason _exn9670_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp10581
                              (let ()
                                (declare (not safe))
                                (cons _exn9670_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp10581)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn9666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9666_))
            (let ((_e9668_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9666_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e9668_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn9666_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn9662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9662_))
            (let ((_e9664_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9662_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e9664_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e9664_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp10584
                                (let ()
                                  (declare (not safe))
                                  (cons _e9664_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp10584)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn9662_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn9662_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp10583
                              (let ()
                                (declare (not safe))
                                (cons _exn9662_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp10583)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn9656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9656_))
            (let ((_e9659_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9656_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e9659_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e9659_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp10586
                                (let ()
                                  (declare (not safe))
                                  (cons _e9659_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp10586)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn9656_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn9656_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp10585
                              (let ()
                                (declare (not safe))
                                (cons _exn9656_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp10585)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn9652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9652_))
            (let ((_e9654_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9652_ 'exception))))
              (macro-nonprocedure-operator-exception? _e9654_))
            (macro-nonprocedure-operator-exception? _exn9652_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn9648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9648_))
            (let ((_e9650_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9648_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9650_)
                  (macro-nonprocedure-operator-exception-arguments _e9650_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10588
                                (let ()
                                  (declare (not safe))
                                  (cons _e9650_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp10588)))))
            (if (macro-nonprocedure-operator-exception? _exn9648_)
                (macro-nonprocedure-operator-exception-arguments _exn9648_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10587
                              (let ()
                                (declare (not safe))
                                (cons _exn9648_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp10587)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn9644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9644_))
            (let ((_e9646_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9644_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9646_)
                  (macro-nonprocedure-operator-exception-code _e9646_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10590
                                (let ()
                                  (declare (not safe))
                                  (cons _e9646_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp10590)))))
            (if (macro-nonprocedure-operator-exception? _exn9644_)
                (macro-nonprocedure-operator-exception-code _exn9644_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10589
                              (let ()
                                (declare (not safe))
                                (cons _exn9644_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp10589)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn9640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9640_))
            (let ((_e9642_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9640_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9642_)
                  (macro-nonprocedure-operator-exception-operator _e9642_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10592
                                (let ()
                                  (declare (not safe))
                                  (cons _e9642_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp10592)))))
            (if (macro-nonprocedure-operator-exception? _exn9640_)
                (macro-nonprocedure-operator-exception-operator _exn9640_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10591
                              (let ()
                                (declare (not safe))
                                (cons _exn9640_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp10591)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn9634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9634_))
            (let ((_e9637_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9634_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e9637_)
                  (macro-nonprocedure-operator-exception-rte _e9637_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp10594
                                (let ()
                                  (declare (not safe))
                                  (cons _e9637_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp10594)))))
            (if (macro-nonprocedure-operator-exception? _exn9634_)
                (macro-nonprocedure-operator-exception-rte _exn9634_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp10593
                              (let ()
                                (declare (not safe))
                                (cons _exn9634_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp10593)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn9630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9630_))
            (let ((_e9632_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9630_ 'exception))))
              (macro-not-in-compilation-context-exception? _e9632_))
            (macro-not-in-compilation-context-exception? _exn9630_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn9626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9626_))
            (let ((_e9628_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9626_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e9628_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e9628_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp10596
                                (let ()
                                  (declare (not safe))
                                  (cons _e9628_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp10596)))))
            (if (macro-not-in-compilation-context-exception? _exn9626_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn9626_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp10595
                              (let ()
                                (declare (not safe))
                                (cons _exn9626_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp10595)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn9620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9620_))
            (let ((_e9623_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9620_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e9623_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e9623_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp10598
                                (let ()
                                  (declare (not safe))
                                  (cons _e9623_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp10598)))))
            (if (macro-not-in-compilation-context-exception? _exn9620_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn9620_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp10597
                              (let ()
                                (declare (not safe))
                                (cons _exn9620_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp10597)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn9616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9616_))
            (let ((_e9618_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9616_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e9618_))
            (macro-number-of-arguments-limit-exception? _exn9616_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn9612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9612_))
            (let ((_e9614_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9612_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e9614_)
                  (macro-number-of-arguments-limit-exception-arguments _e9614_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp10600
                                (let ()
                                  (declare (not safe))
                                  (cons _e9614_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp10600)))))
            (if (macro-number-of-arguments-limit-exception? _exn9612_)
                (macro-number-of-arguments-limit-exception-arguments _exn9612_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp10599
                              (let ()
                                (declare (not safe))
                                (cons _exn9612_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp10599)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn9606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9606_))
            (let ((_e9609_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9606_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e9609_)
                  (macro-number-of-arguments-limit-exception-procedure _e9609_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp10602
                                (let ()
                                  (declare (not safe))
                                  (cons _e9609_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp10602)))))
            (if (macro-number-of-arguments-limit-exception? _exn9606_)
                (macro-number-of-arguments-limit-exception-procedure _exn9606_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp10601
                              (let ()
                                (declare (not safe))
                                (cons _exn9606_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp10601)))))))
    (define os-exception?
      (lambda (_exn9602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9602_))
            (let ((_e9604_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9602_ 'exception))))
              (macro-os-exception? _e9604_))
            (macro-os-exception? _exn9602_))))
    (define os-exception-arguments
      (lambda (_exn9598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9598_))
            (let ((_e9600_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9598_ 'exception))))
              (if (macro-os-exception? _e9600_)
                  (macro-os-exception-arguments _e9600_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10604
                                (let ()
                                  (declare (not safe))
                                  (cons _e9600_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp10604)))))
            (if (macro-os-exception? _exn9598_)
                (macro-os-exception-arguments _exn9598_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10603
                              (let ()
                                (declare (not safe))
                                (cons _exn9598_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp10603)))))))
    (define os-exception-code
      (lambda (_exn9594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9594_))
            (let ((_e9596_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9594_ 'exception))))
              (if (macro-os-exception? _e9596_)
                  (macro-os-exception-code _e9596_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10606
                                (let ()
                                  (declare (not safe))
                                  (cons _e9596_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp10606)))))
            (if (macro-os-exception? _exn9594_)
                (macro-os-exception-code _exn9594_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10605
                              (let ()
                                (declare (not safe))
                                (cons _exn9594_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp10605)))))))
    (define os-exception-message
      (lambda (_exn9590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9590_))
            (let ((_e9592_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9590_ 'exception))))
              (if (macro-os-exception? _e9592_)
                  (macro-os-exception-message _e9592_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10608
                                (let ()
                                  (declare (not safe))
                                  (cons _e9592_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp10608)))))
            (if (macro-os-exception? _exn9590_)
                (macro-os-exception-message _exn9590_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10607
                              (let ()
                                (declare (not safe))
                                (cons _exn9590_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp10607)))))))
    (define os-exception-procedure
      (lambda (_exn9584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9584_))
            (let ((_e9587_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9584_ 'exception))))
              (if (macro-os-exception? _e9587_)
                  (macro-os-exception-procedure _e9587_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp10610
                                (let ()
                                  (declare (not safe))
                                  (cons _e9587_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp10610)))))
            (if (macro-os-exception? _exn9584_)
                (macro-os-exception-procedure _exn9584_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp10609
                              (let ()
                                (declare (not safe))
                                (cons _exn9584_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp10609)))))))
    (define permission-denied-exception?
      (lambda (_exn9580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9580_))
            (let ((_e9582_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9580_ 'exception))))
              (macro-permission-denied-exception? _e9582_))
            (macro-permission-denied-exception? _exn9580_))))
    (define permission-denied-exception-arguments
      (lambda (_exn9576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9576_))
            (let ((_e9578_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9576_ 'exception))))
              (if (macro-permission-denied-exception? _e9578_)
                  (macro-permission-denied-exception-arguments _e9578_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp10612
                                (let ()
                                  (declare (not safe))
                                  (cons _e9578_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp10612)))))
            (if (macro-permission-denied-exception? _exn9576_)
                (macro-permission-denied-exception-arguments _exn9576_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp10611
                              (let ()
                                (declare (not safe))
                                (cons _exn9576_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp10611)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn9570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9570_))
            (let ((_e9573_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9570_ 'exception))))
              (if (macro-permission-denied-exception? _e9573_)
                  (macro-permission-denied-exception-procedure _e9573_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp10614
                                (let ()
                                  (declare (not safe))
                                  (cons _e9573_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp10614)))))
            (if (macro-permission-denied-exception? _exn9570_)
                (macro-permission-denied-exception-procedure _exn9570_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp10613
                              (let ()
                                (declare (not safe))
                                (cons _exn9570_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp10613)))))))
    (define range-exception?
      (lambda (_exn9566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9566_))
            (let ((_e9568_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9566_ 'exception))))
              (macro-range-exception? _e9568_))
            (macro-range-exception? _exn9566_))))
    (define range-exception-arg-id
      (lambda (_exn9562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9562_))
            (let ((_e9564_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9562_ 'exception))))
              (if (macro-range-exception? _e9564_)
                  (macro-range-exception-arg-id _e9564_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp10616
                                (let ()
                                  (declare (not safe))
                                  (cons _e9564_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp10616)))))
            (if (macro-range-exception? _exn9562_)
                (macro-range-exception-arg-id _exn9562_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp10615
                              (let ()
                                (declare (not safe))
                                (cons _exn9562_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp10615)))))))
    (define range-exception-arguments
      (lambda (_exn9558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9558_))
            (let ((_e9560_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9558_ 'exception))))
              (if (macro-range-exception? _e9560_)
                  (macro-range-exception-arguments _e9560_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp10618
                                (let ()
                                  (declare (not safe))
                                  (cons _e9560_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp10618)))))
            (if (macro-range-exception? _exn9558_)
                (macro-range-exception-arguments _exn9558_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp10617
                              (let ()
                                (declare (not safe))
                                (cons _exn9558_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp10617)))))))
    (define range-exception-procedure
      (lambda (_exn9552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9552_))
            (let ((_e9555_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9552_ 'exception))))
              (if (macro-range-exception? _e9555_)
                  (macro-range-exception-procedure _e9555_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp10620
                                (let ()
                                  (declare (not safe))
                                  (cons _e9555_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp10620)))))
            (if (macro-range-exception? _exn9552_)
                (macro-range-exception-procedure _exn9552_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp10619
                              (let ()
                                (declare (not safe))
                                (cons _exn9552_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp10619)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn9548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9548_))
            (let ((_e9550_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9548_ 'exception))))
              (macro-rpc-remote-error-exception? _e9550_))
            (macro-rpc-remote-error-exception? _exn9548_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn9544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9544_))
            (let ((_e9546_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9544_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e9546_)
                  (macro-rpc-remote-error-exception-arguments _e9546_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp10622
                                (let ()
                                  (declare (not safe))
                                  (cons _e9546_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp10622)))))
            (if (macro-rpc-remote-error-exception? _exn9544_)
                (macro-rpc-remote-error-exception-arguments _exn9544_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp10621
                              (let ()
                                (declare (not safe))
                                (cons _exn9544_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp10621)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn9540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9540_))
            (let ((_e9542_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9540_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e9542_)
                  (macro-rpc-remote-error-exception-message _e9542_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp10624
                                (let ()
                                  (declare (not safe))
                                  (cons _e9542_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp10624)))))
            (if (macro-rpc-remote-error-exception? _exn9540_)
                (macro-rpc-remote-error-exception-message _exn9540_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp10623
                              (let ()
                                (declare (not safe))
                                (cons _exn9540_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp10623)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn9534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9534_))
            (let ((_e9537_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9534_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e9537_)
                  (macro-rpc-remote-error-exception-procedure _e9537_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp10626
                                (let ()
                                  (declare (not safe))
                                  (cons _e9537_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp10626)))))
            (if (macro-rpc-remote-error-exception? _exn9534_)
                (macro-rpc-remote-error-exception-procedure _exn9534_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp10625
                              (let ()
                                (declare (not safe))
                                (cons _exn9534_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp10625)))))))
    (define scheduler-exception?
      (lambda (_exn9530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9530_))
            (let ((_e9532_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9530_ 'exception))))
              (macro-scheduler-exception? _e9532_))
            (macro-scheduler-exception? _exn9530_))))
    (define scheduler-exception-reason
      (lambda (_exn9524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9524_))
            (let ((_e9527_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9524_ 'exception))))
              (if (macro-scheduler-exception? _e9527_)
                  (macro-scheduler-exception-reason _e9527_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp10628
                                (let ()
                                  (declare (not safe))
                                  (cons _e9527_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp10628)))))
            (if (macro-scheduler-exception? _exn9524_)
                (macro-scheduler-exception-reason _exn9524_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp10627
                              (let ()
                                (declare (not safe))
                                (cons _exn9524_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp10627)))))))
    (define sfun-conversion-exception?
      (lambda (_exn9520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9520_))
            (let ((_e9522_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9520_ 'exception))))
              (macro-sfun-conversion-exception? _e9522_))
            (macro-sfun-conversion-exception? _exn9520_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn9516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9516_))
            (let ((_e9518_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9516_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9518_)
                  (macro-sfun-conversion-exception-arguments _e9518_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10630
                                (let ()
                                  (declare (not safe))
                                  (cons _e9518_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp10630)))))
            (if (macro-sfun-conversion-exception? _exn9516_)
                (macro-sfun-conversion-exception-arguments _exn9516_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10629
                              (let ()
                                (declare (not safe))
                                (cons _exn9516_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp10629)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn9512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9512_))
            (let ((_e9514_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9512_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9514_)
                  (macro-sfun-conversion-exception-code _e9514_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10632
                                (let ()
                                  (declare (not safe))
                                  (cons _e9514_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp10632)))))
            (if (macro-sfun-conversion-exception? _exn9512_)
                (macro-sfun-conversion-exception-code _exn9512_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10631
                              (let ()
                                (declare (not safe))
                                (cons _exn9512_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp10631)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn9508_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9508_))
            (let ((_e9510_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9508_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9510_)
                  (macro-sfun-conversion-exception-message _e9510_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10634
                                (let ()
                                  (declare (not safe))
                                  (cons _e9510_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp10634)))))
            (if (macro-sfun-conversion-exception? _exn9508_)
                (macro-sfun-conversion-exception-message _exn9508_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10633
                              (let ()
                                (declare (not safe))
                                (cons _exn9508_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp10633)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn9502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9502_))
            (let ((_e9505_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9502_ 'exception))))
              (if (macro-sfun-conversion-exception? _e9505_)
                  (macro-sfun-conversion-exception-procedure _e9505_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp10636
                                (let ()
                                  (declare (not safe))
                                  (cons _e9505_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp10636)))))
            (if (macro-sfun-conversion-exception? _exn9502_)
                (macro-sfun-conversion-exception-procedure _exn9502_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp10635
                              (let ()
                                (declare (not safe))
                                (cons _exn9502_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp10635)))))))
    (define stack-overflow-exception?
      (lambda (_exn9496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9496_))
            (let ((_e9499_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9496_ 'exception))))
              (macro-stack-overflow-exception? _e9499_))
            (macro-stack-overflow-exception? _exn9496_))))
    (define started-thread-exception?
      (lambda (_exn9492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9492_))
            (let ((_e9494_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9492_ 'exception))))
              (macro-started-thread-exception? _e9494_))
            (macro-started-thread-exception? _exn9492_))))
    (define started-thread-exception-arguments
      (lambda (_exn9488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9488_))
            (let ((_e9490_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9488_ 'exception))))
              (if (macro-started-thread-exception? _e9490_)
                  (macro-started-thread-exception-arguments _e9490_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp10638
                                (let ()
                                  (declare (not safe))
                                  (cons _e9490_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp10638)))))
            (if (macro-started-thread-exception? _exn9488_)
                (macro-started-thread-exception-arguments _exn9488_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp10637
                              (let ()
                                (declare (not safe))
                                (cons _exn9488_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp10637)))))))
    (define started-thread-exception-procedure
      (lambda (_exn9482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9482_))
            (let ((_e9485_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9482_ 'exception))))
              (if (macro-started-thread-exception? _e9485_)
                  (macro-started-thread-exception-procedure _e9485_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp10640
                                (let ()
                                  (declare (not safe))
                                  (cons _e9485_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp10640)))))
            (if (macro-started-thread-exception? _exn9482_)
                (macro-started-thread-exception-procedure _exn9482_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp10639
                              (let ()
                                (declare (not safe))
                                (cons _exn9482_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp10639)))))))
    (define terminated-thread-exception?
      (lambda (_exn9478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9478_))
            (let ((_e9480_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9478_ 'exception))))
              (macro-terminated-thread-exception? _e9480_))
            (macro-terminated-thread-exception? _exn9478_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn9474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9474_))
            (let ((_e9476_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9474_ 'exception))))
              (if (macro-terminated-thread-exception? _e9476_)
                  (macro-terminated-thread-exception-arguments _e9476_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp10642
                                (let ()
                                  (declare (not safe))
                                  (cons _e9476_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp10642)))))
            (if (macro-terminated-thread-exception? _exn9474_)
                (macro-terminated-thread-exception-arguments _exn9474_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp10641
                              (let ()
                                (declare (not safe))
                                (cons _exn9474_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp10641)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn9468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9468_))
            (let ((_e9471_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9468_ 'exception))))
              (if (macro-terminated-thread-exception? _e9471_)
                  (macro-terminated-thread-exception-procedure _e9471_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp10644
                                (let ()
                                  (declare (not safe))
                                  (cons _e9471_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp10644)))))
            (if (macro-terminated-thread-exception? _exn9468_)
                (macro-terminated-thread-exception-procedure _exn9468_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp10643
                              (let ()
                                (declare (not safe))
                                (cons _exn9468_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp10643)))))))
    (define type-exception?
      (lambda (_exn9464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9464_))
            (let ((_e9466_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9464_ 'exception))))
              (macro-type-exception? _e9466_))
            (macro-type-exception? _exn9464_))))
    (define type-exception-arg-id
      (lambda (_exn9460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9460_))
            (let ((_e9462_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9460_ 'exception))))
              (if (macro-type-exception? _e9462_)
                  (macro-type-exception-arg-id _e9462_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10646
                                (let ()
                                  (declare (not safe))
                                  (cons _e9462_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp10646)))))
            (if (macro-type-exception? _exn9460_)
                (macro-type-exception-arg-id _exn9460_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10645
                              (let ()
                                (declare (not safe))
                                (cons _exn9460_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp10645)))))))
    (define type-exception-arguments
      (lambda (_exn9456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9456_))
            (let ((_e9458_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9456_ 'exception))))
              (if (macro-type-exception? _e9458_)
                  (macro-type-exception-arguments _e9458_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10648
                                (let ()
                                  (declare (not safe))
                                  (cons _e9458_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp10648)))))
            (if (macro-type-exception? _exn9456_)
                (macro-type-exception-arguments _exn9456_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10647
                              (let ()
                                (declare (not safe))
                                (cons _exn9456_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp10647)))))))
    (define type-exception-procedure
      (lambda (_exn9452_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9452_))
            (let ((_e9454_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9452_ 'exception))))
              (if (macro-type-exception? _e9454_)
                  (macro-type-exception-procedure _e9454_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10650
                                (let ()
                                  (declare (not safe))
                                  (cons _e9454_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp10650)))))
            (if (macro-type-exception? _exn9452_)
                (macro-type-exception-procedure _exn9452_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10649
                              (let ()
                                (declare (not safe))
                                (cons _exn9452_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp10649)))))))
    (define type-exception-type-id
      (lambda (_exn9446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9446_))
            (let ((_e9449_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9446_ 'exception))))
              (if (macro-type-exception? _e9449_)
                  (macro-type-exception-type-id _e9449_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp10652
                                (let ()
                                  (declare (not safe))
                                  (cons _e9449_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp10652)))))
            (if (macro-type-exception? _exn9446_)
                (macro-type-exception-type-id _exn9446_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp10651
                              (let ()
                                (declare (not safe))
                                (cons _exn9446_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp10651)))))))
    (define unbound-global-exception?
      (lambda (_exn9442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9442_))
            (let ((_e9444_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9442_ 'exception))))
              (macro-unbound-global-exception? _e9444_))
            (macro-unbound-global-exception? _exn9442_))))
    (define unbound-global-exception-code
      (lambda (_exn9438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9438_))
            (let ((_e9440_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9438_ 'exception))))
              (if (macro-unbound-global-exception? _e9440_)
                  (macro-unbound-global-exception-code _e9440_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp10654
                                (let ()
                                  (declare (not safe))
                                  (cons _e9440_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp10654)))))
            (if (macro-unbound-global-exception? _exn9438_)
                (macro-unbound-global-exception-code _exn9438_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp10653
                              (let ()
                                (declare (not safe))
                                (cons _exn9438_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp10653)))))))
    (define unbound-global-exception-rte
      (lambda (_exn9434_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9434_))
            (let ((_e9436_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9434_ 'exception))))
              (if (macro-unbound-global-exception? _e9436_)
                  (macro-unbound-global-exception-rte _e9436_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp10656
                                (let ()
                                  (declare (not safe))
                                  (cons _e9436_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp10656)))))
            (if (macro-unbound-global-exception? _exn9434_)
                (macro-unbound-global-exception-rte _exn9434_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp10655
                              (let ()
                                (declare (not safe))
                                (cons _exn9434_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp10655)))))))
    (define unbound-global-exception-variable
      (lambda (_exn9428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9428_))
            (let ((_e9431_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9428_ 'exception))))
              (if (macro-unbound-global-exception? _e9431_)
                  (macro-unbound-global-exception-variable _e9431_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp10658
                                (let ()
                                  (declare (not safe))
                                  (cons _e9431_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp10658)))))
            (if (macro-unbound-global-exception? _exn9428_)
                (macro-unbound-global-exception-variable _exn9428_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp10657
                              (let ()
                                (declare (not safe))
                                (cons _exn9428_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp10657)))))))
    (define unbound-key-exception?
      (lambda (_exn9424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9424_))
            (let ((_e9426_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9424_ 'exception))))
              (macro-unbound-key-exception? _e9426_))
            (macro-unbound-key-exception? _exn9424_))))
    (define unbound-key-exception-arguments
      (lambda (_exn9420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9420_))
            (let ((_e9422_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9420_ 'exception))))
              (if (macro-unbound-key-exception? _e9422_)
                  (macro-unbound-key-exception-arguments _e9422_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp10660
                                (let ()
                                  (declare (not safe))
                                  (cons _e9422_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp10660)))))
            (if (macro-unbound-key-exception? _exn9420_)
                (macro-unbound-key-exception-arguments _exn9420_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp10659
                              (let ()
                                (declare (not safe))
                                (cons _exn9420_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp10659)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn9414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9414_))
            (let ((_e9417_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9414_ 'exception))))
              (if (macro-unbound-key-exception? _e9417_)
                  (macro-unbound-key-exception-procedure _e9417_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp10662
                                (let ()
                                  (declare (not safe))
                                  (cons _e9417_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp10662)))))
            (if (macro-unbound-key-exception? _exn9414_)
                (macro-unbound-key-exception-procedure _exn9414_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp10661
                              (let ()
                                (declare (not safe))
                                (cons _exn9414_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp10661)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn9410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9410_))
            (let ((_e9412_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9410_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e9412_))
            (macro-unbound-os-environment-variable-exception? _exn9410_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn9406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9406_))
            (let ((_e9408_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9406_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e9408_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e9408_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp10664
                                (let ()
                                  (declare (not safe))
                                  (cons _e9408_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp10664)))))
            (if (macro-unbound-os-environment-variable-exception? _exn9406_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn9406_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp10663
                              (let ()
                                (declare (not safe))
                                (cons _exn9406_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp10663)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn9400_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9400_))
            (let ((_e9403_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9400_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e9403_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e9403_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp10666
                                (let ()
                                  (declare (not safe))
                                  (cons _e9403_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp10666)))))
            (if (macro-unbound-os-environment-variable-exception? _exn9400_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn9400_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp10665
                              (let ()
                                (declare (not safe))
                                (cons _exn9400_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp10665)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn9396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9396_))
            (let ((_e9398_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9396_ 'exception))))
              (macro-unbound-serial-number-exception? _e9398_))
            (macro-unbound-serial-number-exception? _exn9396_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn9392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9392_))
            (let ((_e9394_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9392_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e9394_)
                  (macro-unbound-serial-number-exception-arguments _e9394_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp10668
                                (let ()
                                  (declare (not safe))
                                  (cons _e9394_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp10668)))))
            (if (macro-unbound-serial-number-exception? _exn9392_)
                (macro-unbound-serial-number-exception-arguments _exn9392_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp10667
                              (let ()
                                (declare (not safe))
                                (cons _exn9392_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp10667)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn9386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9386_))
            (let ((_e9389_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9386_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e9389_)
                  (macro-unbound-serial-number-exception-procedure _e9389_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp10670
                                (let ()
                                  (declare (not safe))
                                  (cons _e9389_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp10670)))))
            (if (macro-unbound-serial-number-exception? _exn9386_)
                (macro-unbound-serial-number-exception-procedure _exn9386_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp10669
                              (let ()
                                (declare (not safe))
                                (cons _exn9386_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp10669)))))))
    (define uncaught-exception?
      (lambda (_exn9382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9382_))
            (let ((_e9384_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9382_ 'exception))))
              (macro-uncaught-exception? _e9384_))
            (macro-uncaught-exception? _exn9382_))))
    (define uncaught-exception-arguments
      (lambda (_exn9378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9378_))
            (let ((_e9380_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9378_ 'exception))))
              (if (macro-uncaught-exception? _e9380_)
                  (macro-uncaught-exception-arguments _e9380_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp10672
                                (let ()
                                  (declare (not safe))
                                  (cons _e9380_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp10672)))))
            (if (macro-uncaught-exception? _exn9378_)
                (macro-uncaught-exception-arguments _exn9378_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp10671
                              (let ()
                                (declare (not safe))
                                (cons _exn9378_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp10671)))))))
    (define uncaught-exception-procedure
      (lambda (_exn9374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9374_))
            (let ((_e9376_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9374_ 'exception))))
              (if (macro-uncaught-exception? _e9376_)
                  (macro-uncaught-exception-procedure _e9376_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp10674
                                (let ()
                                  (declare (not safe))
                                  (cons _e9376_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp10674)))))
            (if (macro-uncaught-exception? _exn9374_)
                (macro-uncaught-exception-procedure _exn9374_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp10673
                              (let ()
                                (declare (not safe))
                                (cons _exn9374_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp10673)))))))
    (define uncaught-exception-reason
      (lambda (_exn9368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9368_))
            (let ((_e9371_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9368_ 'exception))))
              (if (macro-uncaught-exception? _e9371_)
                  (macro-uncaught-exception-reason _e9371_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp10676
                                (let ()
                                  (declare (not safe))
                                  (cons _e9371_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp10676)))))
            (if (macro-uncaught-exception? _exn9368_)
                (macro-uncaught-exception-reason _exn9368_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp10675
                              (let ()
                                (declare (not safe))
                                (cons _exn9368_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp10675)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn9364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9364_))
            (let ((_e9366_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9364_ 'exception))))
              (macro-uninitialized-thread-exception? _e9366_))
            (macro-uninitialized-thread-exception? _exn9364_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn9360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9360_))
            (let ((_e9362_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9360_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e9362_)
                  (macro-uninitialized-thread-exception-arguments _e9362_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp10678
                                (let ()
                                  (declare (not safe))
                                  (cons _e9362_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp10678)))))
            (if (macro-uninitialized-thread-exception? _exn9360_)
                (macro-uninitialized-thread-exception-arguments _exn9360_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp10677
                              (let ()
                                (declare (not safe))
                                (cons _exn9360_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp10677)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn9354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9354_))
            (let ((_e9357_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9354_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e9357_)
                  (macro-uninitialized-thread-exception-procedure _e9357_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp10680
                                (let ()
                                  (declare (not safe))
                                  (cons _e9357_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp10680)))))
            (if (macro-uninitialized-thread-exception? _exn9354_)
                (macro-uninitialized-thread-exception-procedure _exn9354_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp10679
                              (let ()
                                (declare (not safe))
                                (cons _exn9354_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp10679)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn9350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9350_))
            (let ((_e9352_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9350_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e9352_))
            (macro-unknown-keyword-argument-exception? _exn9350_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn9346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9346_))
            (let ((_e9348_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9346_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e9348_)
                  (macro-unknown-keyword-argument-exception-arguments _e9348_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp10682
                                (let ()
                                  (declare (not safe))
                                  (cons _e9348_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp10682)))))
            (if (macro-unknown-keyword-argument-exception? _exn9346_)
                (macro-unknown-keyword-argument-exception-arguments _exn9346_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp10681
                              (let ()
                                (declare (not safe))
                                (cons _exn9346_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp10681)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn9340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9340_))
            (let ((_e9343_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9340_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e9343_)
                  (macro-unknown-keyword-argument-exception-procedure _e9343_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp10684
                                (let ()
                                  (declare (not safe))
                                  (cons _e9343_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp10684)))))
            (if (macro-unknown-keyword-argument-exception? _exn9340_)
                (macro-unknown-keyword-argument-exception-procedure _exn9340_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp10683
                              (let ()
                                (declare (not safe))
                                (cons _exn9340_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp10683)))))))
    (define unterminated-process-exception?
      (lambda (_exn9336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9336_))
            (let ((_e9338_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9336_ 'exception))))
              (macro-unterminated-process-exception? _e9338_))
            (macro-unterminated-process-exception? _exn9336_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn9332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9332_))
            (let ((_e9334_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9332_ 'exception))))
              (if (macro-unterminated-process-exception? _e9334_)
                  (macro-unterminated-process-exception-arguments _e9334_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp10686
                                (let ()
                                  (declare (not safe))
                                  (cons _e9334_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp10686)))))
            (if (macro-unterminated-process-exception? _exn9332_)
                (macro-unterminated-process-exception-arguments _exn9332_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp10685
                              (let ()
                                (declare (not safe))
                                (cons _exn9332_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp10685)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn9326_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9326_))
            (let ((_e9329_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9326_ 'exception))))
              (if (macro-unterminated-process-exception? _e9329_)
                  (macro-unterminated-process-exception-procedure _e9329_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp10688
                                (let ()
                                  (declare (not safe))
                                  (cons _e9329_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp10688)))))
            (if (macro-unterminated-process-exception? _exn9326_)
                (macro-unterminated-process-exception-procedure _exn9326_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp10687
                              (let ()
                                (declare (not safe))
                                (cons _exn9326_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp10687)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn9322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9322_))
            (let ((_e9324_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9322_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e9324_))
            (macro-wrong-number-of-arguments-exception? _exn9322_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn9318_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9318_))
            (let ((_e9320_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9318_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e9320_)
                  (macro-wrong-number-of-arguments-exception-arguments _e9320_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp10690
                                (let ()
                                  (declare (not safe))
                                  (cons _e9320_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp10690)))))
            (if (macro-wrong-number-of-arguments-exception? _exn9318_)
                (macro-wrong-number-of-arguments-exception-arguments _exn9318_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp10689
                              (let ()
                                (declare (not safe))
                                (cons _exn9318_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp10689)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn9312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9312_))
            (let ((_e9315_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9312_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e9315_)
                  (macro-wrong-number-of-arguments-exception-procedure _e9315_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp10692
                                (let ()
                                  (declare (not safe))
                                  (cons _e9315_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp10692)))))
            (if (macro-wrong-number-of-arguments-exception? _exn9312_)
                (macro-wrong-number-of-arguments-exception-procedure _exn9312_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp10691
                              (let ()
                                (declare (not safe))
                                (cons _exn9312_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp10691)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn9308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9308_))
            (let ((_e9310_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9308_ 'exception))))
              (macro-wrong-number-of-values-exception? _e9310_))
            (macro-wrong-number-of-values-exception? _exn9308_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn9304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9304_))
            (let ((_e9306_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9304_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e9306_)
                  (macro-wrong-number-of-values-exception-code _e9306_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp10694
                                (let ()
                                  (declare (not safe))
                                  (cons _e9306_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp10694)))))
            (if (macro-wrong-number-of-values-exception? _exn9304_)
                (macro-wrong-number-of-values-exception-code _exn9304_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp10693
                              (let ()
                                (declare (not safe))
                                (cons _exn9304_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp10693)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn9300_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9300_))
            (let ((_e9302_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9300_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e9302_)
                  (macro-wrong-number-of-values-exception-rte _e9302_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp10696
                                (let ()
                                  (declare (not safe))
                                  (cons _e9302_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp10696)))))
            (if (macro-wrong-number-of-values-exception? _exn9300_)
                (macro-wrong-number-of-values-exception-rte _exn9300_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp10695
                              (let ()
                                (declare (not safe))
                                (cons _exn9300_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp10695)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn9294_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9294_))
            (let ((_e9297_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9294_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e9297_)
                  (macro-wrong-number-of-values-exception-vals _e9297_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp10698
                                (let ()
                                  (declare (not safe))
                                  (cons _e9297_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp10698)))))
            (if (macro-wrong-number-of-values-exception? _exn9294_)
                (macro-wrong-number-of-values-exception-vals _exn9294_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp10697
                              (let ()
                                (declare (not safe))
                                (cons _exn9294_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp10697)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn9288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn9288_))
            (let ((_e9291_ (let ()
                             (declare (not safe))
                             (slot-ref _exn9288_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e9291_))
            (macro-wrong-processor-c-return-exception? _exn9288_))))))
