(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1709127355)
  (begin
    (define Exception::t
      (let ((__tmp66688 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66688
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66656_ (apply make-instance Exception::t _$args66656_)))
    (define StackTrace::t
      (let ((__tmp66689 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66689
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66653_ (apply make-instance StackTrace::t _$args66653_)))
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
      (let ((__tmp66690 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66690
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66650_ (apply make-instance Error::t _$args66650_)))
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
      (let ((__tmp66691 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66691
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66647_
        (apply make-instance RuntimeException::t _$args66647_)))
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
      (lambda (_exn66642_ _continue66643_)
        (let ((_exn66645_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66642_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66645_ _continue66643_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66638_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66638_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66638_ 'continuation))
                '#!void
                (let ((__tmp66692
                       (lambda (_cont66640_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66638_
                            'continuation
                            _cont66640_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66692)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66638_))))
    (define error
      (lambda (_message66635_ . _irritants66636_)
        (raise (let ((__obj66682
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66682
                  _message66635_
                  'irritants:
                  _irritants66636_)
                 __obj66682))))
    (define with-exception-handler
      (lambda (_handler66628_ _thunk66629_)
        (if (let () (declare (not safe)) (procedure? _handler66628_))
            '#!void
            (raise (let ((__obj66683
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66683
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66628_ '())))
                     __obj66683)))
        (if (let () (declare (not safe)) (procedure? _thunk66629_))
            '#!void
            (raise (let ((__obj66684
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66684
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66629_ '())))
                     __obj66684)))
        (let ((__tmp66693
               (lambda (_exn66631_)
                 (let ((_exn66633_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66631_))))
                   (_handler66628_ _exn66633_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66693 _thunk66629_))))
    (define with-catch
      (lambda (_handler66621_ _thunk66622_)
        (if (let () (declare (not safe)) (procedure? _handler66621_))
            '#!void
            (raise (let ((__obj66685
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66685
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66621_ '())))
                     __obj66685)))
        (if (let () (declare (not safe)) (procedure? _thunk66622_))
            '#!void
            (raise (let ((__obj66686
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66686
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66622_ '())))
                     __obj66686)))
        (let ((__tmp66694
               (lambda (_cont66624_)
                 (with-exception-handler
                  (lambda (_exn66626_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont66624_
                       _handler66621_
                       _exn66626_)))
                  _thunk66622_))))
          (declare (not safe))
          (##continuation-capture __tmp66694))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66612_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66612_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66612_)))
            _exn66612_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66612_))
                _exn66612_
                (if (macro-exception? _exn66612_)
                    (let ((_rte66617_
                           (let ((__obj66687
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66687
                                _exn66612_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66687)))
                      (let ((__tmp66695
                             (lambda (_cont66619_)
                               (let ((__tmp66696
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66619_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66617_
                                  'continuation
                                  __tmp66696)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66695))
                      _rte66617_)
                    _exn66612_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj66607_)
        (let ((_$e66609_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj66607_))))
          (if _$e66609_
              _$e66609_
              (let () (declare (not safe)) (error-exception? _obj66607_))))))
    (define error-message
      (lambda (_obj66605_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66605_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66605_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj66605_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj66605_))
                '#f))))
    (define error-irritants
      (lambda (_obj66603_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66603_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66603_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj66603_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj66603_))
                '#f))))
    (define error-trace
      (lambda (_obj66601_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66601_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66601_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e66583_ _port66584_)
        (let ((_$e66586_
               (let ()
                 (declare (not safe))
                 (method-ref _e66583_ 'display-exception))))
          (if _$e66586_
              ((lambda (_f66589_) (_f66589_ _e66583_ _port66584_)) _$e66586_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e66583_ _port66584_))))))
    (define display-exception__0
      (lambda (_e66594_)
        (let ((_port66596_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e66594_ _port66596_))))
    (define display-exception
      (lambda _g66698_
        (let ((_g66697_ (let () (declare (not safe)) (##length _g66698_))))
          (cond ((let () (declare (not safe)) (##fx= _g66697_ 1))
                 (apply (lambda (_e66594_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e66594_)))
                        _g66698_))
                ((let () (declare (not safe)) (##fx= _g66697_ 2))
                 (apply (lambda (_e66598_ _port66599_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e66598_ _port66599_)))
                        _g66698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66698_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self66572_ _message66573_ . _rest66574_)
        (let ((_message66580_
               (if (let () (declare (not safe)) (string? _message66573_))
                   _message66573_
                   (call-with-output-string
                    '""
                    (lambda (_g6657566577_)
                      (display _message66573_ _g6657566577_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self66572_ 'message _message66580_))
          (apply class-instance-init! _self66572_ _rest66574_))))
    (define Error:::init!::specialize
      (lambda (__klass66658 __method-table66659)
        (let ((__message66660
               (let ((__slot66661
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66658 'message))))
                 (if __slot66661
                     __slot66661
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66572_ _message66573_ . _rest66574_)
            (let ((_message66580_
                   (if (let () (declare (not safe)) (string? _message66573_))
                       _message66573_
                       (call-with-output-string
                        '""
                        (lambda (_g6657566577_)
                          (display _message66573_ _g6657566577_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self66572_
                 _message66580_
                 __message66660
                 __klass66658
                 '#f))
              (apply class-instance-init! _self66572_ _rest66574_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self66430_ _port66431_)
        (let ((_tmp-port66433_ (open-output-string))
              (_display-error-newline66434_
               (> (output-port-column _port66431_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66433_))
          (let ((__tmp66699
                 (lambda ()
                   (if _display-error-newline66434_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e66437_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66430_ 'where))))
                     (if _$e66437_ (display _$e66437_) (display '"?")))
                   (let ((__tmp66700
                          (let ((__tmp66701 (object-type _self66430_)))
                            (declare (not safe))
                            (##type-name __tmp66701))))
                     (declare (not safe))
                     (display* '" [" __tmp66700 '"]: "))
                   (let ((__tmp66702
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66430_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66702))
                   (let ((_irritants66440_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66430_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants66440_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj66442_)
                              (write _obj66442_)
                              (write-char '#\space))
                            _irritants66440_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self66430_))
                            (dump-stack-trace?))
                       (let ((_cont6644366445_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self66430_
                                 'continuation))))
                         (if _cont6644366445_
                             (let ((_cont66448_ _cont6644366445_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont66448_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66699
             current-output-port
             _tmp-port66433_))
          (let ((__tmp66703 (get-output-string _tmp-port66433_)))
            (declare (not safe))
            (##write-string __tmp66703 _port66431_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66662 __method-table66663)
        (let ((__continuation66664
               (let ((__slot66668
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66662 'continuation))))
                 (if __slot66668
                     __slot66668
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where66665
               (let ((__slot66669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66662 'where))))
                 (if __slot66669
                     __slot66669
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants66666
               (let ((__slot66670
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66662 'irritants))))
                 (if __slot66670
                     __slot66670
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message66667
               (let ((__slot66671
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66662 'message))))
                 (if __slot66671
                     __slot66671
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66430_ _port66431_)
            (let ((_tmp-port66433_ (open-output-string))
                  (_display-error-newline66434_
                   (> (output-port-column _port66431_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66433_))
              (let ((__tmp66704
                     (lambda ()
                       (if _display-error-newline66434_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e66437_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66430_
                                 __where66665
                                 __klass66662
                                 '#f))))
                         (if _$e66437_ (display _$e66437_) (display '"?")))
                       (let ((__tmp66705
                              (let ((__tmp66706 (object-type _self66430_)))
                                (declare (not safe))
                                (##type-name __tmp66706))))
                         (declare (not safe))
                         (display* '" [" __tmp66705 '"]: "))
                       (let ((__tmp66707
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66430_
                                 __message66667
                                 __klass66662
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66707))
                       (let ((_irritants66440_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66430_
                                 __irritants66666
                                 __klass66662
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants66440_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj66442_)
                                  (write _obj66442_)
                                  (write-char '#\space))
                                _irritants66440_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self66430_))
                                (dump-stack-trace?))
                           (let ((_cont6644366445_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self66430_
                                     __continuation66664
                                     __klass66662
                                     '#f))))
                             (if _cont6644366445_
                                 (let ((_cont66448_ _cont6644366445_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont66448_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66704
                 current-output-port
                 _tmp-port66433_))
              (let ((__tmp66708 (get-output-string _tmp-port66433_)))
                (declare (not safe))
                (##write-string __tmp66708 _port66431_)))))))
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
      (lambda (_self66297_ _port66298_)
        (let ((_tmp-port66300_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66300_))
          (let ((__tmp66709
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self66297_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66709 _tmp-port66300_))
          (if (dump-stack-trace?)
              (let ((_cont6630166303_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self66297_ 'continuation))))
                (if _cont6630166303_
                    (let ((_cont66306_ _cont6630166303_))
                      (display '"--- continuation backtrace:" _tmp-port66300_)
                      (newline _tmp-port66300_)
                      (display-continuation-backtrace
                       _cont66306_
                       _tmp-port66300_))
                    '#f))
              '#!void)
          (let ((__tmp66710 (get-output-string _tmp-port66300_)))
            (declare (not safe))
            (##write-string __tmp66710 _port66298_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66672 __method-table66673)
        (let ((__continuation66674
               (let ((__slot66676
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66672 'continuation))))
                 (if __slot66676
                     __slot66676
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception66675
               (let ((__slot66677
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66672 'exception))))
                 (if __slot66677
                     __slot66677
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self66297_ _port66298_)
            (let ((_tmp-port66300_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66300_))
              (let ((__tmp66711
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self66297_
                        __exception66675
                        __klass66672
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66711 _tmp-port66300_))
              (if (dump-stack-trace?)
                  (let ((_cont6630166303_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self66297_
                            __continuation66674
                            __klass66672
                            '#f))))
                    (if _cont6630166303_
                        (let ((_cont66306_ _cont6630166303_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port66300_)
                          (newline _tmp-port66300_)
                          (display-continuation-backtrace
                           _cont66306_
                           _tmp-port66300_))
                        '#f))
                  '#!void)
              (let ((__tmp66712 (get-output-string _tmp-port66300_)))
                (declare (not safe))
                (##write-string __tmp66712 _port66298_)))))))
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
      (lambda (_port66169_)
        (if (macro-character-port? _port66169_)
            (let ((_old-width66171_
                   (macro-character-port-output-width _port66169_)))
              (macro-character-port-output-width-set!
               _port66169_
               (lambda (_port66173_) '256))
              _old-width66171_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port66166_ _old-width66167_)
        (if (macro-character-port? _port66166_)
            (macro-character-port-output-width-set!
             _port66166_
             _old-width66167_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e66164_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e66164_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn66158_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66158_))
            (let ((_e66161_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66158_ 'exception))))
              (macro-abandoned-mutex-exception? _e66161_))
            (macro-abandoned-mutex-exception? _exn66158_))))
    (define cfun-conversion-exception?
      (lambda (_exn66154_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66154_))
            (let ((_e66156_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66154_ 'exception))))
              (macro-cfun-conversion-exception? _e66156_))
            (macro-cfun-conversion-exception? _exn66154_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn66150_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66150_))
            (let ((_e66152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66150_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66152_)
                  (macro-cfun-conversion-exception-arguments _e66152_)
                  (let ((__tmp66715
                         (let ((__tmp66716
                                (let ()
                                  (declare (not safe))
                                  (cons _e66152_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66716))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66715))))
            (if (macro-cfun-conversion-exception? _exn66150_)
                (macro-cfun-conversion-exception-arguments _exn66150_)
                (let ((__tmp66713
                       (let ((__tmp66714
                              (let ()
                                (declare (not safe))
                                (cons _exn66150_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66714))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66713))))))
    (define cfun-conversion-exception-code
      (lambda (_exn66146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66146_))
            (let ((_e66148_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66146_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66148_)
                  (macro-cfun-conversion-exception-code _e66148_)
                  (let ((__tmp66719
                         (let ((__tmp66720
                                (let ()
                                  (declare (not safe))
                                  (cons _e66148_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66720))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66719))))
            (if (macro-cfun-conversion-exception? _exn66146_)
                (macro-cfun-conversion-exception-code _exn66146_)
                (let ((__tmp66717
                       (let ((__tmp66718
                              (let ()
                                (declare (not safe))
                                (cons _exn66146_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66718))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66717))))))
    (define cfun-conversion-exception-message
      (lambda (_exn66142_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66142_))
            (let ((_e66144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66142_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66144_)
                  (macro-cfun-conversion-exception-message _e66144_)
                  (let ((__tmp66723
                         (let ((__tmp66724
                                (let ()
                                  (declare (not safe))
                                  (cons _e66144_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66724))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66723))))
            (if (macro-cfun-conversion-exception? _exn66142_)
                (macro-cfun-conversion-exception-message _exn66142_)
                (let ((__tmp66721
                       (let ((__tmp66722
                              (let ()
                                (declare (not safe))
                                (cons _exn66142_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66722))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66721))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn66136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66136_))
            (let ((_e66139_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66136_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66139_)
                  (macro-cfun-conversion-exception-procedure _e66139_)
                  (let ((__tmp66727
                         (let ((__tmp66728
                                (let ()
                                  (declare (not safe))
                                  (cons _e66139_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66728))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66727))))
            (if (macro-cfun-conversion-exception? _exn66136_)
                (macro-cfun-conversion-exception-procedure _exn66136_)
                (let ((__tmp66725
                       (let ((__tmp66726
                              (let ()
                                (declare (not safe))
                                (cons _exn66136_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66726))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66725))))))
    (define datum-parsing-exception?
      (lambda (_exn66132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66132_))
            (let ((_e66134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66132_ 'exception))))
              (macro-datum-parsing-exception? _e66134_))
            (macro-datum-parsing-exception? _exn66132_))))
    (define datum-parsing-exception-kind
      (lambda (_exn66128_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66128_))
            (let ((_e66130_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66128_ 'exception))))
              (if (macro-datum-parsing-exception? _e66130_)
                  (macro-datum-parsing-exception-kind _e66130_)
                  (let ((__tmp66731
                         (let ((__tmp66732
                                (let ()
                                  (declare (not safe))
                                  (cons _e66130_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66732))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66731))))
            (if (macro-datum-parsing-exception? _exn66128_)
                (macro-datum-parsing-exception-kind _exn66128_)
                (let ((__tmp66729
                       (let ((__tmp66730
                              (let ()
                                (declare (not safe))
                                (cons _exn66128_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66730))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66729))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn66124_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66124_))
            (let ((_e66126_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66124_ 'exception))))
              (if (macro-datum-parsing-exception? _e66126_)
                  (macro-datum-parsing-exception-parameters _e66126_)
                  (let ((__tmp66735
                         (let ((__tmp66736
                                (let ()
                                  (declare (not safe))
                                  (cons _e66126_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66736))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66735))))
            (if (macro-datum-parsing-exception? _exn66124_)
                (macro-datum-parsing-exception-parameters _exn66124_)
                (let ((__tmp66733
                       (let ((__tmp66734
                              (let ()
                                (declare (not safe))
                                (cons _exn66124_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66734))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66733))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn66118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66118_))
            (let ((_e66121_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66118_ 'exception))))
              (if (macro-datum-parsing-exception? _e66121_)
                  (macro-datum-parsing-exception-readenv _e66121_)
                  (let ((__tmp66739
                         (let ((__tmp66740
                                (let ()
                                  (declare (not safe))
                                  (cons _e66121_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66740))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66739))))
            (if (macro-datum-parsing-exception? _exn66118_)
                (macro-datum-parsing-exception-readenv _exn66118_)
                (let ((__tmp66737
                       (let ((__tmp66738
                              (let ()
                                (declare (not safe))
                                (cons _exn66118_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66738))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66737))))))
    (define deadlock-exception?
      (lambda (_exn66112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66112_))
            (let ((_e66115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66112_ 'exception))))
              (macro-deadlock-exception? _e66115_))
            (macro-deadlock-exception? _exn66112_))))
    (define divide-by-zero-exception?
      (lambda (_exn66108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66108_))
            (let ((_e66110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66108_ 'exception))))
              (macro-divide-by-zero-exception? _e66110_))
            (macro-divide-by-zero-exception? _exn66108_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn66104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66104_))
            (let ((_e66106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66104_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66106_)
                  (macro-divide-by-zero-exception-arguments _e66106_)
                  (let ((__tmp66743
                         (let ((__tmp66744
                                (let ()
                                  (declare (not safe))
                                  (cons _e66106_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp66744))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66743))))
            (if (macro-divide-by-zero-exception? _exn66104_)
                (macro-divide-by-zero-exception-arguments _exn66104_)
                (let ((__tmp66741
                       (let ((__tmp66742
                              (let ()
                                (declare (not safe))
                                (cons _exn66104_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp66742))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66741))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn66098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66098_))
            (let ((_e66101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66098_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66101_)
                  (macro-divide-by-zero-exception-procedure _e66101_)
                  (let ((__tmp66747
                         (let ((__tmp66748
                                (let ()
                                  (declare (not safe))
                                  (cons _e66101_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp66748))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66747))))
            (if (macro-divide-by-zero-exception? _exn66098_)
                (macro-divide-by-zero-exception-procedure _exn66098_)
                (let ((__tmp66745
                       (let ((__tmp66746
                              (let ()
                                (declare (not safe))
                                (cons _exn66098_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp66746))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66745))))))
    (define error-exception?
      (lambda (_exn66094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66094_))
            (let ((_e66096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66094_ 'exception))))
              (macro-error-exception? _e66096_))
            (macro-error-exception? _exn66094_))))
    (define error-exception-message
      (lambda (_exn66090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66090_))
            (let ((_e66092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66090_ 'exception))))
              (if (macro-error-exception? _e66092_)
                  (macro-error-exception-message _e66092_)
                  (let ((__tmp66751
                         (let ((__tmp66752
                                (let ()
                                  (declare (not safe))
                                  (cons _e66092_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp66752))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66751))))
            (if (macro-error-exception? _exn66090_)
                (macro-error-exception-message _exn66090_)
                (let ((__tmp66749
                       (let ((__tmp66750
                              (let ()
                                (declare (not safe))
                                (cons _exn66090_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp66750))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66749))))))
    (define error-exception-parameters
      (lambda (_exn66084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66084_))
            (let ((_e66087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66084_ 'exception))))
              (if (macro-error-exception? _e66087_)
                  (macro-error-exception-parameters _e66087_)
                  (let ((__tmp66755
                         (let ((__tmp66756
                                (let ()
                                  (declare (not safe))
                                  (cons _e66087_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp66756))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66755))))
            (if (macro-error-exception? _exn66084_)
                (macro-error-exception-parameters _exn66084_)
                (let ((__tmp66753
                       (let ((__tmp66754
                              (let ()
                                (declare (not safe))
                                (cons _exn66084_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp66754))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66753))))))
    (define expression-parsing-exception?
      (lambda (_exn66080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66080_))
            (let ((_e66082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66080_ 'exception))))
              (macro-expression-parsing-exception? _e66082_))
            (macro-expression-parsing-exception? _exn66080_))))
    (define expression-parsing-exception-kind
      (lambda (_exn66076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66076_))
            (let ((_e66078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66076_ 'exception))))
              (if (macro-expression-parsing-exception? _e66078_)
                  (macro-expression-parsing-exception-kind _e66078_)
                  (let ((__tmp66759
                         (let ((__tmp66760
                                (let ()
                                  (declare (not safe))
                                  (cons _e66078_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp66760))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66759))))
            (if (macro-expression-parsing-exception? _exn66076_)
                (macro-expression-parsing-exception-kind _exn66076_)
                (let ((__tmp66757
                       (let ((__tmp66758
                              (let ()
                                (declare (not safe))
                                (cons _exn66076_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp66758))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66757))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn66072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66072_))
            (let ((_e66074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66072_ 'exception))))
              (if (macro-expression-parsing-exception? _e66074_)
                  (macro-expression-parsing-exception-parameters _e66074_)
                  (let ((__tmp66763
                         (let ((__tmp66764
                                (let ()
                                  (declare (not safe))
                                  (cons _e66074_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp66764))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66763))))
            (if (macro-expression-parsing-exception? _exn66072_)
                (macro-expression-parsing-exception-parameters _exn66072_)
                (let ((__tmp66761
                       (let ((__tmp66762
                              (let ()
                                (declare (not safe))
                                (cons _exn66072_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp66762))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66761))))))
    (define expression-parsing-exception-source
      (lambda (_exn66066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66066_))
            (let ((_e66069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66066_ 'exception))))
              (if (macro-expression-parsing-exception? _e66069_)
                  (macro-expression-parsing-exception-source _e66069_)
                  (let ((__tmp66767
                         (let ((__tmp66768
                                (let ()
                                  (declare (not safe))
                                  (cons _e66069_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp66768))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66767))))
            (if (macro-expression-parsing-exception? _exn66066_)
                (macro-expression-parsing-exception-source _exn66066_)
                (let ((__tmp66765
                       (let ((__tmp66766
                              (let ()
                                (declare (not safe))
                                (cons _exn66066_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp66766))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66765))))))
    (define file-exists-exception?
      (lambda (_exn66062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66062_))
            (let ((_e66064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66062_ 'exception))))
              (macro-file-exists-exception? _e66064_))
            (macro-file-exists-exception? _exn66062_))))
    (define file-exists-exception-arguments
      (lambda (_exn66058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66058_))
            (let ((_e66060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66058_ 'exception))))
              (if (macro-file-exists-exception? _e66060_)
                  (macro-file-exists-exception-arguments _e66060_)
                  (let ((__tmp66771
                         (let ((__tmp66772
                                (let ()
                                  (declare (not safe))
                                  (cons _e66060_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp66772))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66771))))
            (if (macro-file-exists-exception? _exn66058_)
                (macro-file-exists-exception-arguments _exn66058_)
                (let ((__tmp66769
                       (let ((__tmp66770
                              (let ()
                                (declare (not safe))
                                (cons _exn66058_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp66770))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66769))))))
    (define file-exists-exception-procedure
      (lambda (_exn66052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66052_))
            (let ((_e66055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66052_ 'exception))))
              (if (macro-file-exists-exception? _e66055_)
                  (macro-file-exists-exception-procedure _e66055_)
                  (let ((__tmp66775
                         (let ((__tmp66776
                                (let ()
                                  (declare (not safe))
                                  (cons _e66055_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp66776))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66775))))
            (if (macro-file-exists-exception? _exn66052_)
                (macro-file-exists-exception-procedure _exn66052_)
                (let ((__tmp66773
                       (let ((__tmp66774
                              (let ()
                                (declare (not safe))
                                (cons _exn66052_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp66774))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66773))))))
    (define fixnum-overflow-exception?
      (lambda (_exn66048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66048_))
            (let ((_e66050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66048_ 'exception))))
              (macro-fixnum-overflow-exception? _e66050_))
            (macro-fixnum-overflow-exception? _exn66048_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn66044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66044_))
            (let ((_e66046_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66044_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66046_)
                  (macro-fixnum-overflow-exception-arguments _e66046_)
                  (let ((__tmp66779
                         (let ((__tmp66780
                                (let ()
                                  (declare (not safe))
                                  (cons _e66046_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp66780))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66779))))
            (if (macro-fixnum-overflow-exception? _exn66044_)
                (macro-fixnum-overflow-exception-arguments _exn66044_)
                (let ((__tmp66777
                       (let ((__tmp66778
                              (let ()
                                (declare (not safe))
                                (cons _exn66044_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp66778))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66777))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn66038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66038_))
            (let ((_e66041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66038_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66041_)
                  (macro-fixnum-overflow-exception-procedure _e66041_)
                  (let ((__tmp66783
                         (let ((__tmp66784
                                (let ()
                                  (declare (not safe))
                                  (cons _e66041_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp66784))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66783))))
            (if (macro-fixnum-overflow-exception? _exn66038_)
                (macro-fixnum-overflow-exception-procedure _exn66038_)
                (let ((__tmp66781
                       (let ((__tmp66782
                              (let ()
                                (declare (not safe))
                                (cons _exn66038_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp66782))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66781))))))
    (define heap-overflow-exception?
      (lambda (_exn66032_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66032_))
            (let ((_e66035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66032_ 'exception))))
              (macro-heap-overflow-exception? _e66035_))
            (macro-heap-overflow-exception? _exn66032_))))
    (define inactive-thread-exception?
      (lambda (_exn66028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66028_))
            (let ((_e66030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66028_ 'exception))))
              (macro-inactive-thread-exception? _e66030_))
            (macro-inactive-thread-exception? _exn66028_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn66024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66024_))
            (let ((_e66026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66024_ 'exception))))
              (if (macro-inactive-thread-exception? _e66026_)
                  (macro-inactive-thread-exception-arguments _e66026_)
                  (let ((__tmp66787
                         (let ((__tmp66788
                                (let ()
                                  (declare (not safe))
                                  (cons _e66026_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp66788))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66787))))
            (if (macro-inactive-thread-exception? _exn66024_)
                (macro-inactive-thread-exception-arguments _exn66024_)
                (let ((__tmp66785
                       (let ((__tmp66786
                              (let ()
                                (declare (not safe))
                                (cons _exn66024_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp66786))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66785))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn66018_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66018_))
            (let ((_e66021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66018_ 'exception))))
              (if (macro-inactive-thread-exception? _e66021_)
                  (macro-inactive-thread-exception-procedure _e66021_)
                  (let ((__tmp66791
                         (let ((__tmp66792
                                (let ()
                                  (declare (not safe))
                                  (cons _e66021_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp66792))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66791))))
            (if (macro-inactive-thread-exception? _exn66018_)
                (macro-inactive-thread-exception-procedure _exn66018_)
                (let ((__tmp66789
                       (let ((__tmp66790
                              (let ()
                                (declare (not safe))
                                (cons _exn66018_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp66790))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66789))))))
    (define initialized-thread-exception?
      (lambda (_exn66014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66014_))
            (let ((_e66016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66014_ 'exception))))
              (macro-initialized-thread-exception? _e66016_))
            (macro-initialized-thread-exception? _exn66014_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn66010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66010_))
            (let ((_e66012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66010_ 'exception))))
              (if (macro-initialized-thread-exception? _e66012_)
                  (macro-initialized-thread-exception-arguments _e66012_)
                  (let ((__tmp66795
                         (let ((__tmp66796
                                (let ()
                                  (declare (not safe))
                                  (cons _e66012_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp66796))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66795))))
            (if (macro-initialized-thread-exception? _exn66010_)
                (macro-initialized-thread-exception-arguments _exn66010_)
                (let ((__tmp66793
                       (let ((__tmp66794
                              (let ()
                                (declare (not safe))
                                (cons _exn66010_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp66794))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66793))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn66004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66004_))
            (let ((_e66007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66004_ 'exception))))
              (if (macro-initialized-thread-exception? _e66007_)
                  (macro-initialized-thread-exception-procedure _e66007_)
                  (let ((__tmp66799
                         (let ((__tmp66800
                                (let ()
                                  (declare (not safe))
                                  (cons _e66007_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp66800))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66799))))
            (if (macro-initialized-thread-exception? _exn66004_)
                (macro-initialized-thread-exception-procedure _exn66004_)
                (let ((__tmp66797
                       (let ((__tmp66798
                              (let ()
                                (declare (not safe))
                                (cons _exn66004_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp66798))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66797))))))
    (define invalid-hash-number-exception?
      (lambda (_exn66000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66000_))
            (let ((_e66002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66000_ 'exception))))
              (macro-invalid-hash-number-exception? _e66002_))
            (macro-invalid-hash-number-exception? _exn66000_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn65996_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65996_))
            (let ((_e65998_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65996_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65998_)
                  (macro-invalid-hash-number-exception-arguments _e65998_)
                  (let ((__tmp66803
                         (let ((__tmp66804
                                (let ()
                                  (declare (not safe))
                                  (cons _e65998_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp66804))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66803))))
            (if (macro-invalid-hash-number-exception? _exn65996_)
                (macro-invalid-hash-number-exception-arguments _exn65996_)
                (let ((__tmp66801
                       (let ((__tmp66802
                              (let ()
                                (declare (not safe))
                                (cons _exn65996_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp66802))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66801))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn65990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65990_))
            (let ((_e65993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65990_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65993_)
                  (macro-invalid-hash-number-exception-procedure _e65993_)
                  (let ((__tmp66807
                         (let ((__tmp66808
                                (let ()
                                  (declare (not safe))
                                  (cons _e65993_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp66808))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66807))))
            (if (macro-invalid-hash-number-exception? _exn65990_)
                (macro-invalid-hash-number-exception-procedure _exn65990_)
                (let ((__tmp66805
                       (let ((__tmp66806
                              (let ()
                                (declare (not safe))
                                (cons _exn65990_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp66806))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66805))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn65986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65986_))
            (let ((_e65988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65986_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e65988_))
            (macro-invalid-utf8-encoding-exception? _exn65986_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn65982_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65982_))
            (let ((_e65984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65982_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65984_)
                  (macro-invalid-utf8-encoding-exception-arguments _e65984_)
                  (let ((__tmp66811
                         (let ((__tmp66812
                                (let ()
                                  (declare (not safe))
                                  (cons _e65984_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp66812))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66811))))
            (if (macro-invalid-utf8-encoding-exception? _exn65982_)
                (macro-invalid-utf8-encoding-exception-arguments _exn65982_)
                (let ((__tmp66809
                       (let ((__tmp66810
                              (let ()
                                (declare (not safe))
                                (cons _exn65982_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp66810))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66809))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn65976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65976_))
            (let ((_e65979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65976_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65979_)
                  (macro-invalid-utf8-encoding-exception-procedure _e65979_)
                  (let ((__tmp66815
                         (let ((__tmp66816
                                (let ()
                                  (declare (not safe))
                                  (cons _e65979_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp66816))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66815))))
            (if (macro-invalid-utf8-encoding-exception? _exn65976_)
                (macro-invalid-utf8-encoding-exception-procedure _exn65976_)
                (let ((__tmp66813
                       (let ((__tmp66814
                              (let ()
                                (declare (not safe))
                                (cons _exn65976_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp66814))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66813))))))
    (define join-timeout-exception?
      (lambda (_exn65972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65972_))
            (let ((_e65974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65972_ 'exception))))
              (macro-join-timeout-exception? _e65974_))
            (macro-join-timeout-exception? _exn65972_))))
    (define join-timeout-exception-arguments
      (lambda (_exn65968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65968_))
            (let ((_e65970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65968_ 'exception))))
              (if (macro-join-timeout-exception? _e65970_)
                  (macro-join-timeout-exception-arguments _e65970_)
                  (let ((__tmp66819
                         (let ((__tmp66820
                                (let ()
                                  (declare (not safe))
                                  (cons _e65970_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp66820))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66819))))
            (if (macro-join-timeout-exception? _exn65968_)
                (macro-join-timeout-exception-arguments _exn65968_)
                (let ((__tmp66817
                       (let ((__tmp66818
                              (let ()
                                (declare (not safe))
                                (cons _exn65968_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp66818))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66817))))))
    (define join-timeout-exception-procedure
      (lambda (_exn65962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65962_))
            (let ((_e65965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65962_ 'exception))))
              (if (macro-join-timeout-exception? _e65965_)
                  (macro-join-timeout-exception-procedure _e65965_)
                  (let ((__tmp66823
                         (let ((__tmp66824
                                (let ()
                                  (declare (not safe))
                                  (cons _e65965_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp66824))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66823))))
            (if (macro-join-timeout-exception? _exn65962_)
                (macro-join-timeout-exception-procedure _exn65962_)
                (let ((__tmp66821
                       (let ((__tmp66822
                              (let ()
                                (declare (not safe))
                                (cons _exn65962_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp66822))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66821))))))
    (define keyword-expected-exception?
      (lambda (_exn65958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65958_))
            (let ((_e65960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65958_ 'exception))))
              (macro-keyword-expected-exception? _e65960_))
            (macro-keyword-expected-exception? _exn65958_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn65954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65954_))
            (let ((_e65956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65954_ 'exception))))
              (if (macro-keyword-expected-exception? _e65956_)
                  (macro-keyword-expected-exception-arguments _e65956_)
                  (let ((__tmp66827
                         (let ((__tmp66828
                                (let ()
                                  (declare (not safe))
                                  (cons _e65956_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp66828))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66827))))
            (if (macro-keyword-expected-exception? _exn65954_)
                (macro-keyword-expected-exception-arguments _exn65954_)
                (let ((__tmp66825
                       (let ((__tmp66826
                              (let ()
                                (declare (not safe))
                                (cons _exn65954_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp66826))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66825))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn65948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65948_))
            (let ((_e65951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65948_ 'exception))))
              (if (macro-keyword-expected-exception? _e65951_)
                  (macro-keyword-expected-exception-procedure _e65951_)
                  (let ((__tmp66831
                         (let ((__tmp66832
                                (let ()
                                  (declare (not safe))
                                  (cons _e65951_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp66832))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66831))))
            (if (macro-keyword-expected-exception? _exn65948_)
                (macro-keyword-expected-exception-procedure _exn65948_)
                (let ((__tmp66829
                       (let ((__tmp66830
                              (let ()
                                (declare (not safe))
                                (cons _exn65948_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp66830))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66829))))))
    (define length-mismatch-exception?
      (lambda (_exn65944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65944_))
            (let ((_e65946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65944_ 'exception))))
              (macro-length-mismatch-exception? _e65946_))
            (macro-length-mismatch-exception? _exn65944_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn65940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65940_))
            (let ((_e65942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65940_ 'exception))))
              (if (macro-length-mismatch-exception? _e65942_)
                  (macro-length-mismatch-exception-arg-id _e65942_)
                  (let ((__tmp66835
                         (let ((__tmp66836
                                (let ()
                                  (declare (not safe))
                                  (cons _e65942_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp66836))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66835))))
            (if (macro-length-mismatch-exception? _exn65940_)
                (macro-length-mismatch-exception-arg-id _exn65940_)
                (let ((__tmp66833
                       (let ((__tmp66834
                              (let ()
                                (declare (not safe))
                                (cons _exn65940_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp66834))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66833))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn65936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65936_))
            (let ((_e65938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65936_ 'exception))))
              (if (macro-length-mismatch-exception? _e65938_)
                  (macro-length-mismatch-exception-arguments _e65938_)
                  (let ((__tmp66839
                         (let ((__tmp66840
                                (let ()
                                  (declare (not safe))
                                  (cons _e65938_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp66840))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66839))))
            (if (macro-length-mismatch-exception? _exn65936_)
                (macro-length-mismatch-exception-arguments _exn65936_)
                (let ((__tmp66837
                       (let ((__tmp66838
                              (let ()
                                (declare (not safe))
                                (cons _exn65936_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp66838))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66837))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn65930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65930_))
            (let ((_e65933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65930_ 'exception))))
              (if (macro-length-mismatch-exception? _e65933_)
                  (macro-length-mismatch-exception-procedure _e65933_)
                  (let ((__tmp66843
                         (let ((__tmp66844
                                (let ()
                                  (declare (not safe))
                                  (cons _e65933_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp66844))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66843))))
            (if (macro-length-mismatch-exception? _exn65930_)
                (macro-length-mismatch-exception-procedure _exn65930_)
                (let ((__tmp66841
                       (let ((__tmp66842
                              (let ()
                                (declare (not safe))
                                (cons _exn65930_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp66842))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66841))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn65926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65926_))
            (let ((_e65928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65926_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e65928_))
            (macro-mailbox-receive-timeout-exception? _exn65926_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn65922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65922_))
            (let ((_e65924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65922_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65924_)
                  (macro-mailbox-receive-timeout-exception-arguments _e65924_)
                  (let ((__tmp66847
                         (let ((__tmp66848
                                (let ()
                                  (declare (not safe))
                                  (cons _e65924_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp66848))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66847))))
            (if (macro-mailbox-receive-timeout-exception? _exn65922_)
                (macro-mailbox-receive-timeout-exception-arguments _exn65922_)
                (let ((__tmp66845
                       (let ((__tmp66846
                              (let ()
                                (declare (not safe))
                                (cons _exn65922_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp66846))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66845))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn65916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65916_))
            (let ((_e65919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65916_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65919_)
                  (macro-mailbox-receive-timeout-exception-procedure _e65919_)
                  (let ((__tmp66851
                         (let ((__tmp66852
                                (let ()
                                  (declare (not safe))
                                  (cons _e65919_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp66852))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66851))))
            (if (macro-mailbox-receive-timeout-exception? _exn65916_)
                (macro-mailbox-receive-timeout-exception-procedure _exn65916_)
                (let ((__tmp66849
                       (let ((__tmp66850
                              (let ()
                                (declare (not safe))
                                (cons _exn65916_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp66850))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66849))))))
    (define module-not-found-exception?
      (lambda (_exn65912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65912_))
            (let ((_e65914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65912_ 'exception))))
              (macro-module-not-found-exception? _e65914_))
            (macro-module-not-found-exception? _exn65912_))))
    (define module-not-found-exception-arguments
      (lambda (_exn65908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65908_))
            (let ((_e65910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65908_ 'exception))))
              (if (macro-module-not-found-exception? _e65910_)
                  (macro-module-not-found-exception-arguments _e65910_)
                  (let ((__tmp66855
                         (let ((__tmp66856
                                (let ()
                                  (declare (not safe))
                                  (cons _e65910_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp66856))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66855))))
            (if (macro-module-not-found-exception? _exn65908_)
                (macro-module-not-found-exception-arguments _exn65908_)
                (let ((__tmp66853
                       (let ((__tmp66854
                              (let ()
                                (declare (not safe))
                                (cons _exn65908_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp66854))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66853))))))
    (define module-not-found-exception-procedure
      (lambda (_exn65902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65902_))
            (let ((_e65905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65902_ 'exception))))
              (if (macro-module-not-found-exception? _e65905_)
                  (macro-module-not-found-exception-procedure _e65905_)
                  (let ((__tmp66859
                         (let ((__tmp66860
                                (let ()
                                  (declare (not safe))
                                  (cons _e65905_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp66860))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66859))))
            (if (macro-module-not-found-exception? _exn65902_)
                (macro-module-not-found-exception-procedure _exn65902_)
                (let ((__tmp66857
                       (let ((__tmp66858
                              (let ()
                                (declare (not safe))
                                (cons _exn65902_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp66858))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66857))))))
    (define multiple-c-return-exception?
      (lambda (_exn65896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65896_))
            (let ((_e65899_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65896_ 'exception))))
              (macro-multiple-c-return-exception? _e65899_))
            (macro-multiple-c-return-exception? _exn65896_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn65892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65892_))
            (let ((_e65894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65892_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e65894_))
            (macro-no-such-file-or-directory-exception? _exn65892_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn65888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65888_))
            (let ((_e65890_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65888_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65890_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e65890_)
                  (let ((__tmp66863
                         (let ((__tmp66864
                                (let ()
                                  (declare (not safe))
                                  (cons _e65890_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp66864))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66863))))
            (if (macro-no-such-file-or-directory-exception? _exn65888_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn65888_)
                (let ((__tmp66861
                       (let ((__tmp66862
                              (let ()
                                (declare (not safe))
                                (cons _exn65888_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp66862))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66861))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn65882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65882_))
            (let ((_e65885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65882_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65885_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e65885_)
                  (let ((__tmp66867
                         (let ((__tmp66868
                                (let ()
                                  (declare (not safe))
                                  (cons _e65885_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp66868))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66867))))
            (if (macro-no-such-file-or-directory-exception? _exn65882_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn65882_)
                (let ((__tmp66865
                       (let ((__tmp66866
                              (let ()
                                (declare (not safe))
                                (cons _exn65882_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp66866))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66865))))))
    (define noncontinuable-exception?
      (lambda (_exn65878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65878_))
            (let ((_e65880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65878_ 'exception))))
              (macro-noncontinuable-exception? _e65880_))
            (macro-noncontinuable-exception? _exn65878_))))
    (define noncontinuable-exception-reason
      (lambda (_exn65872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65872_))
            (let ((_e65875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65872_ 'exception))))
              (if (macro-noncontinuable-exception? _e65875_)
                  (macro-noncontinuable-exception-reason _e65875_)
                  (let ((__tmp66871
                         (let ((__tmp66872
                                (let ()
                                  (declare (not safe))
                                  (cons _e65875_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp66872))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp66871))))
            (if (macro-noncontinuable-exception? _exn65872_)
                (macro-noncontinuable-exception-reason _exn65872_)
                (let ((__tmp66869
                       (let ((__tmp66870
                              (let ()
                                (declare (not safe))
                                (cons _exn65872_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp66870))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp66869))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn65868_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65868_))
            (let ((_e65870_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65868_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e65870_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn65868_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn65864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65864_))
            (let ((_e65866_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65864_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65866_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e65866_)
                  (let ((__tmp66875
                         (let ((__tmp66876
                                (let ()
                                  (declare (not safe))
                                  (cons _e65866_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp66876))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66875))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65864_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn65864_)
                (let ((__tmp66873
                       (let ((__tmp66874
                              (let ()
                                (declare (not safe))
                                (cons _exn65864_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp66874))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66873))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn65858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65858_))
            (let ((_e65861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65858_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65861_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e65861_)
                  (let ((__tmp66879
                         (let ((__tmp66880
                                (let ()
                                  (declare (not safe))
                                  (cons _e65861_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp66880))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66879))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65858_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn65858_)
                (let ((__tmp66877
                       (let ((__tmp66878
                              (let ()
                                (declare (not safe))
                                (cons _exn65858_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp66878))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66877))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn65854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65854_))
            (let ((_e65856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65854_ 'exception))))
              (macro-nonprocedure-operator-exception? _e65856_))
            (macro-nonprocedure-operator-exception? _exn65854_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn65850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65850_))
            (let ((_e65852_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65850_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65852_)
                  (macro-nonprocedure-operator-exception-arguments _e65852_)
                  (let ((__tmp66883
                         (let ((__tmp66884
                                (let ()
                                  (declare (not safe))
                                  (cons _e65852_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp66884))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66883))))
            (if (macro-nonprocedure-operator-exception? _exn65850_)
                (macro-nonprocedure-operator-exception-arguments _exn65850_)
                (let ((__tmp66881
                       (let ((__tmp66882
                              (let ()
                                (declare (not safe))
                                (cons _exn65850_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp66882))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66881))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn65846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65846_))
            (let ((_e65848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65846_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65848_)
                  (macro-nonprocedure-operator-exception-code _e65848_)
                  (let ((__tmp66887
                         (let ((__tmp66888
                                (let ()
                                  (declare (not safe))
                                  (cons _e65848_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp66888))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66887))))
            (if (macro-nonprocedure-operator-exception? _exn65846_)
                (macro-nonprocedure-operator-exception-code _exn65846_)
                (let ((__tmp66885
                       (let ((__tmp66886
                              (let ()
                                (declare (not safe))
                                (cons _exn65846_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp66886))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66885))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn65842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65842_))
            (let ((_e65844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65842_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65844_)
                  (macro-nonprocedure-operator-exception-operator _e65844_)
                  (let ((__tmp66891
                         (let ((__tmp66892
                                (let ()
                                  (declare (not safe))
                                  (cons _e65844_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp66892))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66891))))
            (if (macro-nonprocedure-operator-exception? _exn65842_)
                (macro-nonprocedure-operator-exception-operator _exn65842_)
                (let ((__tmp66889
                       (let ((__tmp66890
                              (let ()
                                (declare (not safe))
                                (cons _exn65842_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp66890))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66889))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn65836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65836_))
            (let ((_e65839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65836_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65839_)
                  (macro-nonprocedure-operator-exception-rte _e65839_)
                  (let ((__tmp66895
                         (let ((__tmp66896
                                (let ()
                                  (declare (not safe))
                                  (cons _e65839_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp66896))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66895))))
            (if (macro-nonprocedure-operator-exception? _exn65836_)
                (macro-nonprocedure-operator-exception-rte _exn65836_)
                (let ((__tmp66893
                       (let ((__tmp66894
                              (let ()
                                (declare (not safe))
                                (cons _exn65836_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp66894))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66893))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn65832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65832_))
            (let ((_e65834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65832_ 'exception))))
              (macro-not-in-compilation-context-exception? _e65834_))
            (macro-not-in-compilation-context-exception? _exn65832_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn65828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65828_))
            (let ((_e65830_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65828_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65830_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e65830_)
                  (let ((__tmp66899
                         (let ((__tmp66900
                                (let ()
                                  (declare (not safe))
                                  (cons _e65830_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp66900))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66899))))
            (if (macro-not-in-compilation-context-exception? _exn65828_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn65828_)
                (let ((__tmp66897
                       (let ((__tmp66898
                              (let ()
                                (declare (not safe))
                                (cons _exn65828_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp66898))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66897))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn65822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65822_))
            (let ((_e65825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65822_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65825_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e65825_)
                  (let ((__tmp66903
                         (let ((__tmp66904
                                (let ()
                                  (declare (not safe))
                                  (cons _e65825_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp66904))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66903))))
            (if (macro-not-in-compilation-context-exception? _exn65822_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn65822_)
                (let ((__tmp66901
                       (let ((__tmp66902
                              (let ()
                                (declare (not safe))
                                (cons _exn65822_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp66902))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66901))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn65818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65818_))
            (let ((_e65820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65818_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e65820_))
            (macro-number-of-arguments-limit-exception? _exn65818_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn65814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65814_))
            (let ((_e65816_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65814_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65816_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e65816_)
                  (let ((__tmp66907
                         (let ((__tmp66908
                                (let ()
                                  (declare (not safe))
                                  (cons _e65816_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp66908))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66907))))
            (if (macro-number-of-arguments-limit-exception? _exn65814_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn65814_)
                (let ((__tmp66905
                       (let ((__tmp66906
                              (let ()
                                (declare (not safe))
                                (cons _exn65814_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp66906))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66905))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn65808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65808_))
            (let ((_e65811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65808_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65811_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e65811_)
                  (let ((__tmp66911
                         (let ((__tmp66912
                                (let ()
                                  (declare (not safe))
                                  (cons _e65811_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp66912))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66911))))
            (if (macro-number-of-arguments-limit-exception? _exn65808_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn65808_)
                (let ((__tmp66909
                       (let ((__tmp66910
                              (let ()
                                (declare (not safe))
                                (cons _exn65808_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp66910))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66909))))))
    (define os-exception?
      (lambda (_exn65804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65804_))
            (let ((_e65806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65804_ 'exception))))
              (macro-os-exception? _e65806_))
            (macro-os-exception? _exn65804_))))
    (define os-exception-arguments
      (lambda (_exn65800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65800_))
            (let ((_e65802_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65800_ 'exception))))
              (if (macro-os-exception? _e65802_)
                  (macro-os-exception-arguments _e65802_)
                  (let ((__tmp66915
                         (let ((__tmp66916
                                (let ()
                                  (declare (not safe))
                                  (cons _e65802_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp66916))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66915))))
            (if (macro-os-exception? _exn65800_)
                (macro-os-exception-arguments _exn65800_)
                (let ((__tmp66913
                       (let ((__tmp66914
                              (let ()
                                (declare (not safe))
                                (cons _exn65800_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp66914))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66913))))))
    (define os-exception-code
      (lambda (_exn65796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65796_))
            (let ((_e65798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65796_ 'exception))))
              (if (macro-os-exception? _e65798_)
                  (macro-os-exception-code _e65798_)
                  (let ((__tmp66919
                         (let ((__tmp66920
                                (let ()
                                  (declare (not safe))
                                  (cons _e65798_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp66920))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66919))))
            (if (macro-os-exception? _exn65796_)
                (macro-os-exception-code _exn65796_)
                (let ((__tmp66917
                       (let ((__tmp66918
                              (let ()
                                (declare (not safe))
                                (cons _exn65796_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp66918))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66917))))))
    (define os-exception-message
      (lambda (_exn65792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65792_))
            (let ((_e65794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65792_ 'exception))))
              (if (macro-os-exception? _e65794_)
                  (macro-os-exception-message _e65794_)
                  (let ((__tmp66923
                         (let ((__tmp66924
                                (let ()
                                  (declare (not safe))
                                  (cons _e65794_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp66924))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66923))))
            (if (macro-os-exception? _exn65792_)
                (macro-os-exception-message _exn65792_)
                (let ((__tmp66921
                       (let ((__tmp66922
                              (let ()
                                (declare (not safe))
                                (cons _exn65792_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp66922))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66921))))))
    (define os-exception-procedure
      (lambda (_exn65786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65786_))
            (let ((_e65789_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65786_ 'exception))))
              (if (macro-os-exception? _e65789_)
                  (macro-os-exception-procedure _e65789_)
                  (let ((__tmp66927
                         (let ((__tmp66928
                                (let ()
                                  (declare (not safe))
                                  (cons _e65789_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp66928))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66927))))
            (if (macro-os-exception? _exn65786_)
                (macro-os-exception-procedure _exn65786_)
                (let ((__tmp66925
                       (let ((__tmp66926
                              (let ()
                                (declare (not safe))
                                (cons _exn65786_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp66926))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66925))))))
    (define permission-denied-exception?
      (lambda (_exn65782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65782_))
            (let ((_e65784_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65782_ 'exception))))
              (macro-permission-denied-exception? _e65784_))
            (macro-permission-denied-exception? _exn65782_))))
    (define permission-denied-exception-arguments
      (lambda (_exn65778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65778_))
            (let ((_e65780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65778_ 'exception))))
              (if (macro-permission-denied-exception? _e65780_)
                  (macro-permission-denied-exception-arguments _e65780_)
                  (let ((__tmp66931
                         (let ((__tmp66932
                                (let ()
                                  (declare (not safe))
                                  (cons _e65780_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp66932))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66931))))
            (if (macro-permission-denied-exception? _exn65778_)
                (macro-permission-denied-exception-arguments _exn65778_)
                (let ((__tmp66929
                       (let ((__tmp66930
                              (let ()
                                (declare (not safe))
                                (cons _exn65778_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp66930))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66929))))))
    (define permission-denied-exception-procedure
      (lambda (_exn65772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65772_))
            (let ((_e65775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65772_ 'exception))))
              (if (macro-permission-denied-exception? _e65775_)
                  (macro-permission-denied-exception-procedure _e65775_)
                  (let ((__tmp66935
                         (let ((__tmp66936
                                (let ()
                                  (declare (not safe))
                                  (cons _e65775_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp66936))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66935))))
            (if (macro-permission-denied-exception? _exn65772_)
                (macro-permission-denied-exception-procedure _exn65772_)
                (let ((__tmp66933
                       (let ((__tmp66934
                              (let ()
                                (declare (not safe))
                                (cons _exn65772_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp66934))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66933))))))
    (define range-exception?
      (lambda (_exn65768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65768_))
            (let ((_e65770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65768_ 'exception))))
              (macro-range-exception? _e65770_))
            (macro-range-exception? _exn65768_))))
    (define range-exception-arg-id
      (lambda (_exn65764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65764_))
            (let ((_e65766_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65764_ 'exception))))
              (if (macro-range-exception? _e65766_)
                  (macro-range-exception-arg-id _e65766_)
                  (let ((__tmp66939
                         (let ((__tmp66940
                                (let ()
                                  (declare (not safe))
                                  (cons _e65766_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp66940))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66939))))
            (if (macro-range-exception? _exn65764_)
                (macro-range-exception-arg-id _exn65764_)
                (let ((__tmp66937
                       (let ((__tmp66938
                              (let ()
                                (declare (not safe))
                                (cons _exn65764_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp66938))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66937))))))
    (define range-exception-arguments
      (lambda (_exn65760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65760_))
            (let ((_e65762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65760_ 'exception))))
              (if (macro-range-exception? _e65762_)
                  (macro-range-exception-arguments _e65762_)
                  (let ((__tmp66943
                         (let ((__tmp66944
                                (let ()
                                  (declare (not safe))
                                  (cons _e65762_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp66944))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66943))))
            (if (macro-range-exception? _exn65760_)
                (macro-range-exception-arguments _exn65760_)
                (let ((__tmp66941
                       (let ((__tmp66942
                              (let ()
                                (declare (not safe))
                                (cons _exn65760_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp66942))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66941))))))
    (define range-exception-procedure
      (lambda (_exn65754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65754_))
            (let ((_e65757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65754_ 'exception))))
              (if (macro-range-exception? _e65757_)
                  (macro-range-exception-procedure _e65757_)
                  (let ((__tmp66947
                         (let ((__tmp66948
                                (let ()
                                  (declare (not safe))
                                  (cons _e65757_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp66948))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66947))))
            (if (macro-range-exception? _exn65754_)
                (macro-range-exception-procedure _exn65754_)
                (let ((__tmp66945
                       (let ((__tmp66946
                              (let ()
                                (declare (not safe))
                                (cons _exn65754_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp66946))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66945))))))
    (define rpc-remote-error-exception?
      (lambda (_exn65750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65750_))
            (let ((_e65752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65750_ 'exception))))
              (macro-rpc-remote-error-exception? _e65752_))
            (macro-rpc-remote-error-exception? _exn65750_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn65746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65746_))
            (let ((_e65748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65746_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65748_)
                  (macro-rpc-remote-error-exception-arguments _e65748_)
                  (let ((__tmp66951
                         (let ((__tmp66952
                                (let ()
                                  (declare (not safe))
                                  (cons _e65748_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp66952))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66951))))
            (if (macro-rpc-remote-error-exception? _exn65746_)
                (macro-rpc-remote-error-exception-arguments _exn65746_)
                (let ((__tmp66949
                       (let ((__tmp66950
                              (let ()
                                (declare (not safe))
                                (cons _exn65746_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp66950))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66949))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn65742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65742_))
            (let ((_e65744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65742_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65744_)
                  (macro-rpc-remote-error-exception-message _e65744_)
                  (let ((__tmp66955
                         (let ((__tmp66956
                                (let ()
                                  (declare (not safe))
                                  (cons _e65744_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp66956))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66955))))
            (if (macro-rpc-remote-error-exception? _exn65742_)
                (macro-rpc-remote-error-exception-message _exn65742_)
                (let ((__tmp66953
                       (let ((__tmp66954
                              (let ()
                                (declare (not safe))
                                (cons _exn65742_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp66954))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66953))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65736_))
            (let ((_e65739_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65736_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65739_)
                  (macro-rpc-remote-error-exception-procedure _e65739_)
                  (let ((__tmp66959
                         (let ((__tmp66960
                                (let ()
                                  (declare (not safe))
                                  (cons _e65739_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp66960))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66959))))
            (if (macro-rpc-remote-error-exception? _exn65736_)
                (macro-rpc-remote-error-exception-procedure _exn65736_)
                (let ((__tmp66957
                       (let ((__tmp66958
                              (let ()
                                (declare (not safe))
                                (cons _exn65736_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp66958))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66957))))))
    (define scheduler-exception?
      (lambda (_exn65732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65732_))
            (let ((_e65734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65732_ 'exception))))
              (macro-scheduler-exception? _e65734_))
            (macro-scheduler-exception? _exn65732_))))
    (define scheduler-exception-reason
      (lambda (_exn65726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65726_))
            (let ((_e65729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65726_ 'exception))))
              (if (macro-scheduler-exception? _e65729_)
                  (macro-scheduler-exception-reason _e65729_)
                  (let ((__tmp66963
                         (let ((__tmp66964
                                (let ()
                                  (declare (not safe))
                                  (cons _e65729_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp66964))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp66963))))
            (if (macro-scheduler-exception? _exn65726_)
                (macro-scheduler-exception-reason _exn65726_)
                (let ((__tmp66961
                       (let ((__tmp66962
                              (let ()
                                (declare (not safe))
                                (cons _exn65726_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp66962))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp66961))))))
    (define sfun-conversion-exception?
      (lambda (_exn65722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65722_))
            (let ((_e65724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65722_ 'exception))))
              (macro-sfun-conversion-exception? _e65724_))
            (macro-sfun-conversion-exception? _exn65722_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65718_))
            (let ((_e65720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65718_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65720_)
                  (macro-sfun-conversion-exception-arguments _e65720_)
                  (let ((__tmp66967
                         (let ((__tmp66968
                                (let ()
                                  (declare (not safe))
                                  (cons _e65720_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp66968))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66967))))
            (if (macro-sfun-conversion-exception? _exn65718_)
                (macro-sfun-conversion-exception-arguments _exn65718_)
                (let ((__tmp66965
                       (let ((__tmp66966
                              (let ()
                                (declare (not safe))
                                (cons _exn65718_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp66966))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66965))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65714_))
            (let ((_e65716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65714_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65716_)
                  (macro-sfun-conversion-exception-code _e65716_)
                  (let ((__tmp66971
                         (let ((__tmp66972
                                (let ()
                                  (declare (not safe))
                                  (cons _e65716_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp66972))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66971))))
            (if (macro-sfun-conversion-exception? _exn65714_)
                (macro-sfun-conversion-exception-code _exn65714_)
                (let ((__tmp66969
                       (let ((__tmp66970
                              (let ()
                                (declare (not safe))
                                (cons _exn65714_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp66970))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66969))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65710_))
            (let ((_e65712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65710_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65712_)
                  (macro-sfun-conversion-exception-message _e65712_)
                  (let ((__tmp66975
                         (let ((__tmp66976
                                (let ()
                                  (declare (not safe))
                                  (cons _e65712_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp66976))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66975))))
            (if (macro-sfun-conversion-exception? _exn65710_)
                (macro-sfun-conversion-exception-message _exn65710_)
                (let ((__tmp66973
                       (let ((__tmp66974
                              (let ()
                                (declare (not safe))
                                (cons _exn65710_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp66974))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66973))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65704_))
            (let ((_e65707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65704_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65707_)
                  (macro-sfun-conversion-exception-procedure _e65707_)
                  (let ((__tmp66979
                         (let ((__tmp66980
                                (let ()
                                  (declare (not safe))
                                  (cons _e65707_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp66980))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66979))))
            (if (macro-sfun-conversion-exception? _exn65704_)
                (macro-sfun-conversion-exception-procedure _exn65704_)
                (let ((__tmp66977
                       (let ((__tmp66978
                              (let ()
                                (declare (not safe))
                                (cons _exn65704_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp66978))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66977))))))
    (define stack-overflow-exception?
      (lambda (_exn65698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65698_))
            (let ((_e65701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65698_ 'exception))))
              (macro-stack-overflow-exception? _e65701_))
            (macro-stack-overflow-exception? _exn65698_))))
    (define started-thread-exception?
      (lambda (_exn65694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65694_))
            (let ((_e65696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65694_ 'exception))))
              (macro-started-thread-exception? _e65696_))
            (macro-started-thread-exception? _exn65694_))))
    (define started-thread-exception-arguments
      (lambda (_exn65690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65690_))
            (let ((_e65692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65690_ 'exception))))
              (if (macro-started-thread-exception? _e65692_)
                  (macro-started-thread-exception-arguments _e65692_)
                  (let ((__tmp66983
                         (let ((__tmp66984
                                (let ()
                                  (declare (not safe))
                                  (cons _e65692_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp66984))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66983))))
            (if (macro-started-thread-exception? _exn65690_)
                (macro-started-thread-exception-arguments _exn65690_)
                (let ((__tmp66981
                       (let ((__tmp66982
                              (let ()
                                (declare (not safe))
                                (cons _exn65690_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp66982))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66981))))))
    (define started-thread-exception-procedure
      (lambda (_exn65684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65684_))
            (let ((_e65687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65684_ 'exception))))
              (if (macro-started-thread-exception? _e65687_)
                  (macro-started-thread-exception-procedure _e65687_)
                  (let ((__tmp66987
                         (let ((__tmp66988
                                (let ()
                                  (declare (not safe))
                                  (cons _e65687_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp66988))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66987))))
            (if (macro-started-thread-exception? _exn65684_)
                (macro-started-thread-exception-procedure _exn65684_)
                (let ((__tmp66985
                       (let ((__tmp66986
                              (let ()
                                (declare (not safe))
                                (cons _exn65684_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp66986))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66985))))))
    (define terminated-thread-exception?
      (lambda (_exn65680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65680_))
            (let ((_e65682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65680_ 'exception))))
              (macro-terminated-thread-exception? _e65682_))
            (macro-terminated-thread-exception? _exn65680_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65676_))
            (let ((_e65678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65676_ 'exception))))
              (if (macro-terminated-thread-exception? _e65678_)
                  (macro-terminated-thread-exception-arguments _e65678_)
                  (let ((__tmp66991
                         (let ((__tmp66992
                                (let ()
                                  (declare (not safe))
                                  (cons _e65678_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp66992))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66991))))
            (if (macro-terminated-thread-exception? _exn65676_)
                (macro-terminated-thread-exception-arguments _exn65676_)
                (let ((__tmp66989
                       (let ((__tmp66990
                              (let ()
                                (declare (not safe))
                                (cons _exn65676_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp66990))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66989))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65670_))
            (let ((_e65673_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65670_ 'exception))))
              (if (macro-terminated-thread-exception? _e65673_)
                  (macro-terminated-thread-exception-procedure _e65673_)
                  (let ((__tmp66995
                         (let ((__tmp66996
                                (let ()
                                  (declare (not safe))
                                  (cons _e65673_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp66996))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66995))))
            (if (macro-terminated-thread-exception? _exn65670_)
                (macro-terminated-thread-exception-procedure _exn65670_)
                (let ((__tmp66993
                       (let ((__tmp66994
                              (let ()
                                (declare (not safe))
                                (cons _exn65670_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp66994))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66993))))))
    (define type-exception?
      (lambda (_exn65666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65666_))
            (let ((_e65668_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65666_ 'exception))))
              (macro-type-exception? _e65668_))
            (macro-type-exception? _exn65666_))))
    (define type-exception-arg-id
      (lambda (_exn65662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65662_))
            (let ((_e65664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65662_ 'exception))))
              (if (macro-type-exception? _e65664_)
                  (macro-type-exception-arg-id _e65664_)
                  (let ((__tmp66999
                         (let ((__tmp67000
                                (let ()
                                  (declare (not safe))
                                  (cons _e65664_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp67000))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66999))))
            (if (macro-type-exception? _exn65662_)
                (macro-type-exception-arg-id _exn65662_)
                (let ((__tmp66997
                       (let ((__tmp66998
                              (let ()
                                (declare (not safe))
                                (cons _exn65662_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp66998))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66997))))))
    (define type-exception-arguments
      (lambda (_exn65658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65658_))
            (let ((_e65660_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65658_ 'exception))))
              (if (macro-type-exception? _e65660_)
                  (macro-type-exception-arguments _e65660_)
                  (let ((__tmp67003
                         (let ((__tmp67004
                                (let ()
                                  (declare (not safe))
                                  (cons _e65660_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp67004))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67003))))
            (if (macro-type-exception? _exn65658_)
                (macro-type-exception-arguments _exn65658_)
                (let ((__tmp67001
                       (let ((__tmp67002
                              (let ()
                                (declare (not safe))
                                (cons _exn65658_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp67002))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67001))))))
    (define type-exception-procedure
      (lambda (_exn65654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65654_))
            (let ((_e65656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65654_ 'exception))))
              (if (macro-type-exception? _e65656_)
                  (macro-type-exception-procedure _e65656_)
                  (let ((__tmp67007
                         (let ((__tmp67008
                                (let ()
                                  (declare (not safe))
                                  (cons _e65656_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp67008))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67007))))
            (if (macro-type-exception? _exn65654_)
                (macro-type-exception-procedure _exn65654_)
                (let ((__tmp67005
                       (let ((__tmp67006
                              (let ()
                                (declare (not safe))
                                (cons _exn65654_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp67006))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67005))))))
    (define type-exception-type-id
      (lambda (_exn65648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65648_))
            (let ((_e65651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65648_ 'exception))))
              (if (macro-type-exception? _e65651_)
                  (macro-type-exception-type-id _e65651_)
                  (let ((__tmp67011
                         (let ((__tmp67012
                                (let ()
                                  (declare (not safe))
                                  (cons _e65651_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp67012))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67011))))
            (if (macro-type-exception? _exn65648_)
                (macro-type-exception-type-id _exn65648_)
                (let ((__tmp67009
                       (let ((__tmp67010
                              (let ()
                                (declare (not safe))
                                (cons _exn65648_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp67010))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67009))))))
    (define unbound-global-exception?
      (lambda (_exn65644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65644_))
            (let ((_e65646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65644_ 'exception))))
              (macro-unbound-global-exception? _e65646_))
            (macro-unbound-global-exception? _exn65644_))))
    (define unbound-global-exception-code
      (lambda (_exn65640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65640_))
            (let ((_e65642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65640_ 'exception))))
              (if (macro-unbound-global-exception? _e65642_)
                  (macro-unbound-global-exception-code _e65642_)
                  (let ((__tmp67015
                         (let ((__tmp67016
                                (let ()
                                  (declare (not safe))
                                  (cons _e65642_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp67016))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67015))))
            (if (macro-unbound-global-exception? _exn65640_)
                (macro-unbound-global-exception-code _exn65640_)
                (let ((__tmp67013
                       (let ((__tmp67014
                              (let ()
                                (declare (not safe))
                                (cons _exn65640_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp67014))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67013))))))
    (define unbound-global-exception-rte
      (lambda (_exn65636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65636_))
            (let ((_e65638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65636_ 'exception))))
              (if (macro-unbound-global-exception? _e65638_)
                  (macro-unbound-global-exception-rte _e65638_)
                  (let ((__tmp67019
                         (let ((__tmp67020
                                (let ()
                                  (declare (not safe))
                                  (cons _e65638_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp67020))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67019))))
            (if (macro-unbound-global-exception? _exn65636_)
                (macro-unbound-global-exception-rte _exn65636_)
                (let ((__tmp67017
                       (let ((__tmp67018
                              (let ()
                                (declare (not safe))
                                (cons _exn65636_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp67018))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67017))))))
    (define unbound-global-exception-variable
      (lambda (_exn65630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65630_))
            (let ((_e65633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65630_ 'exception))))
              (if (macro-unbound-global-exception? _e65633_)
                  (macro-unbound-global-exception-variable _e65633_)
                  (let ((__tmp67023
                         (let ((__tmp67024
                                (let ()
                                  (declare (not safe))
                                  (cons _e65633_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp67024))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67023))))
            (if (macro-unbound-global-exception? _exn65630_)
                (macro-unbound-global-exception-variable _exn65630_)
                (let ((__tmp67021
                       (let ((__tmp67022
                              (let ()
                                (declare (not safe))
                                (cons _exn65630_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp67022))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67021))))))
    (define unbound-key-exception?
      (lambda (_exn65626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65626_))
            (let ((_e65628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65626_ 'exception))))
              (macro-unbound-key-exception? _e65628_))
            (macro-unbound-key-exception? _exn65626_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65622_))
            (let ((_e65624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65622_ 'exception))))
              (if (macro-unbound-key-exception? _e65624_)
                  (macro-unbound-key-exception-arguments _e65624_)
                  (let ((__tmp67027
                         (let ((__tmp67028
                                (let ()
                                  (declare (not safe))
                                  (cons _e65624_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp67028))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67027))))
            (if (macro-unbound-key-exception? _exn65622_)
                (macro-unbound-key-exception-arguments _exn65622_)
                (let ((__tmp67025
                       (let ((__tmp67026
                              (let ()
                                (declare (not safe))
                                (cons _exn65622_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp67026))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67025))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65616_))
            (let ((_e65619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65616_ 'exception))))
              (if (macro-unbound-key-exception? _e65619_)
                  (macro-unbound-key-exception-procedure _e65619_)
                  (let ((__tmp67031
                         (let ((__tmp67032
                                (let ()
                                  (declare (not safe))
                                  (cons _e65619_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp67032))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67031))))
            (if (macro-unbound-key-exception? _exn65616_)
                (macro-unbound-key-exception-procedure _exn65616_)
                (let ((__tmp67029
                       (let ((__tmp67030
                              (let ()
                                (declare (not safe))
                                (cons _exn65616_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp67030))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67029))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65612_))
            (let ((_e65614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65612_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65614_))
            (macro-unbound-os-environment-variable-exception? _exn65612_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65608_))
            (let ((_e65610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65608_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65610_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65610_)
                  (let ((__tmp67035
                         (let ((__tmp67036
                                (let ()
                                  (declare (not safe))
                                  (cons _e65610_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp67036))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67035))))
            (if (macro-unbound-os-environment-variable-exception? _exn65608_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65608_)
                (let ((__tmp67033
                       (let ((__tmp67034
                              (let ()
                                (declare (not safe))
                                (cons _exn65608_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp67034))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67033))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn65602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65602_))
            (let ((_e65605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65602_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65605_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e65605_)
                  (let ((__tmp67039
                         (let ((__tmp67040
                                (let ()
                                  (declare (not safe))
                                  (cons _e65605_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp67040))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67039))))
            (if (macro-unbound-os-environment-variable-exception? _exn65602_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn65602_)
                (let ((__tmp67037
                       (let ((__tmp67038
                              (let ()
                                (declare (not safe))
                                (cons _exn65602_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp67038))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67037))))))
    (define unbound-serial-number-exception?
      (lambda (_exn65598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65598_))
            (let ((_e65600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65598_ 'exception))))
              (macro-unbound-serial-number-exception? _e65600_))
            (macro-unbound-serial-number-exception? _exn65598_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn65594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65594_))
            (let ((_e65596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65594_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65596_)
                  (macro-unbound-serial-number-exception-arguments _e65596_)
                  (let ((__tmp67043
                         (let ((__tmp67044
                                (let ()
                                  (declare (not safe))
                                  (cons _e65596_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp67044))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67043))))
            (if (macro-unbound-serial-number-exception? _exn65594_)
                (macro-unbound-serial-number-exception-arguments _exn65594_)
                (let ((__tmp67041
                       (let ((__tmp67042
                              (let ()
                                (declare (not safe))
                                (cons _exn65594_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp67042))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67041))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn65588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65588_))
            (let ((_e65591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65588_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65591_)
                  (macro-unbound-serial-number-exception-procedure _e65591_)
                  (let ((__tmp67047
                         (let ((__tmp67048
                                (let ()
                                  (declare (not safe))
                                  (cons _e65591_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp67048))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67047))))
            (if (macro-unbound-serial-number-exception? _exn65588_)
                (macro-unbound-serial-number-exception-procedure _exn65588_)
                (let ((__tmp67045
                       (let ((__tmp67046
                              (let ()
                                (declare (not safe))
                                (cons _exn65588_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp67046))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67045))))))
    (define uncaught-exception?
      (lambda (_exn65584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65584_))
            (let ((_e65586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65584_ 'exception))))
              (macro-uncaught-exception? _e65586_))
            (macro-uncaught-exception? _exn65584_))))
    (define uncaught-exception-arguments
      (lambda (_exn65580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65580_))
            (let ((_e65582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65580_ 'exception))))
              (if (macro-uncaught-exception? _e65582_)
                  (macro-uncaught-exception-arguments _e65582_)
                  (let ((__tmp67051
                         (let ((__tmp67052
                                (let ()
                                  (declare (not safe))
                                  (cons _e65582_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp67052))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67051))))
            (if (macro-uncaught-exception? _exn65580_)
                (macro-uncaught-exception-arguments _exn65580_)
                (let ((__tmp67049
                       (let ((__tmp67050
                              (let ()
                                (declare (not safe))
                                (cons _exn65580_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp67050))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67049))))))
    (define uncaught-exception-procedure
      (lambda (_exn65576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65576_))
            (let ((_e65578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65576_ 'exception))))
              (if (macro-uncaught-exception? _e65578_)
                  (macro-uncaught-exception-procedure _e65578_)
                  (let ((__tmp67055
                         (let ((__tmp67056
                                (let ()
                                  (declare (not safe))
                                  (cons _e65578_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp67056))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67055))))
            (if (macro-uncaught-exception? _exn65576_)
                (macro-uncaught-exception-procedure _exn65576_)
                (let ((__tmp67053
                       (let ((__tmp67054
                              (let ()
                                (declare (not safe))
                                (cons _exn65576_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp67054))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67053))))))
    (define uncaught-exception-reason
      (lambda (_exn65570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65570_))
            (let ((_e65573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65570_ 'exception))))
              (if (macro-uncaught-exception? _e65573_)
                  (macro-uncaught-exception-reason _e65573_)
                  (let ((__tmp67059
                         (let ((__tmp67060
                                (let ()
                                  (declare (not safe))
                                  (cons _e65573_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp67060))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67059))))
            (if (macro-uncaught-exception? _exn65570_)
                (macro-uncaught-exception-reason _exn65570_)
                (let ((__tmp67057
                       (let ((__tmp67058
                              (let ()
                                (declare (not safe))
                                (cons _exn65570_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp67058))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67057))))))
    (define uninitialized-thread-exception?
      (lambda (_exn65566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65566_))
            (let ((_e65568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65566_ 'exception))))
              (macro-uninitialized-thread-exception? _e65568_))
            (macro-uninitialized-thread-exception? _exn65566_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn65562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65562_))
            (let ((_e65564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65562_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65564_)
                  (macro-uninitialized-thread-exception-arguments _e65564_)
                  (let ((__tmp67063
                         (let ((__tmp67064
                                (let ()
                                  (declare (not safe))
                                  (cons _e65564_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp67064))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67063))))
            (if (macro-uninitialized-thread-exception? _exn65562_)
                (macro-uninitialized-thread-exception-arguments _exn65562_)
                (let ((__tmp67061
                       (let ((__tmp67062
                              (let ()
                                (declare (not safe))
                                (cons _exn65562_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp67062))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67061))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn65556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65556_))
            (let ((_e65559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65556_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65559_)
                  (macro-uninitialized-thread-exception-procedure _e65559_)
                  (let ((__tmp67067
                         (let ((__tmp67068
                                (let ()
                                  (declare (not safe))
                                  (cons _e65559_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp67068))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67067))))
            (if (macro-uninitialized-thread-exception? _exn65556_)
                (macro-uninitialized-thread-exception-procedure _exn65556_)
                (let ((__tmp67065
                       (let ((__tmp67066
                              (let ()
                                (declare (not safe))
                                (cons _exn65556_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp67066))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67065))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn65552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65552_))
            (let ((_e65554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65552_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e65554_))
            (macro-unknown-keyword-argument-exception? _exn65552_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn65548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65548_))
            (let ((_e65550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65548_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65550_)
                  (macro-unknown-keyword-argument-exception-arguments _e65550_)
                  (let ((__tmp67071
                         (let ((__tmp67072
                                (let ()
                                  (declare (not safe))
                                  (cons _e65550_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp67072))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67071))))
            (if (macro-unknown-keyword-argument-exception? _exn65548_)
                (macro-unknown-keyword-argument-exception-arguments _exn65548_)
                (let ((__tmp67069
                       (let ((__tmp67070
                              (let ()
                                (declare (not safe))
                                (cons _exn65548_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp67070))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67069))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn65542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65542_))
            (let ((_e65545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65542_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65545_)
                  (macro-unknown-keyword-argument-exception-procedure _e65545_)
                  (let ((__tmp67075
                         (let ((__tmp67076
                                (let ()
                                  (declare (not safe))
                                  (cons _e65545_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp67076))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67075))))
            (if (macro-unknown-keyword-argument-exception? _exn65542_)
                (macro-unknown-keyword-argument-exception-procedure _exn65542_)
                (let ((__tmp67073
                       (let ((__tmp67074
                              (let ()
                                (declare (not safe))
                                (cons _exn65542_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp67074))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67073))))))
    (define unterminated-process-exception?
      (lambda (_exn65538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65538_))
            (let ((_e65540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65538_ 'exception))))
              (macro-unterminated-process-exception? _e65540_))
            (macro-unterminated-process-exception? _exn65538_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn65534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65534_))
            (let ((_e65536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65534_ 'exception))))
              (if (macro-unterminated-process-exception? _e65536_)
                  (macro-unterminated-process-exception-arguments _e65536_)
                  (let ((__tmp67079
                         (let ((__tmp67080
                                (let ()
                                  (declare (not safe))
                                  (cons _e65536_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp67080))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67079))))
            (if (macro-unterminated-process-exception? _exn65534_)
                (macro-unterminated-process-exception-arguments _exn65534_)
                (let ((__tmp67077
                       (let ((__tmp67078
                              (let ()
                                (declare (not safe))
                                (cons _exn65534_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp67078))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67077))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn65528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65528_))
            (let ((_e65531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65528_ 'exception))))
              (if (macro-unterminated-process-exception? _e65531_)
                  (macro-unterminated-process-exception-procedure _e65531_)
                  (let ((__tmp67083
                         (let ((__tmp67084
                                (let ()
                                  (declare (not safe))
                                  (cons _e65531_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp67084))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67083))))
            (if (macro-unterminated-process-exception? _exn65528_)
                (macro-unterminated-process-exception-procedure _exn65528_)
                (let ((__tmp67081
                       (let ((__tmp67082
                              (let ()
                                (declare (not safe))
                                (cons _exn65528_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp67082))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67081))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn65524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65524_))
            (let ((_e65526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65524_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e65526_))
            (macro-wrong-number-of-arguments-exception? _exn65524_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn65520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65520_))
            (let ((_e65522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65520_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65522_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e65522_)
                  (let ((__tmp67087
                         (let ((__tmp67088
                                (let ()
                                  (declare (not safe))
                                  (cons _e65522_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp67088))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67087))))
            (if (macro-wrong-number-of-arguments-exception? _exn65520_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn65520_)
                (let ((__tmp67085
                       (let ((__tmp67086
                              (let ()
                                (declare (not safe))
                                (cons _exn65520_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp67086))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67085))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn65514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65514_))
            (let ((_e65517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65514_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65517_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e65517_)
                  (let ((__tmp67091
                         (let ((__tmp67092
                                (let ()
                                  (declare (not safe))
                                  (cons _e65517_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp67092))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67091))))
            (if (macro-wrong-number-of-arguments-exception? _exn65514_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn65514_)
                (let ((__tmp67089
                       (let ((__tmp67090
                              (let ()
                                (declare (not safe))
                                (cons _exn65514_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp67090))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67089))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn65510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65510_))
            (let ((_e65512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65510_ 'exception))))
              (macro-wrong-number-of-values-exception? _e65512_))
            (macro-wrong-number-of-values-exception? _exn65510_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn65506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65506_))
            (let ((_e65508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65506_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65508_)
                  (macro-wrong-number-of-values-exception-code _e65508_)
                  (let ((__tmp67095
                         (let ((__tmp67096
                                (let ()
                                  (declare (not safe))
                                  (cons _e65508_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp67096))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67095))))
            (if (macro-wrong-number-of-values-exception? _exn65506_)
                (macro-wrong-number-of-values-exception-code _exn65506_)
                (let ((__tmp67093
                       (let ((__tmp67094
                              (let ()
                                (declare (not safe))
                                (cons _exn65506_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp67094))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67093))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn65502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65502_))
            (let ((_e65504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65502_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65504_)
                  (macro-wrong-number-of-values-exception-rte _e65504_)
                  (let ((__tmp67099
                         (let ((__tmp67100
                                (let ()
                                  (declare (not safe))
                                  (cons _e65504_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp67100))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67099))))
            (if (macro-wrong-number-of-values-exception? _exn65502_)
                (macro-wrong-number-of-values-exception-rte _exn65502_)
                (let ((__tmp67097
                       (let ((__tmp67098
                              (let ()
                                (declare (not safe))
                                (cons _exn65502_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp67098))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67097))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn65496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65496_))
            (let ((_e65499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65496_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65499_)
                  (macro-wrong-number-of-values-exception-vals _e65499_)
                  (let ((__tmp67103
                         (let ((__tmp67104
                                (let ()
                                  (declare (not safe))
                                  (cons _e65499_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp67104))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67103))))
            (if (macro-wrong-number-of-values-exception? _exn65496_)
                (macro-wrong-number-of-values-exception-vals _exn65496_)
                (let ((__tmp67101
                       (let ((__tmp67102
                              (let ()
                                (declare (not safe))
                                (cons _exn65496_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp67102))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67101))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn65490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65490_))
            (let ((_e65493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65490_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e65493_))
            (macro-wrong-processor-c-return-exception? _exn65490_))))))
