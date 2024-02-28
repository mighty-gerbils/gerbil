(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1709125254)
  (begin
    (define Exception::t
      (let ((__tmp66678 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66678
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66646_ (apply make-instance Exception::t _$args66646_)))
    (define StackTrace::t
      (let ((__tmp66679 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66679
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66643_ (apply make-instance StackTrace::t _$args66643_)))
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
      (let ((__tmp66680 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66680
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66640_ (apply make-instance Error::t _$args66640_)))
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
      (let ((__tmp66681 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66681
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66637_
        (apply make-instance RuntimeException::t _$args66637_)))
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
      (lambda (_exn66632_ _continue66633_)
        (let ((_exn66635_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66632_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66635_ _continue66633_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66628_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66628_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66628_ 'continuation))
                '#!void
                (let ((__tmp66682
                       (lambda (_cont66630_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66628_
                            'continuation
                            _cont66630_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66682)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66628_))))
    (define error
      (lambda (_message66625_ . _irritants66626_)
        (raise (let ((__obj66672
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66672
                  _message66625_
                  'irritants:
                  _irritants66626_)
                 __obj66672))))
    (define with-exception-handler
      (lambda (_handler66618_ _thunk66619_)
        (if (let () (declare (not safe)) (procedure? _handler66618_))
            '#!void
            (raise (let ((__obj66673
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66673
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66618_ '())))
                     __obj66673)))
        (if (let () (declare (not safe)) (procedure? _thunk66619_))
            '#!void
            (raise (let ((__obj66674
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66674
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66619_ '())))
                     __obj66674)))
        (let ((__tmp66683
               (lambda (_exn66621_)
                 (let ((_exn66623_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66621_))))
                   (_handler66618_ _exn66623_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66683 _thunk66619_))))
    (define with-catch
      (lambda (_handler66611_ _thunk66612_)
        (if (let () (declare (not safe)) (procedure? _handler66611_))
            '#!void
            (raise (let ((__obj66675
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66675
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66611_ '())))
                     __obj66675)))
        (if (let () (declare (not safe)) (procedure? _thunk66612_))
            '#!void
            (raise (let ((__obj66676
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66676
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66612_ '())))
                     __obj66676)))
        (let ((__tmp66684
               (lambda (_cont66614_)
                 (with-exception-handler
                  (lambda (_exn66616_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont66614_
                       _handler66611_
                       _exn66616_)))
                  _thunk66612_))))
          (declare (not safe))
          (##continuation-capture __tmp66684))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66602_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66602_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66602_)))
            _exn66602_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66602_))
                _exn66602_
                (if (macro-exception? _exn66602_)
                    (let ((_rte66607_
                           (let ((__obj66677
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66677
                                _exn66602_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66677)))
                      (let ((__tmp66685
                             (lambda (_cont66609_)
                               (let ((__tmp66686
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66609_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66607_
                                  'continuation
                                  __tmp66686)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66685))
                      _rte66607_)
                    _exn66602_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj66597_)
        (let ((_$e66599_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj66597_))))
          (if _$e66599_
              _$e66599_
              (let () (declare (not safe)) (error-exception? _obj66597_))))))
    (define error-message
      (lambda (_obj66595_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66595_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66595_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj66595_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj66595_))
                '#f))))
    (define error-irritants
      (lambda (_obj66593_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66593_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66593_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj66593_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj66593_))
                '#f))))
    (define error-trace
      (lambda (_obj66591_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66591_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66591_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e66573_ _port66574_)
        (let ((_$e66576_
               (let ()
                 (declare (not safe))
                 (method-ref _e66573_ 'display-exception))))
          (if _$e66576_
              ((lambda (_f66579_) (_f66579_ _e66573_ _port66574_)) _$e66576_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e66573_ _port66574_))))))
    (define display-exception__0
      (lambda (_e66584_)
        (let ((_port66586_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e66584_ _port66586_))))
    (define display-exception
      (lambda _g66688_
        (let ((_g66687_ (let () (declare (not safe)) (##length _g66688_))))
          (cond ((let () (declare (not safe)) (##fx= _g66687_ 1))
                 (apply (lambda (_e66584_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e66584_)))
                        _g66688_))
                ((let () (declare (not safe)) (##fx= _g66687_ 2))
                 (apply (lambda (_e66588_ _port66589_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e66588_ _port66589_)))
                        _g66688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66688_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self66562_ _message66563_ . _rest66564_)
        (let ((_message66570_
               (if (let () (declare (not safe)) (string? _message66563_))
                   _message66563_
                   (call-with-output-string
                    '""
                    (lambda (_g6656566567_)
                      (display _message66563_ _g6656566567_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self66562_ 'message _message66570_))
          (apply class-instance-init! _self66562_ _rest66564_))))
    (define Error:::init!::specialize
      (lambda (__klass66648 __method-table66649)
        (let ((__message66650
               (let ((__slot66651
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66648 'message))))
                 (if __slot66651
                     __slot66651
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66562_ _message66563_ . _rest66564_)
            (let ((_message66570_
                   (if (let () (declare (not safe)) (string? _message66563_))
                       _message66563_
                       (call-with-output-string
                        '""
                        (lambda (_g6656566567_)
                          (display _message66563_ _g6656566567_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self66562_
                 _message66570_
                 __message66650
                 __klass66648
                 '#f))
              (apply class-instance-init! _self66562_ _rest66564_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self66420_ _port66421_)
        (let ((_tmp-port66423_ (open-output-string))
              (_display-error-newline66424_
               (> (output-port-column _port66421_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66423_))
          (let ((__tmp66689
                 (lambda ()
                   (if _display-error-newline66424_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e66427_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66420_ 'where))))
                     (if _$e66427_ (display _$e66427_) (display '"?")))
                   (let ((__tmp66690
                          (let ((__tmp66691 (object-type _self66420_)))
                            (declare (not safe))
                            (##type-name __tmp66691))))
                     (declare (not safe))
                     (display* '" [" __tmp66690 '"]: "))
                   (let ((__tmp66692
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66420_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66692))
                   (let ((_irritants66430_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66420_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants66430_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj66432_)
                              (write _obj66432_)
                              (write-char '#\space))
                            _irritants66430_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self66420_))
                            (dump-stack-trace?))
                       (let ((_cont6643366435_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self66420_
                                 'continuation))))
                         (if _cont6643366435_
                             (let ((_cont66438_ _cont6643366435_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont66438_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66689
             current-output-port
             _tmp-port66423_))
          (let ((__tmp66693 (get-output-string _tmp-port66423_)))
            (declare (not safe))
            (##write-string __tmp66693 _port66421_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66652 __method-table66653)
        (let ((__continuation66654
               (let ((__slot66658
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66652 'continuation))))
                 (if __slot66658
                     __slot66658
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where66655
               (let ((__slot66659
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66652 'where))))
                 (if __slot66659
                     __slot66659
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants66656
               (let ((__slot66660
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66652 'irritants))))
                 (if __slot66660
                     __slot66660
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message66657
               (let ((__slot66661
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66652 'message))))
                 (if __slot66661
                     __slot66661
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66420_ _port66421_)
            (let ((_tmp-port66423_ (open-output-string))
                  (_display-error-newline66424_
                   (> (output-port-column _port66421_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66423_))
              (let ((__tmp66694
                     (lambda ()
                       (if _display-error-newline66424_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e66427_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66420_
                                 __where66655
                                 __klass66652
                                 '#f))))
                         (if _$e66427_ (display _$e66427_) (display '"?")))
                       (let ((__tmp66695
                              (let ((__tmp66696 (object-type _self66420_)))
                                (declare (not safe))
                                (##type-name __tmp66696))))
                         (declare (not safe))
                         (display* '" [" __tmp66695 '"]: "))
                       (let ((__tmp66697
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66420_
                                 __message66657
                                 __klass66652
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66697))
                       (let ((_irritants66430_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66420_
                                 __irritants66656
                                 __klass66652
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants66430_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj66432_)
                                  (write _obj66432_)
                                  (write-char '#\space))
                                _irritants66430_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self66420_))
                                (dump-stack-trace?))
                           (let ((_cont6643366435_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self66420_
                                     __continuation66654
                                     __klass66652
                                     '#f))))
                             (if _cont6643366435_
                                 (let ((_cont66438_ _cont6643366435_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont66438_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66694
                 current-output-port
                 _tmp-port66423_))
              (let ((__tmp66698 (get-output-string _tmp-port66423_)))
                (declare (not safe))
                (##write-string __tmp66698 _port66421_)))))))
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
      (lambda (_self66287_ _port66288_)
        (let ((_tmp-port66290_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66290_))
          (let ((__tmp66699
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self66287_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66699 _tmp-port66290_))
          (if (dump-stack-trace?)
              (let ((_cont6629166293_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self66287_ 'continuation))))
                (if _cont6629166293_
                    (let ((_cont66296_ _cont6629166293_))
                      (display '"--- continuation backtrace:" _tmp-port66290_)
                      (newline _tmp-port66290_)
                      (display-continuation-backtrace
                       _cont66296_
                       _tmp-port66290_))
                    '#f))
              '#!void)
          (let ((__tmp66700 (get-output-string _tmp-port66290_)))
            (declare (not safe))
            (##write-string __tmp66700 _port66288_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66662 __method-table66663)
        (let ((__continuation66664
               (let ((__slot66666
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66662 'continuation))))
                 (if __slot66666
                     __slot66666
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception66665
               (let ((__slot66667
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66662 'exception))))
                 (if __slot66667
                     __slot66667
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self66287_ _port66288_)
            (let ((_tmp-port66290_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66290_))
              (let ((__tmp66701
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self66287_
                        __exception66665
                        __klass66662
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66701 _tmp-port66290_))
              (if (dump-stack-trace?)
                  (let ((_cont6629166293_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self66287_
                            __continuation66664
                            __klass66662
                            '#f))))
                    (if _cont6629166293_
                        (let ((_cont66296_ _cont6629166293_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port66290_)
                          (newline _tmp-port66290_)
                          (display-continuation-backtrace
                           _cont66296_
                           _tmp-port66290_))
                        '#f))
                  '#!void)
              (let ((__tmp66702 (get-output-string _tmp-port66290_)))
                (declare (not safe))
                (##write-string __tmp66702 _port66288_)))))))
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
      (lambda (_port66159_)
        (if (macro-character-port? _port66159_)
            (let ((_old-width66161_
                   (macro-character-port-output-width _port66159_)))
              (macro-character-port-output-width-set!
               _port66159_
               (lambda (_port66163_) '256))
              _old-width66161_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port66156_ _old-width66157_)
        (if (macro-character-port? _port66156_)
            (macro-character-port-output-width-set!
             _port66156_
             _old-width66157_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e66154_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e66154_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn66148_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66148_))
            (let ((_e66151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66148_ 'exception))))
              (macro-abandoned-mutex-exception? _e66151_))
            (macro-abandoned-mutex-exception? _exn66148_))))
    (define cfun-conversion-exception?
      (lambda (_exn66144_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66144_))
            (let ((_e66146_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66144_ 'exception))))
              (macro-cfun-conversion-exception? _e66146_))
            (macro-cfun-conversion-exception? _exn66144_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn66140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66140_))
            (let ((_e66142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66140_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66142_)
                  (macro-cfun-conversion-exception-arguments _e66142_)
                  (let ((__tmp66705
                         (let ((__tmp66706
                                (let ()
                                  (declare (not safe))
                                  (cons _e66142_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66706))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66705))))
            (if (macro-cfun-conversion-exception? _exn66140_)
                (macro-cfun-conversion-exception-arguments _exn66140_)
                (let ((__tmp66703
                       (let ((__tmp66704
                              (let ()
                                (declare (not safe))
                                (cons _exn66140_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66704))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66703))))))
    (define cfun-conversion-exception-code
      (lambda (_exn66136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66136_))
            (let ((_e66138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66136_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66138_)
                  (macro-cfun-conversion-exception-code _e66138_)
                  (let ((__tmp66709
                         (let ((__tmp66710
                                (let ()
                                  (declare (not safe))
                                  (cons _e66138_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66710))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66709))))
            (if (macro-cfun-conversion-exception? _exn66136_)
                (macro-cfun-conversion-exception-code _exn66136_)
                (let ((__tmp66707
                       (let ((__tmp66708
                              (let ()
                                (declare (not safe))
                                (cons _exn66136_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66708))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66707))))))
    (define cfun-conversion-exception-message
      (lambda (_exn66132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66132_))
            (let ((_e66134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66132_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66134_)
                  (macro-cfun-conversion-exception-message _e66134_)
                  (let ((__tmp66713
                         (let ((__tmp66714
                                (let ()
                                  (declare (not safe))
                                  (cons _e66134_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66714))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66713))))
            (if (macro-cfun-conversion-exception? _exn66132_)
                (macro-cfun-conversion-exception-message _exn66132_)
                (let ((__tmp66711
                       (let ((__tmp66712
                              (let ()
                                (declare (not safe))
                                (cons _exn66132_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66712))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66711))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn66126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66126_))
            (let ((_e66129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66126_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66129_)
                  (macro-cfun-conversion-exception-procedure _e66129_)
                  (let ((__tmp66717
                         (let ((__tmp66718
                                (let ()
                                  (declare (not safe))
                                  (cons _e66129_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66718))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66717))))
            (if (macro-cfun-conversion-exception? _exn66126_)
                (macro-cfun-conversion-exception-procedure _exn66126_)
                (let ((__tmp66715
                       (let ((__tmp66716
                              (let ()
                                (declare (not safe))
                                (cons _exn66126_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66716))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66715))))))
    (define datum-parsing-exception?
      (lambda (_exn66122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66122_))
            (let ((_e66124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66122_ 'exception))))
              (macro-datum-parsing-exception? _e66124_))
            (macro-datum-parsing-exception? _exn66122_))))
    (define datum-parsing-exception-kind
      (lambda (_exn66118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66118_))
            (let ((_e66120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66118_ 'exception))))
              (if (macro-datum-parsing-exception? _e66120_)
                  (macro-datum-parsing-exception-kind _e66120_)
                  (let ((__tmp66721
                         (let ((__tmp66722
                                (let ()
                                  (declare (not safe))
                                  (cons _e66120_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66722))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66721))))
            (if (macro-datum-parsing-exception? _exn66118_)
                (macro-datum-parsing-exception-kind _exn66118_)
                (let ((__tmp66719
                       (let ((__tmp66720
                              (let ()
                                (declare (not safe))
                                (cons _exn66118_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66720))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66719))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn66114_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66114_))
            (let ((_e66116_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66114_ 'exception))))
              (if (macro-datum-parsing-exception? _e66116_)
                  (macro-datum-parsing-exception-parameters _e66116_)
                  (let ((__tmp66725
                         (let ((__tmp66726
                                (let ()
                                  (declare (not safe))
                                  (cons _e66116_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66726))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66725))))
            (if (macro-datum-parsing-exception? _exn66114_)
                (macro-datum-parsing-exception-parameters _exn66114_)
                (let ((__tmp66723
                       (let ((__tmp66724
                              (let ()
                                (declare (not safe))
                                (cons _exn66114_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66724))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66723))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn66108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66108_))
            (let ((_e66111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66108_ 'exception))))
              (if (macro-datum-parsing-exception? _e66111_)
                  (macro-datum-parsing-exception-readenv _e66111_)
                  (let ((__tmp66729
                         (let ((__tmp66730
                                (let ()
                                  (declare (not safe))
                                  (cons _e66111_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66730))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66729))))
            (if (macro-datum-parsing-exception? _exn66108_)
                (macro-datum-parsing-exception-readenv _exn66108_)
                (let ((__tmp66727
                       (let ((__tmp66728
                              (let ()
                                (declare (not safe))
                                (cons _exn66108_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66728))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66727))))))
    (define deadlock-exception?
      (lambda (_exn66102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66102_))
            (let ((_e66105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66102_ 'exception))))
              (macro-deadlock-exception? _e66105_))
            (macro-deadlock-exception? _exn66102_))))
    (define divide-by-zero-exception?
      (lambda (_exn66098_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66098_))
            (let ((_e66100_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66098_ 'exception))))
              (macro-divide-by-zero-exception? _e66100_))
            (macro-divide-by-zero-exception? _exn66098_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn66094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66094_))
            (let ((_e66096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66094_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66096_)
                  (macro-divide-by-zero-exception-arguments _e66096_)
                  (let ((__tmp66733
                         (let ((__tmp66734
                                (let ()
                                  (declare (not safe))
                                  (cons _e66096_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp66734))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66733))))
            (if (macro-divide-by-zero-exception? _exn66094_)
                (macro-divide-by-zero-exception-arguments _exn66094_)
                (let ((__tmp66731
                       (let ((__tmp66732
                              (let ()
                                (declare (not safe))
                                (cons _exn66094_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp66732))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66731))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn66088_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66088_))
            (let ((_e66091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66088_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66091_)
                  (macro-divide-by-zero-exception-procedure _e66091_)
                  (let ((__tmp66737
                         (let ((__tmp66738
                                (let ()
                                  (declare (not safe))
                                  (cons _e66091_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp66738))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66737))))
            (if (macro-divide-by-zero-exception? _exn66088_)
                (macro-divide-by-zero-exception-procedure _exn66088_)
                (let ((__tmp66735
                       (let ((__tmp66736
                              (let ()
                                (declare (not safe))
                                (cons _exn66088_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp66736))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66735))))))
    (define error-exception?
      (lambda (_exn66084_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66084_))
            (let ((_e66086_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66084_ 'exception))))
              (macro-error-exception? _e66086_))
            (macro-error-exception? _exn66084_))))
    (define error-exception-message
      (lambda (_exn66080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66080_))
            (let ((_e66082_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66080_ 'exception))))
              (if (macro-error-exception? _e66082_)
                  (macro-error-exception-message _e66082_)
                  (let ((__tmp66741
                         (let ((__tmp66742
                                (let ()
                                  (declare (not safe))
                                  (cons _e66082_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp66742))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66741))))
            (if (macro-error-exception? _exn66080_)
                (macro-error-exception-message _exn66080_)
                (let ((__tmp66739
                       (let ((__tmp66740
                              (let ()
                                (declare (not safe))
                                (cons _exn66080_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp66740))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66739))))))
    (define error-exception-parameters
      (lambda (_exn66074_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66074_))
            (let ((_e66077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66074_ 'exception))))
              (if (macro-error-exception? _e66077_)
                  (macro-error-exception-parameters _e66077_)
                  (let ((__tmp66745
                         (let ((__tmp66746
                                (let ()
                                  (declare (not safe))
                                  (cons _e66077_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp66746))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66745))))
            (if (macro-error-exception? _exn66074_)
                (macro-error-exception-parameters _exn66074_)
                (let ((__tmp66743
                       (let ((__tmp66744
                              (let ()
                                (declare (not safe))
                                (cons _exn66074_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp66744))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66743))))))
    (define expression-parsing-exception?
      (lambda (_exn66070_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66070_))
            (let ((_e66072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66070_ 'exception))))
              (macro-expression-parsing-exception? _e66072_))
            (macro-expression-parsing-exception? _exn66070_))))
    (define expression-parsing-exception-kind
      (lambda (_exn66066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66066_))
            (let ((_e66068_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66066_ 'exception))))
              (if (macro-expression-parsing-exception? _e66068_)
                  (macro-expression-parsing-exception-kind _e66068_)
                  (let ((__tmp66749
                         (let ((__tmp66750
                                (let ()
                                  (declare (not safe))
                                  (cons _e66068_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp66750))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66749))))
            (if (macro-expression-parsing-exception? _exn66066_)
                (macro-expression-parsing-exception-kind _exn66066_)
                (let ((__tmp66747
                       (let ((__tmp66748
                              (let ()
                                (declare (not safe))
                                (cons _exn66066_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp66748))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66747))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn66062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66062_))
            (let ((_e66064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66062_ 'exception))))
              (if (macro-expression-parsing-exception? _e66064_)
                  (macro-expression-parsing-exception-parameters _e66064_)
                  (let ((__tmp66753
                         (let ((__tmp66754
                                (let ()
                                  (declare (not safe))
                                  (cons _e66064_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp66754))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66753))))
            (if (macro-expression-parsing-exception? _exn66062_)
                (macro-expression-parsing-exception-parameters _exn66062_)
                (let ((__tmp66751
                       (let ((__tmp66752
                              (let ()
                                (declare (not safe))
                                (cons _exn66062_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp66752))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66751))))))
    (define expression-parsing-exception-source
      (lambda (_exn66056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66056_))
            (let ((_e66059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66056_ 'exception))))
              (if (macro-expression-parsing-exception? _e66059_)
                  (macro-expression-parsing-exception-source _e66059_)
                  (let ((__tmp66757
                         (let ((__tmp66758
                                (let ()
                                  (declare (not safe))
                                  (cons _e66059_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp66758))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66757))))
            (if (macro-expression-parsing-exception? _exn66056_)
                (macro-expression-parsing-exception-source _exn66056_)
                (let ((__tmp66755
                       (let ((__tmp66756
                              (let ()
                                (declare (not safe))
                                (cons _exn66056_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp66756))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66755))))))
    (define file-exists-exception?
      (lambda (_exn66052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66052_))
            (let ((_e66054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66052_ 'exception))))
              (macro-file-exists-exception? _e66054_))
            (macro-file-exists-exception? _exn66052_))))
    (define file-exists-exception-arguments
      (lambda (_exn66048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66048_))
            (let ((_e66050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66048_ 'exception))))
              (if (macro-file-exists-exception? _e66050_)
                  (macro-file-exists-exception-arguments _e66050_)
                  (let ((__tmp66761
                         (let ((__tmp66762
                                (let ()
                                  (declare (not safe))
                                  (cons _e66050_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp66762))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66761))))
            (if (macro-file-exists-exception? _exn66048_)
                (macro-file-exists-exception-arguments _exn66048_)
                (let ((__tmp66759
                       (let ((__tmp66760
                              (let ()
                                (declare (not safe))
                                (cons _exn66048_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp66760))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66759))))))
    (define file-exists-exception-procedure
      (lambda (_exn66042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66042_))
            (let ((_e66045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66042_ 'exception))))
              (if (macro-file-exists-exception? _e66045_)
                  (macro-file-exists-exception-procedure _e66045_)
                  (let ((__tmp66765
                         (let ((__tmp66766
                                (let ()
                                  (declare (not safe))
                                  (cons _e66045_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp66766))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66765))))
            (if (macro-file-exists-exception? _exn66042_)
                (macro-file-exists-exception-procedure _exn66042_)
                (let ((__tmp66763
                       (let ((__tmp66764
                              (let ()
                                (declare (not safe))
                                (cons _exn66042_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp66764))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66763))))))
    (define fixnum-overflow-exception?
      (lambda (_exn66038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66038_))
            (let ((_e66040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66038_ 'exception))))
              (macro-fixnum-overflow-exception? _e66040_))
            (macro-fixnum-overflow-exception? _exn66038_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn66034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66034_))
            (let ((_e66036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66034_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66036_)
                  (macro-fixnum-overflow-exception-arguments _e66036_)
                  (let ((__tmp66769
                         (let ((__tmp66770
                                (let ()
                                  (declare (not safe))
                                  (cons _e66036_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp66770))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66769))))
            (if (macro-fixnum-overflow-exception? _exn66034_)
                (macro-fixnum-overflow-exception-arguments _exn66034_)
                (let ((__tmp66767
                       (let ((__tmp66768
                              (let ()
                                (declare (not safe))
                                (cons _exn66034_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp66768))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66767))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn66028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66028_))
            (let ((_e66031_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66028_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66031_)
                  (macro-fixnum-overflow-exception-procedure _e66031_)
                  (let ((__tmp66773
                         (let ((__tmp66774
                                (let ()
                                  (declare (not safe))
                                  (cons _e66031_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp66774))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66773))))
            (if (macro-fixnum-overflow-exception? _exn66028_)
                (macro-fixnum-overflow-exception-procedure _exn66028_)
                (let ((__tmp66771
                       (let ((__tmp66772
                              (let ()
                                (declare (not safe))
                                (cons _exn66028_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp66772))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66771))))))
    (define heap-overflow-exception?
      (lambda (_exn66022_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66022_))
            (let ((_e66025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66022_ 'exception))))
              (macro-heap-overflow-exception? _e66025_))
            (macro-heap-overflow-exception? _exn66022_))))
    (define inactive-thread-exception?
      (lambda (_exn66018_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66018_))
            (let ((_e66020_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66018_ 'exception))))
              (macro-inactive-thread-exception? _e66020_))
            (macro-inactive-thread-exception? _exn66018_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn66014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66014_))
            (let ((_e66016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66014_ 'exception))))
              (if (macro-inactive-thread-exception? _e66016_)
                  (macro-inactive-thread-exception-arguments _e66016_)
                  (let ((__tmp66777
                         (let ((__tmp66778
                                (let ()
                                  (declare (not safe))
                                  (cons _e66016_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp66778))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66777))))
            (if (macro-inactive-thread-exception? _exn66014_)
                (macro-inactive-thread-exception-arguments _exn66014_)
                (let ((__tmp66775
                       (let ((__tmp66776
                              (let ()
                                (declare (not safe))
                                (cons _exn66014_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp66776))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66775))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn66008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66008_))
            (let ((_e66011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66008_ 'exception))))
              (if (macro-inactive-thread-exception? _e66011_)
                  (macro-inactive-thread-exception-procedure _e66011_)
                  (let ((__tmp66781
                         (let ((__tmp66782
                                (let ()
                                  (declare (not safe))
                                  (cons _e66011_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp66782))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66781))))
            (if (macro-inactive-thread-exception? _exn66008_)
                (macro-inactive-thread-exception-procedure _exn66008_)
                (let ((__tmp66779
                       (let ((__tmp66780
                              (let ()
                                (declare (not safe))
                                (cons _exn66008_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp66780))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66779))))))
    (define initialized-thread-exception?
      (lambda (_exn66004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66004_))
            (let ((_e66006_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66004_ 'exception))))
              (macro-initialized-thread-exception? _e66006_))
            (macro-initialized-thread-exception? _exn66004_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn66000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66000_))
            (let ((_e66002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66000_ 'exception))))
              (if (macro-initialized-thread-exception? _e66002_)
                  (macro-initialized-thread-exception-arguments _e66002_)
                  (let ((__tmp66785
                         (let ((__tmp66786
                                (let ()
                                  (declare (not safe))
                                  (cons _e66002_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp66786))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66785))))
            (if (macro-initialized-thread-exception? _exn66000_)
                (macro-initialized-thread-exception-arguments _exn66000_)
                (let ((__tmp66783
                       (let ((__tmp66784
                              (let ()
                                (declare (not safe))
                                (cons _exn66000_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp66784))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66783))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn65994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65994_))
            (let ((_e65997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65994_ 'exception))))
              (if (macro-initialized-thread-exception? _e65997_)
                  (macro-initialized-thread-exception-procedure _e65997_)
                  (let ((__tmp66789
                         (let ((__tmp66790
                                (let ()
                                  (declare (not safe))
                                  (cons _e65997_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp66790))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66789))))
            (if (macro-initialized-thread-exception? _exn65994_)
                (macro-initialized-thread-exception-procedure _exn65994_)
                (let ((__tmp66787
                       (let ((__tmp66788
                              (let ()
                                (declare (not safe))
                                (cons _exn65994_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp66788))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66787))))))
    (define invalid-hash-number-exception?
      (lambda (_exn65990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65990_))
            (let ((_e65992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65990_ 'exception))))
              (macro-invalid-hash-number-exception? _e65992_))
            (macro-invalid-hash-number-exception? _exn65990_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn65986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65986_))
            (let ((_e65988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65986_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65988_)
                  (macro-invalid-hash-number-exception-arguments _e65988_)
                  (let ((__tmp66793
                         (let ((__tmp66794
                                (let ()
                                  (declare (not safe))
                                  (cons _e65988_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp66794))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66793))))
            (if (macro-invalid-hash-number-exception? _exn65986_)
                (macro-invalid-hash-number-exception-arguments _exn65986_)
                (let ((__tmp66791
                       (let ((__tmp66792
                              (let ()
                                (declare (not safe))
                                (cons _exn65986_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp66792))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66791))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn65980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65980_))
            (let ((_e65983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65980_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65983_)
                  (macro-invalid-hash-number-exception-procedure _e65983_)
                  (let ((__tmp66797
                         (let ((__tmp66798
                                (let ()
                                  (declare (not safe))
                                  (cons _e65983_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp66798))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66797))))
            (if (macro-invalid-hash-number-exception? _exn65980_)
                (macro-invalid-hash-number-exception-procedure _exn65980_)
                (let ((__tmp66795
                       (let ((__tmp66796
                              (let ()
                                (declare (not safe))
                                (cons _exn65980_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp66796))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66795))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn65976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65976_))
            (let ((_e65978_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65976_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e65978_))
            (macro-invalid-utf8-encoding-exception? _exn65976_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn65972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65972_))
            (let ((_e65974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65972_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65974_)
                  (macro-invalid-utf8-encoding-exception-arguments _e65974_)
                  (let ((__tmp66801
                         (let ((__tmp66802
                                (let ()
                                  (declare (not safe))
                                  (cons _e65974_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp66802))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66801))))
            (if (macro-invalid-utf8-encoding-exception? _exn65972_)
                (macro-invalid-utf8-encoding-exception-arguments _exn65972_)
                (let ((__tmp66799
                       (let ((__tmp66800
                              (let ()
                                (declare (not safe))
                                (cons _exn65972_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp66800))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66799))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn65966_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65966_))
            (let ((_e65969_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65966_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65969_)
                  (macro-invalid-utf8-encoding-exception-procedure _e65969_)
                  (let ((__tmp66805
                         (let ((__tmp66806
                                (let ()
                                  (declare (not safe))
                                  (cons _e65969_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp66806))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66805))))
            (if (macro-invalid-utf8-encoding-exception? _exn65966_)
                (macro-invalid-utf8-encoding-exception-procedure _exn65966_)
                (let ((__tmp66803
                       (let ((__tmp66804
                              (let ()
                                (declare (not safe))
                                (cons _exn65966_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp66804))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66803))))))
    (define join-timeout-exception?
      (lambda (_exn65962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65962_))
            (let ((_e65964_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65962_ 'exception))))
              (macro-join-timeout-exception? _e65964_))
            (macro-join-timeout-exception? _exn65962_))))
    (define join-timeout-exception-arguments
      (lambda (_exn65958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65958_))
            (let ((_e65960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65958_ 'exception))))
              (if (macro-join-timeout-exception? _e65960_)
                  (macro-join-timeout-exception-arguments _e65960_)
                  (let ((__tmp66809
                         (let ((__tmp66810
                                (let ()
                                  (declare (not safe))
                                  (cons _e65960_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp66810))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66809))))
            (if (macro-join-timeout-exception? _exn65958_)
                (macro-join-timeout-exception-arguments _exn65958_)
                (let ((__tmp66807
                       (let ((__tmp66808
                              (let ()
                                (declare (not safe))
                                (cons _exn65958_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp66808))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66807))))))
    (define join-timeout-exception-procedure
      (lambda (_exn65952_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65952_))
            (let ((_e65955_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65952_ 'exception))))
              (if (macro-join-timeout-exception? _e65955_)
                  (macro-join-timeout-exception-procedure _e65955_)
                  (let ((__tmp66813
                         (let ((__tmp66814
                                (let ()
                                  (declare (not safe))
                                  (cons _e65955_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp66814))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66813))))
            (if (macro-join-timeout-exception? _exn65952_)
                (macro-join-timeout-exception-procedure _exn65952_)
                (let ((__tmp66811
                       (let ((__tmp66812
                              (let ()
                                (declare (not safe))
                                (cons _exn65952_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp66812))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66811))))))
    (define keyword-expected-exception?
      (lambda (_exn65948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65948_))
            (let ((_e65950_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65948_ 'exception))))
              (macro-keyword-expected-exception? _e65950_))
            (macro-keyword-expected-exception? _exn65948_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn65944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65944_))
            (let ((_e65946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65944_ 'exception))))
              (if (macro-keyword-expected-exception? _e65946_)
                  (macro-keyword-expected-exception-arguments _e65946_)
                  (let ((__tmp66817
                         (let ((__tmp66818
                                (let ()
                                  (declare (not safe))
                                  (cons _e65946_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp66818))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66817))))
            (if (macro-keyword-expected-exception? _exn65944_)
                (macro-keyword-expected-exception-arguments _exn65944_)
                (let ((__tmp66815
                       (let ((__tmp66816
                              (let ()
                                (declare (not safe))
                                (cons _exn65944_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp66816))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66815))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn65938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65938_))
            (let ((_e65941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65938_ 'exception))))
              (if (macro-keyword-expected-exception? _e65941_)
                  (macro-keyword-expected-exception-procedure _e65941_)
                  (let ((__tmp66821
                         (let ((__tmp66822
                                (let ()
                                  (declare (not safe))
                                  (cons _e65941_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp66822))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66821))))
            (if (macro-keyword-expected-exception? _exn65938_)
                (macro-keyword-expected-exception-procedure _exn65938_)
                (let ((__tmp66819
                       (let ((__tmp66820
                              (let ()
                                (declare (not safe))
                                (cons _exn65938_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp66820))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66819))))))
    (define length-mismatch-exception?
      (lambda (_exn65934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65934_))
            (let ((_e65936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65934_ 'exception))))
              (macro-length-mismatch-exception? _e65936_))
            (macro-length-mismatch-exception? _exn65934_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn65930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65930_))
            (let ((_e65932_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65930_ 'exception))))
              (if (macro-length-mismatch-exception? _e65932_)
                  (macro-length-mismatch-exception-arg-id _e65932_)
                  (let ((__tmp66825
                         (let ((__tmp66826
                                (let ()
                                  (declare (not safe))
                                  (cons _e65932_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp66826))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66825))))
            (if (macro-length-mismatch-exception? _exn65930_)
                (macro-length-mismatch-exception-arg-id _exn65930_)
                (let ((__tmp66823
                       (let ((__tmp66824
                              (let ()
                                (declare (not safe))
                                (cons _exn65930_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp66824))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66823))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn65926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65926_))
            (let ((_e65928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65926_ 'exception))))
              (if (macro-length-mismatch-exception? _e65928_)
                  (macro-length-mismatch-exception-arguments _e65928_)
                  (let ((__tmp66829
                         (let ((__tmp66830
                                (let ()
                                  (declare (not safe))
                                  (cons _e65928_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp66830))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66829))))
            (if (macro-length-mismatch-exception? _exn65926_)
                (macro-length-mismatch-exception-arguments _exn65926_)
                (let ((__tmp66827
                       (let ((__tmp66828
                              (let ()
                                (declare (not safe))
                                (cons _exn65926_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp66828))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66827))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn65920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65920_))
            (let ((_e65923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65920_ 'exception))))
              (if (macro-length-mismatch-exception? _e65923_)
                  (macro-length-mismatch-exception-procedure _e65923_)
                  (let ((__tmp66833
                         (let ((__tmp66834
                                (let ()
                                  (declare (not safe))
                                  (cons _e65923_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp66834))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66833))))
            (if (macro-length-mismatch-exception? _exn65920_)
                (macro-length-mismatch-exception-procedure _exn65920_)
                (let ((__tmp66831
                       (let ((__tmp66832
                              (let ()
                                (declare (not safe))
                                (cons _exn65920_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp66832))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66831))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn65916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65916_))
            (let ((_e65918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65916_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e65918_))
            (macro-mailbox-receive-timeout-exception? _exn65916_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn65912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65912_))
            (let ((_e65914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65912_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65914_)
                  (macro-mailbox-receive-timeout-exception-arguments _e65914_)
                  (let ((__tmp66837
                         (let ((__tmp66838
                                (let ()
                                  (declare (not safe))
                                  (cons _e65914_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp66838))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66837))))
            (if (macro-mailbox-receive-timeout-exception? _exn65912_)
                (macro-mailbox-receive-timeout-exception-arguments _exn65912_)
                (let ((__tmp66835
                       (let ((__tmp66836
                              (let ()
                                (declare (not safe))
                                (cons _exn65912_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp66836))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66835))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn65906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65906_))
            (let ((_e65909_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65906_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65909_)
                  (macro-mailbox-receive-timeout-exception-procedure _e65909_)
                  (let ((__tmp66841
                         (let ((__tmp66842
                                (let ()
                                  (declare (not safe))
                                  (cons _e65909_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp66842))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66841))))
            (if (macro-mailbox-receive-timeout-exception? _exn65906_)
                (macro-mailbox-receive-timeout-exception-procedure _exn65906_)
                (let ((__tmp66839
                       (let ((__tmp66840
                              (let ()
                                (declare (not safe))
                                (cons _exn65906_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp66840))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66839))))))
    (define module-not-found-exception?
      (lambda (_exn65902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65902_))
            (let ((_e65904_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65902_ 'exception))))
              (macro-module-not-found-exception? _e65904_))
            (macro-module-not-found-exception? _exn65902_))))
    (define module-not-found-exception-arguments
      (lambda (_exn65898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65898_))
            (let ((_e65900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65898_ 'exception))))
              (if (macro-module-not-found-exception? _e65900_)
                  (macro-module-not-found-exception-arguments _e65900_)
                  (let ((__tmp66845
                         (let ((__tmp66846
                                (let ()
                                  (declare (not safe))
                                  (cons _e65900_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp66846))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66845))))
            (if (macro-module-not-found-exception? _exn65898_)
                (macro-module-not-found-exception-arguments _exn65898_)
                (let ((__tmp66843
                       (let ((__tmp66844
                              (let ()
                                (declare (not safe))
                                (cons _exn65898_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp66844))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66843))))))
    (define module-not-found-exception-procedure
      (lambda (_exn65892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65892_))
            (let ((_e65895_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65892_ 'exception))))
              (if (macro-module-not-found-exception? _e65895_)
                  (macro-module-not-found-exception-procedure _e65895_)
                  (let ((__tmp66849
                         (let ((__tmp66850
                                (let ()
                                  (declare (not safe))
                                  (cons _e65895_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp66850))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66849))))
            (if (macro-module-not-found-exception? _exn65892_)
                (macro-module-not-found-exception-procedure _exn65892_)
                (let ((__tmp66847
                       (let ((__tmp66848
                              (let ()
                                (declare (not safe))
                                (cons _exn65892_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp66848))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66847))))))
    (define multiple-c-return-exception?
      (lambda (_exn65886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65886_))
            (let ((_e65889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65886_ 'exception))))
              (macro-multiple-c-return-exception? _e65889_))
            (macro-multiple-c-return-exception? _exn65886_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn65882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65882_))
            (let ((_e65884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65882_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e65884_))
            (macro-no-such-file-or-directory-exception? _exn65882_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn65878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65878_))
            (let ((_e65880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65878_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65880_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e65880_)
                  (let ((__tmp66853
                         (let ((__tmp66854
                                (let ()
                                  (declare (not safe))
                                  (cons _e65880_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp66854))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66853))))
            (if (macro-no-such-file-or-directory-exception? _exn65878_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn65878_)
                (let ((__tmp66851
                       (let ((__tmp66852
                              (let ()
                                (declare (not safe))
                                (cons _exn65878_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp66852))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66851))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn65872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65872_))
            (let ((_e65875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65872_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65875_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e65875_)
                  (let ((__tmp66857
                         (let ((__tmp66858
                                (let ()
                                  (declare (not safe))
                                  (cons _e65875_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp66858))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66857))))
            (if (macro-no-such-file-or-directory-exception? _exn65872_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn65872_)
                (let ((__tmp66855
                       (let ((__tmp66856
                              (let ()
                                (declare (not safe))
                                (cons _exn65872_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp66856))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66855))))))
    (define noncontinuable-exception?
      (lambda (_exn65868_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65868_))
            (let ((_e65870_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65868_ 'exception))))
              (macro-noncontinuable-exception? _e65870_))
            (macro-noncontinuable-exception? _exn65868_))))
    (define noncontinuable-exception-reason
      (lambda (_exn65862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65862_))
            (let ((_e65865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65862_ 'exception))))
              (if (macro-noncontinuable-exception? _e65865_)
                  (macro-noncontinuable-exception-reason _e65865_)
                  (let ((__tmp66861
                         (let ((__tmp66862
                                (let ()
                                  (declare (not safe))
                                  (cons _e65865_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp66862))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp66861))))
            (if (macro-noncontinuable-exception? _exn65862_)
                (macro-noncontinuable-exception-reason _exn65862_)
                (let ((__tmp66859
                       (let ((__tmp66860
                              (let ()
                                (declare (not safe))
                                (cons _exn65862_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp66860))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp66859))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn65858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65858_))
            (let ((_e65860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65858_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e65860_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn65858_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn65854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65854_))
            (let ((_e65856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65854_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65856_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e65856_)
                  (let ((__tmp66865
                         (let ((__tmp66866
                                (let ()
                                  (declare (not safe))
                                  (cons _e65856_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp66866))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66865))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65854_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn65854_)
                (let ((__tmp66863
                       (let ((__tmp66864
                              (let ()
                                (declare (not safe))
                                (cons _exn65854_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp66864))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66863))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn65848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65848_))
            (let ((_e65851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65848_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65851_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e65851_)
                  (let ((__tmp66869
                         (let ((__tmp66870
                                (let ()
                                  (declare (not safe))
                                  (cons _e65851_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp66870))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66869))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65848_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn65848_)
                (let ((__tmp66867
                       (let ((__tmp66868
                              (let ()
                                (declare (not safe))
                                (cons _exn65848_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp66868))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66867))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn65844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65844_))
            (let ((_e65846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65844_ 'exception))))
              (macro-nonprocedure-operator-exception? _e65846_))
            (macro-nonprocedure-operator-exception? _exn65844_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn65840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65840_))
            (let ((_e65842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65840_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65842_)
                  (macro-nonprocedure-operator-exception-arguments _e65842_)
                  (let ((__tmp66873
                         (let ((__tmp66874
                                (let ()
                                  (declare (not safe))
                                  (cons _e65842_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp66874))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66873))))
            (if (macro-nonprocedure-operator-exception? _exn65840_)
                (macro-nonprocedure-operator-exception-arguments _exn65840_)
                (let ((__tmp66871
                       (let ((__tmp66872
                              (let ()
                                (declare (not safe))
                                (cons _exn65840_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp66872))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66871))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn65836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65836_))
            (let ((_e65838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65836_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65838_)
                  (macro-nonprocedure-operator-exception-code _e65838_)
                  (let ((__tmp66877
                         (let ((__tmp66878
                                (let ()
                                  (declare (not safe))
                                  (cons _e65838_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp66878))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66877))))
            (if (macro-nonprocedure-operator-exception? _exn65836_)
                (macro-nonprocedure-operator-exception-code _exn65836_)
                (let ((__tmp66875
                       (let ((__tmp66876
                              (let ()
                                (declare (not safe))
                                (cons _exn65836_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp66876))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66875))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn65832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65832_))
            (let ((_e65834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65832_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65834_)
                  (macro-nonprocedure-operator-exception-operator _e65834_)
                  (let ((__tmp66881
                         (let ((__tmp66882
                                (let ()
                                  (declare (not safe))
                                  (cons _e65834_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp66882))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66881))))
            (if (macro-nonprocedure-operator-exception? _exn65832_)
                (macro-nonprocedure-operator-exception-operator _exn65832_)
                (let ((__tmp66879
                       (let ((__tmp66880
                              (let ()
                                (declare (not safe))
                                (cons _exn65832_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp66880))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66879))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn65826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65826_))
            (let ((_e65829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65826_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65829_)
                  (macro-nonprocedure-operator-exception-rte _e65829_)
                  (let ((__tmp66885
                         (let ((__tmp66886
                                (let ()
                                  (declare (not safe))
                                  (cons _e65829_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp66886))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66885))))
            (if (macro-nonprocedure-operator-exception? _exn65826_)
                (macro-nonprocedure-operator-exception-rte _exn65826_)
                (let ((__tmp66883
                       (let ((__tmp66884
                              (let ()
                                (declare (not safe))
                                (cons _exn65826_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp66884))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66883))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn65822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65822_))
            (let ((_e65824_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65822_ 'exception))))
              (macro-not-in-compilation-context-exception? _e65824_))
            (macro-not-in-compilation-context-exception? _exn65822_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn65818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65818_))
            (let ((_e65820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65818_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65820_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e65820_)
                  (let ((__tmp66889
                         (let ((__tmp66890
                                (let ()
                                  (declare (not safe))
                                  (cons _e65820_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp66890))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66889))))
            (if (macro-not-in-compilation-context-exception? _exn65818_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn65818_)
                (let ((__tmp66887
                       (let ((__tmp66888
                              (let ()
                                (declare (not safe))
                                (cons _exn65818_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp66888))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66887))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn65812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65812_))
            (let ((_e65815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65812_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65815_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e65815_)
                  (let ((__tmp66893
                         (let ((__tmp66894
                                (let ()
                                  (declare (not safe))
                                  (cons _e65815_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp66894))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66893))))
            (if (macro-not-in-compilation-context-exception? _exn65812_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn65812_)
                (let ((__tmp66891
                       (let ((__tmp66892
                              (let ()
                                (declare (not safe))
                                (cons _exn65812_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp66892))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66891))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn65808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65808_))
            (let ((_e65810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65808_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e65810_))
            (macro-number-of-arguments-limit-exception? _exn65808_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn65804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65804_))
            (let ((_e65806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65804_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65806_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e65806_)
                  (let ((__tmp66897
                         (let ((__tmp66898
                                (let ()
                                  (declare (not safe))
                                  (cons _e65806_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp66898))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66897))))
            (if (macro-number-of-arguments-limit-exception? _exn65804_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn65804_)
                (let ((__tmp66895
                       (let ((__tmp66896
                              (let ()
                                (declare (not safe))
                                (cons _exn65804_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp66896))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66895))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn65798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65798_))
            (let ((_e65801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65798_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65801_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e65801_)
                  (let ((__tmp66901
                         (let ((__tmp66902
                                (let ()
                                  (declare (not safe))
                                  (cons _e65801_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp66902))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66901))))
            (if (macro-number-of-arguments-limit-exception? _exn65798_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn65798_)
                (let ((__tmp66899
                       (let ((__tmp66900
                              (let ()
                                (declare (not safe))
                                (cons _exn65798_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp66900))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66899))))))
    (define os-exception?
      (lambda (_exn65794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65794_))
            (let ((_e65796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65794_ 'exception))))
              (macro-os-exception? _e65796_))
            (macro-os-exception? _exn65794_))))
    (define os-exception-arguments
      (lambda (_exn65790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65790_))
            (let ((_e65792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65790_ 'exception))))
              (if (macro-os-exception? _e65792_)
                  (macro-os-exception-arguments _e65792_)
                  (let ((__tmp66905
                         (let ((__tmp66906
                                (let ()
                                  (declare (not safe))
                                  (cons _e65792_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp66906))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66905))))
            (if (macro-os-exception? _exn65790_)
                (macro-os-exception-arguments _exn65790_)
                (let ((__tmp66903
                       (let ((__tmp66904
                              (let ()
                                (declare (not safe))
                                (cons _exn65790_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp66904))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66903))))))
    (define os-exception-code
      (lambda (_exn65786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65786_))
            (let ((_e65788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65786_ 'exception))))
              (if (macro-os-exception? _e65788_)
                  (macro-os-exception-code _e65788_)
                  (let ((__tmp66909
                         (let ((__tmp66910
                                (let ()
                                  (declare (not safe))
                                  (cons _e65788_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp66910))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66909))))
            (if (macro-os-exception? _exn65786_)
                (macro-os-exception-code _exn65786_)
                (let ((__tmp66907
                       (let ((__tmp66908
                              (let ()
                                (declare (not safe))
                                (cons _exn65786_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp66908))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66907))))))
    (define os-exception-message
      (lambda (_exn65782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65782_))
            (let ((_e65784_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65782_ 'exception))))
              (if (macro-os-exception? _e65784_)
                  (macro-os-exception-message _e65784_)
                  (let ((__tmp66913
                         (let ((__tmp66914
                                (let ()
                                  (declare (not safe))
                                  (cons _e65784_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp66914))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66913))))
            (if (macro-os-exception? _exn65782_)
                (macro-os-exception-message _exn65782_)
                (let ((__tmp66911
                       (let ((__tmp66912
                              (let ()
                                (declare (not safe))
                                (cons _exn65782_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp66912))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66911))))))
    (define os-exception-procedure
      (lambda (_exn65776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65776_))
            (let ((_e65779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65776_ 'exception))))
              (if (macro-os-exception? _e65779_)
                  (macro-os-exception-procedure _e65779_)
                  (let ((__tmp66917
                         (let ((__tmp66918
                                (let ()
                                  (declare (not safe))
                                  (cons _e65779_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp66918))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66917))))
            (if (macro-os-exception? _exn65776_)
                (macro-os-exception-procedure _exn65776_)
                (let ((__tmp66915
                       (let ((__tmp66916
                              (let ()
                                (declare (not safe))
                                (cons _exn65776_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp66916))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66915))))))
    (define permission-denied-exception?
      (lambda (_exn65772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65772_))
            (let ((_e65774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65772_ 'exception))))
              (macro-permission-denied-exception? _e65774_))
            (macro-permission-denied-exception? _exn65772_))))
    (define permission-denied-exception-arguments
      (lambda (_exn65768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65768_))
            (let ((_e65770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65768_ 'exception))))
              (if (macro-permission-denied-exception? _e65770_)
                  (macro-permission-denied-exception-arguments _e65770_)
                  (let ((__tmp66921
                         (let ((__tmp66922
                                (let ()
                                  (declare (not safe))
                                  (cons _e65770_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp66922))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66921))))
            (if (macro-permission-denied-exception? _exn65768_)
                (macro-permission-denied-exception-arguments _exn65768_)
                (let ((__tmp66919
                       (let ((__tmp66920
                              (let ()
                                (declare (not safe))
                                (cons _exn65768_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp66920))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66919))))))
    (define permission-denied-exception-procedure
      (lambda (_exn65762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65762_))
            (let ((_e65765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65762_ 'exception))))
              (if (macro-permission-denied-exception? _e65765_)
                  (macro-permission-denied-exception-procedure _e65765_)
                  (let ((__tmp66925
                         (let ((__tmp66926
                                (let ()
                                  (declare (not safe))
                                  (cons _e65765_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp66926))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66925))))
            (if (macro-permission-denied-exception? _exn65762_)
                (macro-permission-denied-exception-procedure _exn65762_)
                (let ((__tmp66923
                       (let ((__tmp66924
                              (let ()
                                (declare (not safe))
                                (cons _exn65762_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp66924))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66923))))))
    (define range-exception?
      (lambda (_exn65758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65758_))
            (let ((_e65760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65758_ 'exception))))
              (macro-range-exception? _e65760_))
            (macro-range-exception? _exn65758_))))
    (define range-exception-arg-id
      (lambda (_exn65754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65754_))
            (let ((_e65756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65754_ 'exception))))
              (if (macro-range-exception? _e65756_)
                  (macro-range-exception-arg-id _e65756_)
                  (let ((__tmp66929
                         (let ((__tmp66930
                                (let ()
                                  (declare (not safe))
                                  (cons _e65756_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp66930))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66929))))
            (if (macro-range-exception? _exn65754_)
                (macro-range-exception-arg-id _exn65754_)
                (let ((__tmp66927
                       (let ((__tmp66928
                              (let ()
                                (declare (not safe))
                                (cons _exn65754_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp66928))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66927))))))
    (define range-exception-arguments
      (lambda (_exn65750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65750_))
            (let ((_e65752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65750_ 'exception))))
              (if (macro-range-exception? _e65752_)
                  (macro-range-exception-arguments _e65752_)
                  (let ((__tmp66933
                         (let ((__tmp66934
                                (let ()
                                  (declare (not safe))
                                  (cons _e65752_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp66934))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66933))))
            (if (macro-range-exception? _exn65750_)
                (macro-range-exception-arguments _exn65750_)
                (let ((__tmp66931
                       (let ((__tmp66932
                              (let ()
                                (declare (not safe))
                                (cons _exn65750_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp66932))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66931))))))
    (define range-exception-procedure
      (lambda (_exn65744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65744_))
            (let ((_e65747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65744_ 'exception))))
              (if (macro-range-exception? _e65747_)
                  (macro-range-exception-procedure _e65747_)
                  (let ((__tmp66937
                         (let ((__tmp66938
                                (let ()
                                  (declare (not safe))
                                  (cons _e65747_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp66938))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66937))))
            (if (macro-range-exception? _exn65744_)
                (macro-range-exception-procedure _exn65744_)
                (let ((__tmp66935
                       (let ((__tmp66936
                              (let ()
                                (declare (not safe))
                                (cons _exn65744_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp66936))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66935))))))
    (define rpc-remote-error-exception?
      (lambda (_exn65740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65740_))
            (let ((_e65742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65740_ 'exception))))
              (macro-rpc-remote-error-exception? _e65742_))
            (macro-rpc-remote-error-exception? _exn65740_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn65736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65736_))
            (let ((_e65738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65736_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65738_)
                  (macro-rpc-remote-error-exception-arguments _e65738_)
                  (let ((__tmp66941
                         (let ((__tmp66942
                                (let ()
                                  (declare (not safe))
                                  (cons _e65738_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp66942))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66941))))
            (if (macro-rpc-remote-error-exception? _exn65736_)
                (macro-rpc-remote-error-exception-arguments _exn65736_)
                (let ((__tmp66939
                       (let ((__tmp66940
                              (let ()
                                (declare (not safe))
                                (cons _exn65736_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp66940))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66939))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn65732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65732_))
            (let ((_e65734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65732_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65734_)
                  (macro-rpc-remote-error-exception-message _e65734_)
                  (let ((__tmp66945
                         (let ((__tmp66946
                                (let ()
                                  (declare (not safe))
                                  (cons _e65734_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp66946))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66945))))
            (if (macro-rpc-remote-error-exception? _exn65732_)
                (macro-rpc-remote-error-exception-message _exn65732_)
                (let ((__tmp66943
                       (let ((__tmp66944
                              (let ()
                                (declare (not safe))
                                (cons _exn65732_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp66944))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66943))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65726_))
            (let ((_e65729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65726_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65729_)
                  (macro-rpc-remote-error-exception-procedure _e65729_)
                  (let ((__tmp66949
                         (let ((__tmp66950
                                (let ()
                                  (declare (not safe))
                                  (cons _e65729_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp66950))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66949))))
            (if (macro-rpc-remote-error-exception? _exn65726_)
                (macro-rpc-remote-error-exception-procedure _exn65726_)
                (let ((__tmp66947
                       (let ((__tmp66948
                              (let ()
                                (declare (not safe))
                                (cons _exn65726_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp66948))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66947))))))
    (define scheduler-exception?
      (lambda (_exn65722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65722_))
            (let ((_e65724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65722_ 'exception))))
              (macro-scheduler-exception? _e65724_))
            (macro-scheduler-exception? _exn65722_))))
    (define scheduler-exception-reason
      (lambda (_exn65716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65716_))
            (let ((_e65719_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65716_ 'exception))))
              (if (macro-scheduler-exception? _e65719_)
                  (macro-scheduler-exception-reason _e65719_)
                  (let ((__tmp66953
                         (let ((__tmp66954
                                (let ()
                                  (declare (not safe))
                                  (cons _e65719_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp66954))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp66953))))
            (if (macro-scheduler-exception? _exn65716_)
                (macro-scheduler-exception-reason _exn65716_)
                (let ((__tmp66951
                       (let ((__tmp66952
                              (let ()
                                (declare (not safe))
                                (cons _exn65716_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp66952))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp66951))))))
    (define sfun-conversion-exception?
      (lambda (_exn65712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65712_))
            (let ((_e65714_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65712_ 'exception))))
              (macro-sfun-conversion-exception? _e65714_))
            (macro-sfun-conversion-exception? _exn65712_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65708_))
            (let ((_e65710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65708_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65710_)
                  (macro-sfun-conversion-exception-arguments _e65710_)
                  (let ((__tmp66957
                         (let ((__tmp66958
                                (let ()
                                  (declare (not safe))
                                  (cons _e65710_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp66958))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66957))))
            (if (macro-sfun-conversion-exception? _exn65708_)
                (macro-sfun-conversion-exception-arguments _exn65708_)
                (let ((__tmp66955
                       (let ((__tmp66956
                              (let ()
                                (declare (not safe))
                                (cons _exn65708_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp66956))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66955))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65704_))
            (let ((_e65706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65704_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65706_)
                  (macro-sfun-conversion-exception-code _e65706_)
                  (let ((__tmp66961
                         (let ((__tmp66962
                                (let ()
                                  (declare (not safe))
                                  (cons _e65706_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp66962))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66961))))
            (if (macro-sfun-conversion-exception? _exn65704_)
                (macro-sfun-conversion-exception-code _exn65704_)
                (let ((__tmp66959
                       (let ((__tmp66960
                              (let ()
                                (declare (not safe))
                                (cons _exn65704_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp66960))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66959))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65700_))
            (let ((_e65702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65700_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65702_)
                  (macro-sfun-conversion-exception-message _e65702_)
                  (let ((__tmp66965
                         (let ((__tmp66966
                                (let ()
                                  (declare (not safe))
                                  (cons _e65702_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp66966))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66965))))
            (if (macro-sfun-conversion-exception? _exn65700_)
                (macro-sfun-conversion-exception-message _exn65700_)
                (let ((__tmp66963
                       (let ((__tmp66964
                              (let ()
                                (declare (not safe))
                                (cons _exn65700_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp66964))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66963))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65694_))
            (let ((_e65697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65694_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65697_)
                  (macro-sfun-conversion-exception-procedure _e65697_)
                  (let ((__tmp66969
                         (let ((__tmp66970
                                (let ()
                                  (declare (not safe))
                                  (cons _e65697_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp66970))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66969))))
            (if (macro-sfun-conversion-exception? _exn65694_)
                (macro-sfun-conversion-exception-procedure _exn65694_)
                (let ((__tmp66967
                       (let ((__tmp66968
                              (let ()
                                (declare (not safe))
                                (cons _exn65694_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp66968))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66967))))))
    (define stack-overflow-exception?
      (lambda (_exn65688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65688_))
            (let ((_e65691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65688_ 'exception))))
              (macro-stack-overflow-exception? _e65691_))
            (macro-stack-overflow-exception? _exn65688_))))
    (define started-thread-exception?
      (lambda (_exn65684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65684_))
            (let ((_e65686_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65684_ 'exception))))
              (macro-started-thread-exception? _e65686_))
            (macro-started-thread-exception? _exn65684_))))
    (define started-thread-exception-arguments
      (lambda (_exn65680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65680_))
            (let ((_e65682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65680_ 'exception))))
              (if (macro-started-thread-exception? _e65682_)
                  (macro-started-thread-exception-arguments _e65682_)
                  (let ((__tmp66973
                         (let ((__tmp66974
                                (let ()
                                  (declare (not safe))
                                  (cons _e65682_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp66974))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66973))))
            (if (macro-started-thread-exception? _exn65680_)
                (macro-started-thread-exception-arguments _exn65680_)
                (let ((__tmp66971
                       (let ((__tmp66972
                              (let ()
                                (declare (not safe))
                                (cons _exn65680_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp66972))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66971))))))
    (define started-thread-exception-procedure
      (lambda (_exn65674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65674_))
            (let ((_e65677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65674_ 'exception))))
              (if (macro-started-thread-exception? _e65677_)
                  (macro-started-thread-exception-procedure _e65677_)
                  (let ((__tmp66977
                         (let ((__tmp66978
                                (let ()
                                  (declare (not safe))
                                  (cons _e65677_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp66978))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66977))))
            (if (macro-started-thread-exception? _exn65674_)
                (macro-started-thread-exception-procedure _exn65674_)
                (let ((__tmp66975
                       (let ((__tmp66976
                              (let ()
                                (declare (not safe))
                                (cons _exn65674_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp66976))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66975))))))
    (define terminated-thread-exception?
      (lambda (_exn65670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65670_))
            (let ((_e65672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65670_ 'exception))))
              (macro-terminated-thread-exception? _e65672_))
            (macro-terminated-thread-exception? _exn65670_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65666_))
            (let ((_e65668_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65666_ 'exception))))
              (if (macro-terminated-thread-exception? _e65668_)
                  (macro-terminated-thread-exception-arguments _e65668_)
                  (let ((__tmp66981
                         (let ((__tmp66982
                                (let ()
                                  (declare (not safe))
                                  (cons _e65668_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp66982))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66981))))
            (if (macro-terminated-thread-exception? _exn65666_)
                (macro-terminated-thread-exception-arguments _exn65666_)
                (let ((__tmp66979
                       (let ((__tmp66980
                              (let ()
                                (declare (not safe))
                                (cons _exn65666_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp66980))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66979))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65660_))
            (let ((_e65663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65660_ 'exception))))
              (if (macro-terminated-thread-exception? _e65663_)
                  (macro-terminated-thread-exception-procedure _e65663_)
                  (let ((__tmp66985
                         (let ((__tmp66986
                                (let ()
                                  (declare (not safe))
                                  (cons _e65663_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp66986))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66985))))
            (if (macro-terminated-thread-exception? _exn65660_)
                (macro-terminated-thread-exception-procedure _exn65660_)
                (let ((__tmp66983
                       (let ((__tmp66984
                              (let ()
                                (declare (not safe))
                                (cons _exn65660_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp66984))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66983))))))
    (define type-exception?
      (lambda (_exn65656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65656_))
            (let ((_e65658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65656_ 'exception))))
              (macro-type-exception? _e65658_))
            (macro-type-exception? _exn65656_))))
    (define type-exception-arg-id
      (lambda (_exn65652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65652_))
            (let ((_e65654_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65652_ 'exception))))
              (if (macro-type-exception? _e65654_)
                  (macro-type-exception-arg-id _e65654_)
                  (let ((__tmp66989
                         (let ((__tmp66990
                                (let ()
                                  (declare (not safe))
                                  (cons _e65654_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp66990))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66989))))
            (if (macro-type-exception? _exn65652_)
                (macro-type-exception-arg-id _exn65652_)
                (let ((__tmp66987
                       (let ((__tmp66988
                              (let ()
                                (declare (not safe))
                                (cons _exn65652_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp66988))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66987))))))
    (define type-exception-arguments
      (lambda (_exn65648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65648_))
            (let ((_e65650_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65648_ 'exception))))
              (if (macro-type-exception? _e65650_)
                  (macro-type-exception-arguments _e65650_)
                  (let ((__tmp66993
                         (let ((__tmp66994
                                (let ()
                                  (declare (not safe))
                                  (cons _e65650_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp66994))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66993))))
            (if (macro-type-exception? _exn65648_)
                (macro-type-exception-arguments _exn65648_)
                (let ((__tmp66991
                       (let ((__tmp66992
                              (let ()
                                (declare (not safe))
                                (cons _exn65648_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp66992))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66991))))))
    (define type-exception-procedure
      (lambda (_exn65644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65644_))
            (let ((_e65646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65644_ 'exception))))
              (if (macro-type-exception? _e65646_)
                  (macro-type-exception-procedure _e65646_)
                  (let ((__tmp66997
                         (let ((__tmp66998
                                (let ()
                                  (declare (not safe))
                                  (cons _e65646_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp66998))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66997))))
            (if (macro-type-exception? _exn65644_)
                (macro-type-exception-procedure _exn65644_)
                (let ((__tmp66995
                       (let ((__tmp66996
                              (let ()
                                (declare (not safe))
                                (cons _exn65644_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp66996))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66995))))))
    (define type-exception-type-id
      (lambda (_exn65638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65638_))
            (let ((_e65641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65638_ 'exception))))
              (if (macro-type-exception? _e65641_)
                  (macro-type-exception-type-id _e65641_)
                  (let ((__tmp67001
                         (let ((__tmp67002
                                (let ()
                                  (declare (not safe))
                                  (cons _e65641_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp67002))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67001))))
            (if (macro-type-exception? _exn65638_)
                (macro-type-exception-type-id _exn65638_)
                (let ((__tmp66999
                       (let ((__tmp67000
                              (let ()
                                (declare (not safe))
                                (cons _exn65638_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp67000))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66999))))))
    (define unbound-global-exception?
      (lambda (_exn65634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65634_))
            (let ((_e65636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65634_ 'exception))))
              (macro-unbound-global-exception? _e65636_))
            (macro-unbound-global-exception? _exn65634_))))
    (define unbound-global-exception-code
      (lambda (_exn65630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65630_))
            (let ((_e65632_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65630_ 'exception))))
              (if (macro-unbound-global-exception? _e65632_)
                  (macro-unbound-global-exception-code _e65632_)
                  (let ((__tmp67005
                         (let ((__tmp67006
                                (let ()
                                  (declare (not safe))
                                  (cons _e65632_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp67006))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67005))))
            (if (macro-unbound-global-exception? _exn65630_)
                (macro-unbound-global-exception-code _exn65630_)
                (let ((__tmp67003
                       (let ((__tmp67004
                              (let ()
                                (declare (not safe))
                                (cons _exn65630_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp67004))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67003))))))
    (define unbound-global-exception-rte
      (lambda (_exn65626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65626_))
            (let ((_e65628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65626_ 'exception))))
              (if (macro-unbound-global-exception? _e65628_)
                  (macro-unbound-global-exception-rte _e65628_)
                  (let ((__tmp67009
                         (let ((__tmp67010
                                (let ()
                                  (declare (not safe))
                                  (cons _e65628_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp67010))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67009))))
            (if (macro-unbound-global-exception? _exn65626_)
                (macro-unbound-global-exception-rte _exn65626_)
                (let ((__tmp67007
                       (let ((__tmp67008
                              (let ()
                                (declare (not safe))
                                (cons _exn65626_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp67008))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67007))))))
    (define unbound-global-exception-variable
      (lambda (_exn65620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65620_))
            (let ((_e65623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65620_ 'exception))))
              (if (macro-unbound-global-exception? _e65623_)
                  (macro-unbound-global-exception-variable _e65623_)
                  (let ((__tmp67013
                         (let ((__tmp67014
                                (let ()
                                  (declare (not safe))
                                  (cons _e65623_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp67014))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67013))))
            (if (macro-unbound-global-exception? _exn65620_)
                (macro-unbound-global-exception-variable _exn65620_)
                (let ((__tmp67011
                       (let ((__tmp67012
                              (let ()
                                (declare (not safe))
                                (cons _exn65620_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp67012))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67011))))))
    (define unbound-key-exception?
      (lambda (_exn65616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65616_))
            (let ((_e65618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65616_ 'exception))))
              (macro-unbound-key-exception? _e65618_))
            (macro-unbound-key-exception? _exn65616_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65612_))
            (let ((_e65614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65612_ 'exception))))
              (if (macro-unbound-key-exception? _e65614_)
                  (macro-unbound-key-exception-arguments _e65614_)
                  (let ((__tmp67017
                         (let ((__tmp67018
                                (let ()
                                  (declare (not safe))
                                  (cons _e65614_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp67018))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67017))))
            (if (macro-unbound-key-exception? _exn65612_)
                (macro-unbound-key-exception-arguments _exn65612_)
                (let ((__tmp67015
                       (let ((__tmp67016
                              (let ()
                                (declare (not safe))
                                (cons _exn65612_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp67016))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67015))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65606_))
            (let ((_e65609_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65606_ 'exception))))
              (if (macro-unbound-key-exception? _e65609_)
                  (macro-unbound-key-exception-procedure _e65609_)
                  (let ((__tmp67021
                         (let ((__tmp67022
                                (let ()
                                  (declare (not safe))
                                  (cons _e65609_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp67022))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67021))))
            (if (macro-unbound-key-exception? _exn65606_)
                (macro-unbound-key-exception-procedure _exn65606_)
                (let ((__tmp67019
                       (let ((__tmp67020
                              (let ()
                                (declare (not safe))
                                (cons _exn65606_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp67020))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67019))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65602_))
            (let ((_e65604_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65602_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65604_))
            (macro-unbound-os-environment-variable-exception? _exn65602_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65598_))
            (let ((_e65600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65598_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65600_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65600_)
                  (let ((__tmp67025
                         (let ((__tmp67026
                                (let ()
                                  (declare (not safe))
                                  (cons _e65600_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp67026))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67025))))
            (if (macro-unbound-os-environment-variable-exception? _exn65598_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65598_)
                (let ((__tmp67023
                       (let ((__tmp67024
                              (let ()
                                (declare (not safe))
                                (cons _exn65598_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp67024))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67023))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn65592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65592_))
            (let ((_e65595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65592_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65595_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e65595_)
                  (let ((__tmp67029
                         (let ((__tmp67030
                                (let ()
                                  (declare (not safe))
                                  (cons _e65595_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp67030))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67029))))
            (if (macro-unbound-os-environment-variable-exception? _exn65592_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn65592_)
                (let ((__tmp67027
                       (let ((__tmp67028
                              (let ()
                                (declare (not safe))
                                (cons _exn65592_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp67028))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67027))))))
    (define unbound-serial-number-exception?
      (lambda (_exn65588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65588_))
            (let ((_e65590_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65588_ 'exception))))
              (macro-unbound-serial-number-exception? _e65590_))
            (macro-unbound-serial-number-exception? _exn65588_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn65584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65584_))
            (let ((_e65586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65584_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65586_)
                  (macro-unbound-serial-number-exception-arguments _e65586_)
                  (let ((__tmp67033
                         (let ((__tmp67034
                                (let ()
                                  (declare (not safe))
                                  (cons _e65586_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp67034))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67033))))
            (if (macro-unbound-serial-number-exception? _exn65584_)
                (macro-unbound-serial-number-exception-arguments _exn65584_)
                (let ((__tmp67031
                       (let ((__tmp67032
                              (let ()
                                (declare (not safe))
                                (cons _exn65584_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp67032))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67031))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn65578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65578_))
            (let ((_e65581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65578_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65581_)
                  (macro-unbound-serial-number-exception-procedure _e65581_)
                  (let ((__tmp67037
                         (let ((__tmp67038
                                (let ()
                                  (declare (not safe))
                                  (cons _e65581_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp67038))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67037))))
            (if (macro-unbound-serial-number-exception? _exn65578_)
                (macro-unbound-serial-number-exception-procedure _exn65578_)
                (let ((__tmp67035
                       (let ((__tmp67036
                              (let ()
                                (declare (not safe))
                                (cons _exn65578_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp67036))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67035))))))
    (define uncaught-exception?
      (lambda (_exn65574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65574_))
            (let ((_e65576_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65574_ 'exception))))
              (macro-uncaught-exception? _e65576_))
            (macro-uncaught-exception? _exn65574_))))
    (define uncaught-exception-arguments
      (lambda (_exn65570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65570_))
            (let ((_e65572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65570_ 'exception))))
              (if (macro-uncaught-exception? _e65572_)
                  (macro-uncaught-exception-arguments _e65572_)
                  (let ((__tmp67041
                         (let ((__tmp67042
                                (let ()
                                  (declare (not safe))
                                  (cons _e65572_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp67042))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67041))))
            (if (macro-uncaught-exception? _exn65570_)
                (macro-uncaught-exception-arguments _exn65570_)
                (let ((__tmp67039
                       (let ((__tmp67040
                              (let ()
                                (declare (not safe))
                                (cons _exn65570_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp67040))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67039))))))
    (define uncaught-exception-procedure
      (lambda (_exn65566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65566_))
            (let ((_e65568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65566_ 'exception))))
              (if (macro-uncaught-exception? _e65568_)
                  (macro-uncaught-exception-procedure _e65568_)
                  (let ((__tmp67045
                         (let ((__tmp67046
                                (let ()
                                  (declare (not safe))
                                  (cons _e65568_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp67046))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67045))))
            (if (macro-uncaught-exception? _exn65566_)
                (macro-uncaught-exception-procedure _exn65566_)
                (let ((__tmp67043
                       (let ((__tmp67044
                              (let ()
                                (declare (not safe))
                                (cons _exn65566_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp67044))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67043))))))
    (define uncaught-exception-reason
      (lambda (_exn65560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65560_))
            (let ((_e65563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65560_ 'exception))))
              (if (macro-uncaught-exception? _e65563_)
                  (macro-uncaught-exception-reason _e65563_)
                  (let ((__tmp67049
                         (let ((__tmp67050
                                (let ()
                                  (declare (not safe))
                                  (cons _e65563_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp67050))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67049))))
            (if (macro-uncaught-exception? _exn65560_)
                (macro-uncaught-exception-reason _exn65560_)
                (let ((__tmp67047
                       (let ((__tmp67048
                              (let ()
                                (declare (not safe))
                                (cons _exn65560_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp67048))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67047))))))
    (define uninitialized-thread-exception?
      (lambda (_exn65556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65556_))
            (let ((_e65558_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65556_ 'exception))))
              (macro-uninitialized-thread-exception? _e65558_))
            (macro-uninitialized-thread-exception? _exn65556_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn65552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65552_))
            (let ((_e65554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65552_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65554_)
                  (macro-uninitialized-thread-exception-arguments _e65554_)
                  (let ((__tmp67053
                         (let ((__tmp67054
                                (let ()
                                  (declare (not safe))
                                  (cons _e65554_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp67054))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67053))))
            (if (macro-uninitialized-thread-exception? _exn65552_)
                (macro-uninitialized-thread-exception-arguments _exn65552_)
                (let ((__tmp67051
                       (let ((__tmp67052
                              (let ()
                                (declare (not safe))
                                (cons _exn65552_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp67052))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67051))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn65546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65546_))
            (let ((_e65549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65546_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65549_)
                  (macro-uninitialized-thread-exception-procedure _e65549_)
                  (let ((__tmp67057
                         (let ((__tmp67058
                                (let ()
                                  (declare (not safe))
                                  (cons _e65549_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp67058))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67057))))
            (if (macro-uninitialized-thread-exception? _exn65546_)
                (macro-uninitialized-thread-exception-procedure _exn65546_)
                (let ((__tmp67055
                       (let ((__tmp67056
                              (let ()
                                (declare (not safe))
                                (cons _exn65546_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp67056))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67055))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn65542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65542_))
            (let ((_e65544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65542_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e65544_))
            (macro-unknown-keyword-argument-exception? _exn65542_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn65538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65538_))
            (let ((_e65540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65538_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65540_)
                  (macro-unknown-keyword-argument-exception-arguments _e65540_)
                  (let ((__tmp67061
                         (let ((__tmp67062
                                (let ()
                                  (declare (not safe))
                                  (cons _e65540_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp67062))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67061))))
            (if (macro-unknown-keyword-argument-exception? _exn65538_)
                (macro-unknown-keyword-argument-exception-arguments _exn65538_)
                (let ((__tmp67059
                       (let ((__tmp67060
                              (let ()
                                (declare (not safe))
                                (cons _exn65538_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp67060))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67059))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn65532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65532_))
            (let ((_e65535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65532_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65535_)
                  (macro-unknown-keyword-argument-exception-procedure _e65535_)
                  (let ((__tmp67065
                         (let ((__tmp67066
                                (let ()
                                  (declare (not safe))
                                  (cons _e65535_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp67066))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67065))))
            (if (macro-unknown-keyword-argument-exception? _exn65532_)
                (macro-unknown-keyword-argument-exception-procedure _exn65532_)
                (let ((__tmp67063
                       (let ((__tmp67064
                              (let ()
                                (declare (not safe))
                                (cons _exn65532_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp67064))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67063))))))
    (define unterminated-process-exception?
      (lambda (_exn65528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65528_))
            (let ((_e65530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65528_ 'exception))))
              (macro-unterminated-process-exception? _e65530_))
            (macro-unterminated-process-exception? _exn65528_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn65524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65524_))
            (let ((_e65526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65524_ 'exception))))
              (if (macro-unterminated-process-exception? _e65526_)
                  (macro-unterminated-process-exception-arguments _e65526_)
                  (let ((__tmp67069
                         (let ((__tmp67070
                                (let ()
                                  (declare (not safe))
                                  (cons _e65526_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp67070))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67069))))
            (if (macro-unterminated-process-exception? _exn65524_)
                (macro-unterminated-process-exception-arguments _exn65524_)
                (let ((__tmp67067
                       (let ((__tmp67068
                              (let ()
                                (declare (not safe))
                                (cons _exn65524_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp67068))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67067))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn65518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65518_))
            (let ((_e65521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65518_ 'exception))))
              (if (macro-unterminated-process-exception? _e65521_)
                  (macro-unterminated-process-exception-procedure _e65521_)
                  (let ((__tmp67073
                         (let ((__tmp67074
                                (let ()
                                  (declare (not safe))
                                  (cons _e65521_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp67074))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67073))))
            (if (macro-unterminated-process-exception? _exn65518_)
                (macro-unterminated-process-exception-procedure _exn65518_)
                (let ((__tmp67071
                       (let ((__tmp67072
                              (let ()
                                (declare (not safe))
                                (cons _exn65518_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp67072))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67071))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn65514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65514_))
            (let ((_e65516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65514_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e65516_))
            (macro-wrong-number-of-arguments-exception? _exn65514_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn65510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65510_))
            (let ((_e65512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65510_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65512_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e65512_)
                  (let ((__tmp67077
                         (let ((__tmp67078
                                (let ()
                                  (declare (not safe))
                                  (cons _e65512_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp67078))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67077))))
            (if (macro-wrong-number-of-arguments-exception? _exn65510_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn65510_)
                (let ((__tmp67075
                       (let ((__tmp67076
                              (let ()
                                (declare (not safe))
                                (cons _exn65510_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp67076))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67075))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn65504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65504_))
            (let ((_e65507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65504_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65507_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e65507_)
                  (let ((__tmp67081
                         (let ((__tmp67082
                                (let ()
                                  (declare (not safe))
                                  (cons _e65507_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp67082))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67081))))
            (if (macro-wrong-number-of-arguments-exception? _exn65504_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn65504_)
                (let ((__tmp67079
                       (let ((__tmp67080
                              (let ()
                                (declare (not safe))
                                (cons _exn65504_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp67080))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67079))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn65500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65500_))
            (let ((_e65502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65500_ 'exception))))
              (macro-wrong-number-of-values-exception? _e65502_))
            (macro-wrong-number-of-values-exception? _exn65500_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn65496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65496_))
            (let ((_e65498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65496_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65498_)
                  (macro-wrong-number-of-values-exception-code _e65498_)
                  (let ((__tmp67085
                         (let ((__tmp67086
                                (let ()
                                  (declare (not safe))
                                  (cons _e65498_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp67086))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67085))))
            (if (macro-wrong-number-of-values-exception? _exn65496_)
                (macro-wrong-number-of-values-exception-code _exn65496_)
                (let ((__tmp67083
                       (let ((__tmp67084
                              (let ()
                                (declare (not safe))
                                (cons _exn65496_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp67084))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67083))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn65492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65492_))
            (let ((_e65494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65492_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65494_)
                  (macro-wrong-number-of-values-exception-rte _e65494_)
                  (let ((__tmp67089
                         (let ((__tmp67090
                                (let ()
                                  (declare (not safe))
                                  (cons _e65494_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp67090))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67089))))
            (if (macro-wrong-number-of-values-exception? _exn65492_)
                (macro-wrong-number-of-values-exception-rte _exn65492_)
                (let ((__tmp67087
                       (let ((__tmp67088
                              (let ()
                                (declare (not safe))
                                (cons _exn65492_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp67088))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67087))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn65486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65486_))
            (let ((_e65489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65486_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65489_)
                  (macro-wrong-number-of-values-exception-vals _e65489_)
                  (let ((__tmp67093
                         (let ((__tmp67094
                                (let ()
                                  (declare (not safe))
                                  (cons _e65489_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp67094))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67093))))
            (if (macro-wrong-number-of-values-exception? _exn65486_)
                (macro-wrong-number-of-values-exception-vals _exn65486_)
                (let ((__tmp67091
                       (let ((__tmp67092
                              (let ()
                                (declare (not safe))
                                (cons _exn65486_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp67092))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67091))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn65480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65480_))
            (let ((_e65483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65480_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e65483_))
            (macro-wrong-processor-c-return-exception? _exn65480_))))))
