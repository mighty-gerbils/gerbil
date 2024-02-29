(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1709213449)
  (begin
    (define Exception::t
      (let ((__tmp66698 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66698
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66666_ (apply make-instance Exception::t _$args66666_)))
    (define StackTrace::t
      (let ((__tmp66699 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66699
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66663_ (apply make-instance StackTrace::t _$args66663_)))
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
      (let ((__tmp66700 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66700
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66660_ (apply make-instance Error::t _$args66660_)))
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
      (let ((__tmp66701 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66701
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66657_
        (apply make-instance RuntimeException::t _$args66657_)))
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
      (lambda (_exn66652_ _continue66653_)
        (let ((_exn66655_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66652_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66655_ _continue66653_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66648_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66648_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66648_ 'continuation))
                '#!void
                (let ((__tmp66702
                       (lambda (_cont66650_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66648_
                            'continuation
                            _cont66650_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66702)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66648_))))
    (define error
      (lambda (_message66645_ . _irritants66646_)
        (raise (let ((__obj66692
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66692
                  _message66645_
                  'irritants:
                  _irritants66646_)
                 __obj66692))))
    (define with-exception-handler
      (lambda (_handler66638_ _thunk66639_)
        (if (let () (declare (not safe)) (procedure? _handler66638_))
            '#!void
            (raise (let ((__obj66693
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66693
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66638_ '())))
                     __obj66693)))
        (if (let () (declare (not safe)) (procedure? _thunk66639_))
            '#!void
            (raise (let ((__obj66694
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66694
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66639_ '())))
                     __obj66694)))
        (let ((__tmp66703
               (lambda (_exn66641_)
                 (let ((_exn66643_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66641_))))
                   (_handler66638_ _exn66643_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66703 _thunk66639_))))
    (define with-catch
      (lambda (_handler66631_ _thunk66632_)
        (if (let () (declare (not safe)) (procedure? _handler66631_))
            '#!void
            (raise (let ((__obj66695
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66695
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66631_ '())))
                     __obj66695)))
        (if (let () (declare (not safe)) (procedure? _thunk66632_))
            '#!void
            (raise (let ((__obj66696
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66696
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66632_ '())))
                     __obj66696)))
        (let ((__tmp66704
               (lambda (_cont66634_)
                 (with-exception-handler
                  (lambda (_exn66636_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont66634_
                       _handler66631_
                       _exn66636_)))
                  _thunk66632_))))
          (declare (not safe))
          (##continuation-capture __tmp66704))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66622_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66622_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66622_)))
            _exn66622_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66622_))
                _exn66622_
                (if (macro-exception? _exn66622_)
                    (let ((_rte66627_
                           (let ((__obj66697
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66697
                                _exn66622_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66697)))
                      (let ((__tmp66705
                             (lambda (_cont66629_)
                               (let ((__tmp66706
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66629_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66627_
                                  'continuation
                                  __tmp66706)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66705))
                      _rte66627_)
                    _exn66622_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj66617_)
        (let ((_$e66619_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj66617_))))
          (if _$e66619_
              _$e66619_
              (let () (declare (not safe)) (error-exception? _obj66617_))))))
    (define error-message
      (lambda (_obj66615_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66615_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66615_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj66615_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj66615_))
                '#f))))
    (define error-irritants
      (lambda (_obj66613_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66613_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66613_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj66613_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj66613_))
                '#f))))
    (define error-trace
      (lambda (_obj66611_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66611_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66611_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e66593_ _port66594_)
        (let ((_$e66596_
               (let ()
                 (declare (not safe))
                 (method-ref _e66593_ 'display-exception))))
          (if _$e66596_
              ((lambda (_f66599_) (_f66599_ _e66593_ _port66594_)) _$e66596_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e66593_ _port66594_))))))
    (define display-exception__0
      (lambda (_e66604_)
        (let ((_port66606_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e66604_ _port66606_))))
    (define display-exception
      (lambda _g66708_
        (let ((_g66707_ (let () (declare (not safe)) (##length _g66708_))))
          (cond ((let () (declare (not safe)) (##fx= _g66707_ 1))
                 (apply (lambda (_e66604_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e66604_)))
                        _g66708_))
                ((let () (declare (not safe)) (##fx= _g66707_ 2))
                 (apply (lambda (_e66608_ _port66609_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e66608_ _port66609_)))
                        _g66708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66708_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self66582_ _message66583_ . _rest66584_)
        (let ((_message66590_
               (if (let () (declare (not safe)) (string? _message66583_))
                   _message66583_
                   (call-with-output-string
                    '""
                    (lambda (_g6658566587_)
                      (display _message66583_ _g6658566587_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self66582_ 'message _message66590_))
          (apply class-instance-init! _self66582_ _rest66584_))))
    (define Error:::init!::specialize
      (lambda (__klass66668 __method-table66669)
        (let ((__message66670
               (let ((__slot66671
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66668 'message))))
                 (if __slot66671
                     __slot66671
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66582_ _message66583_ . _rest66584_)
            (let ((_message66590_
                   (if (let () (declare (not safe)) (string? _message66583_))
                       _message66583_
                       (call-with-output-string
                        '""
                        (lambda (_g6658566587_)
                          (display _message66583_ _g6658566587_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self66582_
                 _message66590_
                 __message66670
                 __klass66668
                 '#f))
              (apply class-instance-init! _self66582_ _rest66584_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self66440_ _port66441_)
        (let ((_tmp-port66443_ (open-output-string))
              (_display-error-newline66444_
               (> (output-port-column _port66441_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66443_))
          (let ((__tmp66709
                 (lambda ()
                   (if _display-error-newline66444_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e66447_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66440_ 'where))))
                     (if _$e66447_ (display _$e66447_) (display '"?")))
                   (let ((__tmp66710
                          (let ((__tmp66711 (object-type _self66440_)))
                            (declare (not safe))
                            (##type-name __tmp66711))))
                     (declare (not safe))
                     (display* '" [" __tmp66710 '"]: "))
                   (let ((__tmp66712
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66440_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66712))
                   (let ((_irritants66450_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66440_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants66450_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj66452_)
                              (write _obj66452_)
                              (write-char '#\space))
                            _irritants66450_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self66440_))
                            (dump-stack-trace?))
                       (let ((_cont6645366455_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self66440_
                                 'continuation))))
                         (if _cont6645366455_
                             (let ((_cont66458_ _cont6645366455_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont66458_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66709
             current-output-port
             _tmp-port66443_))
          (let ((__tmp66713 (get-output-string _tmp-port66443_)))
            (declare (not safe))
            (##write-string __tmp66713 _port66441_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66672 __method-table66673)
        (let ((__message66674
               (let ((__slot66678
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66672 'message))))
                 (if __slot66678
                     __slot66678
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where66675
               (let ((__slot66679
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66672 'where))))
                 (if __slot66679
                     __slot66679
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants66676
               (let ((__slot66680
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66672 'irritants))))
                 (if __slot66680
                     __slot66680
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__continuation66677
               (let ((__slot66681
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66672 'continuation))))
                 (if __slot66681
                     __slot66681
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self66440_ _port66441_)
            (let ((_tmp-port66443_ (open-output-string))
                  (_display-error-newline66444_
                   (> (output-port-column _port66441_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66443_))
              (let ((__tmp66714
                     (lambda ()
                       (if _display-error-newline66444_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e66447_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66440_
                                 __where66675
                                 __klass66672
                                 '#f))))
                         (if _$e66447_ (display _$e66447_) (display '"?")))
                       (let ((__tmp66715
                              (let ((__tmp66716 (object-type _self66440_)))
                                (declare (not safe))
                                (##type-name __tmp66716))))
                         (declare (not safe))
                         (display* '" [" __tmp66715 '"]: "))
                       (let ((__tmp66717
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66440_
                                 __message66674
                                 __klass66672
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66717))
                       (let ((_irritants66450_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66440_
                                 __irritants66676
                                 __klass66672
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants66450_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj66452_)
                                  (write _obj66452_)
                                  (write-char '#\space))
                                _irritants66450_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self66440_))
                                (dump-stack-trace?))
                           (let ((_cont6645366455_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self66440_
                                     __continuation66677
                                     __klass66672
                                     '#f))))
                             (if _cont6645366455_
                                 (let ((_cont66458_ _cont6645366455_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont66458_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66714
                 current-output-port
                 _tmp-port66443_))
              (let ((__tmp66718 (get-output-string _tmp-port66443_)))
                (declare (not safe))
                (##write-string __tmp66718 _port66441_)))))))
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
      (lambda (_self66307_ _port66308_)
        (let ((_tmp-port66310_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66310_))
          (let ((__tmp66719
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self66307_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66719 _tmp-port66310_))
          (if (dump-stack-trace?)
              (let ((_cont6631166313_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self66307_ 'continuation))))
                (if _cont6631166313_
                    (let ((_cont66316_ _cont6631166313_))
                      (display '"--- continuation backtrace:" _tmp-port66310_)
                      (newline _tmp-port66310_)
                      (display-continuation-backtrace
                       _cont66316_
                       _tmp-port66310_))
                    '#f))
              '#!void)
          (let ((__tmp66720 (get-output-string _tmp-port66310_)))
            (declare (not safe))
            (##write-string __tmp66720 _port66308_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66682 __method-table66683)
        (let ((__exception66684
               (let ((__slot66686
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66682 'exception))))
                 (if __slot66686
                     __slot66686
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation66685
               (let ((__slot66687
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66682 'continuation))))
                 (if __slot66687
                     __slot66687
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self66307_ _port66308_)
            (let ((_tmp-port66310_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66310_))
              (let ((__tmp66721
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self66307_
                        __exception66684
                        __klass66682
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66721 _tmp-port66310_))
              (if (dump-stack-trace?)
                  (let ((_cont6631166313_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self66307_
                            __continuation66685
                            __klass66682
                            '#f))))
                    (if _cont6631166313_
                        (let ((_cont66316_ _cont6631166313_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port66310_)
                          (newline _tmp-port66310_)
                          (display-continuation-backtrace
                           _cont66316_
                           _tmp-port66310_))
                        '#f))
                  '#!void)
              (let ((__tmp66722 (get-output-string _tmp-port66310_)))
                (declare (not safe))
                (##write-string __tmp66722 _port66308_)))))))
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
      (lambda (_port66179_)
        (if (macro-character-port? _port66179_)
            (let ((_old-width66181_
                   (macro-character-port-output-width _port66179_)))
              (macro-character-port-output-width-set!
               _port66179_
               (lambda (_port66183_) '256))
              _old-width66181_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port66176_ _old-width66177_)
        (if (macro-character-port? _port66176_)
            (macro-character-port-output-width-set!
             _port66176_
             _old-width66177_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e66174_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e66174_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn66168_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66168_))
            (let ((_e66171_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66168_ 'exception))))
              (macro-abandoned-mutex-exception? _e66171_))
            (macro-abandoned-mutex-exception? _exn66168_))))
    (define cfun-conversion-exception?
      (lambda (_exn66164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66164_))
            (let ((_e66166_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66164_ 'exception))))
              (macro-cfun-conversion-exception? _e66166_))
            (macro-cfun-conversion-exception? _exn66164_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn66160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66160_))
            (let ((_e66162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66160_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66162_)
                  (macro-cfun-conversion-exception-arguments _e66162_)
                  (let ((__tmp66725
                         (let ((__tmp66726
                                (let ()
                                  (declare (not safe))
                                  (cons _e66162_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66726))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66725))))
            (if (macro-cfun-conversion-exception? _exn66160_)
                (macro-cfun-conversion-exception-arguments _exn66160_)
                (let ((__tmp66723
                       (let ((__tmp66724
                              (let ()
                                (declare (not safe))
                                (cons _exn66160_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66724))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66723))))))
    (define cfun-conversion-exception-code
      (lambda (_exn66156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66156_))
            (let ((_e66158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66156_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66158_)
                  (macro-cfun-conversion-exception-code _e66158_)
                  (let ((__tmp66729
                         (let ((__tmp66730
                                (let ()
                                  (declare (not safe))
                                  (cons _e66158_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66730))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66729))))
            (if (macro-cfun-conversion-exception? _exn66156_)
                (macro-cfun-conversion-exception-code _exn66156_)
                (let ((__tmp66727
                       (let ((__tmp66728
                              (let ()
                                (declare (not safe))
                                (cons _exn66156_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66728))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66727))))))
    (define cfun-conversion-exception-message
      (lambda (_exn66152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66152_))
            (let ((_e66154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66152_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66154_)
                  (macro-cfun-conversion-exception-message _e66154_)
                  (let ((__tmp66733
                         (let ((__tmp66734
                                (let ()
                                  (declare (not safe))
                                  (cons _e66154_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66734))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66733))))
            (if (macro-cfun-conversion-exception? _exn66152_)
                (macro-cfun-conversion-exception-message _exn66152_)
                (let ((__tmp66731
                       (let ((__tmp66732
                              (let ()
                                (declare (not safe))
                                (cons _exn66152_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66732))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66731))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn66146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66146_))
            (let ((_e66149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66146_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66149_)
                  (macro-cfun-conversion-exception-procedure _e66149_)
                  (let ((__tmp66737
                         (let ((__tmp66738
                                (let ()
                                  (declare (not safe))
                                  (cons _e66149_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66738))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66737))))
            (if (macro-cfun-conversion-exception? _exn66146_)
                (macro-cfun-conversion-exception-procedure _exn66146_)
                (let ((__tmp66735
                       (let ((__tmp66736
                              (let ()
                                (declare (not safe))
                                (cons _exn66146_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66736))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66735))))))
    (define datum-parsing-exception?
      (lambda (_exn66142_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66142_))
            (let ((_e66144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66142_ 'exception))))
              (macro-datum-parsing-exception? _e66144_))
            (macro-datum-parsing-exception? _exn66142_))))
    (define datum-parsing-exception-kind
      (lambda (_exn66138_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66138_))
            (let ((_e66140_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66138_ 'exception))))
              (if (macro-datum-parsing-exception? _e66140_)
                  (macro-datum-parsing-exception-kind _e66140_)
                  (let ((__tmp66741
                         (let ((__tmp66742
                                (let ()
                                  (declare (not safe))
                                  (cons _e66140_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66742))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66741))))
            (if (macro-datum-parsing-exception? _exn66138_)
                (macro-datum-parsing-exception-kind _exn66138_)
                (let ((__tmp66739
                       (let ((__tmp66740
                              (let ()
                                (declare (not safe))
                                (cons _exn66138_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66740))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66739))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn66134_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66134_))
            (let ((_e66136_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66134_ 'exception))))
              (if (macro-datum-parsing-exception? _e66136_)
                  (macro-datum-parsing-exception-parameters _e66136_)
                  (let ((__tmp66745
                         (let ((__tmp66746
                                (let ()
                                  (declare (not safe))
                                  (cons _e66136_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66746))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66745))))
            (if (macro-datum-parsing-exception? _exn66134_)
                (macro-datum-parsing-exception-parameters _exn66134_)
                (let ((__tmp66743
                       (let ((__tmp66744
                              (let ()
                                (declare (not safe))
                                (cons _exn66134_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66744))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66743))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn66128_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66128_))
            (let ((_e66131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66128_ 'exception))))
              (if (macro-datum-parsing-exception? _e66131_)
                  (macro-datum-parsing-exception-readenv _e66131_)
                  (let ((__tmp66749
                         (let ((__tmp66750
                                (let ()
                                  (declare (not safe))
                                  (cons _e66131_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66750))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66749))))
            (if (macro-datum-parsing-exception? _exn66128_)
                (macro-datum-parsing-exception-readenv _exn66128_)
                (let ((__tmp66747
                       (let ((__tmp66748
                              (let ()
                                (declare (not safe))
                                (cons _exn66128_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66748))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66747))))))
    (define deadlock-exception?
      (lambda (_exn66122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66122_))
            (let ((_e66125_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66122_ 'exception))))
              (macro-deadlock-exception? _e66125_))
            (macro-deadlock-exception? _exn66122_))))
    (define divide-by-zero-exception?
      (lambda (_exn66118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66118_))
            (let ((_e66120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66118_ 'exception))))
              (macro-divide-by-zero-exception? _e66120_))
            (macro-divide-by-zero-exception? _exn66118_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn66114_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66114_))
            (let ((_e66116_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66114_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66116_)
                  (macro-divide-by-zero-exception-arguments _e66116_)
                  (let ((__tmp66753
                         (let ((__tmp66754
                                (let ()
                                  (declare (not safe))
                                  (cons _e66116_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp66754))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66753))))
            (if (macro-divide-by-zero-exception? _exn66114_)
                (macro-divide-by-zero-exception-arguments _exn66114_)
                (let ((__tmp66751
                       (let ((__tmp66752
                              (let ()
                                (declare (not safe))
                                (cons _exn66114_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp66752))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66751))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn66108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66108_))
            (let ((_e66111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66108_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66111_)
                  (macro-divide-by-zero-exception-procedure _e66111_)
                  (let ((__tmp66757
                         (let ((__tmp66758
                                (let ()
                                  (declare (not safe))
                                  (cons _e66111_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp66758))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66757))))
            (if (macro-divide-by-zero-exception? _exn66108_)
                (macro-divide-by-zero-exception-procedure _exn66108_)
                (let ((__tmp66755
                       (let ((__tmp66756
                              (let ()
                                (declare (not safe))
                                (cons _exn66108_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp66756))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66755))))))
    (define error-exception?
      (lambda (_exn66104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66104_))
            (let ((_e66106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66104_ 'exception))))
              (macro-error-exception? _e66106_))
            (macro-error-exception? _exn66104_))))
    (define error-exception-message
      (lambda (_exn66100_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66100_))
            (let ((_e66102_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66100_ 'exception))))
              (if (macro-error-exception? _e66102_)
                  (macro-error-exception-message _e66102_)
                  (let ((__tmp66761
                         (let ((__tmp66762
                                (let ()
                                  (declare (not safe))
                                  (cons _e66102_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp66762))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66761))))
            (if (macro-error-exception? _exn66100_)
                (macro-error-exception-message _exn66100_)
                (let ((__tmp66759
                       (let ((__tmp66760
                              (let ()
                                (declare (not safe))
                                (cons _exn66100_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp66760))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66759))))))
    (define error-exception-parameters
      (lambda (_exn66094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66094_))
            (let ((_e66097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66094_ 'exception))))
              (if (macro-error-exception? _e66097_)
                  (macro-error-exception-parameters _e66097_)
                  (let ((__tmp66765
                         (let ((__tmp66766
                                (let ()
                                  (declare (not safe))
                                  (cons _e66097_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp66766))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66765))))
            (if (macro-error-exception? _exn66094_)
                (macro-error-exception-parameters _exn66094_)
                (let ((__tmp66763
                       (let ((__tmp66764
                              (let ()
                                (declare (not safe))
                                (cons _exn66094_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp66764))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66763))))))
    (define expression-parsing-exception?
      (lambda (_exn66090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66090_))
            (let ((_e66092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66090_ 'exception))))
              (macro-expression-parsing-exception? _e66092_))
            (macro-expression-parsing-exception? _exn66090_))))
    (define expression-parsing-exception-kind
      (lambda (_exn66086_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66086_))
            (let ((_e66088_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66086_ 'exception))))
              (if (macro-expression-parsing-exception? _e66088_)
                  (macro-expression-parsing-exception-kind _e66088_)
                  (let ((__tmp66769
                         (let ((__tmp66770
                                (let ()
                                  (declare (not safe))
                                  (cons _e66088_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp66770))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66769))))
            (if (macro-expression-parsing-exception? _exn66086_)
                (macro-expression-parsing-exception-kind _exn66086_)
                (let ((__tmp66767
                       (let ((__tmp66768
                              (let ()
                                (declare (not safe))
                                (cons _exn66086_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp66768))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66767))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn66082_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66082_))
            (let ((_e66084_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66082_ 'exception))))
              (if (macro-expression-parsing-exception? _e66084_)
                  (macro-expression-parsing-exception-parameters _e66084_)
                  (let ((__tmp66773
                         (let ((__tmp66774
                                (let ()
                                  (declare (not safe))
                                  (cons _e66084_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp66774))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66773))))
            (if (macro-expression-parsing-exception? _exn66082_)
                (macro-expression-parsing-exception-parameters _exn66082_)
                (let ((__tmp66771
                       (let ((__tmp66772
                              (let ()
                                (declare (not safe))
                                (cons _exn66082_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp66772))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66771))))))
    (define expression-parsing-exception-source
      (lambda (_exn66076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66076_))
            (let ((_e66079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66076_ 'exception))))
              (if (macro-expression-parsing-exception? _e66079_)
                  (macro-expression-parsing-exception-source _e66079_)
                  (let ((__tmp66777
                         (let ((__tmp66778
                                (let ()
                                  (declare (not safe))
                                  (cons _e66079_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp66778))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66777))))
            (if (macro-expression-parsing-exception? _exn66076_)
                (macro-expression-parsing-exception-source _exn66076_)
                (let ((__tmp66775
                       (let ((__tmp66776
                              (let ()
                                (declare (not safe))
                                (cons _exn66076_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp66776))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66775))))))
    (define file-exists-exception?
      (lambda (_exn66072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66072_))
            (let ((_e66074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66072_ 'exception))))
              (macro-file-exists-exception? _e66074_))
            (macro-file-exists-exception? _exn66072_))))
    (define file-exists-exception-arguments
      (lambda (_exn66068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66068_))
            (let ((_e66070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66068_ 'exception))))
              (if (macro-file-exists-exception? _e66070_)
                  (macro-file-exists-exception-arguments _e66070_)
                  (let ((__tmp66781
                         (let ((__tmp66782
                                (let ()
                                  (declare (not safe))
                                  (cons _e66070_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp66782))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66781))))
            (if (macro-file-exists-exception? _exn66068_)
                (macro-file-exists-exception-arguments _exn66068_)
                (let ((__tmp66779
                       (let ((__tmp66780
                              (let ()
                                (declare (not safe))
                                (cons _exn66068_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp66780))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66779))))))
    (define file-exists-exception-procedure
      (lambda (_exn66062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66062_))
            (let ((_e66065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66062_ 'exception))))
              (if (macro-file-exists-exception? _e66065_)
                  (macro-file-exists-exception-procedure _e66065_)
                  (let ((__tmp66785
                         (let ((__tmp66786
                                (let ()
                                  (declare (not safe))
                                  (cons _e66065_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp66786))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66785))))
            (if (macro-file-exists-exception? _exn66062_)
                (macro-file-exists-exception-procedure _exn66062_)
                (let ((__tmp66783
                       (let ((__tmp66784
                              (let ()
                                (declare (not safe))
                                (cons _exn66062_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp66784))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66783))))))
    (define fixnum-overflow-exception?
      (lambda (_exn66058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66058_))
            (let ((_e66060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66058_ 'exception))))
              (macro-fixnum-overflow-exception? _e66060_))
            (macro-fixnum-overflow-exception? _exn66058_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn66054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66054_))
            (let ((_e66056_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66054_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66056_)
                  (macro-fixnum-overflow-exception-arguments _e66056_)
                  (let ((__tmp66789
                         (let ((__tmp66790
                                (let ()
                                  (declare (not safe))
                                  (cons _e66056_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp66790))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66789))))
            (if (macro-fixnum-overflow-exception? _exn66054_)
                (macro-fixnum-overflow-exception-arguments _exn66054_)
                (let ((__tmp66787
                       (let ((__tmp66788
                              (let ()
                                (declare (not safe))
                                (cons _exn66054_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp66788))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66787))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn66048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66048_))
            (let ((_e66051_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66048_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66051_)
                  (macro-fixnum-overflow-exception-procedure _e66051_)
                  (let ((__tmp66793
                         (let ((__tmp66794
                                (let ()
                                  (declare (not safe))
                                  (cons _e66051_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp66794))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66793))))
            (if (macro-fixnum-overflow-exception? _exn66048_)
                (macro-fixnum-overflow-exception-procedure _exn66048_)
                (let ((__tmp66791
                       (let ((__tmp66792
                              (let ()
                                (declare (not safe))
                                (cons _exn66048_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp66792))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66791))))))
    (define heap-overflow-exception?
      (lambda (_exn66042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66042_))
            (let ((_e66045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66042_ 'exception))))
              (macro-heap-overflow-exception? _e66045_))
            (macro-heap-overflow-exception? _exn66042_))))
    (define inactive-thread-exception?
      (lambda (_exn66038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66038_))
            (let ((_e66040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66038_ 'exception))))
              (macro-inactive-thread-exception? _e66040_))
            (macro-inactive-thread-exception? _exn66038_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn66034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66034_))
            (let ((_e66036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66034_ 'exception))))
              (if (macro-inactive-thread-exception? _e66036_)
                  (macro-inactive-thread-exception-arguments _e66036_)
                  (let ((__tmp66797
                         (let ((__tmp66798
                                (let ()
                                  (declare (not safe))
                                  (cons _e66036_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp66798))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66797))))
            (if (macro-inactive-thread-exception? _exn66034_)
                (macro-inactive-thread-exception-arguments _exn66034_)
                (let ((__tmp66795
                       (let ((__tmp66796
                              (let ()
                                (declare (not safe))
                                (cons _exn66034_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp66796))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66795))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn66028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66028_))
            (let ((_e66031_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66028_ 'exception))))
              (if (macro-inactive-thread-exception? _e66031_)
                  (macro-inactive-thread-exception-procedure _e66031_)
                  (let ((__tmp66801
                         (let ((__tmp66802
                                (let ()
                                  (declare (not safe))
                                  (cons _e66031_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp66802))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66801))))
            (if (macro-inactive-thread-exception? _exn66028_)
                (macro-inactive-thread-exception-procedure _exn66028_)
                (let ((__tmp66799
                       (let ((__tmp66800
                              (let ()
                                (declare (not safe))
                                (cons _exn66028_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp66800))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66799))))))
    (define initialized-thread-exception?
      (lambda (_exn66024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66024_))
            (let ((_e66026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66024_ 'exception))))
              (macro-initialized-thread-exception? _e66026_))
            (macro-initialized-thread-exception? _exn66024_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn66020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66020_))
            (let ((_e66022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66020_ 'exception))))
              (if (macro-initialized-thread-exception? _e66022_)
                  (macro-initialized-thread-exception-arguments _e66022_)
                  (let ((__tmp66805
                         (let ((__tmp66806
                                (let ()
                                  (declare (not safe))
                                  (cons _e66022_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp66806))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66805))))
            (if (macro-initialized-thread-exception? _exn66020_)
                (macro-initialized-thread-exception-arguments _exn66020_)
                (let ((__tmp66803
                       (let ((__tmp66804
                              (let ()
                                (declare (not safe))
                                (cons _exn66020_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp66804))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66803))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn66014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66014_))
            (let ((_e66017_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66014_ 'exception))))
              (if (macro-initialized-thread-exception? _e66017_)
                  (macro-initialized-thread-exception-procedure _e66017_)
                  (let ((__tmp66809
                         (let ((__tmp66810
                                (let ()
                                  (declare (not safe))
                                  (cons _e66017_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp66810))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66809))))
            (if (macro-initialized-thread-exception? _exn66014_)
                (macro-initialized-thread-exception-procedure _exn66014_)
                (let ((__tmp66807
                       (let ((__tmp66808
                              (let ()
                                (declare (not safe))
                                (cons _exn66014_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp66808))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66807))))))
    (define invalid-hash-number-exception?
      (lambda (_exn66010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66010_))
            (let ((_e66012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66010_ 'exception))))
              (macro-invalid-hash-number-exception? _e66012_))
            (macro-invalid-hash-number-exception? _exn66010_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn66006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66006_))
            (let ((_e66008_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66006_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e66008_)
                  (macro-invalid-hash-number-exception-arguments _e66008_)
                  (let ((__tmp66813
                         (let ((__tmp66814
                                (let ()
                                  (declare (not safe))
                                  (cons _e66008_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp66814))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66813))))
            (if (macro-invalid-hash-number-exception? _exn66006_)
                (macro-invalid-hash-number-exception-arguments _exn66006_)
                (let ((__tmp66811
                       (let ((__tmp66812
                              (let ()
                                (declare (not safe))
                                (cons _exn66006_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp66812))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66811))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn66000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66000_))
            (let ((_e66003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66000_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e66003_)
                  (macro-invalid-hash-number-exception-procedure _e66003_)
                  (let ((__tmp66817
                         (let ((__tmp66818
                                (let ()
                                  (declare (not safe))
                                  (cons _e66003_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp66818))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66817))))
            (if (macro-invalid-hash-number-exception? _exn66000_)
                (macro-invalid-hash-number-exception-procedure _exn66000_)
                (let ((__tmp66815
                       (let ((__tmp66816
                              (let ()
                                (declare (not safe))
                                (cons _exn66000_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp66816))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66815))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn65996_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65996_))
            (let ((_e65998_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65996_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e65998_))
            (macro-invalid-utf8-encoding-exception? _exn65996_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn65992_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65992_))
            (let ((_e65994_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65992_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65994_)
                  (macro-invalid-utf8-encoding-exception-arguments _e65994_)
                  (let ((__tmp66821
                         (let ((__tmp66822
                                (let ()
                                  (declare (not safe))
                                  (cons _e65994_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp66822))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66821))))
            (if (macro-invalid-utf8-encoding-exception? _exn65992_)
                (macro-invalid-utf8-encoding-exception-arguments _exn65992_)
                (let ((__tmp66819
                       (let ((__tmp66820
                              (let ()
                                (declare (not safe))
                                (cons _exn65992_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp66820))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66819))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn65986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65986_))
            (let ((_e65989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65986_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65989_)
                  (macro-invalid-utf8-encoding-exception-procedure _e65989_)
                  (let ((__tmp66825
                         (let ((__tmp66826
                                (let ()
                                  (declare (not safe))
                                  (cons _e65989_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp66826))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66825))))
            (if (macro-invalid-utf8-encoding-exception? _exn65986_)
                (macro-invalid-utf8-encoding-exception-procedure _exn65986_)
                (let ((__tmp66823
                       (let ((__tmp66824
                              (let ()
                                (declare (not safe))
                                (cons _exn65986_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp66824))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66823))))))
    (define join-timeout-exception?
      (lambda (_exn65982_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65982_))
            (let ((_e65984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65982_ 'exception))))
              (macro-join-timeout-exception? _e65984_))
            (macro-join-timeout-exception? _exn65982_))))
    (define join-timeout-exception-arguments
      (lambda (_exn65978_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65978_))
            (let ((_e65980_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65978_ 'exception))))
              (if (macro-join-timeout-exception? _e65980_)
                  (macro-join-timeout-exception-arguments _e65980_)
                  (let ((__tmp66829
                         (let ((__tmp66830
                                (let ()
                                  (declare (not safe))
                                  (cons _e65980_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp66830))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66829))))
            (if (macro-join-timeout-exception? _exn65978_)
                (macro-join-timeout-exception-arguments _exn65978_)
                (let ((__tmp66827
                       (let ((__tmp66828
                              (let ()
                                (declare (not safe))
                                (cons _exn65978_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp66828))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66827))))))
    (define join-timeout-exception-procedure
      (lambda (_exn65972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65972_))
            (let ((_e65975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65972_ 'exception))))
              (if (macro-join-timeout-exception? _e65975_)
                  (macro-join-timeout-exception-procedure _e65975_)
                  (let ((__tmp66833
                         (let ((__tmp66834
                                (let ()
                                  (declare (not safe))
                                  (cons _e65975_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp66834))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66833))))
            (if (macro-join-timeout-exception? _exn65972_)
                (macro-join-timeout-exception-procedure _exn65972_)
                (let ((__tmp66831
                       (let ((__tmp66832
                              (let ()
                                (declare (not safe))
                                (cons _exn65972_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp66832))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66831))))))
    (define keyword-expected-exception?
      (lambda (_exn65968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65968_))
            (let ((_e65970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65968_ 'exception))))
              (macro-keyword-expected-exception? _e65970_))
            (macro-keyword-expected-exception? _exn65968_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn65964_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65964_))
            (let ((_e65966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65964_ 'exception))))
              (if (macro-keyword-expected-exception? _e65966_)
                  (macro-keyword-expected-exception-arguments _e65966_)
                  (let ((__tmp66837
                         (let ((__tmp66838
                                (let ()
                                  (declare (not safe))
                                  (cons _e65966_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp66838))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66837))))
            (if (macro-keyword-expected-exception? _exn65964_)
                (macro-keyword-expected-exception-arguments _exn65964_)
                (let ((__tmp66835
                       (let ((__tmp66836
                              (let ()
                                (declare (not safe))
                                (cons _exn65964_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp66836))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66835))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn65958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65958_))
            (let ((_e65961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65958_ 'exception))))
              (if (macro-keyword-expected-exception? _e65961_)
                  (macro-keyword-expected-exception-procedure _e65961_)
                  (let ((__tmp66841
                         (let ((__tmp66842
                                (let ()
                                  (declare (not safe))
                                  (cons _e65961_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp66842))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66841))))
            (if (macro-keyword-expected-exception? _exn65958_)
                (macro-keyword-expected-exception-procedure _exn65958_)
                (let ((__tmp66839
                       (let ((__tmp66840
                              (let ()
                                (declare (not safe))
                                (cons _exn65958_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp66840))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66839))))))
    (define length-mismatch-exception?
      (lambda (_exn65954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65954_))
            (let ((_e65956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65954_ 'exception))))
              (macro-length-mismatch-exception? _e65956_))
            (macro-length-mismatch-exception? _exn65954_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn65950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65950_))
            (let ((_e65952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65950_ 'exception))))
              (if (macro-length-mismatch-exception? _e65952_)
                  (macro-length-mismatch-exception-arg-id _e65952_)
                  (let ((__tmp66845
                         (let ((__tmp66846
                                (let ()
                                  (declare (not safe))
                                  (cons _e65952_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp66846))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66845))))
            (if (macro-length-mismatch-exception? _exn65950_)
                (macro-length-mismatch-exception-arg-id _exn65950_)
                (let ((__tmp66843
                       (let ((__tmp66844
                              (let ()
                                (declare (not safe))
                                (cons _exn65950_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp66844))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66843))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn65946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65946_))
            (let ((_e65948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65946_ 'exception))))
              (if (macro-length-mismatch-exception? _e65948_)
                  (macro-length-mismatch-exception-arguments _e65948_)
                  (let ((__tmp66849
                         (let ((__tmp66850
                                (let ()
                                  (declare (not safe))
                                  (cons _e65948_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp66850))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66849))))
            (if (macro-length-mismatch-exception? _exn65946_)
                (macro-length-mismatch-exception-arguments _exn65946_)
                (let ((__tmp66847
                       (let ((__tmp66848
                              (let ()
                                (declare (not safe))
                                (cons _exn65946_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp66848))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66847))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn65940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65940_))
            (let ((_e65943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65940_ 'exception))))
              (if (macro-length-mismatch-exception? _e65943_)
                  (macro-length-mismatch-exception-procedure _e65943_)
                  (let ((__tmp66853
                         (let ((__tmp66854
                                (let ()
                                  (declare (not safe))
                                  (cons _e65943_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp66854))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66853))))
            (if (macro-length-mismatch-exception? _exn65940_)
                (macro-length-mismatch-exception-procedure _exn65940_)
                (let ((__tmp66851
                       (let ((__tmp66852
                              (let ()
                                (declare (not safe))
                                (cons _exn65940_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp66852))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66851))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn65936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65936_))
            (let ((_e65938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65936_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e65938_))
            (macro-mailbox-receive-timeout-exception? _exn65936_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn65932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65932_))
            (let ((_e65934_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65932_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65934_)
                  (macro-mailbox-receive-timeout-exception-arguments _e65934_)
                  (let ((__tmp66857
                         (let ((__tmp66858
                                (let ()
                                  (declare (not safe))
                                  (cons _e65934_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp66858))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66857))))
            (if (macro-mailbox-receive-timeout-exception? _exn65932_)
                (macro-mailbox-receive-timeout-exception-arguments _exn65932_)
                (let ((__tmp66855
                       (let ((__tmp66856
                              (let ()
                                (declare (not safe))
                                (cons _exn65932_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp66856))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66855))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn65926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65926_))
            (let ((_e65929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65926_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65929_)
                  (macro-mailbox-receive-timeout-exception-procedure _e65929_)
                  (let ((__tmp66861
                         (let ((__tmp66862
                                (let ()
                                  (declare (not safe))
                                  (cons _e65929_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp66862))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66861))))
            (if (macro-mailbox-receive-timeout-exception? _exn65926_)
                (macro-mailbox-receive-timeout-exception-procedure _exn65926_)
                (let ((__tmp66859
                       (let ((__tmp66860
                              (let ()
                                (declare (not safe))
                                (cons _exn65926_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp66860))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66859))))))
    (define module-not-found-exception?
      (lambda (_exn65922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65922_))
            (let ((_e65924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65922_ 'exception))))
              (macro-module-not-found-exception? _e65924_))
            (macro-module-not-found-exception? _exn65922_))))
    (define module-not-found-exception-arguments
      (lambda (_exn65918_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65918_))
            (let ((_e65920_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65918_ 'exception))))
              (if (macro-module-not-found-exception? _e65920_)
                  (macro-module-not-found-exception-arguments _e65920_)
                  (let ((__tmp66865
                         (let ((__tmp66866
                                (let ()
                                  (declare (not safe))
                                  (cons _e65920_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp66866))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66865))))
            (if (macro-module-not-found-exception? _exn65918_)
                (macro-module-not-found-exception-arguments _exn65918_)
                (let ((__tmp66863
                       (let ((__tmp66864
                              (let ()
                                (declare (not safe))
                                (cons _exn65918_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp66864))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66863))))))
    (define module-not-found-exception-procedure
      (lambda (_exn65912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65912_))
            (let ((_e65915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65912_ 'exception))))
              (if (macro-module-not-found-exception? _e65915_)
                  (macro-module-not-found-exception-procedure _e65915_)
                  (let ((__tmp66869
                         (let ((__tmp66870
                                (let ()
                                  (declare (not safe))
                                  (cons _e65915_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp66870))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66869))))
            (if (macro-module-not-found-exception? _exn65912_)
                (macro-module-not-found-exception-procedure _exn65912_)
                (let ((__tmp66867
                       (let ((__tmp66868
                              (let ()
                                (declare (not safe))
                                (cons _exn65912_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp66868))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66867))))))
    (define multiple-c-return-exception?
      (lambda (_exn65906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65906_))
            (let ((_e65909_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65906_ 'exception))))
              (macro-multiple-c-return-exception? _e65909_))
            (macro-multiple-c-return-exception? _exn65906_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn65902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65902_))
            (let ((_e65904_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65902_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e65904_))
            (macro-no-such-file-or-directory-exception? _exn65902_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn65898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65898_))
            (let ((_e65900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65898_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65900_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e65900_)
                  (let ((__tmp66873
                         (let ((__tmp66874
                                (let ()
                                  (declare (not safe))
                                  (cons _e65900_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp66874))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66873))))
            (if (macro-no-such-file-or-directory-exception? _exn65898_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn65898_)
                (let ((__tmp66871
                       (let ((__tmp66872
                              (let ()
                                (declare (not safe))
                                (cons _exn65898_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp66872))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66871))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn65892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65892_))
            (let ((_e65895_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65892_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65895_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e65895_)
                  (let ((__tmp66877
                         (let ((__tmp66878
                                (let ()
                                  (declare (not safe))
                                  (cons _e65895_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp66878))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66877))))
            (if (macro-no-such-file-or-directory-exception? _exn65892_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn65892_)
                (let ((__tmp66875
                       (let ((__tmp66876
                              (let ()
                                (declare (not safe))
                                (cons _exn65892_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp66876))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66875))))))
    (define noncontinuable-exception?
      (lambda (_exn65888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65888_))
            (let ((_e65890_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65888_ 'exception))))
              (macro-noncontinuable-exception? _e65890_))
            (macro-noncontinuable-exception? _exn65888_))))
    (define noncontinuable-exception-reason
      (lambda (_exn65882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65882_))
            (let ((_e65885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65882_ 'exception))))
              (if (macro-noncontinuable-exception? _e65885_)
                  (macro-noncontinuable-exception-reason _e65885_)
                  (let ((__tmp66881
                         (let ((__tmp66882
                                (let ()
                                  (declare (not safe))
                                  (cons _e65885_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp66882))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp66881))))
            (if (macro-noncontinuable-exception? _exn65882_)
                (macro-noncontinuable-exception-reason _exn65882_)
                (let ((__tmp66879
                       (let ((__tmp66880
                              (let ()
                                (declare (not safe))
                                (cons _exn65882_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp66880))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp66879))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn65878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65878_))
            (let ((_e65880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65878_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e65880_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn65878_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn65874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65874_))
            (let ((_e65876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65874_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65876_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e65876_)
                  (let ((__tmp66885
                         (let ((__tmp66886
                                (let ()
                                  (declare (not safe))
                                  (cons _e65876_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp66886))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66885))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65874_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn65874_)
                (let ((__tmp66883
                       (let ((__tmp66884
                              (let ()
                                (declare (not safe))
                                (cons _exn65874_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp66884))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66883))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn65868_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65868_))
            (let ((_e65871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65868_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65871_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e65871_)
                  (let ((__tmp66889
                         (let ((__tmp66890
                                (let ()
                                  (declare (not safe))
                                  (cons _e65871_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp66890))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66889))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65868_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn65868_)
                (let ((__tmp66887
                       (let ((__tmp66888
                              (let ()
                                (declare (not safe))
                                (cons _exn65868_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp66888))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66887))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn65864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65864_))
            (let ((_e65866_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65864_ 'exception))))
              (macro-nonprocedure-operator-exception? _e65866_))
            (macro-nonprocedure-operator-exception? _exn65864_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn65860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65860_))
            (let ((_e65862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65860_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65862_)
                  (macro-nonprocedure-operator-exception-arguments _e65862_)
                  (let ((__tmp66893
                         (let ((__tmp66894
                                (let ()
                                  (declare (not safe))
                                  (cons _e65862_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp66894))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66893))))
            (if (macro-nonprocedure-operator-exception? _exn65860_)
                (macro-nonprocedure-operator-exception-arguments _exn65860_)
                (let ((__tmp66891
                       (let ((__tmp66892
                              (let ()
                                (declare (not safe))
                                (cons _exn65860_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp66892))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66891))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn65856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65856_))
            (let ((_e65858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65856_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65858_)
                  (macro-nonprocedure-operator-exception-code _e65858_)
                  (let ((__tmp66897
                         (let ((__tmp66898
                                (let ()
                                  (declare (not safe))
                                  (cons _e65858_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp66898))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66897))))
            (if (macro-nonprocedure-operator-exception? _exn65856_)
                (macro-nonprocedure-operator-exception-code _exn65856_)
                (let ((__tmp66895
                       (let ((__tmp66896
                              (let ()
                                (declare (not safe))
                                (cons _exn65856_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp66896))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66895))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn65852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65852_))
            (let ((_e65854_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65852_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65854_)
                  (macro-nonprocedure-operator-exception-operator _e65854_)
                  (let ((__tmp66901
                         (let ((__tmp66902
                                (let ()
                                  (declare (not safe))
                                  (cons _e65854_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp66902))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66901))))
            (if (macro-nonprocedure-operator-exception? _exn65852_)
                (macro-nonprocedure-operator-exception-operator _exn65852_)
                (let ((__tmp66899
                       (let ((__tmp66900
                              (let ()
                                (declare (not safe))
                                (cons _exn65852_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp66900))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66899))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn65846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65846_))
            (let ((_e65849_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65846_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65849_)
                  (macro-nonprocedure-operator-exception-rte _e65849_)
                  (let ((__tmp66905
                         (let ((__tmp66906
                                (let ()
                                  (declare (not safe))
                                  (cons _e65849_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp66906))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66905))))
            (if (macro-nonprocedure-operator-exception? _exn65846_)
                (macro-nonprocedure-operator-exception-rte _exn65846_)
                (let ((__tmp66903
                       (let ((__tmp66904
                              (let ()
                                (declare (not safe))
                                (cons _exn65846_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp66904))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66903))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn65842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65842_))
            (let ((_e65844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65842_ 'exception))))
              (macro-not-in-compilation-context-exception? _e65844_))
            (macro-not-in-compilation-context-exception? _exn65842_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn65838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65838_))
            (let ((_e65840_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65838_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65840_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e65840_)
                  (let ((__tmp66909
                         (let ((__tmp66910
                                (let ()
                                  (declare (not safe))
                                  (cons _e65840_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp66910))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66909))))
            (if (macro-not-in-compilation-context-exception? _exn65838_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn65838_)
                (let ((__tmp66907
                       (let ((__tmp66908
                              (let ()
                                (declare (not safe))
                                (cons _exn65838_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp66908))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66907))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn65832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65832_))
            (let ((_e65835_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65832_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65835_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e65835_)
                  (let ((__tmp66913
                         (let ((__tmp66914
                                (let ()
                                  (declare (not safe))
                                  (cons _e65835_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp66914))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66913))))
            (if (macro-not-in-compilation-context-exception? _exn65832_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn65832_)
                (let ((__tmp66911
                       (let ((__tmp66912
                              (let ()
                                (declare (not safe))
                                (cons _exn65832_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp66912))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66911))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn65828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65828_))
            (let ((_e65830_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65828_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e65830_))
            (macro-number-of-arguments-limit-exception? _exn65828_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn65824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65824_))
            (let ((_e65826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65824_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65826_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e65826_)
                  (let ((__tmp66917
                         (let ((__tmp66918
                                (let ()
                                  (declare (not safe))
                                  (cons _e65826_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp66918))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66917))))
            (if (macro-number-of-arguments-limit-exception? _exn65824_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn65824_)
                (let ((__tmp66915
                       (let ((__tmp66916
                              (let ()
                                (declare (not safe))
                                (cons _exn65824_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp66916))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66915))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn65818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65818_))
            (let ((_e65821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65818_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65821_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e65821_)
                  (let ((__tmp66921
                         (let ((__tmp66922
                                (let ()
                                  (declare (not safe))
                                  (cons _e65821_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp66922))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66921))))
            (if (macro-number-of-arguments-limit-exception? _exn65818_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn65818_)
                (let ((__tmp66919
                       (let ((__tmp66920
                              (let ()
                                (declare (not safe))
                                (cons _exn65818_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp66920))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66919))))))
    (define os-exception?
      (lambda (_exn65814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65814_))
            (let ((_e65816_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65814_ 'exception))))
              (macro-os-exception? _e65816_))
            (macro-os-exception? _exn65814_))))
    (define os-exception-arguments
      (lambda (_exn65810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65810_))
            (let ((_e65812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65810_ 'exception))))
              (if (macro-os-exception? _e65812_)
                  (macro-os-exception-arguments _e65812_)
                  (let ((__tmp66925
                         (let ((__tmp66926
                                (let ()
                                  (declare (not safe))
                                  (cons _e65812_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp66926))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66925))))
            (if (macro-os-exception? _exn65810_)
                (macro-os-exception-arguments _exn65810_)
                (let ((__tmp66923
                       (let ((__tmp66924
                              (let ()
                                (declare (not safe))
                                (cons _exn65810_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp66924))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66923))))))
    (define os-exception-code
      (lambda (_exn65806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65806_))
            (let ((_e65808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65806_ 'exception))))
              (if (macro-os-exception? _e65808_)
                  (macro-os-exception-code _e65808_)
                  (let ((__tmp66929
                         (let ((__tmp66930
                                (let ()
                                  (declare (not safe))
                                  (cons _e65808_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp66930))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66929))))
            (if (macro-os-exception? _exn65806_)
                (macro-os-exception-code _exn65806_)
                (let ((__tmp66927
                       (let ((__tmp66928
                              (let ()
                                (declare (not safe))
                                (cons _exn65806_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp66928))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66927))))))
    (define os-exception-message
      (lambda (_exn65802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65802_))
            (let ((_e65804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65802_ 'exception))))
              (if (macro-os-exception? _e65804_)
                  (macro-os-exception-message _e65804_)
                  (let ((__tmp66933
                         (let ((__tmp66934
                                (let ()
                                  (declare (not safe))
                                  (cons _e65804_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp66934))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66933))))
            (if (macro-os-exception? _exn65802_)
                (macro-os-exception-message _exn65802_)
                (let ((__tmp66931
                       (let ((__tmp66932
                              (let ()
                                (declare (not safe))
                                (cons _exn65802_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp66932))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66931))))))
    (define os-exception-procedure
      (lambda (_exn65796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65796_))
            (let ((_e65799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65796_ 'exception))))
              (if (macro-os-exception? _e65799_)
                  (macro-os-exception-procedure _e65799_)
                  (let ((__tmp66937
                         (let ((__tmp66938
                                (let ()
                                  (declare (not safe))
                                  (cons _e65799_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp66938))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66937))))
            (if (macro-os-exception? _exn65796_)
                (macro-os-exception-procedure _exn65796_)
                (let ((__tmp66935
                       (let ((__tmp66936
                              (let ()
                                (declare (not safe))
                                (cons _exn65796_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp66936))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66935))))))
    (define permission-denied-exception?
      (lambda (_exn65792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65792_))
            (let ((_e65794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65792_ 'exception))))
              (macro-permission-denied-exception? _e65794_))
            (macro-permission-denied-exception? _exn65792_))))
    (define permission-denied-exception-arguments
      (lambda (_exn65788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65788_))
            (let ((_e65790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65788_ 'exception))))
              (if (macro-permission-denied-exception? _e65790_)
                  (macro-permission-denied-exception-arguments _e65790_)
                  (let ((__tmp66941
                         (let ((__tmp66942
                                (let ()
                                  (declare (not safe))
                                  (cons _e65790_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp66942))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66941))))
            (if (macro-permission-denied-exception? _exn65788_)
                (macro-permission-denied-exception-arguments _exn65788_)
                (let ((__tmp66939
                       (let ((__tmp66940
                              (let ()
                                (declare (not safe))
                                (cons _exn65788_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp66940))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66939))))))
    (define permission-denied-exception-procedure
      (lambda (_exn65782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65782_))
            (let ((_e65785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65782_ 'exception))))
              (if (macro-permission-denied-exception? _e65785_)
                  (macro-permission-denied-exception-procedure _e65785_)
                  (let ((__tmp66945
                         (let ((__tmp66946
                                (let ()
                                  (declare (not safe))
                                  (cons _e65785_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp66946))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66945))))
            (if (macro-permission-denied-exception? _exn65782_)
                (macro-permission-denied-exception-procedure _exn65782_)
                (let ((__tmp66943
                       (let ((__tmp66944
                              (let ()
                                (declare (not safe))
                                (cons _exn65782_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp66944))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66943))))))
    (define range-exception?
      (lambda (_exn65778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65778_))
            (let ((_e65780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65778_ 'exception))))
              (macro-range-exception? _e65780_))
            (macro-range-exception? _exn65778_))))
    (define range-exception-arg-id
      (lambda (_exn65774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65774_))
            (let ((_e65776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65774_ 'exception))))
              (if (macro-range-exception? _e65776_)
                  (macro-range-exception-arg-id _e65776_)
                  (let ((__tmp66949
                         (let ((__tmp66950
                                (let ()
                                  (declare (not safe))
                                  (cons _e65776_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp66950))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66949))))
            (if (macro-range-exception? _exn65774_)
                (macro-range-exception-arg-id _exn65774_)
                (let ((__tmp66947
                       (let ((__tmp66948
                              (let ()
                                (declare (not safe))
                                (cons _exn65774_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp66948))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66947))))))
    (define range-exception-arguments
      (lambda (_exn65770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65770_))
            (let ((_e65772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65770_ 'exception))))
              (if (macro-range-exception? _e65772_)
                  (macro-range-exception-arguments _e65772_)
                  (let ((__tmp66953
                         (let ((__tmp66954
                                (let ()
                                  (declare (not safe))
                                  (cons _e65772_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp66954))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66953))))
            (if (macro-range-exception? _exn65770_)
                (macro-range-exception-arguments _exn65770_)
                (let ((__tmp66951
                       (let ((__tmp66952
                              (let ()
                                (declare (not safe))
                                (cons _exn65770_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp66952))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66951))))))
    (define range-exception-procedure
      (lambda (_exn65764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65764_))
            (let ((_e65767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65764_ 'exception))))
              (if (macro-range-exception? _e65767_)
                  (macro-range-exception-procedure _e65767_)
                  (let ((__tmp66957
                         (let ((__tmp66958
                                (let ()
                                  (declare (not safe))
                                  (cons _e65767_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp66958))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66957))))
            (if (macro-range-exception? _exn65764_)
                (macro-range-exception-procedure _exn65764_)
                (let ((__tmp66955
                       (let ((__tmp66956
                              (let ()
                                (declare (not safe))
                                (cons _exn65764_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp66956))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66955))))))
    (define rpc-remote-error-exception?
      (lambda (_exn65760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65760_))
            (let ((_e65762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65760_ 'exception))))
              (macro-rpc-remote-error-exception? _e65762_))
            (macro-rpc-remote-error-exception? _exn65760_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn65756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65756_))
            (let ((_e65758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65756_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65758_)
                  (macro-rpc-remote-error-exception-arguments _e65758_)
                  (let ((__tmp66961
                         (let ((__tmp66962
                                (let ()
                                  (declare (not safe))
                                  (cons _e65758_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp66962))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66961))))
            (if (macro-rpc-remote-error-exception? _exn65756_)
                (macro-rpc-remote-error-exception-arguments _exn65756_)
                (let ((__tmp66959
                       (let ((__tmp66960
                              (let ()
                                (declare (not safe))
                                (cons _exn65756_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp66960))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66959))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn65752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65752_))
            (let ((_e65754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65752_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65754_)
                  (macro-rpc-remote-error-exception-message _e65754_)
                  (let ((__tmp66965
                         (let ((__tmp66966
                                (let ()
                                  (declare (not safe))
                                  (cons _e65754_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp66966))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66965))))
            (if (macro-rpc-remote-error-exception? _exn65752_)
                (macro-rpc-remote-error-exception-message _exn65752_)
                (let ((__tmp66963
                       (let ((__tmp66964
                              (let ()
                                (declare (not safe))
                                (cons _exn65752_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp66964))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66963))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65746_))
            (let ((_e65749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65746_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65749_)
                  (macro-rpc-remote-error-exception-procedure _e65749_)
                  (let ((__tmp66969
                         (let ((__tmp66970
                                (let ()
                                  (declare (not safe))
                                  (cons _e65749_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp66970))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66969))))
            (if (macro-rpc-remote-error-exception? _exn65746_)
                (macro-rpc-remote-error-exception-procedure _exn65746_)
                (let ((__tmp66967
                       (let ((__tmp66968
                              (let ()
                                (declare (not safe))
                                (cons _exn65746_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp66968))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66967))))))
    (define scheduler-exception?
      (lambda (_exn65742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65742_))
            (let ((_e65744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65742_ 'exception))))
              (macro-scheduler-exception? _e65744_))
            (macro-scheduler-exception? _exn65742_))))
    (define scheduler-exception-reason
      (lambda (_exn65736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65736_))
            (let ((_e65739_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65736_ 'exception))))
              (if (macro-scheduler-exception? _e65739_)
                  (macro-scheduler-exception-reason _e65739_)
                  (let ((__tmp66973
                         (let ((__tmp66974
                                (let ()
                                  (declare (not safe))
                                  (cons _e65739_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp66974))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp66973))))
            (if (macro-scheduler-exception? _exn65736_)
                (macro-scheduler-exception-reason _exn65736_)
                (let ((__tmp66971
                       (let ((__tmp66972
                              (let ()
                                (declare (not safe))
                                (cons _exn65736_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp66972))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp66971))))))
    (define sfun-conversion-exception?
      (lambda (_exn65732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65732_))
            (let ((_e65734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65732_ 'exception))))
              (macro-sfun-conversion-exception? _e65734_))
            (macro-sfun-conversion-exception? _exn65732_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65728_))
            (let ((_e65730_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65728_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65730_)
                  (macro-sfun-conversion-exception-arguments _e65730_)
                  (let ((__tmp66977
                         (let ((__tmp66978
                                (let ()
                                  (declare (not safe))
                                  (cons _e65730_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp66978))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66977))))
            (if (macro-sfun-conversion-exception? _exn65728_)
                (macro-sfun-conversion-exception-arguments _exn65728_)
                (let ((__tmp66975
                       (let ((__tmp66976
                              (let ()
                                (declare (not safe))
                                (cons _exn65728_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp66976))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66975))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65724_))
            (let ((_e65726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65724_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65726_)
                  (macro-sfun-conversion-exception-code _e65726_)
                  (let ((__tmp66981
                         (let ((__tmp66982
                                (let ()
                                  (declare (not safe))
                                  (cons _e65726_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp66982))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66981))))
            (if (macro-sfun-conversion-exception? _exn65724_)
                (macro-sfun-conversion-exception-code _exn65724_)
                (let ((__tmp66979
                       (let ((__tmp66980
                              (let ()
                                (declare (not safe))
                                (cons _exn65724_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp66980))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66979))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65720_))
            (let ((_e65722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65720_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65722_)
                  (macro-sfun-conversion-exception-message _e65722_)
                  (let ((__tmp66985
                         (let ((__tmp66986
                                (let ()
                                  (declare (not safe))
                                  (cons _e65722_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp66986))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66985))))
            (if (macro-sfun-conversion-exception? _exn65720_)
                (macro-sfun-conversion-exception-message _exn65720_)
                (let ((__tmp66983
                       (let ((__tmp66984
                              (let ()
                                (declare (not safe))
                                (cons _exn65720_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp66984))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66983))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65714_))
            (let ((_e65717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65714_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65717_)
                  (macro-sfun-conversion-exception-procedure _e65717_)
                  (let ((__tmp66989
                         (let ((__tmp66990
                                (let ()
                                  (declare (not safe))
                                  (cons _e65717_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp66990))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66989))))
            (if (macro-sfun-conversion-exception? _exn65714_)
                (macro-sfun-conversion-exception-procedure _exn65714_)
                (let ((__tmp66987
                       (let ((__tmp66988
                              (let ()
                                (declare (not safe))
                                (cons _exn65714_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp66988))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66987))))))
    (define stack-overflow-exception?
      (lambda (_exn65708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65708_))
            (let ((_e65711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65708_ 'exception))))
              (macro-stack-overflow-exception? _e65711_))
            (macro-stack-overflow-exception? _exn65708_))))
    (define started-thread-exception?
      (lambda (_exn65704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65704_))
            (let ((_e65706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65704_ 'exception))))
              (macro-started-thread-exception? _e65706_))
            (macro-started-thread-exception? _exn65704_))))
    (define started-thread-exception-arguments
      (lambda (_exn65700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65700_))
            (let ((_e65702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65700_ 'exception))))
              (if (macro-started-thread-exception? _e65702_)
                  (macro-started-thread-exception-arguments _e65702_)
                  (let ((__tmp66993
                         (let ((__tmp66994
                                (let ()
                                  (declare (not safe))
                                  (cons _e65702_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp66994))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66993))))
            (if (macro-started-thread-exception? _exn65700_)
                (macro-started-thread-exception-arguments _exn65700_)
                (let ((__tmp66991
                       (let ((__tmp66992
                              (let ()
                                (declare (not safe))
                                (cons _exn65700_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp66992))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66991))))))
    (define started-thread-exception-procedure
      (lambda (_exn65694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65694_))
            (let ((_e65697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65694_ 'exception))))
              (if (macro-started-thread-exception? _e65697_)
                  (macro-started-thread-exception-procedure _e65697_)
                  (let ((__tmp66997
                         (let ((__tmp66998
                                (let ()
                                  (declare (not safe))
                                  (cons _e65697_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp66998))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66997))))
            (if (macro-started-thread-exception? _exn65694_)
                (macro-started-thread-exception-procedure _exn65694_)
                (let ((__tmp66995
                       (let ((__tmp66996
                              (let ()
                                (declare (not safe))
                                (cons _exn65694_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp66996))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66995))))))
    (define terminated-thread-exception?
      (lambda (_exn65690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65690_))
            (let ((_e65692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65690_ 'exception))))
              (macro-terminated-thread-exception? _e65692_))
            (macro-terminated-thread-exception? _exn65690_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65686_))
            (let ((_e65688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65686_ 'exception))))
              (if (macro-terminated-thread-exception? _e65688_)
                  (macro-terminated-thread-exception-arguments _e65688_)
                  (let ((__tmp67001
                         (let ((__tmp67002
                                (let ()
                                  (declare (not safe))
                                  (cons _e65688_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp67002))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp67001))))
            (if (macro-terminated-thread-exception? _exn65686_)
                (macro-terminated-thread-exception-arguments _exn65686_)
                (let ((__tmp66999
                       (let ((__tmp67000
                              (let ()
                                (declare (not safe))
                                (cons _exn65686_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp67000))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66999))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65680_))
            (let ((_e65683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65680_ 'exception))))
              (if (macro-terminated-thread-exception? _e65683_)
                  (macro-terminated-thread-exception-procedure _e65683_)
                  (let ((__tmp67005
                         (let ((__tmp67006
                                (let ()
                                  (declare (not safe))
                                  (cons _e65683_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp67006))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp67005))))
            (if (macro-terminated-thread-exception? _exn65680_)
                (macro-terminated-thread-exception-procedure _exn65680_)
                (let ((__tmp67003
                       (let ((__tmp67004
                              (let ()
                                (declare (not safe))
                                (cons _exn65680_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp67004))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp67003))))))
    (define type-exception?
      (lambda (_exn65676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65676_))
            (let ((_e65678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65676_ 'exception))))
              (macro-type-exception? _e65678_))
            (macro-type-exception? _exn65676_))))
    (define type-exception-arg-id
      (lambda (_exn65672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65672_))
            (let ((_e65674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65672_ 'exception))))
              (if (macro-type-exception? _e65674_)
                  (macro-type-exception-arg-id _e65674_)
                  (let ((__tmp67009
                         (let ((__tmp67010
                                (let ()
                                  (declare (not safe))
                                  (cons _e65674_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp67010))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67009))))
            (if (macro-type-exception? _exn65672_)
                (macro-type-exception-arg-id _exn65672_)
                (let ((__tmp67007
                       (let ((__tmp67008
                              (let ()
                                (declare (not safe))
                                (cons _exn65672_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp67008))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67007))))))
    (define type-exception-arguments
      (lambda (_exn65668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65668_))
            (let ((_e65670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65668_ 'exception))))
              (if (macro-type-exception? _e65670_)
                  (macro-type-exception-arguments _e65670_)
                  (let ((__tmp67013
                         (let ((__tmp67014
                                (let ()
                                  (declare (not safe))
                                  (cons _e65670_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp67014))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67013))))
            (if (macro-type-exception? _exn65668_)
                (macro-type-exception-arguments _exn65668_)
                (let ((__tmp67011
                       (let ((__tmp67012
                              (let ()
                                (declare (not safe))
                                (cons _exn65668_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp67012))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67011))))))
    (define type-exception-procedure
      (lambda (_exn65664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65664_))
            (let ((_e65666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65664_ 'exception))))
              (if (macro-type-exception? _e65666_)
                  (macro-type-exception-procedure _e65666_)
                  (let ((__tmp67017
                         (let ((__tmp67018
                                (let ()
                                  (declare (not safe))
                                  (cons _e65666_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp67018))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67017))))
            (if (macro-type-exception? _exn65664_)
                (macro-type-exception-procedure _exn65664_)
                (let ((__tmp67015
                       (let ((__tmp67016
                              (let ()
                                (declare (not safe))
                                (cons _exn65664_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp67016))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67015))))))
    (define type-exception-type-id
      (lambda (_exn65658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65658_))
            (let ((_e65661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65658_ 'exception))))
              (if (macro-type-exception? _e65661_)
                  (macro-type-exception-type-id _e65661_)
                  (let ((__tmp67021
                         (let ((__tmp67022
                                (let ()
                                  (declare (not safe))
                                  (cons _e65661_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp67022))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67021))))
            (if (macro-type-exception? _exn65658_)
                (macro-type-exception-type-id _exn65658_)
                (let ((__tmp67019
                       (let ((__tmp67020
                              (let ()
                                (declare (not safe))
                                (cons _exn65658_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp67020))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67019))))))
    (define unbound-global-exception?
      (lambda (_exn65654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65654_))
            (let ((_e65656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65654_ 'exception))))
              (macro-unbound-global-exception? _e65656_))
            (macro-unbound-global-exception? _exn65654_))))
    (define unbound-global-exception-code
      (lambda (_exn65650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65650_))
            (let ((_e65652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65650_ 'exception))))
              (if (macro-unbound-global-exception? _e65652_)
                  (macro-unbound-global-exception-code _e65652_)
                  (let ((__tmp67025
                         (let ((__tmp67026
                                (let ()
                                  (declare (not safe))
                                  (cons _e65652_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp67026))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67025))))
            (if (macro-unbound-global-exception? _exn65650_)
                (macro-unbound-global-exception-code _exn65650_)
                (let ((__tmp67023
                       (let ((__tmp67024
                              (let ()
                                (declare (not safe))
                                (cons _exn65650_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp67024))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67023))))))
    (define unbound-global-exception-rte
      (lambda (_exn65646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65646_))
            (let ((_e65648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65646_ 'exception))))
              (if (macro-unbound-global-exception? _e65648_)
                  (macro-unbound-global-exception-rte _e65648_)
                  (let ((__tmp67029
                         (let ((__tmp67030
                                (let ()
                                  (declare (not safe))
                                  (cons _e65648_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp67030))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67029))))
            (if (macro-unbound-global-exception? _exn65646_)
                (macro-unbound-global-exception-rte _exn65646_)
                (let ((__tmp67027
                       (let ((__tmp67028
                              (let ()
                                (declare (not safe))
                                (cons _exn65646_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp67028))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67027))))))
    (define unbound-global-exception-variable
      (lambda (_exn65640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65640_))
            (let ((_e65643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65640_ 'exception))))
              (if (macro-unbound-global-exception? _e65643_)
                  (macro-unbound-global-exception-variable _e65643_)
                  (let ((__tmp67033
                         (let ((__tmp67034
                                (let ()
                                  (declare (not safe))
                                  (cons _e65643_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp67034))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67033))))
            (if (macro-unbound-global-exception? _exn65640_)
                (macro-unbound-global-exception-variable _exn65640_)
                (let ((__tmp67031
                       (let ((__tmp67032
                              (let ()
                                (declare (not safe))
                                (cons _exn65640_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp67032))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67031))))))
    (define unbound-key-exception?
      (lambda (_exn65636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65636_))
            (let ((_e65638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65636_ 'exception))))
              (macro-unbound-key-exception? _e65638_))
            (macro-unbound-key-exception? _exn65636_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65632_))
            (let ((_e65634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65632_ 'exception))))
              (if (macro-unbound-key-exception? _e65634_)
                  (macro-unbound-key-exception-arguments _e65634_)
                  (let ((__tmp67037
                         (let ((__tmp67038
                                (let ()
                                  (declare (not safe))
                                  (cons _e65634_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp67038))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67037))))
            (if (macro-unbound-key-exception? _exn65632_)
                (macro-unbound-key-exception-arguments _exn65632_)
                (let ((__tmp67035
                       (let ((__tmp67036
                              (let ()
                                (declare (not safe))
                                (cons _exn65632_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp67036))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67035))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65626_))
            (let ((_e65629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65626_ 'exception))))
              (if (macro-unbound-key-exception? _e65629_)
                  (macro-unbound-key-exception-procedure _e65629_)
                  (let ((__tmp67041
                         (let ((__tmp67042
                                (let ()
                                  (declare (not safe))
                                  (cons _e65629_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp67042))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67041))))
            (if (macro-unbound-key-exception? _exn65626_)
                (macro-unbound-key-exception-procedure _exn65626_)
                (let ((__tmp67039
                       (let ((__tmp67040
                              (let ()
                                (declare (not safe))
                                (cons _exn65626_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp67040))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67039))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65622_))
            (let ((_e65624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65622_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65624_))
            (macro-unbound-os-environment-variable-exception? _exn65622_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65618_))
            (let ((_e65620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65618_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65620_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65620_)
                  (let ((__tmp67045
                         (let ((__tmp67046
                                (let ()
                                  (declare (not safe))
                                  (cons _e65620_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp67046))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67045))))
            (if (macro-unbound-os-environment-variable-exception? _exn65618_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65618_)
                (let ((__tmp67043
                       (let ((__tmp67044
                              (let ()
                                (declare (not safe))
                                (cons _exn65618_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp67044))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67043))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn65612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65612_))
            (let ((_e65615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65612_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65615_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e65615_)
                  (let ((__tmp67049
                         (let ((__tmp67050
                                (let ()
                                  (declare (not safe))
                                  (cons _e65615_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp67050))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67049))))
            (if (macro-unbound-os-environment-variable-exception? _exn65612_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn65612_)
                (let ((__tmp67047
                       (let ((__tmp67048
                              (let ()
                                (declare (not safe))
                                (cons _exn65612_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp67048))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67047))))))
    (define unbound-serial-number-exception?
      (lambda (_exn65608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65608_))
            (let ((_e65610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65608_ 'exception))))
              (macro-unbound-serial-number-exception? _e65610_))
            (macro-unbound-serial-number-exception? _exn65608_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn65604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65604_))
            (let ((_e65606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65604_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65606_)
                  (macro-unbound-serial-number-exception-arguments _e65606_)
                  (let ((__tmp67053
                         (let ((__tmp67054
                                (let ()
                                  (declare (not safe))
                                  (cons _e65606_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp67054))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67053))))
            (if (macro-unbound-serial-number-exception? _exn65604_)
                (macro-unbound-serial-number-exception-arguments _exn65604_)
                (let ((__tmp67051
                       (let ((__tmp67052
                              (let ()
                                (declare (not safe))
                                (cons _exn65604_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp67052))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67051))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn65598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65598_))
            (let ((_e65601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65598_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65601_)
                  (macro-unbound-serial-number-exception-procedure _e65601_)
                  (let ((__tmp67057
                         (let ((__tmp67058
                                (let ()
                                  (declare (not safe))
                                  (cons _e65601_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp67058))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67057))))
            (if (macro-unbound-serial-number-exception? _exn65598_)
                (macro-unbound-serial-number-exception-procedure _exn65598_)
                (let ((__tmp67055
                       (let ((__tmp67056
                              (let ()
                                (declare (not safe))
                                (cons _exn65598_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp67056))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67055))))))
    (define uncaught-exception?
      (lambda (_exn65594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65594_))
            (let ((_e65596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65594_ 'exception))))
              (macro-uncaught-exception? _e65596_))
            (macro-uncaught-exception? _exn65594_))))
    (define uncaught-exception-arguments
      (lambda (_exn65590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65590_))
            (let ((_e65592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65590_ 'exception))))
              (if (macro-uncaught-exception? _e65592_)
                  (macro-uncaught-exception-arguments _e65592_)
                  (let ((__tmp67061
                         (let ((__tmp67062
                                (let ()
                                  (declare (not safe))
                                  (cons _e65592_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp67062))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67061))))
            (if (macro-uncaught-exception? _exn65590_)
                (macro-uncaught-exception-arguments _exn65590_)
                (let ((__tmp67059
                       (let ((__tmp67060
                              (let ()
                                (declare (not safe))
                                (cons _exn65590_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp67060))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67059))))))
    (define uncaught-exception-procedure
      (lambda (_exn65586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65586_))
            (let ((_e65588_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65586_ 'exception))))
              (if (macro-uncaught-exception? _e65588_)
                  (macro-uncaught-exception-procedure _e65588_)
                  (let ((__tmp67065
                         (let ((__tmp67066
                                (let ()
                                  (declare (not safe))
                                  (cons _e65588_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp67066))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67065))))
            (if (macro-uncaught-exception? _exn65586_)
                (macro-uncaught-exception-procedure _exn65586_)
                (let ((__tmp67063
                       (let ((__tmp67064
                              (let ()
                                (declare (not safe))
                                (cons _exn65586_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp67064))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67063))))))
    (define uncaught-exception-reason
      (lambda (_exn65580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65580_))
            (let ((_e65583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65580_ 'exception))))
              (if (macro-uncaught-exception? _e65583_)
                  (macro-uncaught-exception-reason _e65583_)
                  (let ((__tmp67069
                         (let ((__tmp67070
                                (let ()
                                  (declare (not safe))
                                  (cons _e65583_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp67070))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67069))))
            (if (macro-uncaught-exception? _exn65580_)
                (macro-uncaught-exception-reason _exn65580_)
                (let ((__tmp67067
                       (let ((__tmp67068
                              (let ()
                                (declare (not safe))
                                (cons _exn65580_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp67068))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67067))))))
    (define uninitialized-thread-exception?
      (lambda (_exn65576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65576_))
            (let ((_e65578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65576_ 'exception))))
              (macro-uninitialized-thread-exception? _e65578_))
            (macro-uninitialized-thread-exception? _exn65576_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn65572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65572_))
            (let ((_e65574_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65572_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65574_)
                  (macro-uninitialized-thread-exception-arguments _e65574_)
                  (let ((__tmp67073
                         (let ((__tmp67074
                                (let ()
                                  (declare (not safe))
                                  (cons _e65574_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp67074))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67073))))
            (if (macro-uninitialized-thread-exception? _exn65572_)
                (macro-uninitialized-thread-exception-arguments _exn65572_)
                (let ((__tmp67071
                       (let ((__tmp67072
                              (let ()
                                (declare (not safe))
                                (cons _exn65572_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp67072))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67071))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn65566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65566_))
            (let ((_e65569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65566_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65569_)
                  (macro-uninitialized-thread-exception-procedure _e65569_)
                  (let ((__tmp67077
                         (let ((__tmp67078
                                (let ()
                                  (declare (not safe))
                                  (cons _e65569_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp67078))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67077))))
            (if (macro-uninitialized-thread-exception? _exn65566_)
                (macro-uninitialized-thread-exception-procedure _exn65566_)
                (let ((__tmp67075
                       (let ((__tmp67076
                              (let ()
                                (declare (not safe))
                                (cons _exn65566_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp67076))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67075))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn65562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65562_))
            (let ((_e65564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65562_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e65564_))
            (macro-unknown-keyword-argument-exception? _exn65562_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn65558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65558_))
            (let ((_e65560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65558_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65560_)
                  (macro-unknown-keyword-argument-exception-arguments _e65560_)
                  (let ((__tmp67081
                         (let ((__tmp67082
                                (let ()
                                  (declare (not safe))
                                  (cons _e65560_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp67082))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67081))))
            (if (macro-unknown-keyword-argument-exception? _exn65558_)
                (macro-unknown-keyword-argument-exception-arguments _exn65558_)
                (let ((__tmp67079
                       (let ((__tmp67080
                              (let ()
                                (declare (not safe))
                                (cons _exn65558_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp67080))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67079))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn65552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65552_))
            (let ((_e65555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65552_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65555_)
                  (macro-unknown-keyword-argument-exception-procedure _e65555_)
                  (let ((__tmp67085
                         (let ((__tmp67086
                                (let ()
                                  (declare (not safe))
                                  (cons _e65555_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp67086))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67085))))
            (if (macro-unknown-keyword-argument-exception? _exn65552_)
                (macro-unknown-keyword-argument-exception-procedure _exn65552_)
                (let ((__tmp67083
                       (let ((__tmp67084
                              (let ()
                                (declare (not safe))
                                (cons _exn65552_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp67084))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67083))))))
    (define unterminated-process-exception?
      (lambda (_exn65548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65548_))
            (let ((_e65550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65548_ 'exception))))
              (macro-unterminated-process-exception? _e65550_))
            (macro-unterminated-process-exception? _exn65548_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn65544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65544_))
            (let ((_e65546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65544_ 'exception))))
              (if (macro-unterminated-process-exception? _e65546_)
                  (macro-unterminated-process-exception-arguments _e65546_)
                  (let ((__tmp67089
                         (let ((__tmp67090
                                (let ()
                                  (declare (not safe))
                                  (cons _e65546_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp67090))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67089))))
            (if (macro-unterminated-process-exception? _exn65544_)
                (macro-unterminated-process-exception-arguments _exn65544_)
                (let ((__tmp67087
                       (let ((__tmp67088
                              (let ()
                                (declare (not safe))
                                (cons _exn65544_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp67088))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67087))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn65538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65538_))
            (let ((_e65541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65538_ 'exception))))
              (if (macro-unterminated-process-exception? _e65541_)
                  (macro-unterminated-process-exception-procedure _e65541_)
                  (let ((__tmp67093
                         (let ((__tmp67094
                                (let ()
                                  (declare (not safe))
                                  (cons _e65541_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp67094))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67093))))
            (if (macro-unterminated-process-exception? _exn65538_)
                (macro-unterminated-process-exception-procedure _exn65538_)
                (let ((__tmp67091
                       (let ((__tmp67092
                              (let ()
                                (declare (not safe))
                                (cons _exn65538_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp67092))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67091))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn65534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65534_))
            (let ((_e65536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65534_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e65536_))
            (macro-wrong-number-of-arguments-exception? _exn65534_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn65530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65530_))
            (let ((_e65532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65530_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65532_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e65532_)
                  (let ((__tmp67097
                         (let ((__tmp67098
                                (let ()
                                  (declare (not safe))
                                  (cons _e65532_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp67098))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67097))))
            (if (macro-wrong-number-of-arguments-exception? _exn65530_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn65530_)
                (let ((__tmp67095
                       (let ((__tmp67096
                              (let ()
                                (declare (not safe))
                                (cons _exn65530_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp67096))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67095))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn65524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65524_))
            (let ((_e65527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65524_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65527_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e65527_)
                  (let ((__tmp67101
                         (let ((__tmp67102
                                (let ()
                                  (declare (not safe))
                                  (cons _e65527_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp67102))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67101))))
            (if (macro-wrong-number-of-arguments-exception? _exn65524_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn65524_)
                (let ((__tmp67099
                       (let ((__tmp67100
                              (let ()
                                (declare (not safe))
                                (cons _exn65524_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp67100))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67099))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn65520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65520_))
            (let ((_e65522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65520_ 'exception))))
              (macro-wrong-number-of-values-exception? _e65522_))
            (macro-wrong-number-of-values-exception? _exn65520_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn65516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65516_))
            (let ((_e65518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65516_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65518_)
                  (macro-wrong-number-of-values-exception-code _e65518_)
                  (let ((__tmp67105
                         (let ((__tmp67106
                                (let ()
                                  (declare (not safe))
                                  (cons _e65518_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp67106))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67105))))
            (if (macro-wrong-number-of-values-exception? _exn65516_)
                (macro-wrong-number-of-values-exception-code _exn65516_)
                (let ((__tmp67103
                       (let ((__tmp67104
                              (let ()
                                (declare (not safe))
                                (cons _exn65516_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp67104))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67103))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn65512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65512_))
            (let ((_e65514_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65512_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65514_)
                  (macro-wrong-number-of-values-exception-rte _e65514_)
                  (let ((__tmp67109
                         (let ((__tmp67110
                                (let ()
                                  (declare (not safe))
                                  (cons _e65514_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp67110))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67109))))
            (if (macro-wrong-number-of-values-exception? _exn65512_)
                (macro-wrong-number-of-values-exception-rte _exn65512_)
                (let ((__tmp67107
                       (let ((__tmp67108
                              (let ()
                                (declare (not safe))
                                (cons _exn65512_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp67108))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67107))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn65506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65506_))
            (let ((_e65509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65506_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65509_)
                  (macro-wrong-number-of-values-exception-vals _e65509_)
                  (let ((__tmp67113
                         (let ((__tmp67114
                                (let ()
                                  (declare (not safe))
                                  (cons _e65509_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp67114))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67113))))
            (if (macro-wrong-number-of-values-exception? _exn65506_)
                (macro-wrong-number-of-values-exception-vals _exn65506_)
                (let ((__tmp67111
                       (let ((__tmp67112
                              (let ()
                                (declare (not safe))
                                (cons _exn65506_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp67112))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67111))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn65500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65500_))
            (let ((_e65503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65500_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e65503_))
            (macro-wrong-processor-c-return-exception? _exn65500_))))))
