(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1697117311)
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
      (lambda _$args12533_
        (apply make-class-instance Exception::t _$args12533_)))
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
      (lambda _$args12530_
        (apply make-class-instance StackTrace::t _$args12530_)))
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
      (let ((__tmp12553
             (let ((__tmp12554
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12554))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12553
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12527_ (apply make-class-instance Error::t _$args12527_)))
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
      (let ((__tmp12555
             (let ((__tmp12556
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12556))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12555
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12524_
        (apply make-class-instance RuntimeException::t _$args12524_)))
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
      (lambda (_exn12519_ _continue12520_)
        (let ((_exn12522_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12519_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12522_ _continue12520_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12515_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12515_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12515_ 'continuation))
                '#!void
                (let ((__tmp12557
                       (lambda (_cont12517_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12515_
                            'continuation
                            _cont12517_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12557)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12515_))))
    (define error
      (lambda (_message12512_ . _irritants12513_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12512_
                  'irritants:
                  _irritants12513_)))))
    (define with-exception-handler
      (lambda (_handler12505_ _thunk12506_)
        (if (let () (declare (not safe)) (procedure? _handler12505_))
            '#!void
            (raise (let ((__tmp12558
                          (let ()
                            (declare (not safe))
                            (cons _handler12505_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12558))))
        (if (let () (declare (not safe)) (procedure? _thunk12506_))
            '#!void
            (raise (let ((__tmp12559
                          (let ()
                            (declare (not safe))
                            (cons _thunk12506_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12559))))
        (let ((__tmp12560
               (lambda (_exn12508_)
                 (let ((_exn12510_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12508_))))
                   (_handler12505_ _exn12510_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12560 _thunk12506_))))
    (define with-catch
      (lambda (_handler12498_ _thunk12499_)
        (if (let () (declare (not safe)) (procedure? _handler12498_))
            '#!void
            (raise (let ((__tmp12561
                          (let ()
                            (declare (not safe))
                            (cons _handler12498_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12561))))
        (if (let () (declare (not safe)) (procedure? _thunk12499_))
            '#!void
            (raise (let ((__tmp12562
                          (let ()
                            (declare (not safe))
                            (cons _thunk12499_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12562))))
        (let ((__tmp12563
               (lambda (_cont12501_)
                 (with-exception-handler
                  (lambda (_exn12503_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12501_
                       _handler12498_
                       _exn12503_)))
                  _thunk12499_))))
          (declare (not safe))
          (##continuation-capture __tmp12563))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12489_)
        (if (or (heap-overflow-exception? _exn12489_)
                (stack-overflow-exception? _exn12489_))
            _exn12489_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12489_))
                _exn12489_
                (if (macro-exception? _exn12489_)
                    (let ((_rte12494_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12489_))))
                      (let ((__tmp12564
                             (lambda (_cont12496_)
                               (let ((__tmp12565
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12496_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12494_
                                  'continuation
                                  __tmp12565)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12564))
                      _rte12494_)
                    _exn12489_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12484_)
        (let ((_$e12486_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12484_))))
          (if _$e12486_ _$e12486_ (error-exception? _obj12484_)))))
    (define error-message
      (lambda (_obj12482_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12482_))
            (let () (declare (not safe)) (slot-ref _obj12482_ 'message))
            (if (error-exception? _obj12482_)
                (error-exception-message _obj12482_)
                '#f))))
    (define error-irritants
      (lambda (_obj12480_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12480_))
            (let () (declare (not safe)) (slot-ref _obj12480_ 'irritants))
            (if (error-exception? _obj12480_)
                (error-exception-parameters _obj12480_)
                '#f))))
    (define error-trace
      (lambda (_obj12478_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12478_))
            (let () (declare (not safe)) (slot-ref _obj12478_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12460_ _port12461_)
        (let ((_$e12463_
               (let ()
                 (declare (not safe))
                 (method-ref _e12460_ 'display-exception))))
          (if _$e12463_
              ((lambda (_f12466_) (_f12466_ _e12460_ _port12461_)) _$e12463_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12460_ _port12461_))))))
    (define display-exception__0
      (lambda (_e12471_)
        (let ((_port12473_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12471_ _port12473_))))
    (define display-exception
      (lambda _g12567_
        (let ((_g12566_ (let () (declare (not safe)) (##length _g12567_))))
          (cond ((let () (declare (not safe)) (##fx= _g12566_ 1))
                 (apply (lambda (_e12471_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12471_)))
                        _g12567_))
                ((let () (declare (not safe)) (##fx= _g12566_ 2))
                 (apply (lambda (_e12475_ _port12476_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12475_ _port12476_)))
                        _g12567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12567_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12449_ _message12450_ . _rest12451_)
        (let ((_message12457_
               (if (let () (declare (not safe)) (string? _message12450_))
                   _message12450_
                   (call-with-output-string
                    '""
                    (lambda (_g1245212454_)
                      (display _message12450_ _g1245212454_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self12449_ 'message _message12457_))
          (apply class-instance-init! _self12449_ _rest12451_))))
    (define Error:::init!::specialize
      (lambda (__t12535)
        (let ((__message12536
               (let ((__tmp12537
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12535 'message))))
                 (if __tmp12537
                     (let () (declare (not safe)) (##fx+ __tmp12537 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12449_ _message12450_ . _rest12451_)
            (let ((_message12457_
                   (if (let () (declare (not safe)) (string? _message12450_))
                       _message12450_
                       (call-with-output-string
                        '""
                        (lambda (_g1245212454_)
                          (display _message12450_ _g1245212454_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self12449_
                 _message12457_
                 __message12536
                 __t12535
                 '#f))
              (apply class-instance-init! _self12449_ _rest12451_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define Error::display-exception
      (lambda (_self12307_ _port12308_)
        (let ((_tmp-port12310_ (open-output-string))
              (_display-error-newline12311_
               (> (output-port-column _port12308_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12310_))
          (let ((__tmp12568
                 (lambda ()
                   (if _display-error-newline12311_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12314_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12307_ 'where))))
                     (if _$e12314_ (display _$e12314_) (display '"?")))
                   (let ((__tmp12569
                          (let ((__tmp12570
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12307_))))
                            (declare (not safe))
                            (##type-name __tmp12570))))
                     (declare (not safe))
                     (display* '" [" __tmp12569 '"]: "))
                   (let ((__tmp12571
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12307_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12571))
                   (let ((_irritants12317_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12307_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12317_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12319_)
                              (write _obj12319_)
                              (write-char '#\space))
                            _irritants12317_)
                           (newline))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance? StackTrace::t _self12307_))
                       (let ((_cont1232012322_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12307_ 'continuation))))
                         (if _cont1232012322_
                             (let ((_cont12325_ _cont1232012322_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12325_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12568
             current-output-port
             _tmp-port12310_))
          (let ((__tmp12572 (get-output-string _tmp-port12310_)))
            (declare (not safe))
            (##write-string __tmp12572 _port12308_)))))
    (define Error::display-exception::specialize
      (lambda (__t12538)
        (let ((__irritants12539
               (let ((__tmp12543
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12538 'irritants))))
                 (if __tmp12543
                     (let () (declare (not safe)) (##fx+ __tmp12543 '1))
                     (error '"Unknown slot" 'irritants))))
              (__message12540
               (let ((__tmp12544
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12538 'message))))
                 (if __tmp12544
                     (let () (declare (not safe)) (##fx+ __tmp12544 '1))
                     (error '"Unknown slot" 'message))))
              (__where12541
               (let ((__tmp12545
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12538 'where))))
                 (if __tmp12545
                     (let () (declare (not safe)) (##fx+ __tmp12545 '1))
                     (error '"Unknown slot" 'where))))
              (__continuation12542
               (let ((__tmp12546
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12538 'continuation))))
                 (if __tmp12546
                     (let () (declare (not safe)) (##fx+ __tmp12546 '1))
                     (error '"Unknown slot" 'continuation))))
              (__class12547
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12538))))
          (lambda (_self12307_ _port12308_)
            (let ((_tmp-port12310_ (open-output-string))
                  (_display-error-newline12311_
                   (> (output-port-column _port12308_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12310_))
              (let ((__tmp12573
                     (lambda ()
                       (if _display-error-newline12311_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12314_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12307_
                                 __where12541
                                 __t12538
                                 '#f))))
                         (if _$e12314_ (display _$e12314_) (display '"?")))
                       (let ((__tmp12574
                              (let ((__tmp12575
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12307_))))
                                (declare (not safe))
                                (##type-name __tmp12575))))
                         (declare (not safe))
                         (display* '" [" __tmp12574 '"]: "))
                       (let ((__tmp12576
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12307_
                                 __message12540
                                 __t12538
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12576))
                       (let ((_irritants12317_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12307_
                                 __irritants12539
                                 __t12538
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12317_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12319_)
                                  (write _obj12319_)
                                  (write-char '#\space))
                                _irritants12317_)
                               (newline))))
                       (if __class12547
                           (let ((_cont1232012322_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12307_
                                     __continuation12542
                                     __t12538
                                     '#f))))
                             (if _cont1232012322_
                                 (let ((_cont12325_ _cont1232012322_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12325_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12573
                 current-output-port
                 _tmp-port12310_))
              (let ((__tmp12577 (get-output-string _tmp-port12310_)))
                (declare (not safe))
                (##write-string __tmp12577 _port12308_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12174_ _port12175_)
        (let ((_tmp-port12177_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12177_))
          (let ((__tmp12578
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12174_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12578 _tmp-port12177_))
          (let ((_cont1217812180_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12174_ 'continuation))))
            (if _cont1217812180_
                (let ((_cont12183_ _cont1217812180_))
                  (display '"--- continuation backtrace:" _tmp-port12177_)
                  (newline _tmp-port12177_)
                  (display-continuation-backtrace _cont12183_ _tmp-port12177_))
                '#f))
          (let ((__tmp12579 (get-output-string _tmp-port12177_)))
            (declare (not safe))
            (##write-string __tmp12579 _port12175_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12548)
        (let ((__exception12549
               (let ((__tmp12551
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12548 'exception))))
                 (if __tmp12551
                     (let () (declare (not safe)) (##fx+ __tmp12551 '1))
                     (error '"Unknown slot" 'exception))))
              (__continuation12550
               (let ((__tmp12552
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12548 'continuation))))
                 (if __tmp12552
                     (let () (declare (not safe)) (##fx+ __tmp12552 '1))
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self12174_ _port12175_)
            (let ((_tmp-port12177_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12177_))
              (let ((__tmp12580
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12174_
                        __exception12549
                        __t12548
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12580 _tmp-port12177_))
              (let ((_cont1217812180_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12174_
                        __continuation12550
                        __t12548
                        '#f))))
                (if _cont1217812180_
                    (let ((_cont12183_ _cont1217812180_))
                      (display '"--- continuation backtrace:" _tmp-port12177_)
                      (newline _tmp-port12177_)
                      (display-continuation-backtrace
                       _cont12183_
                       _tmp-port12177_))
                    '#f))
              (let ((__tmp12581 (get-output-string _tmp-port12177_)))
                (declare (not safe))
                (##write-string __tmp12581 _port12175_)))))))
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
      (lambda (_port12046_)
        (if (macro-character-port? _port12046_)
            (let ((_old-width12048_
                   (macro-character-port-output-width _port12046_)))
              (macro-character-port-output-width-set!
               _port12046_
               (lambda (_port12050_) '256))
              _old-width12048_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port12043_ _old-width12044_)
        (if (macro-character-port? _port12043_)
            (macro-character-port-output-width-set!
             _port12043_
             _old-width12044_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e12041_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e12041_))))
    (define abandoned-mutex-exception?
      (lambda (_exn12035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12035_))
            (let ((_e12038_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12035_ 'exception))))
              (macro-abandoned-mutex-exception? _e12038_))
            (macro-abandoned-mutex-exception? _exn12035_))))
    (define cfun-conversion-exception?
      (lambda (_exn12031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12031_))
            (let ((_e12033_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12031_ 'exception))))
              (macro-cfun-conversion-exception? _e12033_))
            (macro-cfun-conversion-exception? _exn12031_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn12027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12027_))
            (let ((_e12029_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12027_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12029_)
                  (macro-cfun-conversion-exception-arguments _e12029_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12583
                                (let ()
                                  (declare (not safe))
                                  (cons _e12029_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12583)))))
            (if (macro-cfun-conversion-exception? _exn12027_)
                (macro-cfun-conversion-exception-arguments _exn12027_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12582
                              (let ()
                                (declare (not safe))
                                (cons _exn12027_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12582)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn12023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12023_))
            (let ((_e12025_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12023_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12025_)
                  (macro-cfun-conversion-exception-code _e12025_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12585
                                (let ()
                                  (declare (not safe))
                                  (cons _e12025_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12585)))))
            (if (macro-cfun-conversion-exception? _exn12023_)
                (macro-cfun-conversion-exception-code _exn12023_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12584
                              (let ()
                                (declare (not safe))
                                (cons _exn12023_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12584)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn12019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12019_))
            (let ((_e12021_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12019_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12021_)
                  (macro-cfun-conversion-exception-message _e12021_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12587
                                (let ()
                                  (declare (not safe))
                                  (cons _e12021_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12587)))))
            (if (macro-cfun-conversion-exception? _exn12019_)
                (macro-cfun-conversion-exception-message _exn12019_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12586
                              (let ()
                                (declare (not safe))
                                (cons _exn12019_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12586)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn12013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12013_))
            (let ((_e12016_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12013_ 'exception))))
              (if (macro-cfun-conversion-exception? _e12016_)
                  (macro-cfun-conversion-exception-procedure _e12016_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12589
                                (let ()
                                  (declare (not safe))
                                  (cons _e12016_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12589)))))
            (if (macro-cfun-conversion-exception? _exn12013_)
                (macro-cfun-conversion-exception-procedure _exn12013_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12588
                              (let ()
                                (declare (not safe))
                                (cons _exn12013_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12588)))))))
    (define datum-parsing-exception?
      (lambda (_exn12009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12009_))
            (let ((_e12011_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12009_ 'exception))))
              (macro-datum-parsing-exception? _e12011_))
            (macro-datum-parsing-exception? _exn12009_))))
    (define datum-parsing-exception-kind
      (lambda (_exn12005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12005_))
            (let ((_e12007_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12005_ 'exception))))
              (if (macro-datum-parsing-exception? _e12007_)
                  (macro-datum-parsing-exception-kind _e12007_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12591
                                (let ()
                                  (declare (not safe))
                                  (cons _e12007_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12591)))))
            (if (macro-datum-parsing-exception? _exn12005_)
                (macro-datum-parsing-exception-kind _exn12005_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12590
                              (let ()
                                (declare (not safe))
                                (cons _exn12005_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12590)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn12001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn12001_))
            (let ((_e12003_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn12001_ 'exception))))
              (if (macro-datum-parsing-exception? _e12003_)
                  (macro-datum-parsing-exception-parameters _e12003_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12593
                                (let ()
                                  (declare (not safe))
                                  (cons _e12003_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12593)))))
            (if (macro-datum-parsing-exception? _exn12001_)
                (macro-datum-parsing-exception-parameters _exn12001_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12592
                              (let ()
                                (declare (not safe))
                                (cons _exn12001_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12592)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11995_))
            (let ((_e11998_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11995_ 'exception))))
              (if (macro-datum-parsing-exception? _e11998_)
                  (macro-datum-parsing-exception-readenv _e11998_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12595
                                (let ()
                                  (declare (not safe))
                                  (cons _e11998_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12595)))))
            (if (macro-datum-parsing-exception? _exn11995_)
                (macro-datum-parsing-exception-readenv _exn11995_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12594
                              (let ()
                                (declare (not safe))
                                (cons _exn11995_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12594)))))))
    (define deadlock-exception?
      (lambda (_exn11989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11989_))
            (let ((_e11992_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11989_ 'exception))))
              (macro-deadlock-exception? _e11992_))
            (macro-deadlock-exception? _exn11989_))))
    (define divide-by-zero-exception?
      (lambda (_exn11985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11985_))
            (let ((_e11987_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11985_ 'exception))))
              (macro-divide-by-zero-exception? _e11987_))
            (macro-divide-by-zero-exception? _exn11985_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11981_))
            (let ((_e11983_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11981_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11983_)
                  (macro-divide-by-zero-exception-arguments _e11983_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12597
                                (let ()
                                  (declare (not safe))
                                  (cons _e11983_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12597)))))
            (if (macro-divide-by-zero-exception? _exn11981_)
                (macro-divide-by-zero-exception-arguments _exn11981_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12596
                              (let ()
                                (declare (not safe))
                                (cons _exn11981_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12596)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11975_))
            (let ((_e11978_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11975_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11978_)
                  (macro-divide-by-zero-exception-procedure _e11978_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12599
                                (let ()
                                  (declare (not safe))
                                  (cons _e11978_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12599)))))
            (if (macro-divide-by-zero-exception? _exn11975_)
                (macro-divide-by-zero-exception-procedure _exn11975_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12598
                              (let ()
                                (declare (not safe))
                                (cons _exn11975_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12598)))))))
    (define error-exception?
      (lambda (_exn11971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11971_))
            (let ((_e11973_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11971_ 'exception))))
              (macro-error-exception? _e11973_))
            (macro-error-exception? _exn11971_))))
    (define error-exception-message
      (lambda (_exn11967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11967_))
            (let ((_e11969_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11967_ 'exception))))
              (if (macro-error-exception? _e11969_)
                  (macro-error-exception-message _e11969_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12601
                                (let ()
                                  (declare (not safe))
                                  (cons _e11969_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12601)))))
            (if (macro-error-exception? _exn11967_)
                (macro-error-exception-message _exn11967_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12600
                              (let ()
                                (declare (not safe))
                                (cons _exn11967_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12600)))))))
    (define error-exception-parameters
      (lambda (_exn11961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11961_))
            (let ((_e11964_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11961_ 'exception))))
              (if (macro-error-exception? _e11964_)
                  (macro-error-exception-parameters _e11964_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12603
                                (let ()
                                  (declare (not safe))
                                  (cons _e11964_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12603)))))
            (if (macro-error-exception? _exn11961_)
                (macro-error-exception-parameters _exn11961_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12602
                              (let ()
                                (declare (not safe))
                                (cons _exn11961_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12602)))))))
    (define expression-parsing-exception?
      (lambda (_exn11957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11957_))
            (let ((_e11959_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11957_ 'exception))))
              (macro-expression-parsing-exception? _e11959_))
            (macro-expression-parsing-exception? _exn11957_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11953_))
            (let ((_e11955_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11953_ 'exception))))
              (if (macro-expression-parsing-exception? _e11955_)
                  (macro-expression-parsing-exception-kind _e11955_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12605
                                (let ()
                                  (declare (not safe))
                                  (cons _e11955_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12605)))))
            (if (macro-expression-parsing-exception? _exn11953_)
                (macro-expression-parsing-exception-kind _exn11953_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12604
                              (let ()
                                (declare (not safe))
                                (cons _exn11953_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12604)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11949_))
            (let ((_e11951_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11949_ 'exception))))
              (if (macro-expression-parsing-exception? _e11951_)
                  (macro-expression-parsing-exception-parameters _e11951_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12607
                                (let ()
                                  (declare (not safe))
                                  (cons _e11951_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12607)))))
            (if (macro-expression-parsing-exception? _exn11949_)
                (macro-expression-parsing-exception-parameters _exn11949_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12606
                              (let ()
                                (declare (not safe))
                                (cons _exn11949_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12606)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11943_))
            (let ((_e11946_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11943_ 'exception))))
              (if (macro-expression-parsing-exception? _e11946_)
                  (macro-expression-parsing-exception-source _e11946_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12609
                                (let ()
                                  (declare (not safe))
                                  (cons _e11946_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12609)))))
            (if (macro-expression-parsing-exception? _exn11943_)
                (macro-expression-parsing-exception-source _exn11943_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12608
                              (let ()
                                (declare (not safe))
                                (cons _exn11943_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12608)))))))
    (define file-exists-exception?
      (lambda (_exn11939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11939_))
            (let ((_e11941_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11939_ 'exception))))
              (macro-file-exists-exception? _e11941_))
            (macro-file-exists-exception? _exn11939_))))
    (define file-exists-exception-arguments
      (lambda (_exn11935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11935_))
            (let ((_e11937_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11935_ 'exception))))
              (if (macro-file-exists-exception? _e11937_)
                  (macro-file-exists-exception-arguments _e11937_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12611
                                (let ()
                                  (declare (not safe))
                                  (cons _e11937_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12611)))))
            (if (macro-file-exists-exception? _exn11935_)
                (macro-file-exists-exception-arguments _exn11935_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12610
                              (let ()
                                (declare (not safe))
                                (cons _exn11935_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12610)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11929_))
            (let ((_e11932_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11929_ 'exception))))
              (if (macro-file-exists-exception? _e11932_)
                  (macro-file-exists-exception-procedure _e11932_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12613
                                (let ()
                                  (declare (not safe))
                                  (cons _e11932_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12613)))))
            (if (macro-file-exists-exception? _exn11929_)
                (macro-file-exists-exception-procedure _exn11929_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12612
                              (let ()
                                (declare (not safe))
                                (cons _exn11929_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12612)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11925_))
            (let ((_e11927_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11925_ 'exception))))
              (macro-fixnum-overflow-exception? _e11927_))
            (macro-fixnum-overflow-exception? _exn11925_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11921_))
            (let ((_e11923_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11921_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11923_)
                  (macro-fixnum-overflow-exception-arguments _e11923_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12615
                                (let ()
                                  (declare (not safe))
                                  (cons _e11923_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12615)))))
            (if (macro-fixnum-overflow-exception? _exn11921_)
                (macro-fixnum-overflow-exception-arguments _exn11921_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12614
                              (let ()
                                (declare (not safe))
                                (cons _exn11921_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12614)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11915_))
            (let ((_e11918_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11915_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11918_)
                  (macro-fixnum-overflow-exception-procedure _e11918_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12617
                                (let ()
                                  (declare (not safe))
                                  (cons _e11918_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12617)))))
            (if (macro-fixnum-overflow-exception? _exn11915_)
                (macro-fixnum-overflow-exception-procedure _exn11915_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12616
                              (let ()
                                (declare (not safe))
                                (cons _exn11915_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12616)))))))
    (define heap-overflow-exception?
      (lambda (_exn11909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11909_))
            (let ((_e11912_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11909_ 'exception))))
              (macro-heap-overflow-exception? _e11912_))
            (macro-heap-overflow-exception? _exn11909_))))
    (define inactive-thread-exception?
      (lambda (_exn11905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11905_))
            (let ((_e11907_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11905_ 'exception))))
              (macro-inactive-thread-exception? _e11907_))
            (macro-inactive-thread-exception? _exn11905_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11901_))
            (let ((_e11903_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11901_ 'exception))))
              (if (macro-inactive-thread-exception? _e11903_)
                  (macro-inactive-thread-exception-arguments _e11903_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12619
                                (let ()
                                  (declare (not safe))
                                  (cons _e11903_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12619)))))
            (if (macro-inactive-thread-exception? _exn11901_)
                (macro-inactive-thread-exception-arguments _exn11901_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12618
                              (let ()
                                (declare (not safe))
                                (cons _exn11901_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12618)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11895_))
            (let ((_e11898_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11895_ 'exception))))
              (if (macro-inactive-thread-exception? _e11898_)
                  (macro-inactive-thread-exception-procedure _e11898_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12621
                                (let ()
                                  (declare (not safe))
                                  (cons _e11898_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12621)))))
            (if (macro-inactive-thread-exception? _exn11895_)
                (macro-inactive-thread-exception-procedure _exn11895_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12620
                              (let ()
                                (declare (not safe))
                                (cons _exn11895_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12620)))))))
    (define initialized-thread-exception?
      (lambda (_exn11891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11891_))
            (let ((_e11893_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11891_ 'exception))))
              (macro-initialized-thread-exception? _e11893_))
            (macro-initialized-thread-exception? _exn11891_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11887_))
            (let ((_e11889_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11887_ 'exception))))
              (if (macro-initialized-thread-exception? _e11889_)
                  (macro-initialized-thread-exception-arguments _e11889_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12623
                                (let ()
                                  (declare (not safe))
                                  (cons _e11889_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12623)))))
            (if (macro-initialized-thread-exception? _exn11887_)
                (macro-initialized-thread-exception-arguments _exn11887_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12622
                              (let ()
                                (declare (not safe))
                                (cons _exn11887_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12622)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11881_))
            (let ((_e11884_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11881_ 'exception))))
              (if (macro-initialized-thread-exception? _e11884_)
                  (macro-initialized-thread-exception-procedure _e11884_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12625
                                (let ()
                                  (declare (not safe))
                                  (cons _e11884_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12625)))))
            (if (macro-initialized-thread-exception? _exn11881_)
                (macro-initialized-thread-exception-procedure _exn11881_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12624
                              (let ()
                                (declare (not safe))
                                (cons _exn11881_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12624)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11877_))
            (let ((_e11879_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11877_ 'exception))))
              (macro-invalid-hash-number-exception? _e11879_))
            (macro-invalid-hash-number-exception? _exn11877_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11873_))
            (let ((_e11875_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11873_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11875_)
                  (macro-invalid-hash-number-exception-arguments _e11875_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12627
                                (let ()
                                  (declare (not safe))
                                  (cons _e11875_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12627)))))
            (if (macro-invalid-hash-number-exception? _exn11873_)
                (macro-invalid-hash-number-exception-arguments _exn11873_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12626
                              (let ()
                                (declare (not safe))
                                (cons _exn11873_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12626)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11867_))
            (let ((_e11870_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11867_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11870_)
                  (macro-invalid-hash-number-exception-procedure _e11870_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12629
                                (let ()
                                  (declare (not safe))
                                  (cons _e11870_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12629)))))
            (if (macro-invalid-hash-number-exception? _exn11867_)
                (macro-invalid-hash-number-exception-procedure _exn11867_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12628
                              (let ()
                                (declare (not safe))
                                (cons _exn11867_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12628)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11863_))
            (let ((_e11865_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11863_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11865_))
            (macro-invalid-utf8-encoding-exception? _exn11863_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11859_))
            (let ((_e11861_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11859_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11861_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11861_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12631
                                (let ()
                                  (declare (not safe))
                                  (cons _e11861_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12631)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11859_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11859_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12630
                              (let ()
                                (declare (not safe))
                                (cons _exn11859_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12630)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11853_))
            (let ((_e11856_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11853_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11856_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11856_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12633
                                (let ()
                                  (declare (not safe))
                                  (cons _e11856_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12633)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11853_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11853_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12632
                              (let ()
                                (declare (not safe))
                                (cons _exn11853_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12632)))))))
    (define join-timeout-exception?
      (lambda (_exn11849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11849_))
            (let ((_e11851_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11849_ 'exception))))
              (macro-join-timeout-exception? _e11851_))
            (macro-join-timeout-exception? _exn11849_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11845_))
            (let ((_e11847_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11845_ 'exception))))
              (if (macro-join-timeout-exception? _e11847_)
                  (macro-join-timeout-exception-arguments _e11847_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12635
                                (let ()
                                  (declare (not safe))
                                  (cons _e11847_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12635)))))
            (if (macro-join-timeout-exception? _exn11845_)
                (macro-join-timeout-exception-arguments _exn11845_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12634
                              (let ()
                                (declare (not safe))
                                (cons _exn11845_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12634)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11839_))
            (let ((_e11842_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11839_ 'exception))))
              (if (macro-join-timeout-exception? _e11842_)
                  (macro-join-timeout-exception-procedure _e11842_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12637
                                (let ()
                                  (declare (not safe))
                                  (cons _e11842_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12637)))))
            (if (macro-join-timeout-exception? _exn11839_)
                (macro-join-timeout-exception-procedure _exn11839_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12636
                              (let ()
                                (declare (not safe))
                                (cons _exn11839_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12636)))))))
    (define keyword-expected-exception?
      (lambda (_exn11835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11835_))
            (let ((_e11837_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11835_ 'exception))))
              (macro-keyword-expected-exception? _e11837_))
            (macro-keyword-expected-exception? _exn11835_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11831_))
            (let ((_e11833_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11831_ 'exception))))
              (if (macro-keyword-expected-exception? _e11833_)
                  (macro-keyword-expected-exception-arguments _e11833_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12639
                                (let ()
                                  (declare (not safe))
                                  (cons _e11833_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12639)))))
            (if (macro-keyword-expected-exception? _exn11831_)
                (macro-keyword-expected-exception-arguments _exn11831_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12638
                              (let ()
                                (declare (not safe))
                                (cons _exn11831_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12638)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11825_))
            (let ((_e11828_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11825_ 'exception))))
              (if (macro-keyword-expected-exception? _e11828_)
                  (macro-keyword-expected-exception-procedure _e11828_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12641
                                (let ()
                                  (declare (not safe))
                                  (cons _e11828_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12641)))))
            (if (macro-keyword-expected-exception? _exn11825_)
                (macro-keyword-expected-exception-procedure _exn11825_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12640
                              (let ()
                                (declare (not safe))
                                (cons _exn11825_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12640)))))))
    (define length-mismatch-exception?
      (lambda (_exn11821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11821_))
            (let ((_e11823_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11821_ 'exception))))
              (macro-length-mismatch-exception? _e11823_))
            (macro-length-mismatch-exception? _exn11821_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11817_))
            (let ((_e11819_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11817_ 'exception))))
              (if (macro-length-mismatch-exception? _e11819_)
                  (macro-length-mismatch-exception-arg-id _e11819_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12643
                                (let ()
                                  (declare (not safe))
                                  (cons _e11819_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12643)))))
            (if (macro-length-mismatch-exception? _exn11817_)
                (macro-length-mismatch-exception-arg-id _exn11817_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12642
                              (let ()
                                (declare (not safe))
                                (cons _exn11817_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12642)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11813_))
            (let ((_e11815_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11813_ 'exception))))
              (if (macro-length-mismatch-exception? _e11815_)
                  (macro-length-mismatch-exception-arguments _e11815_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12645
                                (let ()
                                  (declare (not safe))
                                  (cons _e11815_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12645)))))
            (if (macro-length-mismatch-exception? _exn11813_)
                (macro-length-mismatch-exception-arguments _exn11813_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12644
                              (let ()
                                (declare (not safe))
                                (cons _exn11813_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12644)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11807_))
            (let ((_e11810_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11807_ 'exception))))
              (if (macro-length-mismatch-exception? _e11810_)
                  (macro-length-mismatch-exception-procedure _e11810_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12647
                                (let ()
                                  (declare (not safe))
                                  (cons _e11810_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12647)))))
            (if (macro-length-mismatch-exception? _exn11807_)
                (macro-length-mismatch-exception-procedure _exn11807_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12646
                              (let ()
                                (declare (not safe))
                                (cons _exn11807_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12646)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11803_))
            (let ((_e11805_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11803_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11805_))
            (macro-mailbox-receive-timeout-exception? _exn11803_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11799_))
            (let ((_e11801_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11799_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11801_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11801_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12649
                                (let ()
                                  (declare (not safe))
                                  (cons _e11801_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12649)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11799_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11799_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12648
                              (let ()
                                (declare (not safe))
                                (cons _exn11799_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12648)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11793_))
            (let ((_e11796_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11793_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11796_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11796_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12651
                                (let ()
                                  (declare (not safe))
                                  (cons _e11796_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12651)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11793_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11793_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12650
                              (let ()
                                (declare (not safe))
                                (cons _exn11793_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12650)))))))
    (define module-not-found-exception?
      (lambda (_exn11789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11789_))
            (let ((_e11791_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11789_ 'exception))))
              (macro-module-not-found-exception? _e11791_))
            (macro-module-not-found-exception? _exn11789_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11785_))
            (let ((_e11787_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11785_ 'exception))))
              (if (macro-module-not-found-exception? _e11787_)
                  (macro-module-not-found-exception-arguments _e11787_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12653
                                (let ()
                                  (declare (not safe))
                                  (cons _e11787_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12653)))))
            (if (macro-module-not-found-exception? _exn11785_)
                (macro-module-not-found-exception-arguments _exn11785_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12652
                              (let ()
                                (declare (not safe))
                                (cons _exn11785_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12652)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11779_))
            (let ((_e11782_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11779_ 'exception))))
              (if (macro-module-not-found-exception? _e11782_)
                  (macro-module-not-found-exception-procedure _e11782_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12655
                                (let ()
                                  (declare (not safe))
                                  (cons _e11782_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12655)))))
            (if (macro-module-not-found-exception? _exn11779_)
                (macro-module-not-found-exception-procedure _exn11779_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12654
                              (let ()
                                (declare (not safe))
                                (cons _exn11779_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12654)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11773_))
            (let ((_e11776_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11773_ 'exception))))
              (macro-multiple-c-return-exception? _e11776_))
            (macro-multiple-c-return-exception? _exn11773_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11769_))
            (let ((_e11771_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11769_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11771_))
            (macro-no-such-file-or-directory-exception? _exn11769_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11765_))
            (let ((_e11767_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11765_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11767_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11767_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12657
                                (let ()
                                  (declare (not safe))
                                  (cons _e11767_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12657)))))
            (if (macro-no-such-file-or-directory-exception? _exn11765_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11765_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12656
                              (let ()
                                (declare (not safe))
                                (cons _exn11765_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12656)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11759_))
            (let ((_e11762_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11759_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11762_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11762_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12659
                                (let ()
                                  (declare (not safe))
                                  (cons _e11762_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12659)))))
            (if (macro-no-such-file-or-directory-exception? _exn11759_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11759_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12658
                              (let ()
                                (declare (not safe))
                                (cons _exn11759_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12658)))))))
    (define noncontinuable-exception?
      (lambda (_exn11755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11755_))
            (let ((_e11757_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11755_ 'exception))))
              (macro-noncontinuable-exception? _e11757_))
            (macro-noncontinuable-exception? _exn11755_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11749_))
            (let ((_e11752_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11749_ 'exception))))
              (if (macro-noncontinuable-exception? _e11752_)
                  (macro-noncontinuable-exception-reason _e11752_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12661
                                (let ()
                                  (declare (not safe))
                                  (cons _e11752_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12661)))))
            (if (macro-noncontinuable-exception? _exn11749_)
                (macro-noncontinuable-exception-reason _exn11749_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12660
                              (let ()
                                (declare (not safe))
                                (cons _exn11749_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12660)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11745_))
            (let ((_e11747_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11745_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11747_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11745_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11741_))
            (let ((_e11743_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11741_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11743_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11743_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12663
                                (let ()
                                  (declare (not safe))
                                  (cons _e11743_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12663)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11741_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11741_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12662
                              (let ()
                                (declare (not safe))
                                (cons _exn11741_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12662)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11735_))
            (let ((_e11738_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11735_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11738_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11738_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12665
                                (let ()
                                  (declare (not safe))
                                  (cons _e11738_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12665)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11735_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11735_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12664
                              (let ()
                                (declare (not safe))
                                (cons _exn11735_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12664)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11731_))
            (let ((_e11733_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11731_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11733_))
            (macro-nonprocedure-operator-exception? _exn11731_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11727_))
            (let ((_e11729_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11727_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11729_)
                  (macro-nonprocedure-operator-exception-arguments _e11729_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12667
                                (let ()
                                  (declare (not safe))
                                  (cons _e11729_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12667)))))
            (if (macro-nonprocedure-operator-exception? _exn11727_)
                (macro-nonprocedure-operator-exception-arguments _exn11727_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12666
                              (let ()
                                (declare (not safe))
                                (cons _exn11727_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12666)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11723_))
            (let ((_e11725_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11723_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11725_)
                  (macro-nonprocedure-operator-exception-code _e11725_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12669
                                (let ()
                                  (declare (not safe))
                                  (cons _e11725_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12669)))))
            (if (macro-nonprocedure-operator-exception? _exn11723_)
                (macro-nonprocedure-operator-exception-code _exn11723_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12668
                              (let ()
                                (declare (not safe))
                                (cons _exn11723_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12668)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11719_))
            (let ((_e11721_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11719_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11721_)
                  (macro-nonprocedure-operator-exception-operator _e11721_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12671
                                (let ()
                                  (declare (not safe))
                                  (cons _e11721_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12671)))))
            (if (macro-nonprocedure-operator-exception? _exn11719_)
                (macro-nonprocedure-operator-exception-operator _exn11719_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12670
                              (let ()
                                (declare (not safe))
                                (cons _exn11719_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12670)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11713_))
            (let ((_e11716_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11713_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11716_)
                  (macro-nonprocedure-operator-exception-rte _e11716_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12673
                                (let ()
                                  (declare (not safe))
                                  (cons _e11716_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12673)))))
            (if (macro-nonprocedure-operator-exception? _exn11713_)
                (macro-nonprocedure-operator-exception-rte _exn11713_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12672
                              (let ()
                                (declare (not safe))
                                (cons _exn11713_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12672)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11709_))
            (let ((_e11711_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11709_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11711_))
            (macro-not-in-compilation-context-exception? _exn11709_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11705_))
            (let ((_e11707_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11705_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11707_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11707_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12675
                                (let ()
                                  (declare (not safe))
                                  (cons _e11707_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12675)))))
            (if (macro-not-in-compilation-context-exception? _exn11705_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11705_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12674
                              (let ()
                                (declare (not safe))
                                (cons _exn11705_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12674)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11699_))
            (let ((_e11702_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11699_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11702_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11702_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12677
                                (let ()
                                  (declare (not safe))
                                  (cons _e11702_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12677)))))
            (if (macro-not-in-compilation-context-exception? _exn11699_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11699_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12676
                              (let ()
                                (declare (not safe))
                                (cons _exn11699_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12676)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11695_))
            (let ((_e11697_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11695_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11697_))
            (macro-number-of-arguments-limit-exception? _exn11695_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11691_))
            (let ((_e11693_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11691_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11693_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11693_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12679
                                (let ()
                                  (declare (not safe))
                                  (cons _e11693_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12679)))))
            (if (macro-number-of-arguments-limit-exception? _exn11691_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11691_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12678
                              (let ()
                                (declare (not safe))
                                (cons _exn11691_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12678)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11685_))
            (let ((_e11688_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11685_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11688_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11688_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12681
                                (let ()
                                  (declare (not safe))
                                  (cons _e11688_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12681)))))
            (if (macro-number-of-arguments-limit-exception? _exn11685_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11685_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12680
                              (let ()
                                (declare (not safe))
                                (cons _exn11685_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12680)))))))
    (define os-exception?
      (lambda (_exn11681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11681_))
            (let ((_e11683_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11681_ 'exception))))
              (macro-os-exception? _e11683_))
            (macro-os-exception? _exn11681_))))
    (define os-exception-arguments
      (lambda (_exn11677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11677_))
            (let ((_e11679_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11677_ 'exception))))
              (if (macro-os-exception? _e11679_)
                  (macro-os-exception-arguments _e11679_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12683
                                (let ()
                                  (declare (not safe))
                                  (cons _e11679_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12683)))))
            (if (macro-os-exception? _exn11677_)
                (macro-os-exception-arguments _exn11677_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12682
                              (let ()
                                (declare (not safe))
                                (cons _exn11677_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12682)))))))
    (define os-exception-code
      (lambda (_exn11673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11673_))
            (let ((_e11675_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11673_ 'exception))))
              (if (macro-os-exception? _e11675_)
                  (macro-os-exception-code _e11675_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12685
                                (let ()
                                  (declare (not safe))
                                  (cons _e11675_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12685)))))
            (if (macro-os-exception? _exn11673_)
                (macro-os-exception-code _exn11673_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12684
                              (let ()
                                (declare (not safe))
                                (cons _exn11673_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12684)))))))
    (define os-exception-message
      (lambda (_exn11669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11669_))
            (let ((_e11671_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11669_ 'exception))))
              (if (macro-os-exception? _e11671_)
                  (macro-os-exception-message _e11671_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12687
                                (let ()
                                  (declare (not safe))
                                  (cons _e11671_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12687)))))
            (if (macro-os-exception? _exn11669_)
                (macro-os-exception-message _exn11669_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12686
                              (let ()
                                (declare (not safe))
                                (cons _exn11669_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12686)))))))
    (define os-exception-procedure
      (lambda (_exn11663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11663_))
            (let ((_e11666_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11663_ 'exception))))
              (if (macro-os-exception? _e11666_)
                  (macro-os-exception-procedure _e11666_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12689
                                (let ()
                                  (declare (not safe))
                                  (cons _e11666_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12689)))))
            (if (macro-os-exception? _exn11663_)
                (macro-os-exception-procedure _exn11663_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12688
                              (let ()
                                (declare (not safe))
                                (cons _exn11663_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12688)))))))
    (define permission-denied-exception?
      (lambda (_exn11659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11659_))
            (let ((_e11661_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11659_ 'exception))))
              (macro-permission-denied-exception? _e11661_))
            (macro-permission-denied-exception? _exn11659_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11655_))
            (let ((_e11657_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11655_ 'exception))))
              (if (macro-permission-denied-exception? _e11657_)
                  (macro-permission-denied-exception-arguments _e11657_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12691
                                (let ()
                                  (declare (not safe))
                                  (cons _e11657_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12691)))))
            (if (macro-permission-denied-exception? _exn11655_)
                (macro-permission-denied-exception-arguments _exn11655_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12690
                              (let ()
                                (declare (not safe))
                                (cons _exn11655_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12690)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11649_))
            (let ((_e11652_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11649_ 'exception))))
              (if (macro-permission-denied-exception? _e11652_)
                  (macro-permission-denied-exception-procedure _e11652_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12693
                                (let ()
                                  (declare (not safe))
                                  (cons _e11652_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12693)))))
            (if (macro-permission-denied-exception? _exn11649_)
                (macro-permission-denied-exception-procedure _exn11649_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12692
                              (let ()
                                (declare (not safe))
                                (cons _exn11649_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12692)))))))
    (define range-exception?
      (lambda (_exn11645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11645_))
            (let ((_e11647_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11645_ 'exception))))
              (macro-range-exception? _e11647_))
            (macro-range-exception? _exn11645_))))
    (define range-exception-arg-id
      (lambda (_exn11641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11641_))
            (let ((_e11643_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11641_ 'exception))))
              (if (macro-range-exception? _e11643_)
                  (macro-range-exception-arg-id _e11643_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12695
                                (let ()
                                  (declare (not safe))
                                  (cons _e11643_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12695)))))
            (if (macro-range-exception? _exn11641_)
                (macro-range-exception-arg-id _exn11641_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12694
                              (let ()
                                (declare (not safe))
                                (cons _exn11641_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12694)))))))
    (define range-exception-arguments
      (lambda (_exn11637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11637_))
            (let ((_e11639_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11637_ 'exception))))
              (if (macro-range-exception? _e11639_)
                  (macro-range-exception-arguments _e11639_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12697
                                (let ()
                                  (declare (not safe))
                                  (cons _e11639_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12697)))))
            (if (macro-range-exception? _exn11637_)
                (macro-range-exception-arguments _exn11637_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12696
                              (let ()
                                (declare (not safe))
                                (cons _exn11637_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12696)))))))
    (define range-exception-procedure
      (lambda (_exn11631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11631_))
            (let ((_e11634_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11631_ 'exception))))
              (if (macro-range-exception? _e11634_)
                  (macro-range-exception-procedure _e11634_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12699
                                (let ()
                                  (declare (not safe))
                                  (cons _e11634_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12699)))))
            (if (macro-range-exception? _exn11631_)
                (macro-range-exception-procedure _exn11631_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12698
                              (let ()
                                (declare (not safe))
                                (cons _exn11631_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12698)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11627_))
            (let ((_e11629_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11627_ 'exception))))
              (macro-rpc-remote-error-exception? _e11629_))
            (macro-rpc-remote-error-exception? _exn11627_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11623_))
            (let ((_e11625_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11623_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11625_)
                  (macro-rpc-remote-error-exception-arguments _e11625_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12701
                                (let ()
                                  (declare (not safe))
                                  (cons _e11625_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12701)))))
            (if (macro-rpc-remote-error-exception? _exn11623_)
                (macro-rpc-remote-error-exception-arguments _exn11623_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12700
                              (let ()
                                (declare (not safe))
                                (cons _exn11623_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12700)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11619_))
            (let ((_e11621_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11619_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11621_)
                  (macro-rpc-remote-error-exception-message _e11621_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12703
                                (let ()
                                  (declare (not safe))
                                  (cons _e11621_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12703)))))
            (if (macro-rpc-remote-error-exception? _exn11619_)
                (macro-rpc-remote-error-exception-message _exn11619_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12702
                              (let ()
                                (declare (not safe))
                                (cons _exn11619_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12702)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11613_))
            (let ((_e11616_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11613_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11616_)
                  (macro-rpc-remote-error-exception-procedure _e11616_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12705
                                (let ()
                                  (declare (not safe))
                                  (cons _e11616_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12705)))))
            (if (macro-rpc-remote-error-exception? _exn11613_)
                (macro-rpc-remote-error-exception-procedure _exn11613_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12704
                              (let ()
                                (declare (not safe))
                                (cons _exn11613_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12704)))))))
    (define scheduler-exception?
      (lambda (_exn11609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11609_))
            (let ((_e11611_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11609_ 'exception))))
              (macro-scheduler-exception? _e11611_))
            (macro-scheduler-exception? _exn11609_))))
    (define scheduler-exception-reason
      (lambda (_exn11603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11603_))
            (let ((_e11606_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11603_ 'exception))))
              (if (macro-scheduler-exception? _e11606_)
                  (macro-scheduler-exception-reason _e11606_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12707
                                (let ()
                                  (declare (not safe))
                                  (cons _e11606_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12707)))))
            (if (macro-scheduler-exception? _exn11603_)
                (macro-scheduler-exception-reason _exn11603_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12706
                              (let ()
                                (declare (not safe))
                                (cons _exn11603_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12706)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11599_))
            (let ((_e11601_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11599_ 'exception))))
              (macro-sfun-conversion-exception? _e11601_))
            (macro-sfun-conversion-exception? _exn11599_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11595_))
            (let ((_e11597_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11595_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11597_)
                  (macro-sfun-conversion-exception-arguments _e11597_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12709
                                (let ()
                                  (declare (not safe))
                                  (cons _e11597_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12709)))))
            (if (macro-sfun-conversion-exception? _exn11595_)
                (macro-sfun-conversion-exception-arguments _exn11595_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12708
                              (let ()
                                (declare (not safe))
                                (cons _exn11595_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12708)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11591_))
            (let ((_e11593_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11591_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11593_)
                  (macro-sfun-conversion-exception-code _e11593_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12711
                                (let ()
                                  (declare (not safe))
                                  (cons _e11593_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12711)))))
            (if (macro-sfun-conversion-exception? _exn11591_)
                (macro-sfun-conversion-exception-code _exn11591_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12710
                              (let ()
                                (declare (not safe))
                                (cons _exn11591_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12710)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11587_))
            (let ((_e11589_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11587_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11589_)
                  (macro-sfun-conversion-exception-message _e11589_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12713
                                (let ()
                                  (declare (not safe))
                                  (cons _e11589_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12713)))))
            (if (macro-sfun-conversion-exception? _exn11587_)
                (macro-sfun-conversion-exception-message _exn11587_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12712
                              (let ()
                                (declare (not safe))
                                (cons _exn11587_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12712)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11581_))
            (let ((_e11584_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11581_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11584_)
                  (macro-sfun-conversion-exception-procedure _e11584_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12715
                                (let ()
                                  (declare (not safe))
                                  (cons _e11584_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12715)))))
            (if (macro-sfun-conversion-exception? _exn11581_)
                (macro-sfun-conversion-exception-procedure _exn11581_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12714
                              (let ()
                                (declare (not safe))
                                (cons _exn11581_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12714)))))))
    (define stack-overflow-exception?
      (lambda (_exn11575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11575_))
            (let ((_e11578_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11575_ 'exception))))
              (macro-stack-overflow-exception? _e11578_))
            (macro-stack-overflow-exception? _exn11575_))))
    (define started-thread-exception?
      (lambda (_exn11571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11571_))
            (let ((_e11573_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11571_ 'exception))))
              (macro-started-thread-exception? _e11573_))
            (macro-started-thread-exception? _exn11571_))))
    (define started-thread-exception-arguments
      (lambda (_exn11567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11567_))
            (let ((_e11569_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11567_ 'exception))))
              (if (macro-started-thread-exception? _e11569_)
                  (macro-started-thread-exception-arguments _e11569_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12717
                                (let ()
                                  (declare (not safe))
                                  (cons _e11569_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12717)))))
            (if (macro-started-thread-exception? _exn11567_)
                (macro-started-thread-exception-arguments _exn11567_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12716
                              (let ()
                                (declare (not safe))
                                (cons _exn11567_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12716)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11561_))
            (let ((_e11564_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11561_ 'exception))))
              (if (macro-started-thread-exception? _e11564_)
                  (macro-started-thread-exception-procedure _e11564_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12719
                                (let ()
                                  (declare (not safe))
                                  (cons _e11564_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12719)))))
            (if (macro-started-thread-exception? _exn11561_)
                (macro-started-thread-exception-procedure _exn11561_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12718
                              (let ()
                                (declare (not safe))
                                (cons _exn11561_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12718)))))))
    (define terminated-thread-exception?
      (lambda (_exn11557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11557_))
            (let ((_e11559_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11557_ 'exception))))
              (macro-terminated-thread-exception? _e11559_))
            (macro-terminated-thread-exception? _exn11557_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11553_))
            (let ((_e11555_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11553_ 'exception))))
              (if (macro-terminated-thread-exception? _e11555_)
                  (macro-terminated-thread-exception-arguments _e11555_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12721
                                (let ()
                                  (declare (not safe))
                                  (cons _e11555_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12721)))))
            (if (macro-terminated-thread-exception? _exn11553_)
                (macro-terminated-thread-exception-arguments _exn11553_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12720
                              (let ()
                                (declare (not safe))
                                (cons _exn11553_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12720)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11547_))
            (let ((_e11550_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11547_ 'exception))))
              (if (macro-terminated-thread-exception? _e11550_)
                  (macro-terminated-thread-exception-procedure _e11550_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12723
                                (let ()
                                  (declare (not safe))
                                  (cons _e11550_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12723)))))
            (if (macro-terminated-thread-exception? _exn11547_)
                (macro-terminated-thread-exception-procedure _exn11547_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12722
                              (let ()
                                (declare (not safe))
                                (cons _exn11547_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12722)))))))
    (define type-exception?
      (lambda (_exn11543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11543_))
            (let ((_e11545_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11543_ 'exception))))
              (macro-type-exception? _e11545_))
            (macro-type-exception? _exn11543_))))
    (define type-exception-arg-id
      (lambda (_exn11539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11539_))
            (let ((_e11541_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11539_ 'exception))))
              (if (macro-type-exception? _e11541_)
                  (macro-type-exception-arg-id _e11541_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12725
                                (let ()
                                  (declare (not safe))
                                  (cons _e11541_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12725)))))
            (if (macro-type-exception? _exn11539_)
                (macro-type-exception-arg-id _exn11539_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12724
                              (let ()
                                (declare (not safe))
                                (cons _exn11539_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12724)))))))
    (define type-exception-arguments
      (lambda (_exn11535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11535_))
            (let ((_e11537_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11535_ 'exception))))
              (if (macro-type-exception? _e11537_)
                  (macro-type-exception-arguments _e11537_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12727
                                (let ()
                                  (declare (not safe))
                                  (cons _e11537_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12727)))))
            (if (macro-type-exception? _exn11535_)
                (macro-type-exception-arguments _exn11535_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12726
                              (let ()
                                (declare (not safe))
                                (cons _exn11535_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12726)))))))
    (define type-exception-procedure
      (lambda (_exn11531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11531_))
            (let ((_e11533_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11531_ 'exception))))
              (if (macro-type-exception? _e11533_)
                  (macro-type-exception-procedure _e11533_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12729
                                (let ()
                                  (declare (not safe))
                                  (cons _e11533_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12729)))))
            (if (macro-type-exception? _exn11531_)
                (macro-type-exception-procedure _exn11531_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12728
                              (let ()
                                (declare (not safe))
                                (cons _exn11531_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12728)))))))
    (define type-exception-type-id
      (lambda (_exn11525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11525_))
            (let ((_e11528_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11525_ 'exception))))
              (if (macro-type-exception? _e11528_)
                  (macro-type-exception-type-id _e11528_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12731
                                (let ()
                                  (declare (not safe))
                                  (cons _e11528_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12731)))))
            (if (macro-type-exception? _exn11525_)
                (macro-type-exception-type-id _exn11525_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12730
                              (let ()
                                (declare (not safe))
                                (cons _exn11525_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12730)))))))
    (define unbound-global-exception?
      (lambda (_exn11521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11521_))
            (let ((_e11523_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11521_ 'exception))))
              (macro-unbound-global-exception? _e11523_))
            (macro-unbound-global-exception? _exn11521_))))
    (define unbound-global-exception-code
      (lambda (_exn11517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11517_))
            (let ((_e11519_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11517_ 'exception))))
              (if (macro-unbound-global-exception? _e11519_)
                  (macro-unbound-global-exception-code _e11519_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12733
                                (let ()
                                  (declare (not safe))
                                  (cons _e11519_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12733)))))
            (if (macro-unbound-global-exception? _exn11517_)
                (macro-unbound-global-exception-code _exn11517_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12732
                              (let ()
                                (declare (not safe))
                                (cons _exn11517_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12732)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11513_))
            (let ((_e11515_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11513_ 'exception))))
              (if (macro-unbound-global-exception? _e11515_)
                  (macro-unbound-global-exception-rte _e11515_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12735
                                (let ()
                                  (declare (not safe))
                                  (cons _e11515_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12735)))))
            (if (macro-unbound-global-exception? _exn11513_)
                (macro-unbound-global-exception-rte _exn11513_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12734
                              (let ()
                                (declare (not safe))
                                (cons _exn11513_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12734)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11507_))
            (let ((_e11510_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11507_ 'exception))))
              (if (macro-unbound-global-exception? _e11510_)
                  (macro-unbound-global-exception-variable _e11510_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12737
                                (let ()
                                  (declare (not safe))
                                  (cons _e11510_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12737)))))
            (if (macro-unbound-global-exception? _exn11507_)
                (macro-unbound-global-exception-variable _exn11507_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12736
                              (let ()
                                (declare (not safe))
                                (cons _exn11507_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12736)))))))
    (define unbound-key-exception?
      (lambda (_exn11503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11503_))
            (let ((_e11505_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11503_ 'exception))))
              (macro-unbound-key-exception? _e11505_))
            (macro-unbound-key-exception? _exn11503_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11499_))
            (let ((_e11501_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11499_ 'exception))))
              (if (macro-unbound-key-exception? _e11501_)
                  (macro-unbound-key-exception-arguments _e11501_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12739
                                (let ()
                                  (declare (not safe))
                                  (cons _e11501_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12739)))))
            (if (macro-unbound-key-exception? _exn11499_)
                (macro-unbound-key-exception-arguments _exn11499_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12738
                              (let ()
                                (declare (not safe))
                                (cons _exn11499_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12738)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11493_))
            (let ((_e11496_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11493_ 'exception))))
              (if (macro-unbound-key-exception? _e11496_)
                  (macro-unbound-key-exception-procedure _e11496_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12741
                                (let ()
                                  (declare (not safe))
                                  (cons _e11496_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12741)))))
            (if (macro-unbound-key-exception? _exn11493_)
                (macro-unbound-key-exception-procedure _exn11493_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12740
                              (let ()
                                (declare (not safe))
                                (cons _exn11493_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12740)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11489_))
            (let ((_e11491_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11489_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11491_))
            (macro-unbound-os-environment-variable-exception? _exn11489_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11485_))
            (let ((_e11487_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11485_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11487_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11487_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12743
                                (let ()
                                  (declare (not safe))
                                  (cons _e11487_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12743)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11485_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11485_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12742
                              (let ()
                                (declare (not safe))
                                (cons _exn11485_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12742)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11479_))
            (let ((_e11482_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11479_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11482_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11482_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12745
                                (let ()
                                  (declare (not safe))
                                  (cons _e11482_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12745)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11479_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11479_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12744
                              (let ()
                                (declare (not safe))
                                (cons _exn11479_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12744)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11475_))
            (let ((_e11477_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11475_ 'exception))))
              (macro-unbound-serial-number-exception? _e11477_))
            (macro-unbound-serial-number-exception? _exn11475_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11471_))
            (let ((_e11473_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11471_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11473_)
                  (macro-unbound-serial-number-exception-arguments _e11473_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12747
                                (let ()
                                  (declare (not safe))
                                  (cons _e11473_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12747)))))
            (if (macro-unbound-serial-number-exception? _exn11471_)
                (macro-unbound-serial-number-exception-arguments _exn11471_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12746
                              (let ()
                                (declare (not safe))
                                (cons _exn11471_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12746)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11465_))
            (let ((_e11468_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11465_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11468_)
                  (macro-unbound-serial-number-exception-procedure _e11468_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12749
                                (let ()
                                  (declare (not safe))
                                  (cons _e11468_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12749)))))
            (if (macro-unbound-serial-number-exception? _exn11465_)
                (macro-unbound-serial-number-exception-procedure _exn11465_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12748
                              (let ()
                                (declare (not safe))
                                (cons _exn11465_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12748)))))))
    (define uncaught-exception?
      (lambda (_exn11461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11461_))
            (let ((_e11463_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11461_ 'exception))))
              (macro-uncaught-exception? _e11463_))
            (macro-uncaught-exception? _exn11461_))))
    (define uncaught-exception-arguments
      (lambda (_exn11457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11457_))
            (let ((_e11459_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11457_ 'exception))))
              (if (macro-uncaught-exception? _e11459_)
                  (macro-uncaught-exception-arguments _e11459_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12751
                                (let ()
                                  (declare (not safe))
                                  (cons _e11459_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12751)))))
            (if (macro-uncaught-exception? _exn11457_)
                (macro-uncaught-exception-arguments _exn11457_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12750
                              (let ()
                                (declare (not safe))
                                (cons _exn11457_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12750)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11453_))
            (let ((_e11455_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11453_ 'exception))))
              (if (macro-uncaught-exception? _e11455_)
                  (macro-uncaught-exception-procedure _e11455_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12753
                                (let ()
                                  (declare (not safe))
                                  (cons _e11455_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12753)))))
            (if (macro-uncaught-exception? _exn11453_)
                (macro-uncaught-exception-procedure _exn11453_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12752
                              (let ()
                                (declare (not safe))
                                (cons _exn11453_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12752)))))))
    (define uncaught-exception-reason
      (lambda (_exn11447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11447_))
            (let ((_e11450_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11447_ 'exception))))
              (if (macro-uncaught-exception? _e11450_)
                  (macro-uncaught-exception-reason _e11450_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12755
                                (let ()
                                  (declare (not safe))
                                  (cons _e11450_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12755)))))
            (if (macro-uncaught-exception? _exn11447_)
                (macro-uncaught-exception-reason _exn11447_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12754
                              (let ()
                                (declare (not safe))
                                (cons _exn11447_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12754)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11443_))
            (let ((_e11445_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11443_ 'exception))))
              (macro-uninitialized-thread-exception? _e11445_))
            (macro-uninitialized-thread-exception? _exn11443_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11439_))
            (let ((_e11441_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11439_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11441_)
                  (macro-uninitialized-thread-exception-arguments _e11441_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12757
                                (let ()
                                  (declare (not safe))
                                  (cons _e11441_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12757)))))
            (if (macro-uninitialized-thread-exception? _exn11439_)
                (macro-uninitialized-thread-exception-arguments _exn11439_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12756
                              (let ()
                                (declare (not safe))
                                (cons _exn11439_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12756)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11433_))
            (let ((_e11436_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11433_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11436_)
                  (macro-uninitialized-thread-exception-procedure _e11436_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12759
                                (let ()
                                  (declare (not safe))
                                  (cons _e11436_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12759)))))
            (if (macro-uninitialized-thread-exception? _exn11433_)
                (macro-uninitialized-thread-exception-procedure _exn11433_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12758
                              (let ()
                                (declare (not safe))
                                (cons _exn11433_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12758)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11429_))
            (let ((_e11431_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11429_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11431_))
            (macro-unknown-keyword-argument-exception? _exn11429_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11425_))
            (let ((_e11427_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11425_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11427_)
                  (macro-unknown-keyword-argument-exception-arguments _e11427_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12761
                                (let ()
                                  (declare (not safe))
                                  (cons _e11427_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12761)))))
            (if (macro-unknown-keyword-argument-exception? _exn11425_)
                (macro-unknown-keyword-argument-exception-arguments _exn11425_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12760
                              (let ()
                                (declare (not safe))
                                (cons _exn11425_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12760)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11419_))
            (let ((_e11422_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11419_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11422_)
                  (macro-unknown-keyword-argument-exception-procedure _e11422_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12763
                                (let ()
                                  (declare (not safe))
                                  (cons _e11422_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12763)))))
            (if (macro-unknown-keyword-argument-exception? _exn11419_)
                (macro-unknown-keyword-argument-exception-procedure _exn11419_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12762
                              (let ()
                                (declare (not safe))
                                (cons _exn11419_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12762)))))))
    (define unterminated-process-exception?
      (lambda (_exn11415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11415_))
            (let ((_e11417_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11415_ 'exception))))
              (macro-unterminated-process-exception? _e11417_))
            (macro-unterminated-process-exception? _exn11415_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11411_))
            (let ((_e11413_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11411_ 'exception))))
              (if (macro-unterminated-process-exception? _e11413_)
                  (macro-unterminated-process-exception-arguments _e11413_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12765
                                (let ()
                                  (declare (not safe))
                                  (cons _e11413_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12765)))))
            (if (macro-unterminated-process-exception? _exn11411_)
                (macro-unterminated-process-exception-arguments _exn11411_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12764
                              (let ()
                                (declare (not safe))
                                (cons _exn11411_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12764)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11405_))
            (let ((_e11408_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11405_ 'exception))))
              (if (macro-unterminated-process-exception? _e11408_)
                  (macro-unterminated-process-exception-procedure _e11408_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12767
                                (let ()
                                  (declare (not safe))
                                  (cons _e11408_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12767)))))
            (if (macro-unterminated-process-exception? _exn11405_)
                (macro-unterminated-process-exception-procedure _exn11405_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12766
                              (let ()
                                (declare (not safe))
                                (cons _exn11405_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12766)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11401_))
            (let ((_e11403_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11401_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11403_))
            (macro-wrong-number-of-arguments-exception? _exn11401_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11397_))
            (let ((_e11399_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11397_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11399_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11399_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12769
                                (let ()
                                  (declare (not safe))
                                  (cons _e11399_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12769)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11397_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11397_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12768
                              (let ()
                                (declare (not safe))
                                (cons _exn11397_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12768)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11391_))
            (let ((_e11394_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11391_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11394_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11394_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12771
                                (let ()
                                  (declare (not safe))
                                  (cons _e11394_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12771)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11391_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11391_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12770
                              (let ()
                                (declare (not safe))
                                (cons _exn11391_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12770)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11387_))
            (let ((_e11389_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11387_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11389_))
            (macro-wrong-number-of-values-exception? _exn11387_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11383_))
            (let ((_e11385_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11383_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11385_)
                  (macro-wrong-number-of-values-exception-code _e11385_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12773
                                (let ()
                                  (declare (not safe))
                                  (cons _e11385_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12773)))))
            (if (macro-wrong-number-of-values-exception? _exn11383_)
                (macro-wrong-number-of-values-exception-code _exn11383_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12772
                              (let ()
                                (declare (not safe))
                                (cons _exn11383_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12772)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11379_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11379_))
            (let ((_e11381_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11379_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11381_)
                  (macro-wrong-number-of-values-exception-rte _e11381_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12775
                                (let ()
                                  (declare (not safe))
                                  (cons _e11381_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12775)))))
            (if (macro-wrong-number-of-values-exception? _exn11379_)
                (macro-wrong-number-of-values-exception-rte _exn11379_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12774
                              (let ()
                                (declare (not safe))
                                (cons _exn11379_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12774)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11373_))
            (let ((_e11376_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11373_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11376_)
                  (macro-wrong-number-of-values-exception-vals _e11376_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12777
                                (let ()
                                  (declare (not safe))
                                  (cons _e11376_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12777)))))
            (if (macro-wrong-number-of-values-exception? _exn11373_)
                (macro-wrong-number-of-values-exception-vals _exn11373_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12776
                              (let ()
                                (declare (not safe))
                                (cons _exn11373_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12776)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11367_))
            (let ((_e11370_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11367_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11370_))
            (macro-wrong-processor-c-return-exception? _exn11367_))))))
