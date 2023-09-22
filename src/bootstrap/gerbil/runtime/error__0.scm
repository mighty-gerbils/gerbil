(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1695392652)
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
      (lambda _$args12471_
        (apply make-class-instance Exception::t _$args12471_)))
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
      (lambda _$args12468_
        (apply make-class-instance StackTrace::t _$args12468_)))
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
      (let ((__tmp12491
             (let ((__tmp12492
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12492))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12491
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12465_ (apply make-class-instance Error::t _$args12465_)))
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
      (let ((__tmp12493
             (let ((__tmp12494
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12494))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12493
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12462_
        (apply make-class-instance RuntimeException::t _$args12462_)))
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
      (lambda (_exn12457_ _continue12458_)
        (let ((_exn12460_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12457_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12460_ _continue12458_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12453_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12453_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12453_ 'continuation))
                '#!void
                (let ((__tmp12495
                       (lambda (_cont12455_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12453_
                            'continuation
                            _cont12455_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12495)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12453_))))
    (define error
      (lambda (_message12450_ . _irritants12451_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12450_
                  'irritants:
                  _irritants12451_)))))
    (define with-exception-handler
      (lambda (_handler12443_ _thunk12444_)
        (if (let () (declare (not safe)) (procedure? _handler12443_))
            '#!void
            (raise (let ((__tmp12496
                          (let ()
                            (declare (not safe))
                            (cons _handler12443_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12496))))
        (if (let () (declare (not safe)) (procedure? _thunk12444_))
            '#!void
            (raise (let ((__tmp12497
                          (let ()
                            (declare (not safe))
                            (cons _thunk12444_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12497))))
        (let ((__tmp12498
               (lambda (_exn12446_)
                 (let ((_exn12448_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12446_))))
                   (_handler12443_ _exn12448_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12498 _thunk12444_))))
    (define with-catch
      (lambda (_handler12436_ _thunk12437_)
        (if (let () (declare (not safe)) (procedure? _handler12436_))
            '#!void
            (raise (let ((__tmp12499
                          (let ()
                            (declare (not safe))
                            (cons _handler12436_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12499))))
        (if (let () (declare (not safe)) (procedure? _thunk12437_))
            '#!void
            (raise (let ((__tmp12500
                          (let ()
                            (declare (not safe))
                            (cons _thunk12437_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12500))))
        (let ((__tmp12501
               (lambda (_cont12439_)
                 (with-exception-handler
                  (lambda (_exn12441_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12439_
                       _handler12436_
                       _exn12441_)))
                  _thunk12437_))))
          (declare (not safe))
          (##continuation-capture __tmp12501))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12427_)
        (if (or (heap-overflow-exception? _exn12427_)
                (stack-overflow-exception? _exn12427_))
            _exn12427_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12427_))
                _exn12427_
                (if (macro-exception? _exn12427_)
                    (let ((_rte12432_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12427_))))
                      (let ((__tmp12502
                             (lambda (_cont12434_)
                               (let ((__tmp12503
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12434_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12432_
                                  'continuation
                                  __tmp12503)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12502))
                      _rte12432_)
                    _exn12427_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12422_)
        (let ((_$e12424_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12422_))))
          (if _$e12424_ _$e12424_ (error-exception? _obj12422_)))))
    (define error-message
      (lambda (_obj12420_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12420_))
            (let () (declare (not safe)) (slot-ref _obj12420_ 'message))
            (if (error-exception? _obj12420_)
                (error-exception-message _obj12420_)
                '#f))))
    (define error-irritants
      (lambda (_obj12418_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12418_))
            (let () (declare (not safe)) (slot-ref _obj12418_ 'irritants))
            (if (error-exception? _obj12418_)
                (error-exception-parameters _obj12418_)
                '#f))))
    (define error-trace
      (lambda (_obj12416_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12416_))
            (let () (declare (not safe)) (slot-ref _obj12416_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12398_ _port12399_)
        (let ((_$e12401_
               (let ()
                 (declare (not safe))
                 (method-ref _e12398_ 'display-exception))))
          (if _$e12401_
              ((lambda (_f12404_) (_f12404_ _e12398_ _port12399_)) _$e12401_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12398_ _port12399_))))))
    (define display-exception__0
      (lambda (_e12409_)
        (let ((_port12411_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12409_ _port12411_))))
    (define display-exception
      (lambda _g12505_
        (let ((_g12504_ (let () (declare (not safe)) (##length _g12505_))))
          (cond ((let () (declare (not safe)) (##fx= _g12504_ 1))
                 (apply (lambda (_e12409_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12409_)))
                        _g12505_))
                ((let () (declare (not safe)) (##fx= _g12504_ 2))
                 (apply (lambda (_e12413_ _port12414_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12413_ _port12414_)))
                        _g12505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12505_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12393_ _message12394_ . _rest12395_)
        (let ()
          (declare (not safe))
          (unchecked-slot-set! _self12393_ 'message _message12394_))
        (apply class-instance-init! _self12393_ _rest12395_)))
    (define Error:::init!::specialize
      (lambda (__t12473)
        (let ((__message12474
               (let ((__tmp12475
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12473 'message))))
                 (if __tmp12475
                     (let () (declare (not safe)) (##fx+ __tmp12475 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12393_ _message12394_ . _rest12395_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self12393_
               _message12394_
               __message12474
               __t12473
               '#f))
            (apply class-instance-init! _self12393_ _rest12395_)))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define Error::display-exception
      (lambda (_self12251_ _port12252_)
        (let ((_tmp-port12254_ (open-output-string))
              (_display-error-newline12255_
               (> (output-port-column _port12252_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12254_))
          (let ((__tmp12506
                 (lambda ()
                   (if _display-error-newline12255_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12258_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12251_ 'where))))
                     (if _$e12258_ (display _$e12258_) (display '"?")))
                   (let ((__tmp12507
                          (let ((__tmp12508
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12251_))))
                            (declare (not safe))
                            (##type-name __tmp12508))))
                     (declare (not safe))
                     (display* '" [" __tmp12507 '"]: "))
                   (let ((__tmp12509
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12251_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12509))
                   (let ((_irritants12261_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12251_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12261_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12263_)
                              (write _obj12263_)
                              (write-char '#\space))
                            _irritants12261_)
                           (newline))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance? StackTrace::t _self12251_))
                       (let ((_cont1226412266_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12251_ 'continuation))))
                         (if _cont1226412266_
                             (let ((_cont12269_ _cont1226412266_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12269_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12506
             current-output-port
             _tmp-port12254_))
          (let ((__tmp12510 (get-output-string _tmp-port12254_)))
            (declare (not safe))
            (##write-string __tmp12510 _port12252_)))))
    (define Error::display-exception::specialize
      (lambda (__t12476)
        (let ((__continuation12477
               (let ((__tmp12481
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12476 'continuation))))
                 (if __tmp12481
                     (let () (declare (not safe)) (##fx+ __tmp12481 '1))
                     (error '"Unknown slot" 'continuation))))
              (__message12478
               (let ((__tmp12482
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12476 'message))))
                 (if __tmp12482
                     (let () (declare (not safe)) (##fx+ __tmp12482 '1))
                     (error '"Unknown slot" 'message))))
              (__where12479
               (let ((__tmp12483
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12476 'where))))
                 (if __tmp12483
                     (let () (declare (not safe)) (##fx+ __tmp12483 '1))
                     (error '"Unknown slot" 'where))))
              (__irritants12480
               (let ((__tmp12484
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12476 'irritants))))
                 (if __tmp12484
                     (let () (declare (not safe)) (##fx+ __tmp12484 '1))
                     (error '"Unknown slot" 'irritants))))
              (__class12485
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12476))))
          (lambda (_self12251_ _port12252_)
            (let ((_tmp-port12254_ (open-output-string))
                  (_display-error-newline12255_
                   (> (output-port-column _port12252_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12254_))
              (let ((__tmp12511
                     (lambda ()
                       (if _display-error-newline12255_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12258_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12251_
                                 __where12479
                                 __t12476
                                 '#f))))
                         (if _$e12258_ (display _$e12258_) (display '"?")))
                       (let ((__tmp12512
                              (let ((__tmp12513
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12251_))))
                                (declare (not safe))
                                (##type-name __tmp12513))))
                         (declare (not safe))
                         (display* '" [" __tmp12512 '"]: "))
                       (let ((__tmp12514
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12251_
                                 __message12478
                                 __t12476
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12514))
                       (let ((_irritants12261_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12251_
                                 __irritants12480
                                 __t12476
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12261_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12263_)
                                  (write _obj12263_)
                                  (write-char '#\space))
                                _irritants12261_)
                               (newline))))
                       (if __class12485
                           (let ((_cont1226412266_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12251_
                                     __continuation12477
                                     __t12476
                                     '#f))))
                             (if _cont1226412266_
                                 (let ((_cont12269_ _cont1226412266_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12269_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12511
                 current-output-port
                 _tmp-port12254_))
              (let ((__tmp12515 (get-output-string _tmp-port12254_)))
                (declare (not safe))
                (##write-string __tmp12515 _port12252_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12118_ _port12119_)
        (let ((_tmp-port12121_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12121_))
          (let ((__tmp12516
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12118_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12516 _tmp-port12121_))
          (let ((_cont1212212124_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12118_ 'continuation))))
            (if _cont1212212124_
                (let ((_cont12127_ _cont1212212124_))
                  (display '"--- continuation backtrace:" _tmp-port12121_)
                  (newline _tmp-port12121_)
                  (display-continuation-backtrace _cont12127_ _tmp-port12121_))
                '#f))
          (let ((__tmp12517 (get-output-string _tmp-port12121_)))
            (declare (not safe))
            (##write-string __tmp12517 _port12119_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12486)
        (let ((__exception12487
               (let ((__tmp12489
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12486 'exception))))
                 (if __tmp12489
                     (let () (declare (not safe)) (##fx+ __tmp12489 '1))
                     (error '"Unknown slot" 'exception))))
              (__continuation12488
               (let ((__tmp12490
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12486 'continuation))))
                 (if __tmp12490
                     (let () (declare (not safe)) (##fx+ __tmp12490 '1))
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self12118_ _port12119_)
            (let ((_tmp-port12121_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12121_))
              (let ((__tmp12518
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12118_
                        __exception12487
                        __t12486
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12518 _tmp-port12121_))
              (let ((_cont1212212124_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12118_
                        __continuation12488
                        __t12486
                        '#f))))
                (if _cont1212212124_
                    (let ((_cont12127_ _cont1212212124_))
                      (display '"--- continuation backtrace:" _tmp-port12121_)
                      (newline _tmp-port12121_)
                      (display-continuation-backtrace
                       _cont12127_
                       _tmp-port12121_))
                    '#f))
              (let ((__tmp12519 (get-output-string _tmp-port12121_)))
                (declare (not safe))
                (##write-string __tmp12519 _port12119_)))))))
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
      (lambda (_port11990_)
        (if (macro-character-port? _port11990_)
            (let ((_old-width11992_
                   (macro-character-port-output-width _port11990_)))
              (macro-character-port-output-width-set!
               _port11990_
               (lambda (_port11994_) '256))
              _old-width11992_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11987_ _old-width11988_)
        (if (macro-character-port? _port11987_)
            (macro-character-port-output-width-set!
             _port11987_
             _old-width11988_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11985_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e11985_))))
    (define abandoned-mutex-exception?
      (lambda (_exn11979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11979_))
            (let ((_e11982_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11979_ 'exception))))
              (macro-abandoned-mutex-exception? _e11982_))
            (macro-abandoned-mutex-exception? _exn11979_))))
    (define cfun-conversion-exception?
      (lambda (_exn11975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11975_))
            (let ((_e11977_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11975_ 'exception))))
              (macro-cfun-conversion-exception? _e11977_))
            (macro-cfun-conversion-exception? _exn11975_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11971_))
            (let ((_e11973_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11971_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11973_)
                  (macro-cfun-conversion-exception-arguments _e11973_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12521
                                (let ()
                                  (declare (not safe))
                                  (cons _e11973_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12521)))))
            (if (macro-cfun-conversion-exception? _exn11971_)
                (macro-cfun-conversion-exception-arguments _exn11971_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12520
                              (let ()
                                (declare (not safe))
                                (cons _exn11971_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12520)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11967_))
            (let ((_e11969_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11967_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11969_)
                  (macro-cfun-conversion-exception-code _e11969_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12523
                                (let ()
                                  (declare (not safe))
                                  (cons _e11969_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12523)))))
            (if (macro-cfun-conversion-exception? _exn11967_)
                (macro-cfun-conversion-exception-code _exn11967_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12522
                              (let ()
                                (declare (not safe))
                                (cons _exn11967_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12522)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11963_))
            (let ((_e11965_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11963_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11965_)
                  (macro-cfun-conversion-exception-message _e11965_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12525
                                (let ()
                                  (declare (not safe))
                                  (cons _e11965_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12525)))))
            (if (macro-cfun-conversion-exception? _exn11963_)
                (macro-cfun-conversion-exception-message _exn11963_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12524
                              (let ()
                                (declare (not safe))
                                (cons _exn11963_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12524)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11957_))
            (let ((_e11960_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11957_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11960_)
                  (macro-cfun-conversion-exception-procedure _e11960_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12527
                                (let ()
                                  (declare (not safe))
                                  (cons _e11960_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12527)))))
            (if (macro-cfun-conversion-exception? _exn11957_)
                (macro-cfun-conversion-exception-procedure _exn11957_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12526
                              (let ()
                                (declare (not safe))
                                (cons _exn11957_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12526)))))))
    (define datum-parsing-exception?
      (lambda (_exn11953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11953_))
            (let ((_e11955_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11953_ 'exception))))
              (macro-datum-parsing-exception? _e11955_))
            (macro-datum-parsing-exception? _exn11953_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11949_))
            (let ((_e11951_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11949_ 'exception))))
              (if (macro-datum-parsing-exception? _e11951_)
                  (macro-datum-parsing-exception-kind _e11951_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12529
                                (let ()
                                  (declare (not safe))
                                  (cons _e11951_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12529)))))
            (if (macro-datum-parsing-exception? _exn11949_)
                (macro-datum-parsing-exception-kind _exn11949_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12528
                              (let ()
                                (declare (not safe))
                                (cons _exn11949_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12528)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11945_))
            (let ((_e11947_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11945_ 'exception))))
              (if (macro-datum-parsing-exception? _e11947_)
                  (macro-datum-parsing-exception-parameters _e11947_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12531
                                (let ()
                                  (declare (not safe))
                                  (cons _e11947_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12531)))))
            (if (macro-datum-parsing-exception? _exn11945_)
                (macro-datum-parsing-exception-parameters _exn11945_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12530
                              (let ()
                                (declare (not safe))
                                (cons _exn11945_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12530)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11939_))
            (let ((_e11942_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11939_ 'exception))))
              (if (macro-datum-parsing-exception? _e11942_)
                  (macro-datum-parsing-exception-readenv _e11942_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12533
                                (let ()
                                  (declare (not safe))
                                  (cons _e11942_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12533)))))
            (if (macro-datum-parsing-exception? _exn11939_)
                (macro-datum-parsing-exception-readenv _exn11939_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12532
                              (let ()
                                (declare (not safe))
                                (cons _exn11939_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12532)))))))
    (define deadlock-exception?
      (lambda (_exn11933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11933_))
            (let ((_e11936_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11933_ 'exception))))
              (macro-deadlock-exception? _e11936_))
            (macro-deadlock-exception? _exn11933_))))
    (define divide-by-zero-exception?
      (lambda (_exn11929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11929_))
            (let ((_e11931_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11929_ 'exception))))
              (macro-divide-by-zero-exception? _e11931_))
            (macro-divide-by-zero-exception? _exn11929_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11925_))
            (let ((_e11927_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11925_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11927_)
                  (macro-divide-by-zero-exception-arguments _e11927_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12535
                                (let ()
                                  (declare (not safe))
                                  (cons _e11927_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12535)))))
            (if (macro-divide-by-zero-exception? _exn11925_)
                (macro-divide-by-zero-exception-arguments _exn11925_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12534
                              (let ()
                                (declare (not safe))
                                (cons _exn11925_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12534)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11919_))
            (let ((_e11922_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11919_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11922_)
                  (macro-divide-by-zero-exception-procedure _e11922_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12537
                                (let ()
                                  (declare (not safe))
                                  (cons _e11922_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12537)))))
            (if (macro-divide-by-zero-exception? _exn11919_)
                (macro-divide-by-zero-exception-procedure _exn11919_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12536
                              (let ()
                                (declare (not safe))
                                (cons _exn11919_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12536)))))))
    (define error-exception?
      (lambda (_exn11915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11915_))
            (let ((_e11917_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11915_ 'exception))))
              (macro-error-exception? _e11917_))
            (macro-error-exception? _exn11915_))))
    (define error-exception-message
      (lambda (_exn11911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11911_))
            (let ((_e11913_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11911_ 'exception))))
              (if (macro-error-exception? _e11913_)
                  (macro-error-exception-message _e11913_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12539
                                (let ()
                                  (declare (not safe))
                                  (cons _e11913_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12539)))))
            (if (macro-error-exception? _exn11911_)
                (macro-error-exception-message _exn11911_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12538
                              (let ()
                                (declare (not safe))
                                (cons _exn11911_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12538)))))))
    (define error-exception-parameters
      (lambda (_exn11905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11905_))
            (let ((_e11908_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11905_ 'exception))))
              (if (macro-error-exception? _e11908_)
                  (macro-error-exception-parameters _e11908_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12541
                                (let ()
                                  (declare (not safe))
                                  (cons _e11908_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12541)))))
            (if (macro-error-exception? _exn11905_)
                (macro-error-exception-parameters _exn11905_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12540
                              (let ()
                                (declare (not safe))
                                (cons _exn11905_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12540)))))))
    (define expression-parsing-exception?
      (lambda (_exn11901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11901_))
            (let ((_e11903_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11901_ 'exception))))
              (macro-expression-parsing-exception? _e11903_))
            (macro-expression-parsing-exception? _exn11901_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11897_))
            (let ((_e11899_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11897_ 'exception))))
              (if (macro-expression-parsing-exception? _e11899_)
                  (macro-expression-parsing-exception-kind _e11899_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12543
                                (let ()
                                  (declare (not safe))
                                  (cons _e11899_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12543)))))
            (if (macro-expression-parsing-exception? _exn11897_)
                (macro-expression-parsing-exception-kind _exn11897_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12542
                              (let ()
                                (declare (not safe))
                                (cons _exn11897_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12542)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11893_))
            (let ((_e11895_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11893_ 'exception))))
              (if (macro-expression-parsing-exception? _e11895_)
                  (macro-expression-parsing-exception-parameters _e11895_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12545
                                (let ()
                                  (declare (not safe))
                                  (cons _e11895_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12545)))))
            (if (macro-expression-parsing-exception? _exn11893_)
                (macro-expression-parsing-exception-parameters _exn11893_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12544
                              (let ()
                                (declare (not safe))
                                (cons _exn11893_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12544)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11887_))
            (let ((_e11890_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11887_ 'exception))))
              (if (macro-expression-parsing-exception? _e11890_)
                  (macro-expression-parsing-exception-source _e11890_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12547
                                (let ()
                                  (declare (not safe))
                                  (cons _e11890_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12547)))))
            (if (macro-expression-parsing-exception? _exn11887_)
                (macro-expression-parsing-exception-source _exn11887_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12546
                              (let ()
                                (declare (not safe))
                                (cons _exn11887_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12546)))))))
    (define file-exists-exception?
      (lambda (_exn11883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11883_))
            (let ((_e11885_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11883_ 'exception))))
              (macro-file-exists-exception? _e11885_))
            (macro-file-exists-exception? _exn11883_))))
    (define file-exists-exception-arguments
      (lambda (_exn11879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11879_))
            (let ((_e11881_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11879_ 'exception))))
              (if (macro-file-exists-exception? _e11881_)
                  (macro-file-exists-exception-arguments _e11881_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12549
                                (let ()
                                  (declare (not safe))
                                  (cons _e11881_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12549)))))
            (if (macro-file-exists-exception? _exn11879_)
                (macro-file-exists-exception-arguments _exn11879_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12548
                              (let ()
                                (declare (not safe))
                                (cons _exn11879_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12548)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11873_))
            (let ((_e11876_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11873_ 'exception))))
              (if (macro-file-exists-exception? _e11876_)
                  (macro-file-exists-exception-procedure _e11876_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12551
                                (let ()
                                  (declare (not safe))
                                  (cons _e11876_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12551)))))
            (if (macro-file-exists-exception? _exn11873_)
                (macro-file-exists-exception-procedure _exn11873_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12550
                              (let ()
                                (declare (not safe))
                                (cons _exn11873_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12550)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11869_))
            (let ((_e11871_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11869_ 'exception))))
              (macro-fixnum-overflow-exception? _e11871_))
            (macro-fixnum-overflow-exception? _exn11869_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11865_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11865_))
            (let ((_e11867_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11865_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11867_)
                  (macro-fixnum-overflow-exception-arguments _e11867_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12553
                                (let ()
                                  (declare (not safe))
                                  (cons _e11867_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12553)))))
            (if (macro-fixnum-overflow-exception? _exn11865_)
                (macro-fixnum-overflow-exception-arguments _exn11865_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12552
                              (let ()
                                (declare (not safe))
                                (cons _exn11865_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12552)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11859_))
            (let ((_e11862_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11859_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11862_)
                  (macro-fixnum-overflow-exception-procedure _e11862_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12555
                                (let ()
                                  (declare (not safe))
                                  (cons _e11862_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12555)))))
            (if (macro-fixnum-overflow-exception? _exn11859_)
                (macro-fixnum-overflow-exception-procedure _exn11859_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12554
                              (let ()
                                (declare (not safe))
                                (cons _exn11859_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12554)))))))
    (define heap-overflow-exception?
      (lambda (_exn11853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11853_))
            (let ((_e11856_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11853_ 'exception))))
              (macro-heap-overflow-exception? _e11856_))
            (macro-heap-overflow-exception? _exn11853_))))
    (define inactive-thread-exception?
      (lambda (_exn11849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11849_))
            (let ((_e11851_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11849_ 'exception))))
              (macro-inactive-thread-exception? _e11851_))
            (macro-inactive-thread-exception? _exn11849_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11845_))
            (let ((_e11847_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11845_ 'exception))))
              (if (macro-inactive-thread-exception? _e11847_)
                  (macro-inactive-thread-exception-arguments _e11847_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12557
                                (let ()
                                  (declare (not safe))
                                  (cons _e11847_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12557)))))
            (if (macro-inactive-thread-exception? _exn11845_)
                (macro-inactive-thread-exception-arguments _exn11845_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12556
                              (let ()
                                (declare (not safe))
                                (cons _exn11845_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12556)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11839_))
            (let ((_e11842_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11839_ 'exception))))
              (if (macro-inactive-thread-exception? _e11842_)
                  (macro-inactive-thread-exception-procedure _e11842_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12559
                                (let ()
                                  (declare (not safe))
                                  (cons _e11842_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12559)))))
            (if (macro-inactive-thread-exception? _exn11839_)
                (macro-inactive-thread-exception-procedure _exn11839_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12558
                              (let ()
                                (declare (not safe))
                                (cons _exn11839_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12558)))))))
    (define initialized-thread-exception?
      (lambda (_exn11835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11835_))
            (let ((_e11837_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11835_ 'exception))))
              (macro-initialized-thread-exception? _e11837_))
            (macro-initialized-thread-exception? _exn11835_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11831_))
            (let ((_e11833_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11831_ 'exception))))
              (if (macro-initialized-thread-exception? _e11833_)
                  (macro-initialized-thread-exception-arguments _e11833_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12561
                                (let ()
                                  (declare (not safe))
                                  (cons _e11833_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12561)))))
            (if (macro-initialized-thread-exception? _exn11831_)
                (macro-initialized-thread-exception-arguments _exn11831_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12560
                              (let ()
                                (declare (not safe))
                                (cons _exn11831_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12560)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11825_))
            (let ((_e11828_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11825_ 'exception))))
              (if (macro-initialized-thread-exception? _e11828_)
                  (macro-initialized-thread-exception-procedure _e11828_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12563
                                (let ()
                                  (declare (not safe))
                                  (cons _e11828_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12563)))))
            (if (macro-initialized-thread-exception? _exn11825_)
                (macro-initialized-thread-exception-procedure _exn11825_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12562
                              (let ()
                                (declare (not safe))
                                (cons _exn11825_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12562)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11821_))
            (let ((_e11823_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11821_ 'exception))))
              (macro-invalid-hash-number-exception? _e11823_))
            (macro-invalid-hash-number-exception? _exn11821_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11817_))
            (let ((_e11819_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11817_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11819_)
                  (macro-invalid-hash-number-exception-arguments _e11819_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12565
                                (let ()
                                  (declare (not safe))
                                  (cons _e11819_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12565)))))
            (if (macro-invalid-hash-number-exception? _exn11817_)
                (macro-invalid-hash-number-exception-arguments _exn11817_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12564
                              (let ()
                                (declare (not safe))
                                (cons _exn11817_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12564)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11811_))
            (let ((_e11814_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11811_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11814_)
                  (macro-invalid-hash-number-exception-procedure _e11814_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12567
                                (let ()
                                  (declare (not safe))
                                  (cons _e11814_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12567)))))
            (if (macro-invalid-hash-number-exception? _exn11811_)
                (macro-invalid-hash-number-exception-procedure _exn11811_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12566
                              (let ()
                                (declare (not safe))
                                (cons _exn11811_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12566)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11807_))
            (let ((_e11809_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11807_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11809_))
            (macro-invalid-utf8-encoding-exception? _exn11807_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11803_))
            (let ((_e11805_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11803_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11805_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11805_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12569
                                (let ()
                                  (declare (not safe))
                                  (cons _e11805_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12569)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11803_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11803_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12568
                              (let ()
                                (declare (not safe))
                                (cons _exn11803_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12568)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11797_))
            (let ((_e11800_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11797_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11800_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11800_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12571
                                (let ()
                                  (declare (not safe))
                                  (cons _e11800_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12571)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11797_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11797_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12570
                              (let ()
                                (declare (not safe))
                                (cons _exn11797_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12570)))))))
    (define join-timeout-exception?
      (lambda (_exn11793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11793_))
            (let ((_e11795_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11793_ 'exception))))
              (macro-join-timeout-exception? _e11795_))
            (macro-join-timeout-exception? _exn11793_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11789_))
            (let ((_e11791_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11789_ 'exception))))
              (if (macro-join-timeout-exception? _e11791_)
                  (macro-join-timeout-exception-arguments _e11791_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12573
                                (let ()
                                  (declare (not safe))
                                  (cons _e11791_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12573)))))
            (if (macro-join-timeout-exception? _exn11789_)
                (macro-join-timeout-exception-arguments _exn11789_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12572
                              (let ()
                                (declare (not safe))
                                (cons _exn11789_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12572)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11783_))
            (let ((_e11786_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11783_ 'exception))))
              (if (macro-join-timeout-exception? _e11786_)
                  (macro-join-timeout-exception-procedure _e11786_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12575
                                (let ()
                                  (declare (not safe))
                                  (cons _e11786_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12575)))))
            (if (macro-join-timeout-exception? _exn11783_)
                (macro-join-timeout-exception-procedure _exn11783_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12574
                              (let ()
                                (declare (not safe))
                                (cons _exn11783_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12574)))))))
    (define keyword-expected-exception?
      (lambda (_exn11779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11779_))
            (let ((_e11781_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11779_ 'exception))))
              (macro-keyword-expected-exception? _e11781_))
            (macro-keyword-expected-exception? _exn11779_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11775_))
            (let ((_e11777_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11775_ 'exception))))
              (if (macro-keyword-expected-exception? _e11777_)
                  (macro-keyword-expected-exception-arguments _e11777_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12577
                                (let ()
                                  (declare (not safe))
                                  (cons _e11777_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12577)))))
            (if (macro-keyword-expected-exception? _exn11775_)
                (macro-keyword-expected-exception-arguments _exn11775_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12576
                              (let ()
                                (declare (not safe))
                                (cons _exn11775_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12576)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11769_))
            (let ((_e11772_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11769_ 'exception))))
              (if (macro-keyword-expected-exception? _e11772_)
                  (macro-keyword-expected-exception-procedure _e11772_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12579
                                (let ()
                                  (declare (not safe))
                                  (cons _e11772_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12579)))))
            (if (macro-keyword-expected-exception? _exn11769_)
                (macro-keyword-expected-exception-procedure _exn11769_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12578
                              (let ()
                                (declare (not safe))
                                (cons _exn11769_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12578)))))))
    (define length-mismatch-exception?
      (lambda (_exn11765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11765_))
            (let ((_e11767_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11765_ 'exception))))
              (macro-length-mismatch-exception? _e11767_))
            (macro-length-mismatch-exception? _exn11765_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11761_))
            (let ((_e11763_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11761_ 'exception))))
              (if (macro-length-mismatch-exception? _e11763_)
                  (macro-length-mismatch-exception-arg-id _e11763_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12581
                                (let ()
                                  (declare (not safe))
                                  (cons _e11763_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12581)))))
            (if (macro-length-mismatch-exception? _exn11761_)
                (macro-length-mismatch-exception-arg-id _exn11761_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12580
                              (let ()
                                (declare (not safe))
                                (cons _exn11761_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12580)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11757_))
            (let ((_e11759_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11757_ 'exception))))
              (if (macro-length-mismatch-exception? _e11759_)
                  (macro-length-mismatch-exception-arguments _e11759_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12583
                                (let ()
                                  (declare (not safe))
                                  (cons _e11759_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12583)))))
            (if (macro-length-mismatch-exception? _exn11757_)
                (macro-length-mismatch-exception-arguments _exn11757_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12582
                              (let ()
                                (declare (not safe))
                                (cons _exn11757_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12582)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11751_))
            (let ((_e11754_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11751_ 'exception))))
              (if (macro-length-mismatch-exception? _e11754_)
                  (macro-length-mismatch-exception-procedure _e11754_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12585
                                (let ()
                                  (declare (not safe))
                                  (cons _e11754_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12585)))))
            (if (macro-length-mismatch-exception? _exn11751_)
                (macro-length-mismatch-exception-procedure _exn11751_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12584
                              (let ()
                                (declare (not safe))
                                (cons _exn11751_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12584)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11747_))
            (let ((_e11749_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11747_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11749_))
            (macro-mailbox-receive-timeout-exception? _exn11747_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11743_))
            (let ((_e11745_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11743_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11745_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11745_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12587
                                (let ()
                                  (declare (not safe))
                                  (cons _e11745_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12587)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11743_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11743_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12586
                              (let ()
                                (declare (not safe))
                                (cons _exn11743_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12586)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11737_))
            (let ((_e11740_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11737_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11740_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11740_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12589
                                (let ()
                                  (declare (not safe))
                                  (cons _e11740_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12589)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11737_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11737_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12588
                              (let ()
                                (declare (not safe))
                                (cons _exn11737_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12588)))))))
    (define module-not-found-exception?
      (lambda (_exn11733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11733_))
            (let ((_e11735_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11733_ 'exception))))
              (macro-module-not-found-exception? _e11735_))
            (macro-module-not-found-exception? _exn11733_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11729_))
            (let ((_e11731_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11729_ 'exception))))
              (if (macro-module-not-found-exception? _e11731_)
                  (macro-module-not-found-exception-arguments _e11731_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12591
                                (let ()
                                  (declare (not safe))
                                  (cons _e11731_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12591)))))
            (if (macro-module-not-found-exception? _exn11729_)
                (macro-module-not-found-exception-arguments _exn11729_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12590
                              (let ()
                                (declare (not safe))
                                (cons _exn11729_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12590)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11723_))
            (let ((_e11726_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11723_ 'exception))))
              (if (macro-module-not-found-exception? _e11726_)
                  (macro-module-not-found-exception-procedure _e11726_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12593
                                (let ()
                                  (declare (not safe))
                                  (cons _e11726_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12593)))))
            (if (macro-module-not-found-exception? _exn11723_)
                (macro-module-not-found-exception-procedure _exn11723_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12592
                              (let ()
                                (declare (not safe))
                                (cons _exn11723_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12592)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11717_))
            (let ((_e11720_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11717_ 'exception))))
              (macro-multiple-c-return-exception? _e11720_))
            (macro-multiple-c-return-exception? _exn11717_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11713_))
            (let ((_e11715_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11713_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11715_))
            (macro-no-such-file-or-directory-exception? _exn11713_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11709_))
            (let ((_e11711_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11709_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11711_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11711_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12595
                                (let ()
                                  (declare (not safe))
                                  (cons _e11711_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12595)))))
            (if (macro-no-such-file-or-directory-exception? _exn11709_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11709_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12594
                              (let ()
                                (declare (not safe))
                                (cons _exn11709_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12594)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11703_))
            (let ((_e11706_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11703_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11706_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11706_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12597
                                (let ()
                                  (declare (not safe))
                                  (cons _e11706_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12597)))))
            (if (macro-no-such-file-or-directory-exception? _exn11703_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11703_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12596
                              (let ()
                                (declare (not safe))
                                (cons _exn11703_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12596)))))))
    (define noncontinuable-exception?
      (lambda (_exn11699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11699_))
            (let ((_e11701_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11699_ 'exception))))
              (macro-noncontinuable-exception? _e11701_))
            (macro-noncontinuable-exception? _exn11699_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11693_))
            (let ((_e11696_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11693_ 'exception))))
              (if (macro-noncontinuable-exception? _e11696_)
                  (macro-noncontinuable-exception-reason _e11696_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12599
                                (let ()
                                  (declare (not safe))
                                  (cons _e11696_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12599)))))
            (if (macro-noncontinuable-exception? _exn11693_)
                (macro-noncontinuable-exception-reason _exn11693_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12598
                              (let ()
                                (declare (not safe))
                                (cons _exn11693_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12598)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11689_))
            (let ((_e11691_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11689_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11691_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11689_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11685_))
            (let ((_e11687_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11685_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11687_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11687_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12601
                                (let ()
                                  (declare (not safe))
                                  (cons _e11687_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12601)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11685_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11685_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12600
                              (let ()
                                (declare (not safe))
                                (cons _exn11685_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12600)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11679_))
            (let ((_e11682_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11679_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11682_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11682_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12603
                                (let ()
                                  (declare (not safe))
                                  (cons _e11682_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12603)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11679_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11679_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12602
                              (let ()
                                (declare (not safe))
                                (cons _exn11679_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12602)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11675_))
            (let ((_e11677_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11675_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11677_))
            (macro-nonprocedure-operator-exception? _exn11675_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11671_))
            (let ((_e11673_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11671_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11673_)
                  (macro-nonprocedure-operator-exception-arguments _e11673_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12605
                                (let ()
                                  (declare (not safe))
                                  (cons _e11673_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12605)))))
            (if (macro-nonprocedure-operator-exception? _exn11671_)
                (macro-nonprocedure-operator-exception-arguments _exn11671_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12604
                              (let ()
                                (declare (not safe))
                                (cons _exn11671_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12604)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11667_))
            (let ((_e11669_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11667_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11669_)
                  (macro-nonprocedure-operator-exception-code _e11669_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12607
                                (let ()
                                  (declare (not safe))
                                  (cons _e11669_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12607)))))
            (if (macro-nonprocedure-operator-exception? _exn11667_)
                (macro-nonprocedure-operator-exception-code _exn11667_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12606
                              (let ()
                                (declare (not safe))
                                (cons _exn11667_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12606)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11663_))
            (let ((_e11665_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11663_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11665_)
                  (macro-nonprocedure-operator-exception-operator _e11665_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12609
                                (let ()
                                  (declare (not safe))
                                  (cons _e11665_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12609)))))
            (if (macro-nonprocedure-operator-exception? _exn11663_)
                (macro-nonprocedure-operator-exception-operator _exn11663_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12608
                              (let ()
                                (declare (not safe))
                                (cons _exn11663_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12608)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11657_))
            (let ((_e11660_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11657_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11660_)
                  (macro-nonprocedure-operator-exception-rte _e11660_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12611
                                (let ()
                                  (declare (not safe))
                                  (cons _e11660_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12611)))))
            (if (macro-nonprocedure-operator-exception? _exn11657_)
                (macro-nonprocedure-operator-exception-rte _exn11657_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12610
                              (let ()
                                (declare (not safe))
                                (cons _exn11657_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12610)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11653_))
            (let ((_e11655_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11653_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11655_))
            (macro-not-in-compilation-context-exception? _exn11653_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11649_))
            (let ((_e11651_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11649_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11651_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11651_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12613
                                (let ()
                                  (declare (not safe))
                                  (cons _e11651_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12613)))))
            (if (macro-not-in-compilation-context-exception? _exn11649_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11649_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12612
                              (let ()
                                (declare (not safe))
                                (cons _exn11649_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12612)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11643_))
            (let ((_e11646_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11643_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11646_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11646_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12615
                                (let ()
                                  (declare (not safe))
                                  (cons _e11646_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12615)))))
            (if (macro-not-in-compilation-context-exception? _exn11643_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11643_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12614
                              (let ()
                                (declare (not safe))
                                (cons _exn11643_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12614)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11639_))
            (let ((_e11641_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11639_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11641_))
            (macro-number-of-arguments-limit-exception? _exn11639_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11635_))
            (let ((_e11637_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11635_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11637_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11637_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12617
                                (let ()
                                  (declare (not safe))
                                  (cons _e11637_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12617)))))
            (if (macro-number-of-arguments-limit-exception? _exn11635_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11635_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12616
                              (let ()
                                (declare (not safe))
                                (cons _exn11635_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12616)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11629_))
            (let ((_e11632_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11629_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11632_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11632_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12619
                                (let ()
                                  (declare (not safe))
                                  (cons _e11632_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12619)))))
            (if (macro-number-of-arguments-limit-exception? _exn11629_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11629_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12618
                              (let ()
                                (declare (not safe))
                                (cons _exn11629_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12618)))))))
    (define os-exception?
      (lambda (_exn11625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11625_))
            (let ((_e11627_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11625_ 'exception))))
              (macro-os-exception? _e11627_))
            (macro-os-exception? _exn11625_))))
    (define os-exception-arguments
      (lambda (_exn11621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11621_))
            (let ((_e11623_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11621_ 'exception))))
              (if (macro-os-exception? _e11623_)
                  (macro-os-exception-arguments _e11623_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12621
                                (let ()
                                  (declare (not safe))
                                  (cons _e11623_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12621)))))
            (if (macro-os-exception? _exn11621_)
                (macro-os-exception-arguments _exn11621_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12620
                              (let ()
                                (declare (not safe))
                                (cons _exn11621_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12620)))))))
    (define os-exception-code
      (lambda (_exn11617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11617_))
            (let ((_e11619_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11617_ 'exception))))
              (if (macro-os-exception? _e11619_)
                  (macro-os-exception-code _e11619_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12623
                                (let ()
                                  (declare (not safe))
                                  (cons _e11619_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12623)))))
            (if (macro-os-exception? _exn11617_)
                (macro-os-exception-code _exn11617_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12622
                              (let ()
                                (declare (not safe))
                                (cons _exn11617_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12622)))))))
    (define os-exception-message
      (lambda (_exn11613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11613_))
            (let ((_e11615_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11613_ 'exception))))
              (if (macro-os-exception? _e11615_)
                  (macro-os-exception-message _e11615_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12625
                                (let ()
                                  (declare (not safe))
                                  (cons _e11615_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12625)))))
            (if (macro-os-exception? _exn11613_)
                (macro-os-exception-message _exn11613_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12624
                              (let ()
                                (declare (not safe))
                                (cons _exn11613_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12624)))))))
    (define os-exception-procedure
      (lambda (_exn11607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11607_))
            (let ((_e11610_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11607_ 'exception))))
              (if (macro-os-exception? _e11610_)
                  (macro-os-exception-procedure _e11610_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12627
                                (let ()
                                  (declare (not safe))
                                  (cons _e11610_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12627)))))
            (if (macro-os-exception? _exn11607_)
                (macro-os-exception-procedure _exn11607_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12626
                              (let ()
                                (declare (not safe))
                                (cons _exn11607_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12626)))))))
    (define permission-denied-exception?
      (lambda (_exn11603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11603_))
            (let ((_e11605_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11603_ 'exception))))
              (macro-permission-denied-exception? _e11605_))
            (macro-permission-denied-exception? _exn11603_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11599_))
            (let ((_e11601_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11599_ 'exception))))
              (if (macro-permission-denied-exception? _e11601_)
                  (macro-permission-denied-exception-arguments _e11601_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12629
                                (let ()
                                  (declare (not safe))
                                  (cons _e11601_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12629)))))
            (if (macro-permission-denied-exception? _exn11599_)
                (macro-permission-denied-exception-arguments _exn11599_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12628
                              (let ()
                                (declare (not safe))
                                (cons _exn11599_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12628)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11593_))
            (let ((_e11596_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11593_ 'exception))))
              (if (macro-permission-denied-exception? _e11596_)
                  (macro-permission-denied-exception-procedure _e11596_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12631
                                (let ()
                                  (declare (not safe))
                                  (cons _e11596_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12631)))))
            (if (macro-permission-denied-exception? _exn11593_)
                (macro-permission-denied-exception-procedure _exn11593_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12630
                              (let ()
                                (declare (not safe))
                                (cons _exn11593_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12630)))))))
    (define range-exception?
      (lambda (_exn11589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11589_))
            (let ((_e11591_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11589_ 'exception))))
              (macro-range-exception? _e11591_))
            (macro-range-exception? _exn11589_))))
    (define range-exception-arg-id
      (lambda (_exn11585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11585_))
            (let ((_e11587_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11585_ 'exception))))
              (if (macro-range-exception? _e11587_)
                  (macro-range-exception-arg-id _e11587_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12633
                                (let ()
                                  (declare (not safe))
                                  (cons _e11587_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12633)))))
            (if (macro-range-exception? _exn11585_)
                (macro-range-exception-arg-id _exn11585_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12632
                              (let ()
                                (declare (not safe))
                                (cons _exn11585_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12632)))))))
    (define range-exception-arguments
      (lambda (_exn11581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11581_))
            (let ((_e11583_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11581_ 'exception))))
              (if (macro-range-exception? _e11583_)
                  (macro-range-exception-arguments _e11583_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12635
                                (let ()
                                  (declare (not safe))
                                  (cons _e11583_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12635)))))
            (if (macro-range-exception? _exn11581_)
                (macro-range-exception-arguments _exn11581_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12634
                              (let ()
                                (declare (not safe))
                                (cons _exn11581_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12634)))))))
    (define range-exception-procedure
      (lambda (_exn11575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11575_))
            (let ((_e11578_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11575_ 'exception))))
              (if (macro-range-exception? _e11578_)
                  (macro-range-exception-procedure _e11578_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12637
                                (let ()
                                  (declare (not safe))
                                  (cons _e11578_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12637)))))
            (if (macro-range-exception? _exn11575_)
                (macro-range-exception-procedure _exn11575_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12636
                              (let ()
                                (declare (not safe))
                                (cons _exn11575_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12636)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11571_))
            (let ((_e11573_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11571_ 'exception))))
              (macro-rpc-remote-error-exception? _e11573_))
            (macro-rpc-remote-error-exception? _exn11571_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11567_))
            (let ((_e11569_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11567_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11569_)
                  (macro-rpc-remote-error-exception-arguments _e11569_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12639
                                (let ()
                                  (declare (not safe))
                                  (cons _e11569_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12639)))))
            (if (macro-rpc-remote-error-exception? _exn11567_)
                (macro-rpc-remote-error-exception-arguments _exn11567_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12638
                              (let ()
                                (declare (not safe))
                                (cons _exn11567_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12638)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11563_))
            (let ((_e11565_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11563_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11565_)
                  (macro-rpc-remote-error-exception-message _e11565_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12641
                                (let ()
                                  (declare (not safe))
                                  (cons _e11565_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12641)))))
            (if (macro-rpc-remote-error-exception? _exn11563_)
                (macro-rpc-remote-error-exception-message _exn11563_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12640
                              (let ()
                                (declare (not safe))
                                (cons _exn11563_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12640)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11557_))
            (let ((_e11560_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11557_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11560_)
                  (macro-rpc-remote-error-exception-procedure _e11560_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12643
                                (let ()
                                  (declare (not safe))
                                  (cons _e11560_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12643)))))
            (if (macro-rpc-remote-error-exception? _exn11557_)
                (macro-rpc-remote-error-exception-procedure _exn11557_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12642
                              (let ()
                                (declare (not safe))
                                (cons _exn11557_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12642)))))))
    (define scheduler-exception?
      (lambda (_exn11553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11553_))
            (let ((_e11555_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11553_ 'exception))))
              (macro-scheduler-exception? _e11555_))
            (macro-scheduler-exception? _exn11553_))))
    (define scheduler-exception-reason
      (lambda (_exn11547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11547_))
            (let ((_e11550_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11547_ 'exception))))
              (if (macro-scheduler-exception? _e11550_)
                  (macro-scheduler-exception-reason _e11550_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12645
                                (let ()
                                  (declare (not safe))
                                  (cons _e11550_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12645)))))
            (if (macro-scheduler-exception? _exn11547_)
                (macro-scheduler-exception-reason _exn11547_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12644
                              (let ()
                                (declare (not safe))
                                (cons _exn11547_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12644)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11543_))
            (let ((_e11545_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11543_ 'exception))))
              (macro-sfun-conversion-exception? _e11545_))
            (macro-sfun-conversion-exception? _exn11543_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11539_))
            (let ((_e11541_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11539_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11541_)
                  (macro-sfun-conversion-exception-arguments _e11541_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12647
                                (let ()
                                  (declare (not safe))
                                  (cons _e11541_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12647)))))
            (if (macro-sfun-conversion-exception? _exn11539_)
                (macro-sfun-conversion-exception-arguments _exn11539_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12646
                              (let ()
                                (declare (not safe))
                                (cons _exn11539_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12646)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11535_))
            (let ((_e11537_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11535_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11537_)
                  (macro-sfun-conversion-exception-code _e11537_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12649
                                (let ()
                                  (declare (not safe))
                                  (cons _e11537_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12649)))))
            (if (macro-sfun-conversion-exception? _exn11535_)
                (macro-sfun-conversion-exception-code _exn11535_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12648
                              (let ()
                                (declare (not safe))
                                (cons _exn11535_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12648)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11531_))
            (let ((_e11533_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11531_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11533_)
                  (macro-sfun-conversion-exception-message _e11533_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12651
                                (let ()
                                  (declare (not safe))
                                  (cons _e11533_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12651)))))
            (if (macro-sfun-conversion-exception? _exn11531_)
                (macro-sfun-conversion-exception-message _exn11531_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12650
                              (let ()
                                (declare (not safe))
                                (cons _exn11531_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12650)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11525_))
            (let ((_e11528_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11525_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11528_)
                  (macro-sfun-conversion-exception-procedure _e11528_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12653
                                (let ()
                                  (declare (not safe))
                                  (cons _e11528_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12653)))))
            (if (macro-sfun-conversion-exception? _exn11525_)
                (macro-sfun-conversion-exception-procedure _exn11525_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12652
                              (let ()
                                (declare (not safe))
                                (cons _exn11525_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12652)))))))
    (define stack-overflow-exception?
      (lambda (_exn11519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11519_))
            (let ((_e11522_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11519_ 'exception))))
              (macro-stack-overflow-exception? _e11522_))
            (macro-stack-overflow-exception? _exn11519_))))
    (define started-thread-exception?
      (lambda (_exn11515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11515_))
            (let ((_e11517_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11515_ 'exception))))
              (macro-started-thread-exception? _e11517_))
            (macro-started-thread-exception? _exn11515_))))
    (define started-thread-exception-arguments
      (lambda (_exn11511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11511_))
            (let ((_e11513_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11511_ 'exception))))
              (if (macro-started-thread-exception? _e11513_)
                  (macro-started-thread-exception-arguments _e11513_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12655
                                (let ()
                                  (declare (not safe))
                                  (cons _e11513_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12655)))))
            (if (macro-started-thread-exception? _exn11511_)
                (macro-started-thread-exception-arguments _exn11511_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12654
                              (let ()
                                (declare (not safe))
                                (cons _exn11511_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12654)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11505_))
            (let ((_e11508_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11505_ 'exception))))
              (if (macro-started-thread-exception? _e11508_)
                  (macro-started-thread-exception-procedure _e11508_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12657
                                (let ()
                                  (declare (not safe))
                                  (cons _e11508_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12657)))))
            (if (macro-started-thread-exception? _exn11505_)
                (macro-started-thread-exception-procedure _exn11505_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12656
                              (let ()
                                (declare (not safe))
                                (cons _exn11505_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12656)))))))
    (define terminated-thread-exception?
      (lambda (_exn11501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11501_))
            (let ((_e11503_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11501_ 'exception))))
              (macro-terminated-thread-exception? _e11503_))
            (macro-terminated-thread-exception? _exn11501_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11497_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11497_))
            (let ((_e11499_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11497_ 'exception))))
              (if (macro-terminated-thread-exception? _e11499_)
                  (macro-terminated-thread-exception-arguments _e11499_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12659
                                (let ()
                                  (declare (not safe))
                                  (cons _e11499_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12659)))))
            (if (macro-terminated-thread-exception? _exn11497_)
                (macro-terminated-thread-exception-arguments _exn11497_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12658
                              (let ()
                                (declare (not safe))
                                (cons _exn11497_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12658)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11491_))
            (let ((_e11494_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11491_ 'exception))))
              (if (macro-terminated-thread-exception? _e11494_)
                  (macro-terminated-thread-exception-procedure _e11494_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12661
                                (let ()
                                  (declare (not safe))
                                  (cons _e11494_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12661)))))
            (if (macro-terminated-thread-exception? _exn11491_)
                (macro-terminated-thread-exception-procedure _exn11491_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12660
                              (let ()
                                (declare (not safe))
                                (cons _exn11491_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12660)))))))
    (define type-exception?
      (lambda (_exn11487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11487_))
            (let ((_e11489_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11487_ 'exception))))
              (macro-type-exception? _e11489_))
            (macro-type-exception? _exn11487_))))
    (define type-exception-arg-id
      (lambda (_exn11483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11483_))
            (let ((_e11485_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11483_ 'exception))))
              (if (macro-type-exception? _e11485_)
                  (macro-type-exception-arg-id _e11485_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12663
                                (let ()
                                  (declare (not safe))
                                  (cons _e11485_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12663)))))
            (if (macro-type-exception? _exn11483_)
                (macro-type-exception-arg-id _exn11483_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12662
                              (let ()
                                (declare (not safe))
                                (cons _exn11483_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12662)))))))
    (define type-exception-arguments
      (lambda (_exn11479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11479_))
            (let ((_e11481_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11479_ 'exception))))
              (if (macro-type-exception? _e11481_)
                  (macro-type-exception-arguments _e11481_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12665
                                (let ()
                                  (declare (not safe))
                                  (cons _e11481_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12665)))))
            (if (macro-type-exception? _exn11479_)
                (macro-type-exception-arguments _exn11479_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12664
                              (let ()
                                (declare (not safe))
                                (cons _exn11479_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12664)))))))
    (define type-exception-procedure
      (lambda (_exn11475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11475_))
            (let ((_e11477_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11475_ 'exception))))
              (if (macro-type-exception? _e11477_)
                  (macro-type-exception-procedure _e11477_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12667
                                (let ()
                                  (declare (not safe))
                                  (cons _e11477_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12667)))))
            (if (macro-type-exception? _exn11475_)
                (macro-type-exception-procedure _exn11475_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12666
                              (let ()
                                (declare (not safe))
                                (cons _exn11475_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12666)))))))
    (define type-exception-type-id
      (lambda (_exn11469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11469_))
            (let ((_e11472_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11469_ 'exception))))
              (if (macro-type-exception? _e11472_)
                  (macro-type-exception-type-id _e11472_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12669
                                (let ()
                                  (declare (not safe))
                                  (cons _e11472_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12669)))))
            (if (macro-type-exception? _exn11469_)
                (macro-type-exception-type-id _exn11469_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12668
                              (let ()
                                (declare (not safe))
                                (cons _exn11469_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12668)))))))
    (define unbound-global-exception?
      (lambda (_exn11465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11465_))
            (let ((_e11467_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11465_ 'exception))))
              (macro-unbound-global-exception? _e11467_))
            (macro-unbound-global-exception? _exn11465_))))
    (define unbound-global-exception-code
      (lambda (_exn11461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11461_))
            (let ((_e11463_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11461_ 'exception))))
              (if (macro-unbound-global-exception? _e11463_)
                  (macro-unbound-global-exception-code _e11463_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12671
                                (let ()
                                  (declare (not safe))
                                  (cons _e11463_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12671)))))
            (if (macro-unbound-global-exception? _exn11461_)
                (macro-unbound-global-exception-code _exn11461_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12670
                              (let ()
                                (declare (not safe))
                                (cons _exn11461_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12670)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11457_))
            (let ((_e11459_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11457_ 'exception))))
              (if (macro-unbound-global-exception? _e11459_)
                  (macro-unbound-global-exception-rte _e11459_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12673
                                (let ()
                                  (declare (not safe))
                                  (cons _e11459_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12673)))))
            (if (macro-unbound-global-exception? _exn11457_)
                (macro-unbound-global-exception-rte _exn11457_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12672
                              (let ()
                                (declare (not safe))
                                (cons _exn11457_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12672)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11451_))
            (let ((_e11454_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11451_ 'exception))))
              (if (macro-unbound-global-exception? _e11454_)
                  (macro-unbound-global-exception-variable _e11454_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12675
                                (let ()
                                  (declare (not safe))
                                  (cons _e11454_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12675)))))
            (if (macro-unbound-global-exception? _exn11451_)
                (macro-unbound-global-exception-variable _exn11451_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12674
                              (let ()
                                (declare (not safe))
                                (cons _exn11451_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12674)))))))
    (define unbound-key-exception?
      (lambda (_exn11447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11447_))
            (let ((_e11449_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11447_ 'exception))))
              (macro-unbound-key-exception? _e11449_))
            (macro-unbound-key-exception? _exn11447_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11443_))
            (let ((_e11445_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11443_ 'exception))))
              (if (macro-unbound-key-exception? _e11445_)
                  (macro-unbound-key-exception-arguments _e11445_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12677
                                (let ()
                                  (declare (not safe))
                                  (cons _e11445_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12677)))))
            (if (macro-unbound-key-exception? _exn11443_)
                (macro-unbound-key-exception-arguments _exn11443_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12676
                              (let ()
                                (declare (not safe))
                                (cons _exn11443_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12676)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11437_))
            (let ((_e11440_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11437_ 'exception))))
              (if (macro-unbound-key-exception? _e11440_)
                  (macro-unbound-key-exception-procedure _e11440_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12679
                                (let ()
                                  (declare (not safe))
                                  (cons _e11440_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12679)))))
            (if (macro-unbound-key-exception? _exn11437_)
                (macro-unbound-key-exception-procedure _exn11437_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12678
                              (let ()
                                (declare (not safe))
                                (cons _exn11437_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12678)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11433_))
            (let ((_e11435_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11433_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11435_))
            (macro-unbound-os-environment-variable-exception? _exn11433_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11429_))
            (let ((_e11431_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11429_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11431_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11431_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12681
                                (let ()
                                  (declare (not safe))
                                  (cons _e11431_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12681)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11429_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11429_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12680
                              (let ()
                                (declare (not safe))
                                (cons _exn11429_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12680)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11423_))
            (let ((_e11426_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11423_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11426_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11426_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12683
                                (let ()
                                  (declare (not safe))
                                  (cons _e11426_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12683)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11423_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11423_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12682
                              (let ()
                                (declare (not safe))
                                (cons _exn11423_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12682)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11419_))
            (let ((_e11421_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11419_ 'exception))))
              (macro-unbound-serial-number-exception? _e11421_))
            (macro-unbound-serial-number-exception? _exn11419_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11415_))
            (let ((_e11417_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11415_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11417_)
                  (macro-unbound-serial-number-exception-arguments _e11417_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12685
                                (let ()
                                  (declare (not safe))
                                  (cons _e11417_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12685)))))
            (if (macro-unbound-serial-number-exception? _exn11415_)
                (macro-unbound-serial-number-exception-arguments _exn11415_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12684
                              (let ()
                                (declare (not safe))
                                (cons _exn11415_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12684)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11409_))
            (let ((_e11412_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11409_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11412_)
                  (macro-unbound-serial-number-exception-procedure _e11412_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12687
                                (let ()
                                  (declare (not safe))
                                  (cons _e11412_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12687)))))
            (if (macro-unbound-serial-number-exception? _exn11409_)
                (macro-unbound-serial-number-exception-procedure _exn11409_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12686
                              (let ()
                                (declare (not safe))
                                (cons _exn11409_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12686)))))))
    (define uncaught-exception?
      (lambda (_exn11405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11405_))
            (let ((_e11407_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11405_ 'exception))))
              (macro-uncaught-exception? _e11407_))
            (macro-uncaught-exception? _exn11405_))))
    (define uncaught-exception-arguments
      (lambda (_exn11401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11401_))
            (let ((_e11403_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11401_ 'exception))))
              (if (macro-uncaught-exception? _e11403_)
                  (macro-uncaught-exception-arguments _e11403_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12689
                                (let ()
                                  (declare (not safe))
                                  (cons _e11403_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12689)))))
            (if (macro-uncaught-exception? _exn11401_)
                (macro-uncaught-exception-arguments _exn11401_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12688
                              (let ()
                                (declare (not safe))
                                (cons _exn11401_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12688)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11397_))
            (let ((_e11399_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11397_ 'exception))))
              (if (macro-uncaught-exception? _e11399_)
                  (macro-uncaught-exception-procedure _e11399_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12691
                                (let ()
                                  (declare (not safe))
                                  (cons _e11399_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12691)))))
            (if (macro-uncaught-exception? _exn11397_)
                (macro-uncaught-exception-procedure _exn11397_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12690
                              (let ()
                                (declare (not safe))
                                (cons _exn11397_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12690)))))))
    (define uncaught-exception-reason
      (lambda (_exn11391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11391_))
            (let ((_e11394_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11391_ 'exception))))
              (if (macro-uncaught-exception? _e11394_)
                  (macro-uncaught-exception-reason _e11394_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12693
                                (let ()
                                  (declare (not safe))
                                  (cons _e11394_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12693)))))
            (if (macro-uncaught-exception? _exn11391_)
                (macro-uncaught-exception-reason _exn11391_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12692
                              (let ()
                                (declare (not safe))
                                (cons _exn11391_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12692)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11387_))
            (let ((_e11389_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11387_ 'exception))))
              (macro-uninitialized-thread-exception? _e11389_))
            (macro-uninitialized-thread-exception? _exn11387_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11383_))
            (let ((_e11385_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11383_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11385_)
                  (macro-uninitialized-thread-exception-arguments _e11385_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12695
                                (let ()
                                  (declare (not safe))
                                  (cons _e11385_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12695)))))
            (if (macro-uninitialized-thread-exception? _exn11383_)
                (macro-uninitialized-thread-exception-arguments _exn11383_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12694
                              (let ()
                                (declare (not safe))
                                (cons _exn11383_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12694)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11377_))
            (let ((_e11380_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11377_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11380_)
                  (macro-uninitialized-thread-exception-procedure _e11380_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12697
                                (let ()
                                  (declare (not safe))
                                  (cons _e11380_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12697)))))
            (if (macro-uninitialized-thread-exception? _exn11377_)
                (macro-uninitialized-thread-exception-procedure _exn11377_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12696
                              (let ()
                                (declare (not safe))
                                (cons _exn11377_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12696)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11373_))
            (let ((_e11375_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11373_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11375_))
            (macro-unknown-keyword-argument-exception? _exn11373_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11369_))
            (let ((_e11371_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11369_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11371_)
                  (macro-unknown-keyword-argument-exception-arguments _e11371_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12699
                                (let ()
                                  (declare (not safe))
                                  (cons _e11371_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12699)))))
            (if (macro-unknown-keyword-argument-exception? _exn11369_)
                (macro-unknown-keyword-argument-exception-arguments _exn11369_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12698
                              (let ()
                                (declare (not safe))
                                (cons _exn11369_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12698)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11363_))
            (let ((_e11366_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11363_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11366_)
                  (macro-unknown-keyword-argument-exception-procedure _e11366_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12701
                                (let ()
                                  (declare (not safe))
                                  (cons _e11366_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12701)))))
            (if (macro-unknown-keyword-argument-exception? _exn11363_)
                (macro-unknown-keyword-argument-exception-procedure _exn11363_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12700
                              (let ()
                                (declare (not safe))
                                (cons _exn11363_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12700)))))))
    (define unterminated-process-exception?
      (lambda (_exn11359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11359_))
            (let ((_e11361_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11359_ 'exception))))
              (macro-unterminated-process-exception? _e11361_))
            (macro-unterminated-process-exception? _exn11359_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11355_))
            (let ((_e11357_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11355_ 'exception))))
              (if (macro-unterminated-process-exception? _e11357_)
                  (macro-unterminated-process-exception-arguments _e11357_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12703
                                (let ()
                                  (declare (not safe))
                                  (cons _e11357_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12703)))))
            (if (macro-unterminated-process-exception? _exn11355_)
                (macro-unterminated-process-exception-arguments _exn11355_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12702
                              (let ()
                                (declare (not safe))
                                (cons _exn11355_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12702)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11349_))
            (let ((_e11352_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11349_ 'exception))))
              (if (macro-unterminated-process-exception? _e11352_)
                  (macro-unterminated-process-exception-procedure _e11352_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12705
                                (let ()
                                  (declare (not safe))
                                  (cons _e11352_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12705)))))
            (if (macro-unterminated-process-exception? _exn11349_)
                (macro-unterminated-process-exception-procedure _exn11349_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12704
                              (let ()
                                (declare (not safe))
                                (cons _exn11349_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12704)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11345_))
            (let ((_e11347_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11345_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11347_))
            (macro-wrong-number-of-arguments-exception? _exn11345_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11341_))
            (let ((_e11343_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11341_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11343_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11343_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12707
                                (let ()
                                  (declare (not safe))
                                  (cons _e11343_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12707)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11341_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11341_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12706
                              (let ()
                                (declare (not safe))
                                (cons _exn11341_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12706)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11335_))
            (let ((_e11338_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11335_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11338_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11338_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12709
                                (let ()
                                  (declare (not safe))
                                  (cons _e11338_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12709)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11335_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11335_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12708
                              (let ()
                                (declare (not safe))
                                (cons _exn11335_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12708)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11331_))
            (let ((_e11333_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11331_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11333_))
            (macro-wrong-number-of-values-exception? _exn11331_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11327_))
            (let ((_e11329_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11327_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11329_)
                  (macro-wrong-number-of-values-exception-code _e11329_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12711
                                (let ()
                                  (declare (not safe))
                                  (cons _e11329_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12711)))))
            (if (macro-wrong-number-of-values-exception? _exn11327_)
                (macro-wrong-number-of-values-exception-code _exn11327_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12710
                              (let ()
                                (declare (not safe))
                                (cons _exn11327_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12710)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11323_))
            (let ((_e11325_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11323_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11325_)
                  (macro-wrong-number-of-values-exception-rte _e11325_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12713
                                (let ()
                                  (declare (not safe))
                                  (cons _e11325_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12713)))))
            (if (macro-wrong-number-of-values-exception? _exn11323_)
                (macro-wrong-number-of-values-exception-rte _exn11323_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12712
                              (let ()
                                (declare (not safe))
                                (cons _exn11323_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12712)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11317_))
            (let ((_e11320_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11317_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11320_)
                  (macro-wrong-number-of-values-exception-vals _e11320_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12715
                                (let ()
                                  (declare (not safe))
                                  (cons _e11320_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12715)))))
            (if (macro-wrong-number-of-values-exception? _exn11317_)
                (macro-wrong-number-of-values-exception-vals _exn11317_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12714
                              (let ()
                                (declare (not safe))
                                (cons _exn11317_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12714)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11311_))
            (let ((_e11314_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11311_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11314_))
            (macro-wrong-processor-c-return-exception? _exn11311_))))))
