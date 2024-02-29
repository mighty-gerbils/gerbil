(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1709229969)
  (begin
    (define Exception::t
      (let ((__tmp66685 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66685
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66653_ (apply make-instance Exception::t _$args66653_)))
    (define StackTrace::t
      (let ((__tmp66686 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66686
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66650_ (apply make-instance StackTrace::t _$args66650_)))
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
      (let ((__tmp66687 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66687
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66647_ (apply make-instance Error::t _$args66647_)))
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
      (let ((__tmp66688 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66688
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66644_
        (apply make-instance RuntimeException::t _$args66644_)))
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
      (lambda (_exn66639_ _continue66640_)
        (let ((_exn66642_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66639_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66642_ _continue66640_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66635_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66635_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66635_ 'continuation))
                '#!void
                (let ((__tmp66689
                       (lambda (_cont66637_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66635_
                            'continuation
                            _cont66637_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66689)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66635_))))
    (define error
      (lambda (_message66632_ . _irritants66633_)
        (raise (let ((__obj66679
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66679
                  _message66632_
                  'irritants:
                  _irritants66633_)
                 __obj66679))))
    (define with-exception-handler
      (lambda (_handler66625_ _thunk66626_)
        (if (let () (declare (not safe)) (procedure? _handler66625_))
            '#!void
            (raise (let ((__obj66680
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66680
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66625_ '())))
                     __obj66680)))
        (if (let () (declare (not safe)) (procedure? _thunk66626_))
            '#!void
            (raise (let ((__obj66681
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66681
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66626_ '())))
                     __obj66681)))
        (let ((__tmp66690
               (lambda (_exn66628_)
                 (let ((_exn66630_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66628_))))
                   (_handler66625_ _exn66630_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66690 _thunk66626_))))
    (define with-catch
      (lambda (_handler66618_ _thunk66619_)
        (if (let () (declare (not safe)) (procedure? _handler66618_))
            '#!void
            (raise (let ((__obj66682
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66682
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66618_ '())))
                     __obj66682)))
        (if (let () (declare (not safe)) (procedure? _thunk66619_))
            '#!void
            (raise (let ((__obj66683
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66683
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66619_ '())))
                     __obj66683)))
        (let ((__tmp66691
               (lambda (_cont66621_)
                 (with-exception-handler
                  (lambda (_exn66623_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont66621_
                       _handler66618_
                       _exn66623_)))
                  _thunk66619_))))
          (declare (not safe))
          (##continuation-capture __tmp66691))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66609_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66609_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66609_)))
            _exn66609_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66609_))
                _exn66609_
                (if (macro-exception? _exn66609_)
                    (let ((_rte66614_
                           (let ((__obj66684
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66684
                                _exn66609_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66684)))
                      (let ((__tmp66692
                             (lambda (_cont66616_)
                               (let ((__tmp66693
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66616_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66614_
                                  'continuation
                                  __tmp66693)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66692))
                      _rte66614_)
                    _exn66609_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj66604_)
        (let ((_$e66606_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj66604_))))
          (if _$e66606_
              _$e66606_
              (let () (declare (not safe)) (error-exception? _obj66604_))))))
    (define error-message
      (lambda (_obj66602_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66602_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66602_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj66602_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj66602_))
                '#f))))
    (define error-irritants
      (lambda (_obj66600_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66600_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66600_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj66600_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj66600_))
                '#f))))
    (define error-trace
      (lambda (_obj66598_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66598_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66598_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e66580_ _port66581_)
        (let ((_$e66583_
               (let ()
                 (declare (not safe))
                 (method-ref _e66580_ 'display-exception))))
          (if _$e66583_
              ((lambda (_f66586_) (_f66586_ _e66580_ _port66581_)) _$e66583_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e66580_ _port66581_))))))
    (define display-exception__0
      (lambda (_e66591_)
        (let ((_port66593_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e66591_ _port66593_))))
    (define display-exception
      (lambda _g66695_
        (let ((_g66694_ (let () (declare (not safe)) (##length _g66695_))))
          (cond ((let () (declare (not safe)) (##fx= _g66694_ 1))
                 (apply (lambda (_e66591_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e66591_)))
                        _g66695_))
                ((let () (declare (not safe)) (##fx= _g66694_ 2))
                 (apply (lambda (_e66595_ _port66596_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e66595_ _port66596_)))
                        _g66695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66695_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self66569_ _message66570_ . _rest66571_)
        (let ((_message66577_
               (if (let () (declare (not safe)) (string? _message66570_))
                   _message66570_
                   (call-with-output-string
                    '""
                    (lambda (_g6657266574_)
                      (display _message66570_ _g6657266574_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self66569_ 'message _message66577_))
          (apply class-instance-init! _self66569_ _rest66571_))))
    (define Error:::init!::specialize
      (lambda (__klass66655 __method-table66656)
        (let ((__message66657
               (let ((__slot66658
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66655 'message))))
                 (if __slot66658
                     __slot66658
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66569_ _message66570_ . _rest66571_)
            (let ((_message66577_
                   (if (let () (declare (not safe)) (string? _message66570_))
                       _message66570_
                       (call-with-output-string
                        '""
                        (lambda (_g6657266574_)
                          (display _message66570_ _g6657266574_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self66569_
                 _message66577_
                 __message66657
                 __klass66655
                 '#f))
              (apply class-instance-init! _self66569_ _rest66571_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self66427_ _port66428_)
        (let ((_tmp-port66430_ (open-output-string))
              (_display-error-newline66431_
               (> (output-port-column _port66428_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66430_))
          (let ((__tmp66696
                 (lambda ()
                   (if _display-error-newline66431_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e66434_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66427_ 'where))))
                     (if _$e66434_ (display _$e66434_) (display '"?")))
                   (let ((__tmp66697
                          (let ((__tmp66698 (object-type _self66427_)))
                            (declare (not safe))
                            (##type-name __tmp66698))))
                     (declare (not safe))
                     (display* '" [" __tmp66697 '"]: "))
                   (let ((__tmp66699
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66427_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66699))
                   (let ((_irritants66437_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66427_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants66437_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj66439_)
                              (write _obj66439_)
                              (write-char '#\space))
                            _irritants66437_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self66427_))
                            (dump-stack-trace?))
                       (let ((_cont6644066442_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self66427_
                                 'continuation))))
                         (if _cont6644066442_
                             (let ((_cont66445_ _cont6644066442_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont66445_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66696
             current-output-port
             _tmp-port66430_))
          (let ((__tmp66700 (get-output-string _tmp-port66430_)))
            (declare (not safe))
            (##write-string __tmp66700 _port66428_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66659 __method-table66660)
        (let ((__irritants66661
               (let ((__slot66665
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66659 'irritants))))
                 (if __slot66665
                     __slot66665
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__continuation66662
               (let ((__slot66666
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66659 'continuation))))
                 (if __slot66666
                     __slot66666
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where66663
               (let ((__slot66667
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66659 'where))))
                 (if __slot66667
                     __slot66667
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__message66664
               (let ((__slot66668
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66659 'message))))
                 (if __slot66668
                     __slot66668
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66427_ _port66428_)
            (let ((_tmp-port66430_ (open-output-string))
                  (_display-error-newline66431_
                   (> (output-port-column _port66428_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66430_))
              (let ((__tmp66701
                     (lambda ()
                       (if _display-error-newline66431_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e66434_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66427_
                                 __where66663
                                 __klass66659
                                 '#f))))
                         (if _$e66434_ (display _$e66434_) (display '"?")))
                       (let ((__tmp66702
                              (let ((__tmp66703 (object-type _self66427_)))
                                (declare (not safe))
                                (##type-name __tmp66703))))
                         (declare (not safe))
                         (display* '" [" __tmp66702 '"]: "))
                       (let ((__tmp66704
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66427_
                                 __message66664
                                 __klass66659
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66704))
                       (let ((_irritants66437_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66427_
                                 __irritants66661
                                 __klass66659
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants66437_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj66439_)
                                  (write _obj66439_)
                                  (write-char '#\space))
                                _irritants66437_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self66427_))
                                (dump-stack-trace?))
                           (let ((_cont6644066442_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self66427_
                                     __continuation66662
                                     __klass66659
                                     '#f))))
                             (if _cont6644066442_
                                 (let ((_cont66445_ _cont6644066442_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont66445_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66701
                 current-output-port
                 _tmp-port66430_))
              (let ((__tmp66705 (get-output-string _tmp-port66430_)))
                (declare (not safe))
                (##write-string __tmp66705 _port66428_)))))))
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
      (lambda (_self66294_ _port66295_)
        (let ((_tmp-port66297_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66297_))
          (let ((__tmp66706
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self66294_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66706 _tmp-port66297_))
          (if (dump-stack-trace?)
              (let ((_cont6629866300_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self66294_ 'continuation))))
                (if _cont6629866300_
                    (let ((_cont66303_ _cont6629866300_))
                      (display '"--- continuation backtrace:" _tmp-port66297_)
                      (newline _tmp-port66297_)
                      (display-continuation-backtrace
                       _cont66303_
                       _tmp-port66297_))
                    '#f))
              '#!void)
          (let ((__tmp66707 (get-output-string _tmp-port66297_)))
            (declare (not safe))
            (##write-string __tmp66707 _port66295_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66669 __method-table66670)
        (let ((__exception66671
               (let ((__slot66673
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66669 'exception))))
                 (if __slot66673
                     __slot66673
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation66672
               (let ((__slot66674
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66669 'continuation))))
                 (if __slot66674
                     __slot66674
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self66294_ _port66295_)
            (let ((_tmp-port66297_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66297_))
              (let ((__tmp66708
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self66294_
                        __exception66671
                        __klass66669
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66708 _tmp-port66297_))
              (if (dump-stack-trace?)
                  (let ((_cont6629866300_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self66294_
                            __continuation66672
                            __klass66669
                            '#f))))
                    (if _cont6629866300_
                        (let ((_cont66303_ _cont6629866300_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port66297_)
                          (newline _tmp-port66297_)
                          (display-continuation-backtrace
                           _cont66303_
                           _tmp-port66297_))
                        '#f))
                  '#!void)
              (let ((__tmp66709 (get-output-string _tmp-port66297_)))
                (declare (not safe))
                (##write-string __tmp66709 _port66295_)))))))
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
      (lambda (_port66166_)
        (if (macro-character-port? _port66166_)
            (let ((_old-width66168_
                   (macro-character-port-output-width _port66166_)))
              (macro-character-port-output-width-set!
               _port66166_
               (lambda (_port66170_) '256))
              _old-width66168_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port66163_ _old-width66164_)
        (if (macro-character-port? _port66163_)
            (macro-character-port-output-width-set!
             _port66163_
             _old-width66164_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e66161_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e66161_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn66155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66155_))
            (let ((_e66158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66155_ 'exception))))
              (macro-abandoned-mutex-exception? _e66158_))
            (macro-abandoned-mutex-exception? _exn66155_))))
    (define cfun-conversion-exception?
      (lambda (_exn66151_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66151_))
            (let ((_e66153_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66151_ 'exception))))
              (macro-cfun-conversion-exception? _e66153_))
            (macro-cfun-conversion-exception? _exn66151_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn66147_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66147_))
            (let ((_e66149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66147_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66149_)
                  (macro-cfun-conversion-exception-arguments _e66149_)
                  (let ((__tmp66712
                         (let ((__tmp66713
                                (let ()
                                  (declare (not safe))
                                  (cons _e66149_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66713))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66712))))
            (if (macro-cfun-conversion-exception? _exn66147_)
                (macro-cfun-conversion-exception-arguments _exn66147_)
                (let ((__tmp66710
                       (let ((__tmp66711
                              (let ()
                                (declare (not safe))
                                (cons _exn66147_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66711))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66710))))))
    (define cfun-conversion-exception-code
      (lambda (_exn66143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66143_))
            (let ((_e66145_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66143_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66145_)
                  (macro-cfun-conversion-exception-code _e66145_)
                  (let ((__tmp66716
                         (let ((__tmp66717
                                (let ()
                                  (declare (not safe))
                                  (cons _e66145_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66717))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66716))))
            (if (macro-cfun-conversion-exception? _exn66143_)
                (macro-cfun-conversion-exception-code _exn66143_)
                (let ((__tmp66714
                       (let ((__tmp66715
                              (let ()
                                (declare (not safe))
                                (cons _exn66143_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66715))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66714))))))
    (define cfun-conversion-exception-message
      (lambda (_exn66139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66139_))
            (let ((_e66141_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66139_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66141_)
                  (macro-cfun-conversion-exception-message _e66141_)
                  (let ((__tmp66720
                         (let ((__tmp66721
                                (let ()
                                  (declare (not safe))
                                  (cons _e66141_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66721))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66720))))
            (if (macro-cfun-conversion-exception? _exn66139_)
                (macro-cfun-conversion-exception-message _exn66139_)
                (let ((__tmp66718
                       (let ((__tmp66719
                              (let ()
                                (declare (not safe))
                                (cons _exn66139_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66719))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66718))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn66133_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66133_))
            (let ((_e66136_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66133_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66136_)
                  (macro-cfun-conversion-exception-procedure _e66136_)
                  (let ((__tmp66724
                         (let ((__tmp66725
                                (let ()
                                  (declare (not safe))
                                  (cons _e66136_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66725))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66724))))
            (if (macro-cfun-conversion-exception? _exn66133_)
                (macro-cfun-conversion-exception-procedure _exn66133_)
                (let ((__tmp66722
                       (let ((__tmp66723
                              (let ()
                                (declare (not safe))
                                (cons _exn66133_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66723))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66722))))))
    (define datum-parsing-exception?
      (lambda (_exn66129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66129_))
            (let ((_e66131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66129_ 'exception))))
              (macro-datum-parsing-exception? _e66131_))
            (macro-datum-parsing-exception? _exn66129_))))
    (define datum-parsing-exception-kind
      (lambda (_exn66125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66125_))
            (let ((_e66127_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66125_ 'exception))))
              (if (macro-datum-parsing-exception? _e66127_)
                  (macro-datum-parsing-exception-kind _e66127_)
                  (let ((__tmp66728
                         (let ((__tmp66729
                                (let ()
                                  (declare (not safe))
                                  (cons _e66127_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66729))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66728))))
            (if (macro-datum-parsing-exception? _exn66125_)
                (macro-datum-parsing-exception-kind _exn66125_)
                (let ((__tmp66726
                       (let ((__tmp66727
                              (let ()
                                (declare (not safe))
                                (cons _exn66125_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66727))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66726))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn66121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66121_))
            (let ((_e66123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66121_ 'exception))))
              (if (macro-datum-parsing-exception? _e66123_)
                  (macro-datum-parsing-exception-parameters _e66123_)
                  (let ((__tmp66732
                         (let ((__tmp66733
                                (let ()
                                  (declare (not safe))
                                  (cons _e66123_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66733))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66732))))
            (if (macro-datum-parsing-exception? _exn66121_)
                (macro-datum-parsing-exception-parameters _exn66121_)
                (let ((__tmp66730
                       (let ((__tmp66731
                              (let ()
                                (declare (not safe))
                                (cons _exn66121_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66731))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66730))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn66115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66115_))
            (let ((_e66118_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66115_ 'exception))))
              (if (macro-datum-parsing-exception? _e66118_)
                  (macro-datum-parsing-exception-readenv _e66118_)
                  (let ((__tmp66736
                         (let ((__tmp66737
                                (let ()
                                  (declare (not safe))
                                  (cons _e66118_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66737))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66736))))
            (if (macro-datum-parsing-exception? _exn66115_)
                (macro-datum-parsing-exception-readenv _exn66115_)
                (let ((__tmp66734
                       (let ((__tmp66735
                              (let ()
                                (declare (not safe))
                                (cons _exn66115_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66735))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66734))))))
    (define deadlock-exception?
      (lambda (_exn66109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66109_))
            (let ((_e66112_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66109_ 'exception))))
              (macro-deadlock-exception? _e66112_))
            (macro-deadlock-exception? _exn66109_))))
    (define divide-by-zero-exception?
      (lambda (_exn66105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66105_))
            (let ((_e66107_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66105_ 'exception))))
              (macro-divide-by-zero-exception? _e66107_))
            (macro-divide-by-zero-exception? _exn66105_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn66101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66101_))
            (let ((_e66103_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66101_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66103_)
                  (macro-divide-by-zero-exception-arguments _e66103_)
                  (let ((__tmp66740
                         (let ((__tmp66741
                                (let ()
                                  (declare (not safe))
                                  (cons _e66103_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp66741))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66740))))
            (if (macro-divide-by-zero-exception? _exn66101_)
                (macro-divide-by-zero-exception-arguments _exn66101_)
                (let ((__tmp66738
                       (let ((__tmp66739
                              (let ()
                                (declare (not safe))
                                (cons _exn66101_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp66739))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66738))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn66095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66095_))
            (let ((_e66098_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66095_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66098_)
                  (macro-divide-by-zero-exception-procedure _e66098_)
                  (let ((__tmp66744
                         (let ((__tmp66745
                                (let ()
                                  (declare (not safe))
                                  (cons _e66098_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp66745))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66744))))
            (if (macro-divide-by-zero-exception? _exn66095_)
                (macro-divide-by-zero-exception-procedure _exn66095_)
                (let ((__tmp66742
                       (let ((__tmp66743
                              (let ()
                                (declare (not safe))
                                (cons _exn66095_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp66743))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66742))))))
    (define error-exception?
      (lambda (_exn66091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66091_))
            (let ((_e66093_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66091_ 'exception))))
              (macro-error-exception? _e66093_))
            (macro-error-exception? _exn66091_))))
    (define error-exception-message
      (lambda (_exn66087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66087_))
            (let ((_e66089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66087_ 'exception))))
              (if (macro-error-exception? _e66089_)
                  (macro-error-exception-message _e66089_)
                  (let ((__tmp66748
                         (let ((__tmp66749
                                (let ()
                                  (declare (not safe))
                                  (cons _e66089_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp66749))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66748))))
            (if (macro-error-exception? _exn66087_)
                (macro-error-exception-message _exn66087_)
                (let ((__tmp66746
                       (let ((__tmp66747
                              (let ()
                                (declare (not safe))
                                (cons _exn66087_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp66747))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66746))))))
    (define error-exception-parameters
      (lambda (_exn66081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66081_))
            (let ((_e66084_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66081_ 'exception))))
              (if (macro-error-exception? _e66084_)
                  (macro-error-exception-parameters _e66084_)
                  (let ((__tmp66752
                         (let ((__tmp66753
                                (let ()
                                  (declare (not safe))
                                  (cons _e66084_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp66753))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66752))))
            (if (macro-error-exception? _exn66081_)
                (macro-error-exception-parameters _exn66081_)
                (let ((__tmp66750
                       (let ((__tmp66751
                              (let ()
                                (declare (not safe))
                                (cons _exn66081_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp66751))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66750))))))
    (define expression-parsing-exception?
      (lambda (_exn66077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66077_))
            (let ((_e66079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66077_ 'exception))))
              (macro-expression-parsing-exception? _e66079_))
            (macro-expression-parsing-exception? _exn66077_))))
    (define expression-parsing-exception-kind
      (lambda (_exn66073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66073_))
            (let ((_e66075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66073_ 'exception))))
              (if (macro-expression-parsing-exception? _e66075_)
                  (macro-expression-parsing-exception-kind _e66075_)
                  (let ((__tmp66756
                         (let ((__tmp66757
                                (let ()
                                  (declare (not safe))
                                  (cons _e66075_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp66757))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66756))))
            (if (macro-expression-parsing-exception? _exn66073_)
                (macro-expression-parsing-exception-kind _exn66073_)
                (let ((__tmp66754
                       (let ((__tmp66755
                              (let ()
                                (declare (not safe))
                                (cons _exn66073_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp66755))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66754))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn66069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66069_))
            (let ((_e66071_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66069_ 'exception))))
              (if (macro-expression-parsing-exception? _e66071_)
                  (macro-expression-parsing-exception-parameters _e66071_)
                  (let ((__tmp66760
                         (let ((__tmp66761
                                (let ()
                                  (declare (not safe))
                                  (cons _e66071_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp66761))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66760))))
            (if (macro-expression-parsing-exception? _exn66069_)
                (macro-expression-parsing-exception-parameters _exn66069_)
                (let ((__tmp66758
                       (let ((__tmp66759
                              (let ()
                                (declare (not safe))
                                (cons _exn66069_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp66759))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66758))))))
    (define expression-parsing-exception-source
      (lambda (_exn66063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66063_))
            (let ((_e66066_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66063_ 'exception))))
              (if (macro-expression-parsing-exception? _e66066_)
                  (macro-expression-parsing-exception-source _e66066_)
                  (let ((__tmp66764
                         (let ((__tmp66765
                                (let ()
                                  (declare (not safe))
                                  (cons _e66066_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp66765))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66764))))
            (if (macro-expression-parsing-exception? _exn66063_)
                (macro-expression-parsing-exception-source _exn66063_)
                (let ((__tmp66762
                       (let ((__tmp66763
                              (let ()
                                (declare (not safe))
                                (cons _exn66063_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp66763))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66762))))))
    (define file-exists-exception?
      (lambda (_exn66059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66059_))
            (let ((_e66061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66059_ 'exception))))
              (macro-file-exists-exception? _e66061_))
            (macro-file-exists-exception? _exn66059_))))
    (define file-exists-exception-arguments
      (lambda (_exn66055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66055_))
            (let ((_e66057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66055_ 'exception))))
              (if (macro-file-exists-exception? _e66057_)
                  (macro-file-exists-exception-arguments _e66057_)
                  (let ((__tmp66768
                         (let ((__tmp66769
                                (let ()
                                  (declare (not safe))
                                  (cons _e66057_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp66769))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66768))))
            (if (macro-file-exists-exception? _exn66055_)
                (macro-file-exists-exception-arguments _exn66055_)
                (let ((__tmp66766
                       (let ((__tmp66767
                              (let ()
                                (declare (not safe))
                                (cons _exn66055_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp66767))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66766))))))
    (define file-exists-exception-procedure
      (lambda (_exn66049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66049_))
            (let ((_e66052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66049_ 'exception))))
              (if (macro-file-exists-exception? _e66052_)
                  (macro-file-exists-exception-procedure _e66052_)
                  (let ((__tmp66772
                         (let ((__tmp66773
                                (let ()
                                  (declare (not safe))
                                  (cons _e66052_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp66773))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66772))))
            (if (macro-file-exists-exception? _exn66049_)
                (macro-file-exists-exception-procedure _exn66049_)
                (let ((__tmp66770
                       (let ((__tmp66771
                              (let ()
                                (declare (not safe))
                                (cons _exn66049_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp66771))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66770))))))
    (define fixnum-overflow-exception?
      (lambda (_exn66045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66045_))
            (let ((_e66047_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66045_ 'exception))))
              (macro-fixnum-overflow-exception? _e66047_))
            (macro-fixnum-overflow-exception? _exn66045_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn66041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66041_))
            (let ((_e66043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66041_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66043_)
                  (macro-fixnum-overflow-exception-arguments _e66043_)
                  (let ((__tmp66776
                         (let ((__tmp66777
                                (let ()
                                  (declare (not safe))
                                  (cons _e66043_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp66777))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66776))))
            (if (macro-fixnum-overflow-exception? _exn66041_)
                (macro-fixnum-overflow-exception-arguments _exn66041_)
                (let ((__tmp66774
                       (let ((__tmp66775
                              (let ()
                                (declare (not safe))
                                (cons _exn66041_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp66775))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66774))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn66035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66035_))
            (let ((_e66038_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66035_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66038_)
                  (macro-fixnum-overflow-exception-procedure _e66038_)
                  (let ((__tmp66780
                         (let ((__tmp66781
                                (let ()
                                  (declare (not safe))
                                  (cons _e66038_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp66781))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66780))))
            (if (macro-fixnum-overflow-exception? _exn66035_)
                (macro-fixnum-overflow-exception-procedure _exn66035_)
                (let ((__tmp66778
                       (let ((__tmp66779
                              (let ()
                                (declare (not safe))
                                (cons _exn66035_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp66779))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66778))))))
    (define heap-overflow-exception?
      (lambda (_exn66029_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66029_))
            (let ((_e66032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66029_ 'exception))))
              (macro-heap-overflow-exception? _e66032_))
            (macro-heap-overflow-exception? _exn66029_))))
    (define inactive-thread-exception?
      (lambda (_exn66025_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66025_))
            (let ((_e66027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66025_ 'exception))))
              (macro-inactive-thread-exception? _e66027_))
            (macro-inactive-thread-exception? _exn66025_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn66021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66021_))
            (let ((_e66023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66021_ 'exception))))
              (if (macro-inactive-thread-exception? _e66023_)
                  (macro-inactive-thread-exception-arguments _e66023_)
                  (let ((__tmp66784
                         (let ((__tmp66785
                                (let ()
                                  (declare (not safe))
                                  (cons _e66023_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp66785))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66784))))
            (if (macro-inactive-thread-exception? _exn66021_)
                (macro-inactive-thread-exception-arguments _exn66021_)
                (let ((__tmp66782
                       (let ((__tmp66783
                              (let ()
                                (declare (not safe))
                                (cons _exn66021_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp66783))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66782))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn66015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66015_))
            (let ((_e66018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66015_ 'exception))))
              (if (macro-inactive-thread-exception? _e66018_)
                  (macro-inactive-thread-exception-procedure _e66018_)
                  (let ((__tmp66788
                         (let ((__tmp66789
                                (let ()
                                  (declare (not safe))
                                  (cons _e66018_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp66789))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66788))))
            (if (macro-inactive-thread-exception? _exn66015_)
                (macro-inactive-thread-exception-procedure _exn66015_)
                (let ((__tmp66786
                       (let ((__tmp66787
                              (let ()
                                (declare (not safe))
                                (cons _exn66015_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp66787))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66786))))))
    (define initialized-thread-exception?
      (lambda (_exn66011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66011_))
            (let ((_e66013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66011_ 'exception))))
              (macro-initialized-thread-exception? _e66013_))
            (macro-initialized-thread-exception? _exn66011_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn66007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66007_))
            (let ((_e66009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66007_ 'exception))))
              (if (macro-initialized-thread-exception? _e66009_)
                  (macro-initialized-thread-exception-arguments _e66009_)
                  (let ((__tmp66792
                         (let ((__tmp66793
                                (let ()
                                  (declare (not safe))
                                  (cons _e66009_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp66793))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66792))))
            (if (macro-initialized-thread-exception? _exn66007_)
                (macro-initialized-thread-exception-arguments _exn66007_)
                (let ((__tmp66790
                       (let ((__tmp66791
                              (let ()
                                (declare (not safe))
                                (cons _exn66007_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp66791))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66790))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn66001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66001_))
            (let ((_e66004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66001_ 'exception))))
              (if (macro-initialized-thread-exception? _e66004_)
                  (macro-initialized-thread-exception-procedure _e66004_)
                  (let ((__tmp66796
                         (let ((__tmp66797
                                (let ()
                                  (declare (not safe))
                                  (cons _e66004_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp66797))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66796))))
            (if (macro-initialized-thread-exception? _exn66001_)
                (macro-initialized-thread-exception-procedure _exn66001_)
                (let ((__tmp66794
                       (let ((__tmp66795
                              (let ()
                                (declare (not safe))
                                (cons _exn66001_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp66795))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66794))))))
    (define invalid-hash-number-exception?
      (lambda (_exn65997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65997_))
            (let ((_e65999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65997_ 'exception))))
              (macro-invalid-hash-number-exception? _e65999_))
            (macro-invalid-hash-number-exception? _exn65997_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn65993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65993_))
            (let ((_e65995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65993_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65995_)
                  (macro-invalid-hash-number-exception-arguments _e65995_)
                  (let ((__tmp66800
                         (let ((__tmp66801
                                (let ()
                                  (declare (not safe))
                                  (cons _e65995_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp66801))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66800))))
            (if (macro-invalid-hash-number-exception? _exn65993_)
                (macro-invalid-hash-number-exception-arguments _exn65993_)
                (let ((__tmp66798
                       (let ((__tmp66799
                              (let ()
                                (declare (not safe))
                                (cons _exn65993_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp66799))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66798))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn65987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65987_))
            (let ((_e65990_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65987_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65990_)
                  (macro-invalid-hash-number-exception-procedure _e65990_)
                  (let ((__tmp66804
                         (let ((__tmp66805
                                (let ()
                                  (declare (not safe))
                                  (cons _e65990_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp66805))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66804))))
            (if (macro-invalid-hash-number-exception? _exn65987_)
                (macro-invalid-hash-number-exception-procedure _exn65987_)
                (let ((__tmp66802
                       (let ((__tmp66803
                              (let ()
                                (declare (not safe))
                                (cons _exn65987_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp66803))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66802))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn65983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65983_))
            (let ((_e65985_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65983_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e65985_))
            (macro-invalid-utf8-encoding-exception? _exn65983_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn65979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65979_))
            (let ((_e65981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65979_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65981_)
                  (macro-invalid-utf8-encoding-exception-arguments _e65981_)
                  (let ((__tmp66808
                         (let ((__tmp66809
                                (let ()
                                  (declare (not safe))
                                  (cons _e65981_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp66809))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66808))))
            (if (macro-invalid-utf8-encoding-exception? _exn65979_)
                (macro-invalid-utf8-encoding-exception-arguments _exn65979_)
                (let ((__tmp66806
                       (let ((__tmp66807
                              (let ()
                                (declare (not safe))
                                (cons _exn65979_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp66807))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66806))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn65973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65973_))
            (let ((_e65976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65973_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65976_)
                  (macro-invalid-utf8-encoding-exception-procedure _e65976_)
                  (let ((__tmp66812
                         (let ((__tmp66813
                                (let ()
                                  (declare (not safe))
                                  (cons _e65976_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp66813))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66812))))
            (if (macro-invalid-utf8-encoding-exception? _exn65973_)
                (macro-invalid-utf8-encoding-exception-procedure _exn65973_)
                (let ((__tmp66810
                       (let ((__tmp66811
                              (let ()
                                (declare (not safe))
                                (cons _exn65973_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp66811))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66810))))))
    (define join-timeout-exception?
      (lambda (_exn65969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65969_))
            (let ((_e65971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65969_ 'exception))))
              (macro-join-timeout-exception? _e65971_))
            (macro-join-timeout-exception? _exn65969_))))
    (define join-timeout-exception-arguments
      (lambda (_exn65965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65965_))
            (let ((_e65967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65965_ 'exception))))
              (if (macro-join-timeout-exception? _e65967_)
                  (macro-join-timeout-exception-arguments _e65967_)
                  (let ((__tmp66816
                         (let ((__tmp66817
                                (let ()
                                  (declare (not safe))
                                  (cons _e65967_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp66817))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66816))))
            (if (macro-join-timeout-exception? _exn65965_)
                (macro-join-timeout-exception-arguments _exn65965_)
                (let ((__tmp66814
                       (let ((__tmp66815
                              (let ()
                                (declare (not safe))
                                (cons _exn65965_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp66815))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66814))))))
    (define join-timeout-exception-procedure
      (lambda (_exn65959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65959_))
            (let ((_e65962_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65959_ 'exception))))
              (if (macro-join-timeout-exception? _e65962_)
                  (macro-join-timeout-exception-procedure _e65962_)
                  (let ((__tmp66820
                         (let ((__tmp66821
                                (let ()
                                  (declare (not safe))
                                  (cons _e65962_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp66821))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66820))))
            (if (macro-join-timeout-exception? _exn65959_)
                (macro-join-timeout-exception-procedure _exn65959_)
                (let ((__tmp66818
                       (let ((__tmp66819
                              (let ()
                                (declare (not safe))
                                (cons _exn65959_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp66819))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66818))))))
    (define keyword-expected-exception?
      (lambda (_exn65955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65955_))
            (let ((_e65957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65955_ 'exception))))
              (macro-keyword-expected-exception? _e65957_))
            (macro-keyword-expected-exception? _exn65955_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn65951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65951_))
            (let ((_e65953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65951_ 'exception))))
              (if (macro-keyword-expected-exception? _e65953_)
                  (macro-keyword-expected-exception-arguments _e65953_)
                  (let ((__tmp66824
                         (let ((__tmp66825
                                (let ()
                                  (declare (not safe))
                                  (cons _e65953_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp66825))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66824))))
            (if (macro-keyword-expected-exception? _exn65951_)
                (macro-keyword-expected-exception-arguments _exn65951_)
                (let ((__tmp66822
                       (let ((__tmp66823
                              (let ()
                                (declare (not safe))
                                (cons _exn65951_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp66823))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66822))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn65945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65945_))
            (let ((_e65948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65945_ 'exception))))
              (if (macro-keyword-expected-exception? _e65948_)
                  (macro-keyword-expected-exception-procedure _e65948_)
                  (let ((__tmp66828
                         (let ((__tmp66829
                                (let ()
                                  (declare (not safe))
                                  (cons _e65948_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp66829))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66828))))
            (if (macro-keyword-expected-exception? _exn65945_)
                (macro-keyword-expected-exception-procedure _exn65945_)
                (let ((__tmp66826
                       (let ((__tmp66827
                              (let ()
                                (declare (not safe))
                                (cons _exn65945_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp66827))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66826))))))
    (define length-mismatch-exception?
      (lambda (_exn65941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65941_))
            (let ((_e65943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65941_ 'exception))))
              (macro-length-mismatch-exception? _e65943_))
            (macro-length-mismatch-exception? _exn65941_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn65937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65937_))
            (let ((_e65939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65937_ 'exception))))
              (if (macro-length-mismatch-exception? _e65939_)
                  (macro-length-mismatch-exception-arg-id _e65939_)
                  (let ((__tmp66832
                         (let ((__tmp66833
                                (let ()
                                  (declare (not safe))
                                  (cons _e65939_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp66833))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66832))))
            (if (macro-length-mismatch-exception? _exn65937_)
                (macro-length-mismatch-exception-arg-id _exn65937_)
                (let ((__tmp66830
                       (let ((__tmp66831
                              (let ()
                                (declare (not safe))
                                (cons _exn65937_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp66831))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66830))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn65933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65933_))
            (let ((_e65935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65933_ 'exception))))
              (if (macro-length-mismatch-exception? _e65935_)
                  (macro-length-mismatch-exception-arguments _e65935_)
                  (let ((__tmp66836
                         (let ((__tmp66837
                                (let ()
                                  (declare (not safe))
                                  (cons _e65935_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp66837))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66836))))
            (if (macro-length-mismatch-exception? _exn65933_)
                (macro-length-mismatch-exception-arguments _exn65933_)
                (let ((__tmp66834
                       (let ((__tmp66835
                              (let ()
                                (declare (not safe))
                                (cons _exn65933_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp66835))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66834))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn65927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65927_))
            (let ((_e65930_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65927_ 'exception))))
              (if (macro-length-mismatch-exception? _e65930_)
                  (macro-length-mismatch-exception-procedure _e65930_)
                  (let ((__tmp66840
                         (let ((__tmp66841
                                (let ()
                                  (declare (not safe))
                                  (cons _e65930_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp66841))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66840))))
            (if (macro-length-mismatch-exception? _exn65927_)
                (macro-length-mismatch-exception-procedure _exn65927_)
                (let ((__tmp66838
                       (let ((__tmp66839
                              (let ()
                                (declare (not safe))
                                (cons _exn65927_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp66839))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66838))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn65923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65923_))
            (let ((_e65925_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65923_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e65925_))
            (macro-mailbox-receive-timeout-exception? _exn65923_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn65919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65919_))
            (let ((_e65921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65919_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65921_)
                  (macro-mailbox-receive-timeout-exception-arguments _e65921_)
                  (let ((__tmp66844
                         (let ((__tmp66845
                                (let ()
                                  (declare (not safe))
                                  (cons _e65921_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp66845))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66844))))
            (if (macro-mailbox-receive-timeout-exception? _exn65919_)
                (macro-mailbox-receive-timeout-exception-arguments _exn65919_)
                (let ((__tmp66842
                       (let ((__tmp66843
                              (let ()
                                (declare (not safe))
                                (cons _exn65919_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp66843))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66842))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn65913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65913_))
            (let ((_e65916_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65913_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65916_)
                  (macro-mailbox-receive-timeout-exception-procedure _e65916_)
                  (let ((__tmp66848
                         (let ((__tmp66849
                                (let ()
                                  (declare (not safe))
                                  (cons _e65916_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp66849))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66848))))
            (if (macro-mailbox-receive-timeout-exception? _exn65913_)
                (macro-mailbox-receive-timeout-exception-procedure _exn65913_)
                (let ((__tmp66846
                       (let ((__tmp66847
                              (let ()
                                (declare (not safe))
                                (cons _exn65913_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp66847))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66846))))))
    (define module-not-found-exception?
      (lambda (_exn65909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65909_))
            (let ((_e65911_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65909_ 'exception))))
              (macro-module-not-found-exception? _e65911_))
            (macro-module-not-found-exception? _exn65909_))))
    (define module-not-found-exception-arguments
      (lambda (_exn65905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65905_))
            (let ((_e65907_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65905_ 'exception))))
              (if (macro-module-not-found-exception? _e65907_)
                  (macro-module-not-found-exception-arguments _e65907_)
                  (let ((__tmp66852
                         (let ((__tmp66853
                                (let ()
                                  (declare (not safe))
                                  (cons _e65907_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp66853))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66852))))
            (if (macro-module-not-found-exception? _exn65905_)
                (macro-module-not-found-exception-arguments _exn65905_)
                (let ((__tmp66850
                       (let ((__tmp66851
                              (let ()
                                (declare (not safe))
                                (cons _exn65905_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp66851))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66850))))))
    (define module-not-found-exception-procedure
      (lambda (_exn65899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65899_))
            (let ((_e65902_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65899_ 'exception))))
              (if (macro-module-not-found-exception? _e65902_)
                  (macro-module-not-found-exception-procedure _e65902_)
                  (let ((__tmp66856
                         (let ((__tmp66857
                                (let ()
                                  (declare (not safe))
                                  (cons _e65902_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp66857))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66856))))
            (if (macro-module-not-found-exception? _exn65899_)
                (macro-module-not-found-exception-procedure _exn65899_)
                (let ((__tmp66854
                       (let ((__tmp66855
                              (let ()
                                (declare (not safe))
                                (cons _exn65899_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp66855))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66854))))))
    (define multiple-c-return-exception?
      (lambda (_exn65893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65893_))
            (let ((_e65896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65893_ 'exception))))
              (macro-multiple-c-return-exception? _e65896_))
            (macro-multiple-c-return-exception? _exn65893_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn65889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65889_))
            (let ((_e65891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65889_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e65891_))
            (macro-no-such-file-or-directory-exception? _exn65889_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn65885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65885_))
            (let ((_e65887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65885_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65887_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e65887_)
                  (let ((__tmp66860
                         (let ((__tmp66861
                                (let ()
                                  (declare (not safe))
                                  (cons _e65887_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp66861))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66860))))
            (if (macro-no-such-file-or-directory-exception? _exn65885_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn65885_)
                (let ((__tmp66858
                       (let ((__tmp66859
                              (let ()
                                (declare (not safe))
                                (cons _exn65885_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp66859))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66858))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn65879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65879_))
            (let ((_e65882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65879_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65882_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e65882_)
                  (let ((__tmp66864
                         (let ((__tmp66865
                                (let ()
                                  (declare (not safe))
                                  (cons _e65882_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp66865))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66864))))
            (if (macro-no-such-file-or-directory-exception? _exn65879_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn65879_)
                (let ((__tmp66862
                       (let ((__tmp66863
                              (let ()
                                (declare (not safe))
                                (cons _exn65879_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp66863))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66862))))))
    (define noncontinuable-exception?
      (lambda (_exn65875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65875_))
            (let ((_e65877_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65875_ 'exception))))
              (macro-noncontinuable-exception? _e65877_))
            (macro-noncontinuable-exception? _exn65875_))))
    (define noncontinuable-exception-reason
      (lambda (_exn65869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65869_))
            (let ((_e65872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65869_ 'exception))))
              (if (macro-noncontinuable-exception? _e65872_)
                  (macro-noncontinuable-exception-reason _e65872_)
                  (let ((__tmp66868
                         (let ((__tmp66869
                                (let ()
                                  (declare (not safe))
                                  (cons _e65872_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp66869))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp66868))))
            (if (macro-noncontinuable-exception? _exn65869_)
                (macro-noncontinuable-exception-reason _exn65869_)
                (let ((__tmp66866
                       (let ((__tmp66867
                              (let ()
                                (declare (not safe))
                                (cons _exn65869_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp66867))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp66866))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn65865_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65865_))
            (let ((_e65867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65865_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e65867_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn65865_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn65861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65861_))
            (let ((_e65863_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65861_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65863_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e65863_)
                  (let ((__tmp66872
                         (let ((__tmp66873
                                (let ()
                                  (declare (not safe))
                                  (cons _e65863_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp66873))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66872))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65861_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn65861_)
                (let ((__tmp66870
                       (let ((__tmp66871
                              (let ()
                                (declare (not safe))
                                (cons _exn65861_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp66871))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66870))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn65855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65855_))
            (let ((_e65858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65855_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65858_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e65858_)
                  (let ((__tmp66876
                         (let ((__tmp66877
                                (let ()
                                  (declare (not safe))
                                  (cons _e65858_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp66877))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66876))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65855_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn65855_)
                (let ((__tmp66874
                       (let ((__tmp66875
                              (let ()
                                (declare (not safe))
                                (cons _exn65855_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp66875))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66874))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn65851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65851_))
            (let ((_e65853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65851_ 'exception))))
              (macro-nonprocedure-operator-exception? _e65853_))
            (macro-nonprocedure-operator-exception? _exn65851_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn65847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65847_))
            (let ((_e65849_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65847_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65849_)
                  (macro-nonprocedure-operator-exception-arguments _e65849_)
                  (let ((__tmp66880
                         (let ((__tmp66881
                                (let ()
                                  (declare (not safe))
                                  (cons _e65849_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp66881))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66880))))
            (if (macro-nonprocedure-operator-exception? _exn65847_)
                (macro-nonprocedure-operator-exception-arguments _exn65847_)
                (let ((__tmp66878
                       (let ((__tmp66879
                              (let ()
                                (declare (not safe))
                                (cons _exn65847_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp66879))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66878))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn65843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65843_))
            (let ((_e65845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65843_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65845_)
                  (macro-nonprocedure-operator-exception-code _e65845_)
                  (let ((__tmp66884
                         (let ((__tmp66885
                                (let ()
                                  (declare (not safe))
                                  (cons _e65845_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp66885))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66884))))
            (if (macro-nonprocedure-operator-exception? _exn65843_)
                (macro-nonprocedure-operator-exception-code _exn65843_)
                (let ((__tmp66882
                       (let ((__tmp66883
                              (let ()
                                (declare (not safe))
                                (cons _exn65843_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp66883))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66882))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn65839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65839_))
            (let ((_e65841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65839_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65841_)
                  (macro-nonprocedure-operator-exception-operator _e65841_)
                  (let ((__tmp66888
                         (let ((__tmp66889
                                (let ()
                                  (declare (not safe))
                                  (cons _e65841_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp66889))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66888))))
            (if (macro-nonprocedure-operator-exception? _exn65839_)
                (macro-nonprocedure-operator-exception-operator _exn65839_)
                (let ((__tmp66886
                       (let ((__tmp66887
                              (let ()
                                (declare (not safe))
                                (cons _exn65839_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp66887))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66886))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn65833_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65833_))
            (let ((_e65836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65833_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65836_)
                  (macro-nonprocedure-operator-exception-rte _e65836_)
                  (let ((__tmp66892
                         (let ((__tmp66893
                                (let ()
                                  (declare (not safe))
                                  (cons _e65836_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp66893))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66892))))
            (if (macro-nonprocedure-operator-exception? _exn65833_)
                (macro-nonprocedure-operator-exception-rte _exn65833_)
                (let ((__tmp66890
                       (let ((__tmp66891
                              (let ()
                                (declare (not safe))
                                (cons _exn65833_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp66891))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66890))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn65829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65829_))
            (let ((_e65831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65829_ 'exception))))
              (macro-not-in-compilation-context-exception? _e65831_))
            (macro-not-in-compilation-context-exception? _exn65829_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn65825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65825_))
            (let ((_e65827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65825_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65827_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e65827_)
                  (let ((__tmp66896
                         (let ((__tmp66897
                                (let ()
                                  (declare (not safe))
                                  (cons _e65827_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp66897))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66896))))
            (if (macro-not-in-compilation-context-exception? _exn65825_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn65825_)
                (let ((__tmp66894
                       (let ((__tmp66895
                              (let ()
                                (declare (not safe))
                                (cons _exn65825_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp66895))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66894))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn65819_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65819_))
            (let ((_e65822_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65819_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65822_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e65822_)
                  (let ((__tmp66900
                         (let ((__tmp66901
                                (let ()
                                  (declare (not safe))
                                  (cons _e65822_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp66901))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66900))))
            (if (macro-not-in-compilation-context-exception? _exn65819_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn65819_)
                (let ((__tmp66898
                       (let ((__tmp66899
                              (let ()
                                (declare (not safe))
                                (cons _exn65819_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp66899))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66898))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn65815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65815_))
            (let ((_e65817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65815_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e65817_))
            (macro-number-of-arguments-limit-exception? _exn65815_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn65811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65811_))
            (let ((_e65813_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65811_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65813_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e65813_)
                  (let ((__tmp66904
                         (let ((__tmp66905
                                (let ()
                                  (declare (not safe))
                                  (cons _e65813_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp66905))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66904))))
            (if (macro-number-of-arguments-limit-exception? _exn65811_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn65811_)
                (let ((__tmp66902
                       (let ((__tmp66903
                              (let ()
                                (declare (not safe))
                                (cons _exn65811_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp66903))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66902))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn65805_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65805_))
            (let ((_e65808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65805_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65808_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e65808_)
                  (let ((__tmp66908
                         (let ((__tmp66909
                                (let ()
                                  (declare (not safe))
                                  (cons _e65808_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp66909))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66908))))
            (if (macro-number-of-arguments-limit-exception? _exn65805_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn65805_)
                (let ((__tmp66906
                       (let ((__tmp66907
                              (let ()
                                (declare (not safe))
                                (cons _exn65805_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp66907))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66906))))))
    (define os-exception?
      (lambda (_exn65801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65801_))
            (let ((_e65803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65801_ 'exception))))
              (macro-os-exception? _e65803_))
            (macro-os-exception? _exn65801_))))
    (define os-exception-arguments
      (lambda (_exn65797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65797_))
            (let ((_e65799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65797_ 'exception))))
              (if (macro-os-exception? _e65799_)
                  (macro-os-exception-arguments _e65799_)
                  (let ((__tmp66912
                         (let ((__tmp66913
                                (let ()
                                  (declare (not safe))
                                  (cons _e65799_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp66913))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66912))))
            (if (macro-os-exception? _exn65797_)
                (macro-os-exception-arguments _exn65797_)
                (let ((__tmp66910
                       (let ((__tmp66911
                              (let ()
                                (declare (not safe))
                                (cons _exn65797_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp66911))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66910))))))
    (define os-exception-code
      (lambda (_exn65793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65793_))
            (let ((_e65795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65793_ 'exception))))
              (if (macro-os-exception? _e65795_)
                  (macro-os-exception-code _e65795_)
                  (let ((__tmp66916
                         (let ((__tmp66917
                                (let ()
                                  (declare (not safe))
                                  (cons _e65795_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp66917))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66916))))
            (if (macro-os-exception? _exn65793_)
                (macro-os-exception-code _exn65793_)
                (let ((__tmp66914
                       (let ((__tmp66915
                              (let ()
                                (declare (not safe))
                                (cons _exn65793_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp66915))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66914))))))
    (define os-exception-message
      (lambda (_exn65789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65789_))
            (let ((_e65791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65789_ 'exception))))
              (if (macro-os-exception? _e65791_)
                  (macro-os-exception-message _e65791_)
                  (let ((__tmp66920
                         (let ((__tmp66921
                                (let ()
                                  (declare (not safe))
                                  (cons _e65791_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp66921))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66920))))
            (if (macro-os-exception? _exn65789_)
                (macro-os-exception-message _exn65789_)
                (let ((__tmp66918
                       (let ((__tmp66919
                              (let ()
                                (declare (not safe))
                                (cons _exn65789_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp66919))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66918))))))
    (define os-exception-procedure
      (lambda (_exn65783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65783_))
            (let ((_e65786_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65783_ 'exception))))
              (if (macro-os-exception? _e65786_)
                  (macro-os-exception-procedure _e65786_)
                  (let ((__tmp66924
                         (let ((__tmp66925
                                (let ()
                                  (declare (not safe))
                                  (cons _e65786_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp66925))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66924))))
            (if (macro-os-exception? _exn65783_)
                (macro-os-exception-procedure _exn65783_)
                (let ((__tmp66922
                       (let ((__tmp66923
                              (let ()
                                (declare (not safe))
                                (cons _exn65783_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp66923))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66922))))))
    (define permission-denied-exception?
      (lambda (_exn65779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65779_))
            (let ((_e65781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65779_ 'exception))))
              (macro-permission-denied-exception? _e65781_))
            (macro-permission-denied-exception? _exn65779_))))
    (define permission-denied-exception-arguments
      (lambda (_exn65775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65775_))
            (let ((_e65777_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65775_ 'exception))))
              (if (macro-permission-denied-exception? _e65777_)
                  (macro-permission-denied-exception-arguments _e65777_)
                  (let ((__tmp66928
                         (let ((__tmp66929
                                (let ()
                                  (declare (not safe))
                                  (cons _e65777_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp66929))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66928))))
            (if (macro-permission-denied-exception? _exn65775_)
                (macro-permission-denied-exception-arguments _exn65775_)
                (let ((__tmp66926
                       (let ((__tmp66927
                              (let ()
                                (declare (not safe))
                                (cons _exn65775_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp66927))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66926))))))
    (define permission-denied-exception-procedure
      (lambda (_exn65769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65769_))
            (let ((_e65772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65769_ 'exception))))
              (if (macro-permission-denied-exception? _e65772_)
                  (macro-permission-denied-exception-procedure _e65772_)
                  (let ((__tmp66932
                         (let ((__tmp66933
                                (let ()
                                  (declare (not safe))
                                  (cons _e65772_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp66933))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66932))))
            (if (macro-permission-denied-exception? _exn65769_)
                (macro-permission-denied-exception-procedure _exn65769_)
                (let ((__tmp66930
                       (let ((__tmp66931
                              (let ()
                                (declare (not safe))
                                (cons _exn65769_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp66931))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66930))))))
    (define range-exception?
      (lambda (_exn65765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65765_))
            (let ((_e65767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65765_ 'exception))))
              (macro-range-exception? _e65767_))
            (macro-range-exception? _exn65765_))))
    (define range-exception-arg-id
      (lambda (_exn65761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65761_))
            (let ((_e65763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65761_ 'exception))))
              (if (macro-range-exception? _e65763_)
                  (macro-range-exception-arg-id _e65763_)
                  (let ((__tmp66936
                         (let ((__tmp66937
                                (let ()
                                  (declare (not safe))
                                  (cons _e65763_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp66937))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66936))))
            (if (macro-range-exception? _exn65761_)
                (macro-range-exception-arg-id _exn65761_)
                (let ((__tmp66934
                       (let ((__tmp66935
                              (let ()
                                (declare (not safe))
                                (cons _exn65761_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp66935))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66934))))))
    (define range-exception-arguments
      (lambda (_exn65757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65757_))
            (let ((_e65759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65757_ 'exception))))
              (if (macro-range-exception? _e65759_)
                  (macro-range-exception-arguments _e65759_)
                  (let ((__tmp66940
                         (let ((__tmp66941
                                (let ()
                                  (declare (not safe))
                                  (cons _e65759_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp66941))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66940))))
            (if (macro-range-exception? _exn65757_)
                (macro-range-exception-arguments _exn65757_)
                (let ((__tmp66938
                       (let ((__tmp66939
                              (let ()
                                (declare (not safe))
                                (cons _exn65757_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp66939))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66938))))))
    (define range-exception-procedure
      (lambda (_exn65751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65751_))
            (let ((_e65754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65751_ 'exception))))
              (if (macro-range-exception? _e65754_)
                  (macro-range-exception-procedure _e65754_)
                  (let ((__tmp66944
                         (let ((__tmp66945
                                (let ()
                                  (declare (not safe))
                                  (cons _e65754_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp66945))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66944))))
            (if (macro-range-exception? _exn65751_)
                (macro-range-exception-procedure _exn65751_)
                (let ((__tmp66942
                       (let ((__tmp66943
                              (let ()
                                (declare (not safe))
                                (cons _exn65751_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp66943))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66942))))))
    (define rpc-remote-error-exception?
      (lambda (_exn65747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65747_))
            (let ((_e65749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65747_ 'exception))))
              (macro-rpc-remote-error-exception? _e65749_))
            (macro-rpc-remote-error-exception? _exn65747_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn65743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65743_))
            (let ((_e65745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65743_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65745_)
                  (macro-rpc-remote-error-exception-arguments _e65745_)
                  (let ((__tmp66948
                         (let ((__tmp66949
                                (let ()
                                  (declare (not safe))
                                  (cons _e65745_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp66949))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66948))))
            (if (macro-rpc-remote-error-exception? _exn65743_)
                (macro-rpc-remote-error-exception-arguments _exn65743_)
                (let ((__tmp66946
                       (let ((__tmp66947
                              (let ()
                                (declare (not safe))
                                (cons _exn65743_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp66947))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66946))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn65739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65739_))
            (let ((_e65741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65739_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65741_)
                  (macro-rpc-remote-error-exception-message _e65741_)
                  (let ((__tmp66952
                         (let ((__tmp66953
                                (let ()
                                  (declare (not safe))
                                  (cons _e65741_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp66953))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66952))))
            (if (macro-rpc-remote-error-exception? _exn65739_)
                (macro-rpc-remote-error-exception-message _exn65739_)
                (let ((__tmp66950
                       (let ((__tmp66951
                              (let ()
                                (declare (not safe))
                                (cons _exn65739_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp66951))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66950))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65733_))
            (let ((_e65736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65733_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65736_)
                  (macro-rpc-remote-error-exception-procedure _e65736_)
                  (let ((__tmp66956
                         (let ((__tmp66957
                                (let ()
                                  (declare (not safe))
                                  (cons _e65736_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp66957))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66956))))
            (if (macro-rpc-remote-error-exception? _exn65733_)
                (macro-rpc-remote-error-exception-procedure _exn65733_)
                (let ((__tmp66954
                       (let ((__tmp66955
                              (let ()
                                (declare (not safe))
                                (cons _exn65733_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp66955))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66954))))))
    (define scheduler-exception?
      (lambda (_exn65729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65729_))
            (let ((_e65731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65729_ 'exception))))
              (macro-scheduler-exception? _e65731_))
            (macro-scheduler-exception? _exn65729_))))
    (define scheduler-exception-reason
      (lambda (_exn65723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65723_))
            (let ((_e65726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65723_ 'exception))))
              (if (macro-scheduler-exception? _e65726_)
                  (macro-scheduler-exception-reason _e65726_)
                  (let ((__tmp66960
                         (let ((__tmp66961
                                (let ()
                                  (declare (not safe))
                                  (cons _e65726_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp66961))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp66960))))
            (if (macro-scheduler-exception? _exn65723_)
                (macro-scheduler-exception-reason _exn65723_)
                (let ((__tmp66958
                       (let ((__tmp66959
                              (let ()
                                (declare (not safe))
                                (cons _exn65723_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp66959))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp66958))))))
    (define sfun-conversion-exception?
      (lambda (_exn65719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65719_))
            (let ((_e65721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65719_ 'exception))))
              (macro-sfun-conversion-exception? _e65721_))
            (macro-sfun-conversion-exception? _exn65719_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65715_))
            (let ((_e65717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65715_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65717_)
                  (macro-sfun-conversion-exception-arguments _e65717_)
                  (let ((__tmp66964
                         (let ((__tmp66965
                                (let ()
                                  (declare (not safe))
                                  (cons _e65717_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp66965))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66964))))
            (if (macro-sfun-conversion-exception? _exn65715_)
                (macro-sfun-conversion-exception-arguments _exn65715_)
                (let ((__tmp66962
                       (let ((__tmp66963
                              (let ()
                                (declare (not safe))
                                (cons _exn65715_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp66963))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66962))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65711_))
            (let ((_e65713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65711_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65713_)
                  (macro-sfun-conversion-exception-code _e65713_)
                  (let ((__tmp66968
                         (let ((__tmp66969
                                (let ()
                                  (declare (not safe))
                                  (cons _e65713_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp66969))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66968))))
            (if (macro-sfun-conversion-exception? _exn65711_)
                (macro-sfun-conversion-exception-code _exn65711_)
                (let ((__tmp66966
                       (let ((__tmp66967
                              (let ()
                                (declare (not safe))
                                (cons _exn65711_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp66967))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66966))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65707_))
            (let ((_e65709_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65707_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65709_)
                  (macro-sfun-conversion-exception-message _e65709_)
                  (let ((__tmp66972
                         (let ((__tmp66973
                                (let ()
                                  (declare (not safe))
                                  (cons _e65709_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp66973))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66972))))
            (if (macro-sfun-conversion-exception? _exn65707_)
                (macro-sfun-conversion-exception-message _exn65707_)
                (let ((__tmp66970
                       (let ((__tmp66971
                              (let ()
                                (declare (not safe))
                                (cons _exn65707_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp66971))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66970))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65701_))
            (let ((_e65704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65701_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65704_)
                  (macro-sfun-conversion-exception-procedure _e65704_)
                  (let ((__tmp66976
                         (let ((__tmp66977
                                (let ()
                                  (declare (not safe))
                                  (cons _e65704_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp66977))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66976))))
            (if (macro-sfun-conversion-exception? _exn65701_)
                (macro-sfun-conversion-exception-procedure _exn65701_)
                (let ((__tmp66974
                       (let ((__tmp66975
                              (let ()
                                (declare (not safe))
                                (cons _exn65701_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp66975))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66974))))))
    (define stack-overflow-exception?
      (lambda (_exn65695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65695_))
            (let ((_e65698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65695_ 'exception))))
              (macro-stack-overflow-exception? _e65698_))
            (macro-stack-overflow-exception? _exn65695_))))
    (define started-thread-exception?
      (lambda (_exn65691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65691_))
            (let ((_e65693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65691_ 'exception))))
              (macro-started-thread-exception? _e65693_))
            (macro-started-thread-exception? _exn65691_))))
    (define started-thread-exception-arguments
      (lambda (_exn65687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65687_))
            (let ((_e65689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65687_ 'exception))))
              (if (macro-started-thread-exception? _e65689_)
                  (macro-started-thread-exception-arguments _e65689_)
                  (let ((__tmp66980
                         (let ((__tmp66981
                                (let ()
                                  (declare (not safe))
                                  (cons _e65689_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp66981))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66980))))
            (if (macro-started-thread-exception? _exn65687_)
                (macro-started-thread-exception-arguments _exn65687_)
                (let ((__tmp66978
                       (let ((__tmp66979
                              (let ()
                                (declare (not safe))
                                (cons _exn65687_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp66979))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66978))))))
    (define started-thread-exception-procedure
      (lambda (_exn65681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65681_))
            (let ((_e65684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65681_ 'exception))))
              (if (macro-started-thread-exception? _e65684_)
                  (macro-started-thread-exception-procedure _e65684_)
                  (let ((__tmp66984
                         (let ((__tmp66985
                                (let ()
                                  (declare (not safe))
                                  (cons _e65684_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp66985))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66984))))
            (if (macro-started-thread-exception? _exn65681_)
                (macro-started-thread-exception-procedure _exn65681_)
                (let ((__tmp66982
                       (let ((__tmp66983
                              (let ()
                                (declare (not safe))
                                (cons _exn65681_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp66983))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66982))))))
    (define terminated-thread-exception?
      (lambda (_exn65677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65677_))
            (let ((_e65679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65677_ 'exception))))
              (macro-terminated-thread-exception? _e65679_))
            (macro-terminated-thread-exception? _exn65677_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65673_))
            (let ((_e65675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65673_ 'exception))))
              (if (macro-terminated-thread-exception? _e65675_)
                  (macro-terminated-thread-exception-arguments _e65675_)
                  (let ((__tmp66988
                         (let ((__tmp66989
                                (let ()
                                  (declare (not safe))
                                  (cons _e65675_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp66989))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66988))))
            (if (macro-terminated-thread-exception? _exn65673_)
                (macro-terminated-thread-exception-arguments _exn65673_)
                (let ((__tmp66986
                       (let ((__tmp66987
                              (let ()
                                (declare (not safe))
                                (cons _exn65673_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp66987))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66986))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65667_))
            (let ((_e65670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65667_ 'exception))))
              (if (macro-terminated-thread-exception? _e65670_)
                  (macro-terminated-thread-exception-procedure _e65670_)
                  (let ((__tmp66992
                         (let ((__tmp66993
                                (let ()
                                  (declare (not safe))
                                  (cons _e65670_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp66993))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66992))))
            (if (macro-terminated-thread-exception? _exn65667_)
                (macro-terminated-thread-exception-procedure _exn65667_)
                (let ((__tmp66990
                       (let ((__tmp66991
                              (let ()
                                (declare (not safe))
                                (cons _exn65667_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp66991))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66990))))))
    (define type-exception?
      (lambda (_exn65663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65663_))
            (let ((_e65665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65663_ 'exception))))
              (macro-type-exception? _e65665_))
            (macro-type-exception? _exn65663_))))
    (define type-exception-arg-id
      (lambda (_exn65659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65659_))
            (let ((_e65661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65659_ 'exception))))
              (if (macro-type-exception? _e65661_)
                  (macro-type-exception-arg-id _e65661_)
                  (let ((__tmp66996
                         (let ((__tmp66997
                                (let ()
                                  (declare (not safe))
                                  (cons _e65661_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp66997))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66996))))
            (if (macro-type-exception? _exn65659_)
                (macro-type-exception-arg-id _exn65659_)
                (let ((__tmp66994
                       (let ((__tmp66995
                              (let ()
                                (declare (not safe))
                                (cons _exn65659_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp66995))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66994))))))
    (define type-exception-arguments
      (lambda (_exn65655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65655_))
            (let ((_e65657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65655_ 'exception))))
              (if (macro-type-exception? _e65657_)
                  (macro-type-exception-arguments _e65657_)
                  (let ((__tmp67000
                         (let ((__tmp67001
                                (let ()
                                  (declare (not safe))
                                  (cons _e65657_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp67001))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67000))))
            (if (macro-type-exception? _exn65655_)
                (macro-type-exception-arguments _exn65655_)
                (let ((__tmp66998
                       (let ((__tmp66999
                              (let ()
                                (declare (not safe))
                                (cons _exn65655_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp66999))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66998))))))
    (define type-exception-procedure
      (lambda (_exn65651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65651_))
            (let ((_e65653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65651_ 'exception))))
              (if (macro-type-exception? _e65653_)
                  (macro-type-exception-procedure _e65653_)
                  (let ((__tmp67004
                         (let ((__tmp67005
                                (let ()
                                  (declare (not safe))
                                  (cons _e65653_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp67005))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67004))))
            (if (macro-type-exception? _exn65651_)
                (macro-type-exception-procedure _exn65651_)
                (let ((__tmp67002
                       (let ((__tmp67003
                              (let ()
                                (declare (not safe))
                                (cons _exn65651_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp67003))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67002))))))
    (define type-exception-type-id
      (lambda (_exn65645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65645_))
            (let ((_e65648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65645_ 'exception))))
              (if (macro-type-exception? _e65648_)
                  (macro-type-exception-type-id _e65648_)
                  (let ((__tmp67008
                         (let ((__tmp67009
                                (let ()
                                  (declare (not safe))
                                  (cons _e65648_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp67009))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67008))))
            (if (macro-type-exception? _exn65645_)
                (macro-type-exception-type-id _exn65645_)
                (let ((__tmp67006
                       (let ((__tmp67007
                              (let ()
                                (declare (not safe))
                                (cons _exn65645_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp67007))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67006))))))
    (define unbound-global-exception?
      (lambda (_exn65641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65641_))
            (let ((_e65643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65641_ 'exception))))
              (macro-unbound-global-exception? _e65643_))
            (macro-unbound-global-exception? _exn65641_))))
    (define unbound-global-exception-code
      (lambda (_exn65637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65637_))
            (let ((_e65639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65637_ 'exception))))
              (if (macro-unbound-global-exception? _e65639_)
                  (macro-unbound-global-exception-code _e65639_)
                  (let ((__tmp67012
                         (let ((__tmp67013
                                (let ()
                                  (declare (not safe))
                                  (cons _e65639_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp67013))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67012))))
            (if (macro-unbound-global-exception? _exn65637_)
                (macro-unbound-global-exception-code _exn65637_)
                (let ((__tmp67010
                       (let ((__tmp67011
                              (let ()
                                (declare (not safe))
                                (cons _exn65637_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp67011))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67010))))))
    (define unbound-global-exception-rte
      (lambda (_exn65633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65633_))
            (let ((_e65635_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65633_ 'exception))))
              (if (macro-unbound-global-exception? _e65635_)
                  (macro-unbound-global-exception-rte _e65635_)
                  (let ((__tmp67016
                         (let ((__tmp67017
                                (let ()
                                  (declare (not safe))
                                  (cons _e65635_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp67017))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67016))))
            (if (macro-unbound-global-exception? _exn65633_)
                (macro-unbound-global-exception-rte _exn65633_)
                (let ((__tmp67014
                       (let ((__tmp67015
                              (let ()
                                (declare (not safe))
                                (cons _exn65633_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp67015))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67014))))))
    (define unbound-global-exception-variable
      (lambda (_exn65627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65627_))
            (let ((_e65630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65627_ 'exception))))
              (if (macro-unbound-global-exception? _e65630_)
                  (macro-unbound-global-exception-variable _e65630_)
                  (let ((__tmp67020
                         (let ((__tmp67021
                                (let ()
                                  (declare (not safe))
                                  (cons _e65630_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp67021))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67020))))
            (if (macro-unbound-global-exception? _exn65627_)
                (macro-unbound-global-exception-variable _exn65627_)
                (let ((__tmp67018
                       (let ((__tmp67019
                              (let ()
                                (declare (not safe))
                                (cons _exn65627_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp67019))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67018))))))
    (define unbound-key-exception?
      (lambda (_exn65623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65623_))
            (let ((_e65625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65623_ 'exception))))
              (macro-unbound-key-exception? _e65625_))
            (macro-unbound-key-exception? _exn65623_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65619_))
            (let ((_e65621_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65619_ 'exception))))
              (if (macro-unbound-key-exception? _e65621_)
                  (macro-unbound-key-exception-arguments _e65621_)
                  (let ((__tmp67024
                         (let ((__tmp67025
                                (let ()
                                  (declare (not safe))
                                  (cons _e65621_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp67025))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67024))))
            (if (macro-unbound-key-exception? _exn65619_)
                (macro-unbound-key-exception-arguments _exn65619_)
                (let ((__tmp67022
                       (let ((__tmp67023
                              (let ()
                                (declare (not safe))
                                (cons _exn65619_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp67023))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67022))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65613_))
            (let ((_e65616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65613_ 'exception))))
              (if (macro-unbound-key-exception? _e65616_)
                  (macro-unbound-key-exception-procedure _e65616_)
                  (let ((__tmp67028
                         (let ((__tmp67029
                                (let ()
                                  (declare (not safe))
                                  (cons _e65616_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp67029))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67028))))
            (if (macro-unbound-key-exception? _exn65613_)
                (macro-unbound-key-exception-procedure _exn65613_)
                (let ((__tmp67026
                       (let ((__tmp67027
                              (let ()
                                (declare (not safe))
                                (cons _exn65613_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp67027))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67026))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65609_))
            (let ((_e65611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65609_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65611_))
            (macro-unbound-os-environment-variable-exception? _exn65609_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65605_))
            (let ((_e65607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65605_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65607_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65607_)
                  (let ((__tmp67032
                         (let ((__tmp67033
                                (let ()
                                  (declare (not safe))
                                  (cons _e65607_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp67033))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67032))))
            (if (macro-unbound-os-environment-variable-exception? _exn65605_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65605_)
                (let ((__tmp67030
                       (let ((__tmp67031
                              (let ()
                                (declare (not safe))
                                (cons _exn65605_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp67031))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67030))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn65599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65599_))
            (let ((_e65602_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65599_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65602_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e65602_)
                  (let ((__tmp67036
                         (let ((__tmp67037
                                (let ()
                                  (declare (not safe))
                                  (cons _e65602_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp67037))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67036))))
            (if (macro-unbound-os-environment-variable-exception? _exn65599_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn65599_)
                (let ((__tmp67034
                       (let ((__tmp67035
                              (let ()
                                (declare (not safe))
                                (cons _exn65599_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp67035))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67034))))))
    (define unbound-serial-number-exception?
      (lambda (_exn65595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65595_))
            (let ((_e65597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65595_ 'exception))))
              (macro-unbound-serial-number-exception? _e65597_))
            (macro-unbound-serial-number-exception? _exn65595_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn65591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65591_))
            (let ((_e65593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65591_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65593_)
                  (macro-unbound-serial-number-exception-arguments _e65593_)
                  (let ((__tmp67040
                         (let ((__tmp67041
                                (let ()
                                  (declare (not safe))
                                  (cons _e65593_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp67041))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67040))))
            (if (macro-unbound-serial-number-exception? _exn65591_)
                (macro-unbound-serial-number-exception-arguments _exn65591_)
                (let ((__tmp67038
                       (let ((__tmp67039
                              (let ()
                                (declare (not safe))
                                (cons _exn65591_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp67039))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67038))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn65585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65585_))
            (let ((_e65588_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65585_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65588_)
                  (macro-unbound-serial-number-exception-procedure _e65588_)
                  (let ((__tmp67044
                         (let ((__tmp67045
                                (let ()
                                  (declare (not safe))
                                  (cons _e65588_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp67045))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67044))))
            (if (macro-unbound-serial-number-exception? _exn65585_)
                (macro-unbound-serial-number-exception-procedure _exn65585_)
                (let ((__tmp67042
                       (let ((__tmp67043
                              (let ()
                                (declare (not safe))
                                (cons _exn65585_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp67043))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67042))))))
    (define uncaught-exception?
      (lambda (_exn65581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65581_))
            (let ((_e65583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65581_ 'exception))))
              (macro-uncaught-exception? _e65583_))
            (macro-uncaught-exception? _exn65581_))))
    (define uncaught-exception-arguments
      (lambda (_exn65577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65577_))
            (let ((_e65579_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65577_ 'exception))))
              (if (macro-uncaught-exception? _e65579_)
                  (macro-uncaught-exception-arguments _e65579_)
                  (let ((__tmp67048
                         (let ((__tmp67049
                                (let ()
                                  (declare (not safe))
                                  (cons _e65579_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp67049))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67048))))
            (if (macro-uncaught-exception? _exn65577_)
                (macro-uncaught-exception-arguments _exn65577_)
                (let ((__tmp67046
                       (let ((__tmp67047
                              (let ()
                                (declare (not safe))
                                (cons _exn65577_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp67047))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67046))))))
    (define uncaught-exception-procedure
      (lambda (_exn65573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65573_))
            (let ((_e65575_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65573_ 'exception))))
              (if (macro-uncaught-exception? _e65575_)
                  (macro-uncaught-exception-procedure _e65575_)
                  (let ((__tmp67052
                         (let ((__tmp67053
                                (let ()
                                  (declare (not safe))
                                  (cons _e65575_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp67053))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67052))))
            (if (macro-uncaught-exception? _exn65573_)
                (macro-uncaught-exception-procedure _exn65573_)
                (let ((__tmp67050
                       (let ((__tmp67051
                              (let ()
                                (declare (not safe))
                                (cons _exn65573_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp67051))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67050))))))
    (define uncaught-exception-reason
      (lambda (_exn65567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65567_))
            (let ((_e65570_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65567_ 'exception))))
              (if (macro-uncaught-exception? _e65570_)
                  (macro-uncaught-exception-reason _e65570_)
                  (let ((__tmp67056
                         (let ((__tmp67057
                                (let ()
                                  (declare (not safe))
                                  (cons _e65570_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp67057))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67056))))
            (if (macro-uncaught-exception? _exn65567_)
                (macro-uncaught-exception-reason _exn65567_)
                (let ((__tmp67054
                       (let ((__tmp67055
                              (let ()
                                (declare (not safe))
                                (cons _exn65567_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp67055))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67054))))))
    (define uninitialized-thread-exception?
      (lambda (_exn65563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65563_))
            (let ((_e65565_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65563_ 'exception))))
              (macro-uninitialized-thread-exception? _e65565_))
            (macro-uninitialized-thread-exception? _exn65563_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn65559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65559_))
            (let ((_e65561_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65559_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65561_)
                  (macro-uninitialized-thread-exception-arguments _e65561_)
                  (let ((__tmp67060
                         (let ((__tmp67061
                                (let ()
                                  (declare (not safe))
                                  (cons _e65561_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp67061))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67060))))
            (if (macro-uninitialized-thread-exception? _exn65559_)
                (macro-uninitialized-thread-exception-arguments _exn65559_)
                (let ((__tmp67058
                       (let ((__tmp67059
                              (let ()
                                (declare (not safe))
                                (cons _exn65559_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp67059))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67058))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn65553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65553_))
            (let ((_e65556_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65553_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65556_)
                  (macro-uninitialized-thread-exception-procedure _e65556_)
                  (let ((__tmp67064
                         (let ((__tmp67065
                                (let ()
                                  (declare (not safe))
                                  (cons _e65556_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp67065))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67064))))
            (if (macro-uninitialized-thread-exception? _exn65553_)
                (macro-uninitialized-thread-exception-procedure _exn65553_)
                (let ((__tmp67062
                       (let ((__tmp67063
                              (let ()
                                (declare (not safe))
                                (cons _exn65553_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp67063))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67062))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn65549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65549_))
            (let ((_e65551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65549_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e65551_))
            (macro-unknown-keyword-argument-exception? _exn65549_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn65545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65545_))
            (let ((_e65547_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65545_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65547_)
                  (macro-unknown-keyword-argument-exception-arguments _e65547_)
                  (let ((__tmp67068
                         (let ((__tmp67069
                                (let ()
                                  (declare (not safe))
                                  (cons _e65547_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp67069))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67068))))
            (if (macro-unknown-keyword-argument-exception? _exn65545_)
                (macro-unknown-keyword-argument-exception-arguments _exn65545_)
                (let ((__tmp67066
                       (let ((__tmp67067
                              (let ()
                                (declare (not safe))
                                (cons _exn65545_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp67067))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67066))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn65539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65539_))
            (let ((_e65542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65539_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65542_)
                  (macro-unknown-keyword-argument-exception-procedure _e65542_)
                  (let ((__tmp67072
                         (let ((__tmp67073
                                (let ()
                                  (declare (not safe))
                                  (cons _e65542_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp67073))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67072))))
            (if (macro-unknown-keyword-argument-exception? _exn65539_)
                (macro-unknown-keyword-argument-exception-procedure _exn65539_)
                (let ((__tmp67070
                       (let ((__tmp67071
                              (let ()
                                (declare (not safe))
                                (cons _exn65539_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp67071))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67070))))))
    (define unterminated-process-exception?
      (lambda (_exn65535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65535_))
            (let ((_e65537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65535_ 'exception))))
              (macro-unterminated-process-exception? _e65537_))
            (macro-unterminated-process-exception? _exn65535_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn65531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65531_))
            (let ((_e65533_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65531_ 'exception))))
              (if (macro-unterminated-process-exception? _e65533_)
                  (macro-unterminated-process-exception-arguments _e65533_)
                  (let ((__tmp67076
                         (let ((__tmp67077
                                (let ()
                                  (declare (not safe))
                                  (cons _e65533_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp67077))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67076))))
            (if (macro-unterminated-process-exception? _exn65531_)
                (macro-unterminated-process-exception-arguments _exn65531_)
                (let ((__tmp67074
                       (let ((__tmp67075
                              (let ()
                                (declare (not safe))
                                (cons _exn65531_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp67075))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67074))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn65525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65525_))
            (let ((_e65528_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65525_ 'exception))))
              (if (macro-unterminated-process-exception? _e65528_)
                  (macro-unterminated-process-exception-procedure _e65528_)
                  (let ((__tmp67080
                         (let ((__tmp67081
                                (let ()
                                  (declare (not safe))
                                  (cons _e65528_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp67081))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67080))))
            (if (macro-unterminated-process-exception? _exn65525_)
                (macro-unterminated-process-exception-procedure _exn65525_)
                (let ((__tmp67078
                       (let ((__tmp67079
                              (let ()
                                (declare (not safe))
                                (cons _exn65525_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp67079))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67078))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn65521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65521_))
            (let ((_e65523_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65521_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e65523_))
            (macro-wrong-number-of-arguments-exception? _exn65521_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn65517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65517_))
            (let ((_e65519_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65517_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65519_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e65519_)
                  (let ((__tmp67084
                         (let ((__tmp67085
                                (let ()
                                  (declare (not safe))
                                  (cons _e65519_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp67085))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67084))))
            (if (macro-wrong-number-of-arguments-exception? _exn65517_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn65517_)
                (let ((__tmp67082
                       (let ((__tmp67083
                              (let ()
                                (declare (not safe))
                                (cons _exn65517_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp67083))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67082))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn65511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65511_))
            (let ((_e65514_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65511_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65514_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e65514_)
                  (let ((__tmp67088
                         (let ((__tmp67089
                                (let ()
                                  (declare (not safe))
                                  (cons _e65514_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp67089))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67088))))
            (if (macro-wrong-number-of-arguments-exception? _exn65511_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn65511_)
                (let ((__tmp67086
                       (let ((__tmp67087
                              (let ()
                                (declare (not safe))
                                (cons _exn65511_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp67087))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67086))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn65507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65507_))
            (let ((_e65509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65507_ 'exception))))
              (macro-wrong-number-of-values-exception? _e65509_))
            (macro-wrong-number-of-values-exception? _exn65507_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn65503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65503_))
            (let ((_e65505_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65503_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65505_)
                  (macro-wrong-number-of-values-exception-code _e65505_)
                  (let ((__tmp67092
                         (let ((__tmp67093
                                (let ()
                                  (declare (not safe))
                                  (cons _e65505_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp67093))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67092))))
            (if (macro-wrong-number-of-values-exception? _exn65503_)
                (macro-wrong-number-of-values-exception-code _exn65503_)
                (let ((__tmp67090
                       (let ((__tmp67091
                              (let ()
                                (declare (not safe))
                                (cons _exn65503_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp67091))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67090))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn65499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65499_))
            (let ((_e65501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65499_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65501_)
                  (macro-wrong-number-of-values-exception-rte _e65501_)
                  (let ((__tmp67096
                         (let ((__tmp67097
                                (let ()
                                  (declare (not safe))
                                  (cons _e65501_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp67097))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67096))))
            (if (macro-wrong-number-of-values-exception? _exn65499_)
                (macro-wrong-number-of-values-exception-rte _exn65499_)
                (let ((__tmp67094
                       (let ((__tmp67095
                              (let ()
                                (declare (not safe))
                                (cons _exn65499_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp67095))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67094))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn65493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65493_))
            (let ((_e65496_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65493_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65496_)
                  (macro-wrong-number-of-values-exception-vals _e65496_)
                  (let ((__tmp67100
                         (let ((__tmp67101
                                (let ()
                                  (declare (not safe))
                                  (cons _e65496_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp67101))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67100))))
            (if (macro-wrong-number-of-values-exception? _exn65493_)
                (macro-wrong-number-of-values-exception-vals _exn65493_)
                (let ((__tmp67098
                       (let ((__tmp67099
                              (let ()
                                (declare (not safe))
                                (cons _exn65493_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp67099))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67098))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn65487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65487_))
            (let ((_e65490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65487_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e65490_))
            (macro-wrong-processor-c-return-exception? _exn65487_))))))
