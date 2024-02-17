(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708194418)
  (begin
    (define Exception::t
      (let ((__tmp94605 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp94605
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90509_ (apply make-instance Exception::t _$args90509_)))
    (define StackTrace::t
      (let ((__tmp94606 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp94606
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90506_ (apply make-instance StackTrace::t _$args90506_)))
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
      (let ((__tmp94607 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp94607
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90503_ (apply make-instance Error::t _$args90503_)))
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
      (let ((__tmp94608 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp94608
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90500_
        (apply make-instance RuntimeException::t _$args90500_)))
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
      (lambda (_exn90495_ _continue90496_)
        (let ((_exn90498_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90495_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90498_ _continue90496_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90491_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90491_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90491_ 'continuation))
                '#!void
                (let ((__tmp94609
                       (lambda (_cont90493_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90491_
                            'continuation
                            _cont90493_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp94609)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90491_))))
    (define error
      (lambda (_message90488_ . _irritants90489_)
        (raise (let ((__obj94599
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj94599
                  _message90488_
                  'irritants:
                  _irritants90489_)
                 __obj94599))))
    (define with-exception-handler
      (lambda (_handler90481_ _thunk90482_)
        (if (let () (declare (not safe)) (procedure? _handler90481_))
            '#!void
            (raise (let ((__obj94600
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94600
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90481_ '())))
                     __obj94600)))
        (if (let () (declare (not safe)) (procedure? _thunk90482_))
            '#!void
            (raise (let ((__obj94601
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94601
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90482_ '())))
                     __obj94601)))
        (let ((__tmp94610
               (lambda (_exn90484_)
                 (let ((_exn90486_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90484_))))
                   (_handler90481_ _exn90486_)))))
          (declare (not safe))
          (##with-exception-handler __tmp94610 _thunk90482_))))
    (define with-catch
      (lambda (_handler90474_ _thunk90475_)
        (if (let () (declare (not safe)) (procedure? _handler90474_))
            '#!void
            (raise (let ((__obj94602
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94602
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90474_ '())))
                     __obj94602)))
        (if (let () (declare (not safe)) (procedure? _thunk90475_))
            '#!void
            (raise (let ((__obj94603
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94603
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90475_ '())))
                     __obj94603)))
        (let ((__tmp94611
               (lambda (_cont90477_)
                 (with-exception-handler
                  (lambda (_exn90479_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90477_
                       _handler90474_
                       _exn90479_)))
                  _thunk90475_))))
          (declare (not safe))
          (##continuation-capture __tmp94611))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90465_)
        (if (or (heap-overflow-exception? _exn90465_)
                (stack-overflow-exception? _exn90465_))
            _exn90465_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90465_))
                _exn90465_
                (if (macro-exception? _exn90465_)
                    (let ((_rte90470_
                           (let ((__obj94604
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj94604
                                _exn90465_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj94604)))
                      (let ((__tmp94612
                             (lambda (_cont90472_)
                               (let ((__tmp94613
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90472_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90470_
                                  'continuation
                                  __tmp94613)))))
                        (declare (not safe))
                        (##continuation-capture __tmp94612))
                      _rte90470_)
                    _exn90465_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90460_)
        (let ((_$e90462_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90460_))))
          (if _$e90462_ _$e90462_ (error-exception? _obj90460_)))))
    (define error-message
      (lambda (_obj90458_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90458_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90458_ 'message))
            (if (error-exception? _obj90458_)
                (error-exception-message _obj90458_)
                '#f))))
    (define error-irritants
      (lambda (_obj90456_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90456_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90456_ 'irritants))
            (if (error-exception? _obj90456_)
                (error-exception-parameters _obj90456_)
                '#f))))
    (define error-trace
      (lambda (_obj90454_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90454_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90454_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90436_ _port90437_)
        (let ((_$e90439_
               (let ()
                 (declare (not safe))
                 (method-ref _e90436_ 'display-exception))))
          (if _$e90439_
              ((lambda (_f90442_) (_f90442_ _e90436_ _port90437_)) _$e90439_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90436_ _port90437_))))))
    (define display-exception__0
      (lambda (_e90447_)
        (let ((_port90449_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90447_ _port90449_))))
    (define display-exception
      (lambda _g94615_
        (let ((_g94614_ (let () (declare (not safe)) (##length _g94615_))))
          (cond ((let () (declare (not safe)) (##fx= _g94614_ 1))
                 (apply (lambda (_e90447_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90447_)))
                        _g94615_))
                ((let () (declare (not safe)) (##fx= _g94614_ 2))
                 (apply (lambda (_e90451_ _port90452_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90451_ _port90452_)))
                        _g94615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g94615_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90425_ _message90426_ . _rest90427_)
        (let ((_message90433_
               (if (let () (declare (not safe)) (string? _message90426_))
                   _message90426_
                   (call-with-output-string
                    '""
                    (lambda (_g9042890430_)
                      (display _message90426_ _g9042890430_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90425_ 'message _message90433_))
          (apply class-instance-init! _self90425_ _rest90427_))))
    (define Error:::init!::specialize
      (lambda (__t94578)
        (let ((__message94579
               (let ((__tmp94580
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94578 'message))))
                 (if __tmp94580 __tmp94580 (error '"Unknown slot" 'message)))))
          (lambda (_self90425_ _message90426_ . _rest90427_)
            (let ((_message90433_
                   (if (let () (declare (not safe)) (string? _message90426_))
                       _message90426_
                       (call-with-output-string
                        '""
                        (lambda (_g9042890430_)
                          (display _message90426_ _g9042890430_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90425_
                 _message90433_
                 __message94579
                 __t94578
                 '#f))
              (apply class-instance-init! _self90425_ _rest90427_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90283_ _port90284_)
        (let ((_tmp-port90286_ (open-output-string))
              (_display-error-newline90287_
               (> (output-port-column _port90284_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90286_))
          (let ((__tmp94616
                 (lambda ()
                   (if _display-error-newline90287_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90290_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90283_ 'where))))
                     (if _$e90290_ (display _$e90290_) (display '"?")))
                   (let ((__tmp94617
                          (let ((__tmp94618
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90283_))))
                            (declare (not safe))
                            (##type-name __tmp94618))))
                     (declare (not safe))
                     (display* '" [" __tmp94617 '"]: "))
                   (let ((__tmp94619
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90283_ 'message))))
                     (declare (not safe))
                     (displayln __tmp94619))
                   (let ((_irritants90293_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90283_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90293_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90295_)
                              (write _obj90295_)
                              (write-char '#\space))
                            _irritants90293_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90283_))
                            (dump-stack-trace?))
                       (let ((_cont9029690298_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90283_
                                 'continuation))))
                         (if _cont9029690298_
                             (let ((_cont90301_ _cont9029690298_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90301_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp94616
             current-output-port
             _tmp-port90286_))
          (let ((__tmp94620 (get-output-string _tmp-port90286_)))
            (declare (not safe))
            (##write-string __tmp94620 _port90284_)))))
    (define Error::display-exception::specialize
      (lambda (__t94581)
        (let ((__message94582
               (let ((__tmp94586
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94581 'message))))
                 (if __tmp94586 __tmp94586 (error '"Unknown slot" 'message))))
              (__where94583
               (let ((__tmp94587
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94581 'where))))
                 (if __tmp94587 __tmp94587 (error '"Unknown slot" 'where))))
              (__irritants94584
               (let ((__tmp94588
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94581 'irritants))))
                 (if __tmp94588
                     __tmp94588
                     (error '"Unknown slot" 'irritants))))
              (__continuation94585
               (let ((__tmp94589
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94581 'continuation))))
                 (if __tmp94589
                     __tmp94589
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90283_ _port90284_)
            (let ((_tmp-port90286_ (open-output-string))
                  (_display-error-newline90287_
                   (> (output-port-column _port90284_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90286_))
              (let ((__tmp94621
                     (lambda ()
                       (if _display-error-newline90287_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90290_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90283_
                                 __where94583
                                 __t94581
                                 '#f))))
                         (if _$e90290_ (display _$e90290_) (display '"?")))
                       (let ((__tmp94622
                              (let ((__tmp94623
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90283_))))
                                (declare (not safe))
                                (##type-name __tmp94623))))
                         (declare (not safe))
                         (display* '" [" __tmp94622 '"]: "))
                       (let ((__tmp94624
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90283_
                                 __message94582
                                 __t94581
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp94624))
                       (let ((_irritants90293_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90283_
                                 __irritants94584
                                 __t94581
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90293_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90295_)
                                  (write _obj90295_)
                                  (write-char '#\space))
                                _irritants90293_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90283_))
                                (dump-stack-trace?))
                           (let ((_cont9029690298_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90283_
                                     __continuation94585
                                     __t94581
                                     '#f))))
                             (if _cont9029690298_
                                 (let ((_cont90301_ _cont9029690298_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90301_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp94621
                 current-output-port
                 _tmp-port90286_))
              (let ((__tmp94625 (get-output-string _tmp-port90286_)))
                (declare (not safe))
                (##write-string __tmp94625 _port90284_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90150_ _port90151_)
        (let ((_tmp-port90153_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90153_))
          (let ((__tmp94626
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90150_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp94626 _tmp-port90153_))
          (if (dump-stack-trace?)
              (let ((_cont9015490156_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90150_ 'continuation))))
                (if _cont9015490156_
                    (let ((_cont90159_ _cont9015490156_))
                      (display '"--- continuation backtrace:" _tmp-port90153_)
                      (newline _tmp-port90153_)
                      (display-continuation-backtrace
                       _cont90159_
                       _tmp-port90153_))
                    '#f))
              '#!void)
          (let ((__tmp94627 (get-output-string _tmp-port90153_)))
            (declare (not safe))
            (##write-string __tmp94627 _port90151_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94590)
        (let ((__exception94591
               (let ((__tmp94593
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94590 'exception))))
                 (if __tmp94593
                     __tmp94593
                     (error '"Unknown slot" 'exception))))
              (__continuation94592
               (let ((__tmp94594
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94590 'continuation))))
                 (if __tmp94594
                     __tmp94594
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90150_ _port90151_)
            (let ((_tmp-port90153_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90153_))
              (let ((__tmp94628
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90150_
                        __exception94591
                        __t94590
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp94628 _tmp-port90153_))
              (if (dump-stack-trace?)
                  (let ((_cont9015490156_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90150_
                            __continuation94592
                            __t94590
                            '#f))))
                    (if _cont9015490156_
                        (let ((_cont90159_ _cont9015490156_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90153_)
                          (newline _tmp-port90153_)
                          (display-continuation-backtrace
                           _cont90159_
                           _tmp-port90153_))
                        '#f))
                  '#!void)
              (let ((__tmp94629 (get-output-string _tmp-port90153_)))
                (declare (not safe))
                (##write-string __tmp94629 _port90151_)))))))
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
      (lambda (_port90022_)
        (if (macro-character-port? _port90022_)
            (let ((_old-width90024_
                   (macro-character-port-output-width _port90022_)))
              (macro-character-port-output-width-set!
               _port90022_
               (lambda (_port90026_) '256))
              _old-width90024_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90019_ _old-width90020_)
        (if (macro-character-port? _port90019_)
            (macro-character-port-output-width-set!
             _port90019_
             _old-width90020_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90017_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90017_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90011_))
            (let ((_e90014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90011_ 'exception))))
              (macro-abandoned-mutex-exception? _e90014_))
            (macro-abandoned-mutex-exception? _exn90011_))))
    (define cfun-conversion-exception?
      (lambda (_exn90007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90007_))
            (let ((_e90009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90007_ 'exception))))
              (macro-cfun-conversion-exception? _e90009_))
            (macro-cfun-conversion-exception? _exn90007_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90003_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90003_))
            (let ((_e90005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90003_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90005_)
                  (macro-cfun-conversion-exception-arguments _e90005_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94630
                                (let ()
                                  (declare (not safe))
                                  (cons _e90005_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp94630)))))
            (if (macro-cfun-conversion-exception? _exn90003_)
                (macro-cfun-conversion-exception-arguments _exn90003_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94631
                              (let ()
                                (declare (not safe))
                                (cons _exn90003_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp94631)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn89999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89999_))
            (let ((_e90001_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89999_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90001_)
                  (macro-cfun-conversion-exception-code _e90001_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94632
                                (let ()
                                  (declare (not safe))
                                  (cons _e90001_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp94632)))))
            (if (macro-cfun-conversion-exception? _exn89999_)
                (macro-cfun-conversion-exception-code _exn89999_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94633
                              (let ()
                                (declare (not safe))
                                (cons _exn89999_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp94633)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn89995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89995_))
            (let ((_e89997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89995_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89997_)
                  (macro-cfun-conversion-exception-message _e89997_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94634
                                (let ()
                                  (declare (not safe))
                                  (cons _e89997_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp94634)))))
            (if (macro-cfun-conversion-exception? _exn89995_)
                (macro-cfun-conversion-exception-message _exn89995_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94635
                              (let ()
                                (declare (not safe))
                                (cons _exn89995_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp94635)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn89989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89989_))
            (let ((_e89992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89989_ 'exception))))
              (if (macro-cfun-conversion-exception? _e89992_)
                  (macro-cfun-conversion-exception-procedure _e89992_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94636
                                (let ()
                                  (declare (not safe))
                                  (cons _e89992_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp94636)))))
            (if (macro-cfun-conversion-exception? _exn89989_)
                (macro-cfun-conversion-exception-procedure _exn89989_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94637
                              (let ()
                                (declare (not safe))
                                (cons _exn89989_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp94637)))))))
    (define datum-parsing-exception?
      (lambda (_exn89985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89985_))
            (let ((_e89987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89985_ 'exception))))
              (macro-datum-parsing-exception? _e89987_))
            (macro-datum-parsing-exception? _exn89985_))))
    (define datum-parsing-exception-kind
      (lambda (_exn89981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89981_))
            (let ((_e89983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89981_ 'exception))))
              (if (macro-datum-parsing-exception? _e89983_)
                  (macro-datum-parsing-exception-kind _e89983_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94638
                                (let ()
                                  (declare (not safe))
                                  (cons _e89983_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp94638)))))
            (if (macro-datum-parsing-exception? _exn89981_)
                (macro-datum-parsing-exception-kind _exn89981_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94639
                              (let ()
                                (declare (not safe))
                                (cons _exn89981_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp94639)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn89977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89977_))
            (let ((_e89979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89977_ 'exception))))
              (if (macro-datum-parsing-exception? _e89979_)
                  (macro-datum-parsing-exception-parameters _e89979_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94640
                                (let ()
                                  (declare (not safe))
                                  (cons _e89979_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp94640)))))
            (if (macro-datum-parsing-exception? _exn89977_)
                (macro-datum-parsing-exception-parameters _exn89977_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94641
                              (let ()
                                (declare (not safe))
                                (cons _exn89977_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp94641)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn89971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89971_))
            (let ((_e89974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89971_ 'exception))))
              (if (macro-datum-parsing-exception? _e89974_)
                  (macro-datum-parsing-exception-readenv _e89974_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94642
                                (let ()
                                  (declare (not safe))
                                  (cons _e89974_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp94642)))))
            (if (macro-datum-parsing-exception? _exn89971_)
                (macro-datum-parsing-exception-readenv _exn89971_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94643
                              (let ()
                                (declare (not safe))
                                (cons _exn89971_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp94643)))))))
    (define deadlock-exception?
      (lambda (_exn89965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89965_))
            (let ((_e89968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89965_ 'exception))))
              (macro-deadlock-exception? _e89968_))
            (macro-deadlock-exception? _exn89965_))))
    (define divide-by-zero-exception?
      (lambda (_exn89961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89961_))
            (let ((_e89963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89961_ 'exception))))
              (macro-divide-by-zero-exception? _e89963_))
            (macro-divide-by-zero-exception? _exn89961_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn89957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89957_))
            (let ((_e89959_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89957_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89959_)
                  (macro-divide-by-zero-exception-arguments _e89959_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94644
                                (let ()
                                  (declare (not safe))
                                  (cons _e89959_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp94644)))))
            (if (macro-divide-by-zero-exception? _exn89957_)
                (macro-divide-by-zero-exception-arguments _exn89957_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94645
                              (let ()
                                (declare (not safe))
                                (cons _exn89957_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp94645)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn89951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89951_))
            (let ((_e89954_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89951_ 'exception))))
              (if (macro-divide-by-zero-exception? _e89954_)
                  (macro-divide-by-zero-exception-procedure _e89954_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94646
                                (let ()
                                  (declare (not safe))
                                  (cons _e89954_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp94646)))))
            (if (macro-divide-by-zero-exception? _exn89951_)
                (macro-divide-by-zero-exception-procedure _exn89951_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94647
                              (let ()
                                (declare (not safe))
                                (cons _exn89951_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp94647)))))))
    (define error-exception?
      (lambda (_exn89947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89947_))
            (let ((_e89949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89947_ 'exception))))
              (macro-error-exception? _e89949_))
            (macro-error-exception? _exn89947_))))
    (define error-exception-message
      (lambda (_exn89943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89943_))
            (let ((_e89945_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89943_ 'exception))))
              (if (macro-error-exception? _e89945_)
                  (macro-error-exception-message _e89945_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94648
                                (let ()
                                  (declare (not safe))
                                  (cons _e89945_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp94648)))))
            (if (macro-error-exception? _exn89943_)
                (macro-error-exception-message _exn89943_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94649
                              (let ()
                                (declare (not safe))
                                (cons _exn89943_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp94649)))))))
    (define error-exception-parameters
      (lambda (_exn89937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89937_))
            (let ((_e89940_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89937_ 'exception))))
              (if (macro-error-exception? _e89940_)
                  (macro-error-exception-parameters _e89940_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94650
                                (let ()
                                  (declare (not safe))
                                  (cons _e89940_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp94650)))))
            (if (macro-error-exception? _exn89937_)
                (macro-error-exception-parameters _exn89937_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94651
                              (let ()
                                (declare (not safe))
                                (cons _exn89937_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp94651)))))))
    (define expression-parsing-exception?
      (lambda (_exn89933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89933_))
            (let ((_e89935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89933_ 'exception))))
              (macro-expression-parsing-exception? _e89935_))
            (macro-expression-parsing-exception? _exn89933_))))
    (define expression-parsing-exception-kind
      (lambda (_exn89929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89929_))
            (let ((_e89931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89929_ 'exception))))
              (if (macro-expression-parsing-exception? _e89931_)
                  (macro-expression-parsing-exception-kind _e89931_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94652
                                (let ()
                                  (declare (not safe))
                                  (cons _e89931_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp94652)))))
            (if (macro-expression-parsing-exception? _exn89929_)
                (macro-expression-parsing-exception-kind _exn89929_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94653
                              (let ()
                                (declare (not safe))
                                (cons _exn89929_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp94653)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn89925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89925_))
            (let ((_e89927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89925_ 'exception))))
              (if (macro-expression-parsing-exception? _e89927_)
                  (macro-expression-parsing-exception-parameters _e89927_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94654
                                (let ()
                                  (declare (not safe))
                                  (cons _e89927_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp94654)))))
            (if (macro-expression-parsing-exception? _exn89925_)
                (macro-expression-parsing-exception-parameters _exn89925_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94655
                              (let ()
                                (declare (not safe))
                                (cons _exn89925_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp94655)))))))
    (define expression-parsing-exception-source
      (lambda (_exn89919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89919_))
            (let ((_e89922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89919_ 'exception))))
              (if (macro-expression-parsing-exception? _e89922_)
                  (macro-expression-parsing-exception-source _e89922_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94656
                                (let ()
                                  (declare (not safe))
                                  (cons _e89922_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp94656)))))
            (if (macro-expression-parsing-exception? _exn89919_)
                (macro-expression-parsing-exception-source _exn89919_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94657
                              (let ()
                                (declare (not safe))
                                (cons _exn89919_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp94657)))))))
    (define file-exists-exception?
      (lambda (_exn89915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89915_))
            (let ((_e89917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89915_ 'exception))))
              (macro-file-exists-exception? _e89917_))
            (macro-file-exists-exception? _exn89915_))))
    (define file-exists-exception-arguments
      (lambda (_exn89911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89911_))
            (let ((_e89913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89911_ 'exception))))
              (if (macro-file-exists-exception? _e89913_)
                  (macro-file-exists-exception-arguments _e89913_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94658
                                (let ()
                                  (declare (not safe))
                                  (cons _e89913_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp94658)))))
            (if (macro-file-exists-exception? _exn89911_)
                (macro-file-exists-exception-arguments _exn89911_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94659
                              (let ()
                                (declare (not safe))
                                (cons _exn89911_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp94659)))))))
    (define file-exists-exception-procedure
      (lambda (_exn89905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89905_))
            (let ((_e89908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89905_ 'exception))))
              (if (macro-file-exists-exception? _e89908_)
                  (macro-file-exists-exception-procedure _e89908_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94660
                                (let ()
                                  (declare (not safe))
                                  (cons _e89908_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp94660)))))
            (if (macro-file-exists-exception? _exn89905_)
                (macro-file-exists-exception-procedure _exn89905_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94661
                              (let ()
                                (declare (not safe))
                                (cons _exn89905_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp94661)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn89901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89901_))
            (let ((_e89903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89901_ 'exception))))
              (macro-fixnum-overflow-exception? _e89903_))
            (macro-fixnum-overflow-exception? _exn89901_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn89897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89897_))
            (let ((_e89899_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89897_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89899_)
                  (macro-fixnum-overflow-exception-arguments _e89899_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94662
                                (let ()
                                  (declare (not safe))
                                  (cons _e89899_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp94662)))))
            (if (macro-fixnum-overflow-exception? _exn89897_)
                (macro-fixnum-overflow-exception-arguments _exn89897_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94663
                              (let ()
                                (declare (not safe))
                                (cons _exn89897_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp94663)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn89891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89891_))
            (let ((_e89894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89891_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e89894_)
                  (macro-fixnum-overflow-exception-procedure _e89894_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94664
                                (let ()
                                  (declare (not safe))
                                  (cons _e89894_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp94664)))))
            (if (macro-fixnum-overflow-exception? _exn89891_)
                (macro-fixnum-overflow-exception-procedure _exn89891_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94665
                              (let ()
                                (declare (not safe))
                                (cons _exn89891_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp94665)))))))
    (define heap-overflow-exception?
      (lambda (_exn89885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89885_))
            (let ((_e89888_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89885_ 'exception))))
              (macro-heap-overflow-exception? _e89888_))
            (macro-heap-overflow-exception? _exn89885_))))
    (define inactive-thread-exception?
      (lambda (_exn89881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89881_))
            (let ((_e89883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89881_ 'exception))))
              (macro-inactive-thread-exception? _e89883_))
            (macro-inactive-thread-exception? _exn89881_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn89877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89877_))
            (let ((_e89879_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89877_ 'exception))))
              (if (macro-inactive-thread-exception? _e89879_)
                  (macro-inactive-thread-exception-arguments _e89879_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94666
                                (let ()
                                  (declare (not safe))
                                  (cons _e89879_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp94666)))))
            (if (macro-inactive-thread-exception? _exn89877_)
                (macro-inactive-thread-exception-arguments _exn89877_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94667
                              (let ()
                                (declare (not safe))
                                (cons _exn89877_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp94667)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn89871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89871_))
            (let ((_e89874_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89871_ 'exception))))
              (if (macro-inactive-thread-exception? _e89874_)
                  (macro-inactive-thread-exception-procedure _e89874_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94668
                                (let ()
                                  (declare (not safe))
                                  (cons _e89874_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp94668)))))
            (if (macro-inactive-thread-exception? _exn89871_)
                (macro-inactive-thread-exception-procedure _exn89871_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94669
                              (let ()
                                (declare (not safe))
                                (cons _exn89871_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp94669)))))))
    (define initialized-thread-exception?
      (lambda (_exn89867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89867_))
            (let ((_e89869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89867_ 'exception))))
              (macro-initialized-thread-exception? _e89869_))
            (macro-initialized-thread-exception? _exn89867_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn89863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89863_))
            (let ((_e89865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89863_ 'exception))))
              (if (macro-initialized-thread-exception? _e89865_)
                  (macro-initialized-thread-exception-arguments _e89865_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94670
                                (let ()
                                  (declare (not safe))
                                  (cons _e89865_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp94670)))))
            (if (macro-initialized-thread-exception? _exn89863_)
                (macro-initialized-thread-exception-arguments _exn89863_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94671
                              (let ()
                                (declare (not safe))
                                (cons _exn89863_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp94671)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn89857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89857_))
            (let ((_e89860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89857_ 'exception))))
              (if (macro-initialized-thread-exception? _e89860_)
                  (macro-initialized-thread-exception-procedure _e89860_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94672
                                (let ()
                                  (declare (not safe))
                                  (cons _e89860_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp94672)))))
            (if (macro-initialized-thread-exception? _exn89857_)
                (macro-initialized-thread-exception-procedure _exn89857_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94673
                              (let ()
                                (declare (not safe))
                                (cons _exn89857_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp94673)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn89853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89853_))
            (let ((_e89855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89853_ 'exception))))
              (macro-invalid-hash-number-exception? _e89855_))
            (macro-invalid-hash-number-exception? _exn89853_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn89849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89849_))
            (let ((_e89851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89849_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89851_)
                  (macro-invalid-hash-number-exception-arguments _e89851_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94674
                                (let ()
                                  (declare (not safe))
                                  (cons _e89851_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp94674)))))
            (if (macro-invalid-hash-number-exception? _exn89849_)
                (macro-invalid-hash-number-exception-arguments _exn89849_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94675
                              (let ()
                                (declare (not safe))
                                (cons _exn89849_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp94675)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn89843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89843_))
            (let ((_e89846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89843_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e89846_)
                  (macro-invalid-hash-number-exception-procedure _e89846_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94676
                                (let ()
                                  (declare (not safe))
                                  (cons _e89846_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp94676)))))
            (if (macro-invalid-hash-number-exception? _exn89843_)
                (macro-invalid-hash-number-exception-procedure _exn89843_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94677
                              (let ()
                                (declare (not safe))
                                (cons _exn89843_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp94677)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn89839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89839_))
            (let ((_e89841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89839_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e89841_))
            (macro-invalid-utf8-encoding-exception? _exn89839_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn89835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89835_))
            (let ((_e89837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89835_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89837_)
                  (macro-invalid-utf8-encoding-exception-arguments _e89837_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94678
                                (let ()
                                  (declare (not safe))
                                  (cons _e89837_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp94678)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89835_)
                (macro-invalid-utf8-encoding-exception-arguments _exn89835_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94679
                              (let ()
                                (declare (not safe))
                                (cons _exn89835_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp94679)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn89829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89829_))
            (let ((_e89832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89829_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e89832_)
                  (macro-invalid-utf8-encoding-exception-procedure _e89832_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94680
                                (let ()
                                  (declare (not safe))
                                  (cons _e89832_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp94680)))))
            (if (macro-invalid-utf8-encoding-exception? _exn89829_)
                (macro-invalid-utf8-encoding-exception-procedure _exn89829_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94681
                              (let ()
                                (declare (not safe))
                                (cons _exn89829_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp94681)))))))
    (define join-timeout-exception?
      (lambda (_exn89825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89825_))
            (let ((_e89827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89825_ 'exception))))
              (macro-join-timeout-exception? _e89827_))
            (macro-join-timeout-exception? _exn89825_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89821_))
            (let ((_e89823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89821_ 'exception))))
              (if (macro-join-timeout-exception? _e89823_)
                  (macro-join-timeout-exception-arguments _e89823_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94682
                                (let ()
                                  (declare (not safe))
                                  (cons _e89823_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp94682)))))
            (if (macro-join-timeout-exception? _exn89821_)
                (macro-join-timeout-exception-arguments _exn89821_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94683
                              (let ()
                                (declare (not safe))
                                (cons _exn89821_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp94683)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89815_))
            (let ((_e89818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89815_ 'exception))))
              (if (macro-join-timeout-exception? _e89818_)
                  (macro-join-timeout-exception-procedure _e89818_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94684
                                (let ()
                                  (declare (not safe))
                                  (cons _e89818_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp94684)))))
            (if (macro-join-timeout-exception? _exn89815_)
                (macro-join-timeout-exception-procedure _exn89815_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94685
                              (let ()
                                (declare (not safe))
                                (cons _exn89815_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp94685)))))))
    (define keyword-expected-exception?
      (lambda (_exn89811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89811_))
            (let ((_e89813_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89811_ 'exception))))
              (macro-keyword-expected-exception? _e89813_))
            (macro-keyword-expected-exception? _exn89811_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89807_))
            (let ((_e89809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89807_ 'exception))))
              (if (macro-keyword-expected-exception? _e89809_)
                  (macro-keyword-expected-exception-arguments _e89809_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94686
                                (let ()
                                  (declare (not safe))
                                  (cons _e89809_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp94686)))))
            (if (macro-keyword-expected-exception? _exn89807_)
                (macro-keyword-expected-exception-arguments _exn89807_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94687
                              (let ()
                                (declare (not safe))
                                (cons _exn89807_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp94687)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89801_))
            (let ((_e89804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89801_ 'exception))))
              (if (macro-keyword-expected-exception? _e89804_)
                  (macro-keyword-expected-exception-procedure _e89804_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94688
                                (let ()
                                  (declare (not safe))
                                  (cons _e89804_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp94688)))))
            (if (macro-keyword-expected-exception? _exn89801_)
                (macro-keyword-expected-exception-procedure _exn89801_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94689
                              (let ()
                                (declare (not safe))
                                (cons _exn89801_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp94689)))))))
    (define length-mismatch-exception?
      (lambda (_exn89797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89797_))
            (let ((_e89799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89797_ 'exception))))
              (macro-length-mismatch-exception? _e89799_))
            (macro-length-mismatch-exception? _exn89797_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89793_))
            (let ((_e89795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89793_ 'exception))))
              (if (macro-length-mismatch-exception? _e89795_)
                  (macro-length-mismatch-exception-arg-id _e89795_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94690
                                (let ()
                                  (declare (not safe))
                                  (cons _e89795_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp94690)))))
            (if (macro-length-mismatch-exception? _exn89793_)
                (macro-length-mismatch-exception-arg-id _exn89793_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94691
                              (let ()
                                (declare (not safe))
                                (cons _exn89793_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp94691)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89789_))
            (let ((_e89791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89789_ 'exception))))
              (if (macro-length-mismatch-exception? _e89791_)
                  (macro-length-mismatch-exception-arguments _e89791_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94692
                                (let ()
                                  (declare (not safe))
                                  (cons _e89791_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp94692)))))
            (if (macro-length-mismatch-exception? _exn89789_)
                (macro-length-mismatch-exception-arguments _exn89789_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94693
                              (let ()
                                (declare (not safe))
                                (cons _exn89789_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp94693)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89783_))
            (let ((_e89786_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89783_ 'exception))))
              (if (macro-length-mismatch-exception? _e89786_)
                  (macro-length-mismatch-exception-procedure _e89786_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94694
                                (let ()
                                  (declare (not safe))
                                  (cons _e89786_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp94694)))))
            (if (macro-length-mismatch-exception? _exn89783_)
                (macro-length-mismatch-exception-procedure _exn89783_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94695
                              (let ()
                                (declare (not safe))
                                (cons _exn89783_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp94695)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89779_))
            (let ((_e89781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89779_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89781_))
            (macro-mailbox-receive-timeout-exception? _exn89779_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89775_))
            (let ((_e89777_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89775_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89777_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89777_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94696
                                (let ()
                                  (declare (not safe))
                                  (cons _e89777_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp94696)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89775_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89775_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94697
                              (let ()
                                (declare (not safe))
                                (cons _exn89775_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp94697)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89769_))
            (let ((_e89772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89769_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89772_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89772_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94698
                                (let ()
                                  (declare (not safe))
                                  (cons _e89772_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp94698)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89769_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89769_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94699
                              (let ()
                                (declare (not safe))
                                (cons _exn89769_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp94699)))))))
    (define module-not-found-exception?
      (lambda (_exn89765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89765_))
            (let ((_e89767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89765_ 'exception))))
              (macro-module-not-found-exception? _e89767_))
            (macro-module-not-found-exception? _exn89765_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89761_))
            (let ((_e89763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89761_ 'exception))))
              (if (macro-module-not-found-exception? _e89763_)
                  (macro-module-not-found-exception-arguments _e89763_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94700
                                (let ()
                                  (declare (not safe))
                                  (cons _e89763_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp94700)))))
            (if (macro-module-not-found-exception? _exn89761_)
                (macro-module-not-found-exception-arguments _exn89761_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94701
                              (let ()
                                (declare (not safe))
                                (cons _exn89761_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp94701)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89755_))
            (let ((_e89758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89755_ 'exception))))
              (if (macro-module-not-found-exception? _e89758_)
                  (macro-module-not-found-exception-procedure _e89758_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94702
                                (let ()
                                  (declare (not safe))
                                  (cons _e89758_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp94702)))))
            (if (macro-module-not-found-exception? _exn89755_)
                (macro-module-not-found-exception-procedure _exn89755_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94703
                              (let ()
                                (declare (not safe))
                                (cons _exn89755_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp94703)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89749_))
            (let ((_e89752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89749_ 'exception))))
              (macro-multiple-c-return-exception? _e89752_))
            (macro-multiple-c-return-exception? _exn89749_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89745_))
            (let ((_e89747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89745_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89747_))
            (macro-no-such-file-or-directory-exception? _exn89745_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89741_))
            (let ((_e89743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89741_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89743_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89743_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94704
                                (let ()
                                  (declare (not safe))
                                  (cons _e89743_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp94704)))))
            (if (macro-no-such-file-or-directory-exception? _exn89741_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89741_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94705
                              (let ()
                                (declare (not safe))
                                (cons _exn89741_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp94705)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89735_))
            (let ((_e89738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89735_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89738_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89738_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94706
                                (let ()
                                  (declare (not safe))
                                  (cons _e89738_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp94706)))))
            (if (macro-no-such-file-or-directory-exception? _exn89735_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89735_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94707
                              (let ()
                                (declare (not safe))
                                (cons _exn89735_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp94707)))))))
    (define noncontinuable-exception?
      (lambda (_exn89731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89731_))
            (let ((_e89733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89731_ 'exception))))
              (macro-noncontinuable-exception? _e89733_))
            (macro-noncontinuable-exception? _exn89731_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89725_))
            (let ((_e89728_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89725_ 'exception))))
              (if (macro-noncontinuable-exception? _e89728_)
                  (macro-noncontinuable-exception-reason _e89728_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp94708
                                (let ()
                                  (declare (not safe))
                                  (cons _e89728_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp94708)))))
            (if (macro-noncontinuable-exception? _exn89725_)
                (macro-noncontinuable-exception-reason _exn89725_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp94709
                              (let ()
                                (declare (not safe))
                                (cons _exn89725_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp94709)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89721_))
            (let ((_e89723_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89721_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89723_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89721_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89717_))
            (let ((_e89719_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89717_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89719_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89719_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94710
                                (let ()
                                  (declare (not safe))
                                  (cons _e89719_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp94710)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89717_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89717_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94711
                              (let ()
                                (declare (not safe))
                                (cons _exn89717_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp94711)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89711_))
            (let ((_e89714_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89711_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89714_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89714_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94712
                                (let ()
                                  (declare (not safe))
                                  (cons _e89714_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp94712)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89711_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89711_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94713
                              (let ()
                                (declare (not safe))
                                (cons _exn89711_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp94713)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89707_))
            (let ((_e89709_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89707_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89709_))
            (macro-nonprocedure-operator-exception? _exn89707_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89703_))
            (let ((_e89705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89703_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89705_)
                  (macro-nonprocedure-operator-exception-arguments _e89705_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94714
                                (let ()
                                  (declare (not safe))
                                  (cons _e89705_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp94714)))))
            (if (macro-nonprocedure-operator-exception? _exn89703_)
                (macro-nonprocedure-operator-exception-arguments _exn89703_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94715
                              (let ()
                                (declare (not safe))
                                (cons _exn89703_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp94715)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89699_))
            (let ((_e89701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89699_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89701_)
                  (macro-nonprocedure-operator-exception-code _e89701_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94716
                                (let ()
                                  (declare (not safe))
                                  (cons _e89701_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp94716)))))
            (if (macro-nonprocedure-operator-exception? _exn89699_)
                (macro-nonprocedure-operator-exception-code _exn89699_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94717
                              (let ()
                                (declare (not safe))
                                (cons _exn89699_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp94717)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89695_))
            (let ((_e89697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89695_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89697_)
                  (macro-nonprocedure-operator-exception-operator _e89697_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94718
                                (let ()
                                  (declare (not safe))
                                  (cons _e89697_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp94718)))))
            (if (macro-nonprocedure-operator-exception? _exn89695_)
                (macro-nonprocedure-operator-exception-operator _exn89695_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94719
                              (let ()
                                (declare (not safe))
                                (cons _exn89695_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp94719)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89689_))
            (let ((_e89692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89689_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89692_)
                  (macro-nonprocedure-operator-exception-rte _e89692_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94720
                                (let ()
                                  (declare (not safe))
                                  (cons _e89692_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp94720)))))
            (if (macro-nonprocedure-operator-exception? _exn89689_)
                (macro-nonprocedure-operator-exception-rte _exn89689_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94721
                              (let ()
                                (declare (not safe))
                                (cons _exn89689_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp94721)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89685_))
            (let ((_e89687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89685_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89687_))
            (macro-not-in-compilation-context-exception? _exn89685_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89681_))
            (let ((_e89683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89681_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89683_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89683_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94722
                                (let ()
                                  (declare (not safe))
                                  (cons _e89683_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp94722)))))
            (if (macro-not-in-compilation-context-exception? _exn89681_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89681_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94723
                              (let ()
                                (declare (not safe))
                                (cons _exn89681_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp94723)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89675_))
            (let ((_e89678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89675_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89678_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89678_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94724
                                (let ()
                                  (declare (not safe))
                                  (cons _e89678_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp94724)))))
            (if (macro-not-in-compilation-context-exception? _exn89675_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89675_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94725
                              (let ()
                                (declare (not safe))
                                (cons _exn89675_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp94725)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89671_))
            (let ((_e89673_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89671_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89673_))
            (macro-number-of-arguments-limit-exception? _exn89671_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89667_))
            (let ((_e89669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89667_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89669_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89669_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94726
                                (let ()
                                  (declare (not safe))
                                  (cons _e89669_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp94726)))))
            (if (macro-number-of-arguments-limit-exception? _exn89667_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89667_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94727
                              (let ()
                                (declare (not safe))
                                (cons _exn89667_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp94727)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89661_))
            (let ((_e89664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89661_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89664_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89664_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94728
                                (let ()
                                  (declare (not safe))
                                  (cons _e89664_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp94728)))))
            (if (macro-number-of-arguments-limit-exception? _exn89661_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89661_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94729
                              (let ()
                                (declare (not safe))
                                (cons _exn89661_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp94729)))))))
    (define os-exception?
      (lambda (_exn89657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89657_))
            (let ((_e89659_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89657_ 'exception))))
              (macro-os-exception? _e89659_))
            (macro-os-exception? _exn89657_))))
    (define os-exception-arguments
      (lambda (_exn89653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89653_))
            (let ((_e89655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89653_ 'exception))))
              (if (macro-os-exception? _e89655_)
                  (macro-os-exception-arguments _e89655_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94730
                                (let ()
                                  (declare (not safe))
                                  (cons _e89655_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp94730)))))
            (if (macro-os-exception? _exn89653_)
                (macro-os-exception-arguments _exn89653_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94731
                              (let ()
                                (declare (not safe))
                                (cons _exn89653_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp94731)))))))
    (define os-exception-code
      (lambda (_exn89649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89649_))
            (let ((_e89651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89649_ 'exception))))
              (if (macro-os-exception? _e89651_)
                  (macro-os-exception-code _e89651_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94732
                                (let ()
                                  (declare (not safe))
                                  (cons _e89651_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp94732)))))
            (if (macro-os-exception? _exn89649_)
                (macro-os-exception-code _exn89649_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94733
                              (let ()
                                (declare (not safe))
                                (cons _exn89649_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp94733)))))))
    (define os-exception-message
      (lambda (_exn89645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89645_))
            (let ((_e89647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89645_ 'exception))))
              (if (macro-os-exception? _e89647_)
                  (macro-os-exception-message _e89647_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94734
                                (let ()
                                  (declare (not safe))
                                  (cons _e89647_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp94734)))))
            (if (macro-os-exception? _exn89645_)
                (macro-os-exception-message _exn89645_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94735
                              (let ()
                                (declare (not safe))
                                (cons _exn89645_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp94735)))))))
    (define os-exception-procedure
      (lambda (_exn89639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89639_))
            (let ((_e89642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89639_ 'exception))))
              (if (macro-os-exception? _e89642_)
                  (macro-os-exception-procedure _e89642_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94736
                                (let ()
                                  (declare (not safe))
                                  (cons _e89642_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp94736)))))
            (if (macro-os-exception? _exn89639_)
                (macro-os-exception-procedure _exn89639_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94737
                              (let ()
                                (declare (not safe))
                                (cons _exn89639_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp94737)))))))
    (define permission-denied-exception?
      (lambda (_exn89635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89635_))
            (let ((_e89637_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89635_ 'exception))))
              (macro-permission-denied-exception? _e89637_))
            (macro-permission-denied-exception? _exn89635_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89631_))
            (let ((_e89633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89631_ 'exception))))
              (if (macro-permission-denied-exception? _e89633_)
                  (macro-permission-denied-exception-arguments _e89633_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94738
                                (let ()
                                  (declare (not safe))
                                  (cons _e89633_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp94738)))))
            (if (macro-permission-denied-exception? _exn89631_)
                (macro-permission-denied-exception-arguments _exn89631_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94739
                              (let ()
                                (declare (not safe))
                                (cons _exn89631_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp94739)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89625_))
            (let ((_e89628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89625_ 'exception))))
              (if (macro-permission-denied-exception? _e89628_)
                  (macro-permission-denied-exception-procedure _e89628_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94740
                                (let ()
                                  (declare (not safe))
                                  (cons _e89628_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp94740)))))
            (if (macro-permission-denied-exception? _exn89625_)
                (macro-permission-denied-exception-procedure _exn89625_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94741
                              (let ()
                                (declare (not safe))
                                (cons _exn89625_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp94741)))))))
    (define range-exception?
      (lambda (_exn89621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89621_))
            (let ((_e89623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89621_ 'exception))))
              (macro-range-exception? _e89623_))
            (macro-range-exception? _exn89621_))))
    (define range-exception-arg-id
      (lambda (_exn89617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89617_))
            (let ((_e89619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89617_ 'exception))))
              (if (macro-range-exception? _e89619_)
                  (macro-range-exception-arg-id _e89619_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94742
                                (let ()
                                  (declare (not safe))
                                  (cons _e89619_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp94742)))))
            (if (macro-range-exception? _exn89617_)
                (macro-range-exception-arg-id _exn89617_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94743
                              (let ()
                                (declare (not safe))
                                (cons _exn89617_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp94743)))))))
    (define range-exception-arguments
      (lambda (_exn89613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89613_))
            (let ((_e89615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89613_ 'exception))))
              (if (macro-range-exception? _e89615_)
                  (macro-range-exception-arguments _e89615_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94744
                                (let ()
                                  (declare (not safe))
                                  (cons _e89615_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp94744)))))
            (if (macro-range-exception? _exn89613_)
                (macro-range-exception-arguments _exn89613_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94745
                              (let ()
                                (declare (not safe))
                                (cons _exn89613_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp94745)))))))
    (define range-exception-procedure
      (lambda (_exn89607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89607_))
            (let ((_e89610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89607_ 'exception))))
              (if (macro-range-exception? _e89610_)
                  (macro-range-exception-procedure _e89610_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94746
                                (let ()
                                  (declare (not safe))
                                  (cons _e89610_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp94746)))))
            (if (macro-range-exception? _exn89607_)
                (macro-range-exception-procedure _exn89607_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94747
                              (let ()
                                (declare (not safe))
                                (cons _exn89607_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp94747)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89603_))
            (let ((_e89605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89603_ 'exception))))
              (macro-rpc-remote-error-exception? _e89605_))
            (macro-rpc-remote-error-exception? _exn89603_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89599_))
            (let ((_e89601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89599_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89601_)
                  (macro-rpc-remote-error-exception-arguments _e89601_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94748
                                (let ()
                                  (declare (not safe))
                                  (cons _e89601_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp94748)))))
            (if (macro-rpc-remote-error-exception? _exn89599_)
                (macro-rpc-remote-error-exception-arguments _exn89599_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94749
                              (let ()
                                (declare (not safe))
                                (cons _exn89599_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp94749)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89595_))
            (let ((_e89597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89595_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89597_)
                  (macro-rpc-remote-error-exception-message _e89597_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94750
                                (let ()
                                  (declare (not safe))
                                  (cons _e89597_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp94750)))))
            (if (macro-rpc-remote-error-exception? _exn89595_)
                (macro-rpc-remote-error-exception-message _exn89595_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94751
                              (let ()
                                (declare (not safe))
                                (cons _exn89595_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp94751)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89589_))
            (let ((_e89592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89589_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89592_)
                  (macro-rpc-remote-error-exception-procedure _e89592_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94752
                                (let ()
                                  (declare (not safe))
                                  (cons _e89592_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp94752)))))
            (if (macro-rpc-remote-error-exception? _exn89589_)
                (macro-rpc-remote-error-exception-procedure _exn89589_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94753
                              (let ()
                                (declare (not safe))
                                (cons _exn89589_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp94753)))))))
    (define scheduler-exception?
      (lambda (_exn89585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89585_))
            (let ((_e89587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89585_ 'exception))))
              (macro-scheduler-exception? _e89587_))
            (macro-scheduler-exception? _exn89585_))))
    (define scheduler-exception-reason
      (lambda (_exn89579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89579_))
            (let ((_e89582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89579_ 'exception))))
              (if (macro-scheduler-exception? _e89582_)
                  (macro-scheduler-exception-reason _e89582_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp94754
                                (let ()
                                  (declare (not safe))
                                  (cons _e89582_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp94754)))))
            (if (macro-scheduler-exception? _exn89579_)
                (macro-scheduler-exception-reason _exn89579_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp94755
                              (let ()
                                (declare (not safe))
                                (cons _exn89579_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp94755)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89575_))
            (let ((_e89577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89575_ 'exception))))
              (macro-sfun-conversion-exception? _e89577_))
            (macro-sfun-conversion-exception? _exn89575_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89571_))
            (let ((_e89573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89571_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89573_)
                  (macro-sfun-conversion-exception-arguments _e89573_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94756
                                (let ()
                                  (declare (not safe))
                                  (cons _e89573_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp94756)))))
            (if (macro-sfun-conversion-exception? _exn89571_)
                (macro-sfun-conversion-exception-arguments _exn89571_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94757
                              (let ()
                                (declare (not safe))
                                (cons _exn89571_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp94757)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89567_))
            (let ((_e89569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89567_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89569_)
                  (macro-sfun-conversion-exception-code _e89569_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94758
                                (let ()
                                  (declare (not safe))
                                  (cons _e89569_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp94758)))))
            (if (macro-sfun-conversion-exception? _exn89567_)
                (macro-sfun-conversion-exception-code _exn89567_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94759
                              (let ()
                                (declare (not safe))
                                (cons _exn89567_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp94759)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89563_))
            (let ((_e89565_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89563_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89565_)
                  (macro-sfun-conversion-exception-message _e89565_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94760
                                (let ()
                                  (declare (not safe))
                                  (cons _e89565_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp94760)))))
            (if (macro-sfun-conversion-exception? _exn89563_)
                (macro-sfun-conversion-exception-message _exn89563_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94761
                              (let ()
                                (declare (not safe))
                                (cons _exn89563_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp94761)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89557_))
            (let ((_e89560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89557_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89560_)
                  (macro-sfun-conversion-exception-procedure _e89560_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94762
                                (let ()
                                  (declare (not safe))
                                  (cons _e89560_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp94762)))))
            (if (macro-sfun-conversion-exception? _exn89557_)
                (macro-sfun-conversion-exception-procedure _exn89557_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94763
                              (let ()
                                (declare (not safe))
                                (cons _exn89557_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp94763)))))))
    (define stack-overflow-exception?
      (lambda (_exn89551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89551_))
            (let ((_e89554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89551_ 'exception))))
              (macro-stack-overflow-exception? _e89554_))
            (macro-stack-overflow-exception? _exn89551_))))
    (define started-thread-exception?
      (lambda (_exn89547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89547_))
            (let ((_e89549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89547_ 'exception))))
              (macro-started-thread-exception? _e89549_))
            (macro-started-thread-exception? _exn89547_))))
    (define started-thread-exception-arguments
      (lambda (_exn89543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89543_))
            (let ((_e89545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89543_ 'exception))))
              (if (macro-started-thread-exception? _e89545_)
                  (macro-started-thread-exception-arguments _e89545_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp94764
                                (let ()
                                  (declare (not safe))
                                  (cons _e89545_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp94764)))))
            (if (macro-started-thread-exception? _exn89543_)
                (macro-started-thread-exception-arguments _exn89543_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp94765
                              (let ()
                                (declare (not safe))
                                (cons _exn89543_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp94765)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89537_))
            (let ((_e89540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89537_ 'exception))))
              (if (macro-started-thread-exception? _e89540_)
                  (macro-started-thread-exception-procedure _e89540_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp94766
                                (let ()
                                  (declare (not safe))
                                  (cons _e89540_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp94766)))))
            (if (macro-started-thread-exception? _exn89537_)
                (macro-started-thread-exception-procedure _exn89537_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp94767
                              (let ()
                                (declare (not safe))
                                (cons _exn89537_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp94767)))))))
    (define terminated-thread-exception?
      (lambda (_exn89533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89533_))
            (let ((_e89535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89533_ 'exception))))
              (macro-terminated-thread-exception? _e89535_))
            (macro-terminated-thread-exception? _exn89533_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89529_))
            (let ((_e89531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89529_ 'exception))))
              (if (macro-terminated-thread-exception? _e89531_)
                  (macro-terminated-thread-exception-arguments _e89531_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp94768
                                (let ()
                                  (declare (not safe))
                                  (cons _e89531_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp94768)))))
            (if (macro-terminated-thread-exception? _exn89529_)
                (macro-terminated-thread-exception-arguments _exn89529_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp94769
                              (let ()
                                (declare (not safe))
                                (cons _exn89529_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp94769)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89523_))
            (let ((_e89526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89523_ 'exception))))
              (if (macro-terminated-thread-exception? _e89526_)
                  (macro-terminated-thread-exception-procedure _e89526_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp94770
                                (let ()
                                  (declare (not safe))
                                  (cons _e89526_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp94770)))))
            (if (macro-terminated-thread-exception? _exn89523_)
                (macro-terminated-thread-exception-procedure _exn89523_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp94771
                              (let ()
                                (declare (not safe))
                                (cons _exn89523_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp94771)))))))
    (define type-exception?
      (lambda (_exn89519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89519_))
            (let ((_e89521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89519_ 'exception))))
              (macro-type-exception? _e89521_))
            (macro-type-exception? _exn89519_))))
    (define type-exception-arg-id
      (lambda (_exn89515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89515_))
            (let ((_e89517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89515_ 'exception))))
              (if (macro-type-exception? _e89517_)
                  (macro-type-exception-arg-id _e89517_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94772
                                (let ()
                                  (declare (not safe))
                                  (cons _e89517_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp94772)))))
            (if (macro-type-exception? _exn89515_)
                (macro-type-exception-arg-id _exn89515_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94773
                              (let ()
                                (declare (not safe))
                                (cons _exn89515_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp94773)))))))
    (define type-exception-arguments
      (lambda (_exn89511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89511_))
            (let ((_e89513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89511_ 'exception))))
              (if (macro-type-exception? _e89513_)
                  (macro-type-exception-arguments _e89513_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94774
                                (let ()
                                  (declare (not safe))
                                  (cons _e89513_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp94774)))))
            (if (macro-type-exception? _exn89511_)
                (macro-type-exception-arguments _exn89511_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94775
                              (let ()
                                (declare (not safe))
                                (cons _exn89511_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp94775)))))))
    (define type-exception-procedure
      (lambda (_exn89507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89507_))
            (let ((_e89509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89507_ 'exception))))
              (if (macro-type-exception? _e89509_)
                  (macro-type-exception-procedure _e89509_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94776
                                (let ()
                                  (declare (not safe))
                                  (cons _e89509_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp94776)))))
            (if (macro-type-exception? _exn89507_)
                (macro-type-exception-procedure _exn89507_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94777
                              (let ()
                                (declare (not safe))
                                (cons _exn89507_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp94777)))))))
    (define type-exception-type-id
      (lambda (_exn89501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89501_))
            (let ((_e89504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89501_ 'exception))))
              (if (macro-type-exception? _e89504_)
                  (macro-type-exception-type-id _e89504_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94778
                                (let ()
                                  (declare (not safe))
                                  (cons _e89504_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp94778)))))
            (if (macro-type-exception? _exn89501_)
                (macro-type-exception-type-id _exn89501_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94779
                              (let ()
                                (declare (not safe))
                                (cons _exn89501_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp94779)))))))
    (define unbound-global-exception?
      (lambda (_exn89497_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89497_))
            (let ((_e89499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89497_ 'exception))))
              (macro-unbound-global-exception? _e89499_))
            (macro-unbound-global-exception? _exn89497_))))
    (define unbound-global-exception-code
      (lambda (_exn89493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89493_))
            (let ((_e89495_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89493_ 'exception))))
              (if (macro-unbound-global-exception? _e89495_)
                  (macro-unbound-global-exception-code _e89495_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94780
                                (let ()
                                  (declare (not safe))
                                  (cons _e89495_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp94780)))))
            (if (macro-unbound-global-exception? _exn89493_)
                (macro-unbound-global-exception-code _exn89493_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94781
                              (let ()
                                (declare (not safe))
                                (cons _exn89493_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp94781)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89489_))
            (let ((_e89491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89489_ 'exception))))
              (if (macro-unbound-global-exception? _e89491_)
                  (macro-unbound-global-exception-rte _e89491_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94782
                                (let ()
                                  (declare (not safe))
                                  (cons _e89491_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp94782)))))
            (if (macro-unbound-global-exception? _exn89489_)
                (macro-unbound-global-exception-rte _exn89489_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94783
                              (let ()
                                (declare (not safe))
                                (cons _exn89489_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp94783)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89483_))
            (let ((_e89486_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89483_ 'exception))))
              (if (macro-unbound-global-exception? _e89486_)
                  (macro-unbound-global-exception-variable _e89486_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94784
                                (let ()
                                  (declare (not safe))
                                  (cons _e89486_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp94784)))))
            (if (macro-unbound-global-exception? _exn89483_)
                (macro-unbound-global-exception-variable _exn89483_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94785
                              (let ()
                                (declare (not safe))
                                (cons _exn89483_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp94785)))))))
    (define unbound-key-exception?
      (lambda (_exn89479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89479_))
            (let ((_e89481_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89479_ 'exception))))
              (macro-unbound-key-exception? _e89481_))
            (macro-unbound-key-exception? _exn89479_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89475_))
            (let ((_e89477_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89475_ 'exception))))
              (if (macro-unbound-key-exception? _e89477_)
                  (macro-unbound-key-exception-arguments _e89477_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp94786
                                (let ()
                                  (declare (not safe))
                                  (cons _e89477_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp94786)))))
            (if (macro-unbound-key-exception? _exn89475_)
                (macro-unbound-key-exception-arguments _exn89475_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp94787
                              (let ()
                                (declare (not safe))
                                (cons _exn89475_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp94787)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89469_))
            (let ((_e89472_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89469_ 'exception))))
              (if (macro-unbound-key-exception? _e89472_)
                  (macro-unbound-key-exception-procedure _e89472_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp94788
                                (let ()
                                  (declare (not safe))
                                  (cons _e89472_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp94788)))))
            (if (macro-unbound-key-exception? _exn89469_)
                (macro-unbound-key-exception-procedure _exn89469_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp94789
                              (let ()
                                (declare (not safe))
                                (cons _exn89469_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp94789)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89465_))
            (let ((_e89467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89465_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89467_))
            (macro-unbound-os-environment-variable-exception? _exn89465_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89461_))
            (let ((_e89463_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89461_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89463_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89463_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp94790
                                (let ()
                                  (declare (not safe))
                                  (cons _e89463_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp94790)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89461_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89461_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp94791
                              (let ()
                                (declare (not safe))
                                (cons _exn89461_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp94791)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89455_))
            (let ((_e89458_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89455_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89458_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89458_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp94792
                                (let ()
                                  (declare (not safe))
                                  (cons _e89458_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp94792)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89455_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89455_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp94793
                              (let ()
                                (declare (not safe))
                                (cons _exn89455_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp94793)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89451_))
            (let ((_e89453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89451_ 'exception))))
              (macro-unbound-serial-number-exception? _e89453_))
            (macro-unbound-serial-number-exception? _exn89451_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89447_))
            (let ((_e89449_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89447_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89449_)
                  (macro-unbound-serial-number-exception-arguments _e89449_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp94794
                                (let ()
                                  (declare (not safe))
                                  (cons _e89449_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp94794)))))
            (if (macro-unbound-serial-number-exception? _exn89447_)
                (macro-unbound-serial-number-exception-arguments _exn89447_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp94795
                              (let ()
                                (declare (not safe))
                                (cons _exn89447_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp94795)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89441_))
            (let ((_e89444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89441_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89444_)
                  (macro-unbound-serial-number-exception-procedure _e89444_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp94796
                                (let ()
                                  (declare (not safe))
                                  (cons _e89444_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp94796)))))
            (if (macro-unbound-serial-number-exception? _exn89441_)
                (macro-unbound-serial-number-exception-procedure _exn89441_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp94797
                              (let ()
                                (declare (not safe))
                                (cons _exn89441_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp94797)))))))
    (define uncaught-exception?
      (lambda (_exn89437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89437_))
            (let ((_e89439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89437_ 'exception))))
              (macro-uncaught-exception? _e89439_))
            (macro-uncaught-exception? _exn89437_))))
    (define uncaught-exception-arguments
      (lambda (_exn89433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89433_))
            (let ((_e89435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89433_ 'exception))))
              (if (macro-uncaught-exception? _e89435_)
                  (macro-uncaught-exception-arguments _e89435_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94798
                                (let ()
                                  (declare (not safe))
                                  (cons _e89435_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp94798)))))
            (if (macro-uncaught-exception? _exn89433_)
                (macro-uncaught-exception-arguments _exn89433_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94799
                              (let ()
                                (declare (not safe))
                                (cons _exn89433_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp94799)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89429_))
            (let ((_e89431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89429_ 'exception))))
              (if (macro-uncaught-exception? _e89431_)
                  (macro-uncaught-exception-procedure _e89431_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94800
                                (let ()
                                  (declare (not safe))
                                  (cons _e89431_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp94800)))))
            (if (macro-uncaught-exception? _exn89429_)
                (macro-uncaught-exception-procedure _exn89429_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94801
                              (let ()
                                (declare (not safe))
                                (cons _exn89429_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp94801)))))))
    (define uncaught-exception-reason
      (lambda (_exn89423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89423_))
            (let ((_e89426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89423_ 'exception))))
              (if (macro-uncaught-exception? _e89426_)
                  (macro-uncaught-exception-reason _e89426_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94802
                                (let ()
                                  (declare (not safe))
                                  (cons _e89426_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp94802)))))
            (if (macro-uncaught-exception? _exn89423_)
                (macro-uncaught-exception-reason _exn89423_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94803
                              (let ()
                                (declare (not safe))
                                (cons _exn89423_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp94803)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89419_))
            (let ((_e89421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89419_ 'exception))))
              (macro-uninitialized-thread-exception? _e89421_))
            (macro-uninitialized-thread-exception? _exn89419_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89415_))
            (let ((_e89417_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89415_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89417_)
                  (macro-uninitialized-thread-exception-arguments _e89417_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp94804
                                (let ()
                                  (declare (not safe))
                                  (cons _e89417_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp94804)))))
            (if (macro-uninitialized-thread-exception? _exn89415_)
                (macro-uninitialized-thread-exception-arguments _exn89415_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp94805
                              (let ()
                                (declare (not safe))
                                (cons _exn89415_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp94805)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89409_))
            (let ((_e89412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89409_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89412_)
                  (macro-uninitialized-thread-exception-procedure _e89412_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp94806
                                (let ()
                                  (declare (not safe))
                                  (cons _e89412_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp94806)))))
            (if (macro-uninitialized-thread-exception? _exn89409_)
                (macro-uninitialized-thread-exception-procedure _exn89409_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp94807
                              (let ()
                                (declare (not safe))
                                (cons _exn89409_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp94807)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89405_))
            (let ((_e89407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89405_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89407_))
            (macro-unknown-keyword-argument-exception? _exn89405_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89401_))
            (let ((_e89403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89401_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89403_)
                  (macro-unknown-keyword-argument-exception-arguments _e89403_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp94808
                                (let ()
                                  (declare (not safe))
                                  (cons _e89403_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp94808)))))
            (if (macro-unknown-keyword-argument-exception? _exn89401_)
                (macro-unknown-keyword-argument-exception-arguments _exn89401_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp94809
                              (let ()
                                (declare (not safe))
                                (cons _exn89401_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp94809)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89395_))
            (let ((_e89398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89395_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89398_)
                  (macro-unknown-keyword-argument-exception-procedure _e89398_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp94810
                                (let ()
                                  (declare (not safe))
                                  (cons _e89398_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp94810)))))
            (if (macro-unknown-keyword-argument-exception? _exn89395_)
                (macro-unknown-keyword-argument-exception-procedure _exn89395_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp94811
                              (let ()
                                (declare (not safe))
                                (cons _exn89395_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp94811)))))))
    (define unterminated-process-exception?
      (lambda (_exn89391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89391_))
            (let ((_e89393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89391_ 'exception))))
              (macro-unterminated-process-exception? _e89393_))
            (macro-unterminated-process-exception? _exn89391_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89387_))
            (let ((_e89389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89387_ 'exception))))
              (if (macro-unterminated-process-exception? _e89389_)
                  (macro-unterminated-process-exception-arguments _e89389_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp94812
                                (let ()
                                  (declare (not safe))
                                  (cons _e89389_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp94812)))))
            (if (macro-unterminated-process-exception? _exn89387_)
                (macro-unterminated-process-exception-arguments _exn89387_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp94813
                              (let ()
                                (declare (not safe))
                                (cons _exn89387_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp94813)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89381_))
            (let ((_e89384_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89381_ 'exception))))
              (if (macro-unterminated-process-exception? _e89384_)
                  (macro-unterminated-process-exception-procedure _e89384_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp94814
                                (let ()
                                  (declare (not safe))
                                  (cons _e89384_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp94814)))))
            (if (macro-unterminated-process-exception? _exn89381_)
                (macro-unterminated-process-exception-procedure _exn89381_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp94815
                              (let ()
                                (declare (not safe))
                                (cons _exn89381_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp94815)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89377_))
            (let ((_e89379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89377_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89379_))
            (macro-wrong-number-of-arguments-exception? _exn89377_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89373_))
            (let ((_e89375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89373_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89375_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89375_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp94816
                                (let ()
                                  (declare (not safe))
                                  (cons _e89375_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp94816)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89373_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89373_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp94817
                              (let ()
                                (declare (not safe))
                                (cons _exn89373_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp94817)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89367_))
            (let ((_e89370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89367_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89370_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89370_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp94818
                                (let ()
                                  (declare (not safe))
                                  (cons _e89370_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp94818)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89367_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89367_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp94819
                              (let ()
                                (declare (not safe))
                                (cons _exn89367_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp94819)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89363_))
            (let ((_e89365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89363_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89365_))
            (macro-wrong-number-of-values-exception? _exn89363_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89359_))
            (let ((_e89361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89359_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89361_)
                  (macro-wrong-number-of-values-exception-code _e89361_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94820
                                (let ()
                                  (declare (not safe))
                                  (cons _e89361_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp94820)))))
            (if (macro-wrong-number-of-values-exception? _exn89359_)
                (macro-wrong-number-of-values-exception-code _exn89359_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94821
                              (let ()
                                (declare (not safe))
                                (cons _exn89359_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp94821)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89355_))
            (let ((_e89357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89355_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89357_)
                  (macro-wrong-number-of-values-exception-rte _e89357_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94822
                                (let ()
                                  (declare (not safe))
                                  (cons _e89357_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp94822)))))
            (if (macro-wrong-number-of-values-exception? _exn89355_)
                (macro-wrong-number-of-values-exception-rte _exn89355_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94823
                              (let ()
                                (declare (not safe))
                                (cons _exn89355_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp94823)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89349_))
            (let ((_e89352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89349_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89352_)
                  (macro-wrong-number-of-values-exception-vals _e89352_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94824
                                (let ()
                                  (declare (not safe))
                                  (cons _e89352_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp94824)))))
            (if (macro-wrong-number-of-values-exception? _exn89349_)
                (macro-wrong-number-of-values-exception-vals _exn89349_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94825
                              (let ()
                                (declare (not safe))
                                (cons _exn89349_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp94825)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89343_))
            (let ((_e89346_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89343_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89346_))
            (macro-wrong-processor-c-return-exception? _exn89343_))))))
