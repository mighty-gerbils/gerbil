(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707554636)
  (begin
    (define Exception::t
      (let ((__tmp92681 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp92681
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args88458_
        (apply make-class-instance Exception::t _$args88458_)))
    (define StackTrace::t
      (let ((__tmp92682 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp92682
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args88455_
        (apply make-class-instance StackTrace::t _$args88455_)))
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
      (let ((__tmp92683 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp92683
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args88452_ (apply make-class-instance Error::t _$args88452_)))
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
      (let ((__tmp92684 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp92684
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args88449_
        (apply make-class-instance RuntimeException::t _$args88449_)))
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
      (lambda (_exn88444_ _continue88445_)
        (let ((_exn88447_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn88444_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn88447_ _continue88445_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn88440_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn88440_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn88440_ 'continuation))
                '#!void
                (let ((__tmp92685
                       (lambda (_cont88442_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn88440_
                            'continuation
                            _cont88442_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp92685)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn88440_))))
    (define error
      (lambda (_message88437_ . _irritants88438_)
        (raise (let ((__obj92675 (make-object Error::t '5)))
                 (Error:::init!
                  __obj92675
                  _message88437_
                  'irritants:
                  _irritants88438_)
                 __obj92675))))
    (define with-exception-handler
      (lambda (_handler88430_ _thunk88431_)
        (if (let () (declare (not safe)) (procedure? _handler88430_))
            '#!void
            (raise (let ((__obj92676 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92676
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88430_ '())))
                     __obj92676)))
        (if (let () (declare (not safe)) (procedure? _thunk88431_))
            '#!void
            (raise (let ((__obj92677 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92677
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88431_ '())))
                     __obj92677)))
        (let ((__tmp92686
               (lambda (_exn88433_)
                 (let ((_exn88435_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn88433_))))
                   (_handler88430_ _exn88435_)))))
          (declare (not safe))
          (##with-exception-handler __tmp92686 _thunk88431_))))
    (define with-catch
      (lambda (_handler88423_ _thunk88424_)
        (if (let () (declare (not safe)) (procedure? _handler88423_))
            '#!void
            (raise (let ((__obj92678 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92678
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88423_ '())))
                     __obj92678)))
        (if (let () (declare (not safe)) (procedure? _thunk88424_))
            '#!void
            (raise (let ((__obj92679 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92679
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88424_ '())))
                     __obj92679)))
        (let ((__tmp92687
               (lambda (_cont88426_)
                 (with-exception-handler
                  (lambda (_exn88428_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont88426_
                       _handler88423_
                       _exn88428_)))
                  _thunk88424_))))
          (declare (not safe))
          (##continuation-capture __tmp92687))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn88414_)
        (if (or (heap-overflow-exception? _exn88414_)
                (stack-overflow-exception? _exn88414_))
            _exn88414_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn88414_))
                _exn88414_
                (if (macro-exception? _exn88414_)
                    (let ((_rte88419_
                           (let ((__obj92680
                                  (make-object RuntimeException::t '3)))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj92680
                                _exn88414_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj92680)))
                      (let ((__tmp92688
                             (lambda (_cont88421_)
                               (let ((__tmp92689
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont88421_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte88419_
                                  'continuation
                                  __tmp92689)))))
                        (declare (not safe))
                        (##continuation-capture __tmp92688))
                      _rte88419_)
                    _exn88414_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj88409_)
        (let ((_$e88411_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj88409_))))
          (if _$e88411_ _$e88411_ (error-exception? _obj88409_)))))
    (define error-message
      (lambda (_obj88407_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88407_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88407_ 'message))
            (if (error-exception? _obj88407_)
                (error-exception-message _obj88407_)
                '#f))))
    (define error-irritants
      (lambda (_obj88405_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88405_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88405_ 'irritants))
            (if (error-exception? _obj88405_)
                (error-exception-parameters _obj88405_)
                '#f))))
    (define error-trace
      (lambda (_obj88403_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88403_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88403_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e88385_ _port88386_)
        (let ((_$e88388_
               (let ()
                 (declare (not safe))
                 (method-ref _e88385_ 'display-exception))))
          (if _$e88388_
              ((lambda (_f88391_) (_f88391_ _e88385_ _port88386_)) _$e88388_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e88385_ _port88386_))))))
    (define display-exception__0
      (lambda (_e88396_)
        (let ((_port88398_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e88396_ _port88398_))))
    (define display-exception
      (lambda _g92691_
        (let ((_g92690_ (let () (declare (not safe)) (##length _g92691_))))
          (cond ((let () (declare (not safe)) (##fx= _g92690_ 1))
                 (apply (lambda (_e88396_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e88396_)))
                        _g92691_))
                ((let () (declare (not safe)) (##fx= _g92690_ 2))
                 (apply (lambda (_e88400_ _port88401_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e88400_ _port88401_)))
                        _g92691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g92691_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self88374_ _message88375_ . _rest88376_)
        (let ((_message88382_
               (if (let () (declare (not safe)) (string? _message88375_))
                   _message88375_
                   (call-with-output-string
                    '""
                    (lambda (_g8837788379_)
                      (display _message88375_ _g8837788379_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self88374_ 'message _message88382_))
          (apply class-instance-init! _self88374_ _rest88376_))))
    (define Error:::init!::specialize
      (lambda (__t92654)
        (let ((__message92655
               (let ((__tmp92656
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92654 'message))))
                 (if __tmp92656 __tmp92656 (error '"Unknown slot" 'message)))))
          (lambda (_self88374_ _message88375_ . _rest88376_)
            (let ((_message88382_
                   (if (let () (declare (not safe)) (string? _message88375_))
                       _message88375_
                       (call-with-output-string
                        '""
                        (lambda (_g8837788379_)
                          (display _message88375_ _g8837788379_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self88374_
                 _message88382_
                 __message92655
                 __t92654
                 '#f))
              (apply class-instance-init! _self88374_ _rest88376_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self88232_ _port88233_)
        (let ((_tmp-port88235_ (open-output-string))
              (_display-error-newline88236_
               (> (output-port-column _port88233_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88235_))
          (let ((__tmp92692
                 (lambda ()
                   (if _display-error-newline88236_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e88239_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88232_ 'where))))
                     (if _$e88239_ (display _$e88239_) (display '"?")))
                   (let ((__tmp92693
                          (let ((__tmp92694
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self88232_))))
                            (declare (not safe))
                            (##type-name __tmp92694))))
                     (declare (not safe))
                     (display* '" [" __tmp92693 '"]: "))
                   (let ((__tmp92695
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88232_ 'message))))
                     (declare (not safe))
                     (displayln __tmp92695))
                   (let ((_irritants88242_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88232_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants88242_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj88244_)
                              (write _obj88244_)
                              (write-char '#\space))
                            _irritants88242_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self88232_))
                            (dump-stack-trace?))
                       (let ((_cont8824588247_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self88232_
                                 'continuation))))
                         (if _cont8824588247_
                             (let ((_cont88250_ _cont8824588247_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont88250_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp92692
             current-output-port
             _tmp-port88235_))
          (let ((__tmp92696 (get-output-string _tmp-port88235_)))
            (declare (not safe))
            (##write-string __tmp92696 _port88233_)))))
    (define Error::display-exception::specialize
      (lambda (__t92657)
        (let ((__irritants92658
               (let ((__tmp92662
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92657 'irritants))))
                 (if __tmp92662
                     __tmp92662
                     (error '"Unknown slot" 'irritants))))
              (__continuation92659
               (let ((__tmp92663
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92657 'continuation))))
                 (if __tmp92663
                     __tmp92663
                     (error '"Unknown slot" 'continuation))))
              (__where92660
               (let ((__tmp92664
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92657 'where))))
                 (if __tmp92664 __tmp92664 (error '"Unknown slot" 'where))))
              (__message92661
               (let ((__tmp92665
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92657 'message))))
                 (if __tmp92665 __tmp92665 (error '"Unknown slot" 'message)))))
          (lambda (_self88232_ _port88233_)
            (let ((_tmp-port88235_ (open-output-string))
                  (_display-error-newline88236_
                   (> (output-port-column _port88233_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88235_))
              (let ((__tmp92697
                     (lambda ()
                       (if _display-error-newline88236_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e88239_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88232_
                                 __where92660
                                 __t92657
                                 '#f))))
                         (if _$e88239_ (display _$e88239_) (display '"?")))
                       (let ((__tmp92698
                              (let ((__tmp92699
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self88232_))))
                                (declare (not safe))
                                (##type-name __tmp92699))))
                         (declare (not safe))
                         (display* '" [" __tmp92698 '"]: "))
                       (let ((__tmp92700
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88232_
                                 __message92661
                                 __t92657
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp92700))
                       (let ((_irritants88242_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88232_
                                 __irritants92658
                                 __t92657
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants88242_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj88244_)
                                  (write _obj88244_)
                                  (write-char '#\space))
                                _irritants88242_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self88232_))
                                (dump-stack-trace?))
                           (let ((_cont8824588247_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self88232_
                                     __continuation92659
                                     __t92657
                                     '#f))))
                             (if _cont8824588247_
                                 (let ((_cont88250_ _cont8824588247_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont88250_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp92697
                 current-output-port
                 _tmp-port88235_))
              (let ((__tmp92701 (get-output-string _tmp-port88235_)))
                (declare (not safe))
                (##write-string __tmp92701 _port88233_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self88099_ _port88100_)
        (let ((_tmp-port88102_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88102_))
          (let ((__tmp92702
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self88099_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp92702 _tmp-port88102_))
          (if (dump-stack-trace?)
              (let ((_cont8810388105_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self88099_ 'continuation))))
                (if _cont8810388105_
                    (let ((_cont88108_ _cont8810388105_))
                      (display '"--- continuation backtrace:" _tmp-port88102_)
                      (newline _tmp-port88102_)
                      (display-continuation-backtrace
                       _cont88108_
                       _tmp-port88102_))
                    '#f))
              '#!void)
          (let ((__tmp92703 (get-output-string _tmp-port88102_)))
            (declare (not safe))
            (##write-string __tmp92703 _port88100_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t92666)
        (let ((__exception92667
               (let ((__tmp92669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92666 'exception))))
                 (if __tmp92669
                     __tmp92669
                     (error '"Unknown slot" 'exception))))
              (__continuation92668
               (let ((__tmp92670
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92666 'continuation))))
                 (if __tmp92670
                     __tmp92670
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self88099_ _port88100_)
            (let ((_tmp-port88102_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88102_))
              (let ((__tmp92704
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self88099_
                        __exception92667
                        __t92666
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp92704 _tmp-port88102_))
              (if (dump-stack-trace?)
                  (let ((_cont8810388105_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self88099_
                            __continuation92668
                            __t92666
                            '#f))))
                    (if _cont8810388105_
                        (let ((_cont88108_ _cont8810388105_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port88102_)
                          (newline _tmp-port88102_)
                          (display-continuation-backtrace
                           _cont88108_
                           _tmp-port88102_))
                        '#f))
                  '#!void)
              (let ((__tmp92705 (get-output-string _tmp-port88102_)))
                (declare (not safe))
                (##write-string __tmp92705 _port88100_)))))))
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
      (lambda (_port87971_)
        (if (macro-character-port? _port87971_)
            (let ((_old-width87973_
                   (macro-character-port-output-width _port87971_)))
              (macro-character-port-output-width-set!
               _port87971_
               (lambda (_port87975_) '256))
              _old-width87973_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port87968_ _old-width87969_)
        (if (macro-character-port? _port87968_)
            (macro-character-port-output-width-set!
             _port87968_
             _old-width87969_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e87966_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e87966_))))
    (define abandoned-mutex-exception?
      (lambda (_exn87960_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87960_))
            (let ((_e87963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87960_ 'exception))))
              (macro-abandoned-mutex-exception? _e87963_))
            (macro-abandoned-mutex-exception? _exn87960_))))
    (define cfun-conversion-exception?
      (lambda (_exn87956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87956_))
            (let ((_e87958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87956_ 'exception))))
              (macro-cfun-conversion-exception? _e87958_))
            (macro-cfun-conversion-exception? _exn87956_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn87952_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87952_))
            (let ((_e87954_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87952_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87954_)
                  (macro-cfun-conversion-exception-arguments _e87954_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92707
                                (let ()
                                  (declare (not safe))
                                  (cons _e87954_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp92707)))))
            (if (macro-cfun-conversion-exception? _exn87952_)
                (macro-cfun-conversion-exception-arguments _exn87952_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92706
                              (let ()
                                (declare (not safe))
                                (cons _exn87952_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp92706)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn87948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87948_))
            (let ((_e87950_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87948_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87950_)
                  (macro-cfun-conversion-exception-code _e87950_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92709
                                (let ()
                                  (declare (not safe))
                                  (cons _e87950_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp92709)))))
            (if (macro-cfun-conversion-exception? _exn87948_)
                (macro-cfun-conversion-exception-code _exn87948_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92708
                              (let ()
                                (declare (not safe))
                                (cons _exn87948_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp92708)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn87944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87944_))
            (let ((_e87946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87944_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87946_)
                  (macro-cfun-conversion-exception-message _e87946_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92711
                                (let ()
                                  (declare (not safe))
                                  (cons _e87946_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp92711)))))
            (if (macro-cfun-conversion-exception? _exn87944_)
                (macro-cfun-conversion-exception-message _exn87944_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92710
                              (let ()
                                (declare (not safe))
                                (cons _exn87944_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp92710)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn87938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87938_))
            (let ((_e87941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87938_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87941_)
                  (macro-cfun-conversion-exception-procedure _e87941_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92713
                                (let ()
                                  (declare (not safe))
                                  (cons _e87941_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp92713)))))
            (if (macro-cfun-conversion-exception? _exn87938_)
                (macro-cfun-conversion-exception-procedure _exn87938_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92712
                              (let ()
                                (declare (not safe))
                                (cons _exn87938_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp92712)))))))
    (define datum-parsing-exception?
      (lambda (_exn87934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87934_))
            (let ((_e87936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87934_ 'exception))))
              (macro-datum-parsing-exception? _e87936_))
            (macro-datum-parsing-exception? _exn87934_))))
    (define datum-parsing-exception-kind
      (lambda (_exn87930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87930_))
            (let ((_e87932_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87930_ 'exception))))
              (if (macro-datum-parsing-exception? _e87932_)
                  (macro-datum-parsing-exception-kind _e87932_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92715
                                (let ()
                                  (declare (not safe))
                                  (cons _e87932_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp92715)))))
            (if (macro-datum-parsing-exception? _exn87930_)
                (macro-datum-parsing-exception-kind _exn87930_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92714
                              (let ()
                                (declare (not safe))
                                (cons _exn87930_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp92714)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn87926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87926_))
            (let ((_e87928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87926_ 'exception))))
              (if (macro-datum-parsing-exception? _e87928_)
                  (macro-datum-parsing-exception-parameters _e87928_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92717
                                (let ()
                                  (declare (not safe))
                                  (cons _e87928_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp92717)))))
            (if (macro-datum-parsing-exception? _exn87926_)
                (macro-datum-parsing-exception-parameters _exn87926_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92716
                              (let ()
                                (declare (not safe))
                                (cons _exn87926_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp92716)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn87920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87920_))
            (let ((_e87923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87920_ 'exception))))
              (if (macro-datum-parsing-exception? _e87923_)
                  (macro-datum-parsing-exception-readenv _e87923_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92719
                                (let ()
                                  (declare (not safe))
                                  (cons _e87923_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp92719)))))
            (if (macro-datum-parsing-exception? _exn87920_)
                (macro-datum-parsing-exception-readenv _exn87920_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92718
                              (let ()
                                (declare (not safe))
                                (cons _exn87920_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp92718)))))))
    (define deadlock-exception?
      (lambda (_exn87914_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87914_))
            (let ((_e87917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87914_ 'exception))))
              (macro-deadlock-exception? _e87917_))
            (macro-deadlock-exception? _exn87914_))))
    (define divide-by-zero-exception?
      (lambda (_exn87910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87910_))
            (let ((_e87912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87910_ 'exception))))
              (macro-divide-by-zero-exception? _e87912_))
            (macro-divide-by-zero-exception? _exn87910_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn87906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87906_))
            (let ((_e87908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87906_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87908_)
                  (macro-divide-by-zero-exception-arguments _e87908_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92721
                                (let ()
                                  (declare (not safe))
                                  (cons _e87908_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp92721)))))
            (if (macro-divide-by-zero-exception? _exn87906_)
                (macro-divide-by-zero-exception-arguments _exn87906_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92720
                              (let ()
                                (declare (not safe))
                                (cons _exn87906_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp92720)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn87900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87900_))
            (let ((_e87903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87900_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87903_)
                  (macro-divide-by-zero-exception-procedure _e87903_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92723
                                (let ()
                                  (declare (not safe))
                                  (cons _e87903_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp92723)))))
            (if (macro-divide-by-zero-exception? _exn87900_)
                (macro-divide-by-zero-exception-procedure _exn87900_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92722
                              (let ()
                                (declare (not safe))
                                (cons _exn87900_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp92722)))))))
    (define error-exception?
      (lambda (_exn87896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87896_))
            (let ((_e87898_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87896_ 'exception))))
              (macro-error-exception? _e87898_))
            (macro-error-exception? _exn87896_))))
    (define error-exception-message
      (lambda (_exn87892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87892_))
            (let ((_e87894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87892_ 'exception))))
              (if (macro-error-exception? _e87894_)
                  (macro-error-exception-message _e87894_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92725
                                (let ()
                                  (declare (not safe))
                                  (cons _e87894_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp92725)))))
            (if (macro-error-exception? _exn87892_)
                (macro-error-exception-message _exn87892_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92724
                              (let ()
                                (declare (not safe))
                                (cons _exn87892_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp92724)))))))
    (define error-exception-parameters
      (lambda (_exn87886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87886_))
            (let ((_e87889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87886_ 'exception))))
              (if (macro-error-exception? _e87889_)
                  (macro-error-exception-parameters _e87889_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92727
                                (let ()
                                  (declare (not safe))
                                  (cons _e87889_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp92727)))))
            (if (macro-error-exception? _exn87886_)
                (macro-error-exception-parameters _exn87886_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92726
                              (let ()
                                (declare (not safe))
                                (cons _exn87886_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp92726)))))))
    (define expression-parsing-exception?
      (lambda (_exn87882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87882_))
            (let ((_e87884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87882_ 'exception))))
              (macro-expression-parsing-exception? _e87884_))
            (macro-expression-parsing-exception? _exn87882_))))
    (define expression-parsing-exception-kind
      (lambda (_exn87878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87878_))
            (let ((_e87880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87878_ 'exception))))
              (if (macro-expression-parsing-exception? _e87880_)
                  (macro-expression-parsing-exception-kind _e87880_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92729
                                (let ()
                                  (declare (not safe))
                                  (cons _e87880_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp92729)))))
            (if (macro-expression-parsing-exception? _exn87878_)
                (macro-expression-parsing-exception-kind _exn87878_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92728
                              (let ()
                                (declare (not safe))
                                (cons _exn87878_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp92728)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn87874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87874_))
            (let ((_e87876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87874_ 'exception))))
              (if (macro-expression-parsing-exception? _e87876_)
                  (macro-expression-parsing-exception-parameters _e87876_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92731
                                (let ()
                                  (declare (not safe))
                                  (cons _e87876_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp92731)))))
            (if (macro-expression-parsing-exception? _exn87874_)
                (macro-expression-parsing-exception-parameters _exn87874_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92730
                              (let ()
                                (declare (not safe))
                                (cons _exn87874_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp92730)))))))
    (define expression-parsing-exception-source
      (lambda (_exn87868_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87868_))
            (let ((_e87871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87868_ 'exception))))
              (if (macro-expression-parsing-exception? _e87871_)
                  (macro-expression-parsing-exception-source _e87871_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92733
                                (let ()
                                  (declare (not safe))
                                  (cons _e87871_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp92733)))))
            (if (macro-expression-parsing-exception? _exn87868_)
                (macro-expression-parsing-exception-source _exn87868_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92732
                              (let ()
                                (declare (not safe))
                                (cons _exn87868_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp92732)))))))
    (define file-exists-exception?
      (lambda (_exn87864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87864_))
            (let ((_e87866_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87864_ 'exception))))
              (macro-file-exists-exception? _e87866_))
            (macro-file-exists-exception? _exn87864_))))
    (define file-exists-exception-arguments
      (lambda (_exn87860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87860_))
            (let ((_e87862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87860_ 'exception))))
              (if (macro-file-exists-exception? _e87862_)
                  (macro-file-exists-exception-arguments _e87862_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92735
                                (let ()
                                  (declare (not safe))
                                  (cons _e87862_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp92735)))))
            (if (macro-file-exists-exception? _exn87860_)
                (macro-file-exists-exception-arguments _exn87860_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92734
                              (let ()
                                (declare (not safe))
                                (cons _exn87860_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp92734)))))))
    (define file-exists-exception-procedure
      (lambda (_exn87854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87854_))
            (let ((_e87857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87854_ 'exception))))
              (if (macro-file-exists-exception? _e87857_)
                  (macro-file-exists-exception-procedure _e87857_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92737
                                (let ()
                                  (declare (not safe))
                                  (cons _e87857_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp92737)))))
            (if (macro-file-exists-exception? _exn87854_)
                (macro-file-exists-exception-procedure _exn87854_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92736
                              (let ()
                                (declare (not safe))
                                (cons _exn87854_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp92736)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn87850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87850_))
            (let ((_e87852_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87850_ 'exception))))
              (macro-fixnum-overflow-exception? _e87852_))
            (macro-fixnum-overflow-exception? _exn87850_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn87846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87846_))
            (let ((_e87848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87846_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87848_)
                  (macro-fixnum-overflow-exception-arguments _e87848_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92739
                                (let ()
                                  (declare (not safe))
                                  (cons _e87848_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp92739)))))
            (if (macro-fixnum-overflow-exception? _exn87846_)
                (macro-fixnum-overflow-exception-arguments _exn87846_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92738
                              (let ()
                                (declare (not safe))
                                (cons _exn87846_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp92738)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn87840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87840_))
            (let ((_e87843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87840_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87843_)
                  (macro-fixnum-overflow-exception-procedure _e87843_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92741
                                (let ()
                                  (declare (not safe))
                                  (cons _e87843_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp92741)))))
            (if (macro-fixnum-overflow-exception? _exn87840_)
                (macro-fixnum-overflow-exception-procedure _exn87840_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92740
                              (let ()
                                (declare (not safe))
                                (cons _exn87840_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp92740)))))))
    (define heap-overflow-exception?
      (lambda (_exn87834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87834_))
            (let ((_e87837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87834_ 'exception))))
              (macro-heap-overflow-exception? _e87837_))
            (macro-heap-overflow-exception? _exn87834_))))
    (define inactive-thread-exception?
      (lambda (_exn87830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87830_))
            (let ((_e87832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87830_ 'exception))))
              (macro-inactive-thread-exception? _e87832_))
            (macro-inactive-thread-exception? _exn87830_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn87826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87826_))
            (let ((_e87828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87826_ 'exception))))
              (if (macro-inactive-thread-exception? _e87828_)
                  (macro-inactive-thread-exception-arguments _e87828_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92743
                                (let ()
                                  (declare (not safe))
                                  (cons _e87828_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp92743)))))
            (if (macro-inactive-thread-exception? _exn87826_)
                (macro-inactive-thread-exception-arguments _exn87826_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92742
                              (let ()
                                (declare (not safe))
                                (cons _exn87826_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp92742)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn87820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87820_))
            (let ((_e87823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87820_ 'exception))))
              (if (macro-inactive-thread-exception? _e87823_)
                  (macro-inactive-thread-exception-procedure _e87823_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92745
                                (let ()
                                  (declare (not safe))
                                  (cons _e87823_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp92745)))))
            (if (macro-inactive-thread-exception? _exn87820_)
                (macro-inactive-thread-exception-procedure _exn87820_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92744
                              (let ()
                                (declare (not safe))
                                (cons _exn87820_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp92744)))))))
    (define initialized-thread-exception?
      (lambda (_exn87816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87816_))
            (let ((_e87818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87816_ 'exception))))
              (macro-initialized-thread-exception? _e87818_))
            (macro-initialized-thread-exception? _exn87816_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn87812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87812_))
            (let ((_e87814_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87812_ 'exception))))
              (if (macro-initialized-thread-exception? _e87814_)
                  (macro-initialized-thread-exception-arguments _e87814_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92747
                                (let ()
                                  (declare (not safe))
                                  (cons _e87814_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp92747)))))
            (if (macro-initialized-thread-exception? _exn87812_)
                (macro-initialized-thread-exception-arguments _exn87812_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92746
                              (let ()
                                (declare (not safe))
                                (cons _exn87812_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp92746)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn87806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87806_))
            (let ((_e87809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87806_ 'exception))))
              (if (macro-initialized-thread-exception? _e87809_)
                  (macro-initialized-thread-exception-procedure _e87809_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92749
                                (let ()
                                  (declare (not safe))
                                  (cons _e87809_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp92749)))))
            (if (macro-initialized-thread-exception? _exn87806_)
                (macro-initialized-thread-exception-procedure _exn87806_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92748
                              (let ()
                                (declare (not safe))
                                (cons _exn87806_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp92748)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn87802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87802_))
            (let ((_e87804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87802_ 'exception))))
              (macro-invalid-hash-number-exception? _e87804_))
            (macro-invalid-hash-number-exception? _exn87802_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn87798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87798_))
            (let ((_e87800_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87798_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87800_)
                  (macro-invalid-hash-number-exception-arguments _e87800_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92751
                                (let ()
                                  (declare (not safe))
                                  (cons _e87800_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp92751)))))
            (if (macro-invalid-hash-number-exception? _exn87798_)
                (macro-invalid-hash-number-exception-arguments _exn87798_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92750
                              (let ()
                                (declare (not safe))
                                (cons _exn87798_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp92750)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn87792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87792_))
            (let ((_e87795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87792_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87795_)
                  (macro-invalid-hash-number-exception-procedure _e87795_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92753
                                (let ()
                                  (declare (not safe))
                                  (cons _e87795_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp92753)))))
            (if (macro-invalid-hash-number-exception? _exn87792_)
                (macro-invalid-hash-number-exception-procedure _exn87792_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92752
                              (let ()
                                (declare (not safe))
                                (cons _exn87792_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp92752)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn87788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87788_))
            (let ((_e87790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87788_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e87790_))
            (macro-invalid-utf8-encoding-exception? _exn87788_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn87784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87784_))
            (let ((_e87786_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87784_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87786_)
                  (macro-invalid-utf8-encoding-exception-arguments _e87786_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92755
                                (let ()
                                  (declare (not safe))
                                  (cons _e87786_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp92755)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87784_)
                (macro-invalid-utf8-encoding-exception-arguments _exn87784_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92754
                              (let ()
                                (declare (not safe))
                                (cons _exn87784_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp92754)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn87778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87778_))
            (let ((_e87781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87778_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87781_)
                  (macro-invalid-utf8-encoding-exception-procedure _e87781_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92757
                                (let ()
                                  (declare (not safe))
                                  (cons _e87781_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp92757)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87778_)
                (macro-invalid-utf8-encoding-exception-procedure _exn87778_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92756
                              (let ()
                                (declare (not safe))
                                (cons _exn87778_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp92756)))))))
    (define join-timeout-exception?
      (lambda (_exn87774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87774_))
            (let ((_e87776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87774_ 'exception))))
              (macro-join-timeout-exception? _e87776_))
            (macro-join-timeout-exception? _exn87774_))))
    (define join-timeout-exception-arguments
      (lambda (_exn87770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87770_))
            (let ((_e87772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87770_ 'exception))))
              (if (macro-join-timeout-exception? _e87772_)
                  (macro-join-timeout-exception-arguments _e87772_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92759
                                (let ()
                                  (declare (not safe))
                                  (cons _e87772_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp92759)))))
            (if (macro-join-timeout-exception? _exn87770_)
                (macro-join-timeout-exception-arguments _exn87770_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92758
                              (let ()
                                (declare (not safe))
                                (cons _exn87770_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp92758)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn87764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87764_))
            (let ((_e87767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87764_ 'exception))))
              (if (macro-join-timeout-exception? _e87767_)
                  (macro-join-timeout-exception-procedure _e87767_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92761
                                (let ()
                                  (declare (not safe))
                                  (cons _e87767_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp92761)))))
            (if (macro-join-timeout-exception? _exn87764_)
                (macro-join-timeout-exception-procedure _exn87764_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92760
                              (let ()
                                (declare (not safe))
                                (cons _exn87764_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp92760)))))))
    (define keyword-expected-exception?
      (lambda (_exn87760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87760_))
            (let ((_e87762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87760_ 'exception))))
              (macro-keyword-expected-exception? _e87762_))
            (macro-keyword-expected-exception? _exn87760_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn87756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87756_))
            (let ((_e87758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87756_ 'exception))))
              (if (macro-keyword-expected-exception? _e87758_)
                  (macro-keyword-expected-exception-arguments _e87758_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92763
                                (let ()
                                  (declare (not safe))
                                  (cons _e87758_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp92763)))))
            (if (macro-keyword-expected-exception? _exn87756_)
                (macro-keyword-expected-exception-arguments _exn87756_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92762
                              (let ()
                                (declare (not safe))
                                (cons _exn87756_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp92762)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn87750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87750_))
            (let ((_e87753_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87750_ 'exception))))
              (if (macro-keyword-expected-exception? _e87753_)
                  (macro-keyword-expected-exception-procedure _e87753_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92765
                                (let ()
                                  (declare (not safe))
                                  (cons _e87753_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp92765)))))
            (if (macro-keyword-expected-exception? _exn87750_)
                (macro-keyword-expected-exception-procedure _exn87750_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92764
                              (let ()
                                (declare (not safe))
                                (cons _exn87750_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp92764)))))))
    (define length-mismatch-exception?
      (lambda (_exn87746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87746_))
            (let ((_e87748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87746_ 'exception))))
              (macro-length-mismatch-exception? _e87748_))
            (macro-length-mismatch-exception? _exn87746_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn87742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87742_))
            (let ((_e87744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87742_ 'exception))))
              (if (macro-length-mismatch-exception? _e87744_)
                  (macro-length-mismatch-exception-arg-id _e87744_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92767
                                (let ()
                                  (declare (not safe))
                                  (cons _e87744_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp92767)))))
            (if (macro-length-mismatch-exception? _exn87742_)
                (macro-length-mismatch-exception-arg-id _exn87742_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92766
                              (let ()
                                (declare (not safe))
                                (cons _exn87742_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp92766)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn87738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87738_))
            (let ((_e87740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87738_ 'exception))))
              (if (macro-length-mismatch-exception? _e87740_)
                  (macro-length-mismatch-exception-arguments _e87740_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92769
                                (let ()
                                  (declare (not safe))
                                  (cons _e87740_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp92769)))))
            (if (macro-length-mismatch-exception? _exn87738_)
                (macro-length-mismatch-exception-arguments _exn87738_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92768
                              (let ()
                                (declare (not safe))
                                (cons _exn87738_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp92768)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn87732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87732_))
            (let ((_e87735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87732_ 'exception))))
              (if (macro-length-mismatch-exception? _e87735_)
                  (macro-length-mismatch-exception-procedure _e87735_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92771
                                (let ()
                                  (declare (not safe))
                                  (cons _e87735_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp92771)))))
            (if (macro-length-mismatch-exception? _exn87732_)
                (macro-length-mismatch-exception-procedure _exn87732_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92770
                              (let ()
                                (declare (not safe))
                                (cons _exn87732_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp92770)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn87728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87728_))
            (let ((_e87730_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87728_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e87730_))
            (macro-mailbox-receive-timeout-exception? _exn87728_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn87724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87724_))
            (let ((_e87726_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87724_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87726_)
                  (macro-mailbox-receive-timeout-exception-arguments _e87726_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92773
                                (let ()
                                  (declare (not safe))
                                  (cons _e87726_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp92773)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87724_)
                (macro-mailbox-receive-timeout-exception-arguments _exn87724_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92772
                              (let ()
                                (declare (not safe))
                                (cons _exn87724_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp92772)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn87718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87718_))
            (let ((_e87721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87718_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87721_)
                  (macro-mailbox-receive-timeout-exception-procedure _e87721_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92775
                                (let ()
                                  (declare (not safe))
                                  (cons _e87721_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp92775)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87718_)
                (macro-mailbox-receive-timeout-exception-procedure _exn87718_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92774
                              (let ()
                                (declare (not safe))
                                (cons _exn87718_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp92774)))))))
    (define module-not-found-exception?
      (lambda (_exn87714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87714_))
            (let ((_e87716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87714_ 'exception))))
              (macro-module-not-found-exception? _e87716_))
            (macro-module-not-found-exception? _exn87714_))))
    (define module-not-found-exception-arguments
      (lambda (_exn87710_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87710_))
            (let ((_e87712_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87710_ 'exception))))
              (if (macro-module-not-found-exception? _e87712_)
                  (macro-module-not-found-exception-arguments _e87712_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92777
                                (let ()
                                  (declare (not safe))
                                  (cons _e87712_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp92777)))))
            (if (macro-module-not-found-exception? _exn87710_)
                (macro-module-not-found-exception-arguments _exn87710_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92776
                              (let ()
                                (declare (not safe))
                                (cons _exn87710_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp92776)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn87704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87704_))
            (let ((_e87707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87704_ 'exception))))
              (if (macro-module-not-found-exception? _e87707_)
                  (macro-module-not-found-exception-procedure _e87707_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92779
                                (let ()
                                  (declare (not safe))
                                  (cons _e87707_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp92779)))))
            (if (macro-module-not-found-exception? _exn87704_)
                (macro-module-not-found-exception-procedure _exn87704_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92778
                              (let ()
                                (declare (not safe))
                                (cons _exn87704_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp92778)))))))
    (define multiple-c-return-exception?
      (lambda (_exn87698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87698_))
            (let ((_e87701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87698_ 'exception))))
              (macro-multiple-c-return-exception? _e87701_))
            (macro-multiple-c-return-exception? _exn87698_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn87694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87694_))
            (let ((_e87696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87694_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e87696_))
            (macro-no-such-file-or-directory-exception? _exn87694_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn87690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87690_))
            (let ((_e87692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87690_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87692_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e87692_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92781
                                (let ()
                                  (declare (not safe))
                                  (cons _e87692_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp92781)))))
            (if (macro-no-such-file-or-directory-exception? _exn87690_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn87690_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92780
                              (let ()
                                (declare (not safe))
                                (cons _exn87690_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp92780)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn87684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87684_))
            (let ((_e87687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87684_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87687_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e87687_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92783
                                (let ()
                                  (declare (not safe))
                                  (cons _e87687_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp92783)))))
            (if (macro-no-such-file-or-directory-exception? _exn87684_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn87684_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92782
                              (let ()
                                (declare (not safe))
                                (cons _exn87684_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp92782)))))))
    (define noncontinuable-exception?
      (lambda (_exn87680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87680_))
            (let ((_e87682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87680_ 'exception))))
              (macro-noncontinuable-exception? _e87682_))
            (macro-noncontinuable-exception? _exn87680_))))
    (define noncontinuable-exception-reason
      (lambda (_exn87674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87674_))
            (let ((_e87677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87674_ 'exception))))
              (if (macro-noncontinuable-exception? _e87677_)
                  (macro-noncontinuable-exception-reason _e87677_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp92785
                                (let ()
                                  (declare (not safe))
                                  (cons _e87677_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp92785)))))
            (if (macro-noncontinuable-exception? _exn87674_)
                (macro-noncontinuable-exception-reason _exn87674_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp92784
                              (let ()
                                (declare (not safe))
                                (cons _exn87674_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp92784)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn87670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87670_))
            (let ((_e87672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87670_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e87672_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn87670_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn87666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87666_))
            (let ((_e87668_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87666_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87668_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e87668_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92787
                                (let ()
                                  (declare (not safe))
                                  (cons _e87668_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp92787)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87666_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn87666_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92786
                              (let ()
                                (declare (not safe))
                                (cons _exn87666_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp92786)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn87660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87660_))
            (let ((_e87663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87660_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87663_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e87663_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92789
                                (let ()
                                  (declare (not safe))
                                  (cons _e87663_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp92789)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87660_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn87660_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92788
                              (let ()
                                (declare (not safe))
                                (cons _exn87660_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp92788)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn87656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87656_))
            (let ((_e87658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87656_ 'exception))))
              (macro-nonprocedure-operator-exception? _e87658_))
            (macro-nonprocedure-operator-exception? _exn87656_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn87652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87652_))
            (let ((_e87654_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87652_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87654_)
                  (macro-nonprocedure-operator-exception-arguments _e87654_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92791
                                (let ()
                                  (declare (not safe))
                                  (cons _e87654_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp92791)))))
            (if (macro-nonprocedure-operator-exception? _exn87652_)
                (macro-nonprocedure-operator-exception-arguments _exn87652_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92790
                              (let ()
                                (declare (not safe))
                                (cons _exn87652_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp92790)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn87648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87648_))
            (let ((_e87650_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87648_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87650_)
                  (macro-nonprocedure-operator-exception-code _e87650_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92793
                                (let ()
                                  (declare (not safe))
                                  (cons _e87650_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp92793)))))
            (if (macro-nonprocedure-operator-exception? _exn87648_)
                (macro-nonprocedure-operator-exception-code _exn87648_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92792
                              (let ()
                                (declare (not safe))
                                (cons _exn87648_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp92792)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn87644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87644_))
            (let ((_e87646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87644_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87646_)
                  (macro-nonprocedure-operator-exception-operator _e87646_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92795
                                (let ()
                                  (declare (not safe))
                                  (cons _e87646_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp92795)))))
            (if (macro-nonprocedure-operator-exception? _exn87644_)
                (macro-nonprocedure-operator-exception-operator _exn87644_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92794
                              (let ()
                                (declare (not safe))
                                (cons _exn87644_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp92794)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn87638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87638_))
            (let ((_e87641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87638_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87641_)
                  (macro-nonprocedure-operator-exception-rte _e87641_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92797
                                (let ()
                                  (declare (not safe))
                                  (cons _e87641_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp92797)))))
            (if (macro-nonprocedure-operator-exception? _exn87638_)
                (macro-nonprocedure-operator-exception-rte _exn87638_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92796
                              (let ()
                                (declare (not safe))
                                (cons _exn87638_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp92796)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn87634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87634_))
            (let ((_e87636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87634_ 'exception))))
              (macro-not-in-compilation-context-exception? _e87636_))
            (macro-not-in-compilation-context-exception? _exn87634_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn87630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87630_))
            (let ((_e87632_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87630_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87632_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e87632_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92799
                                (let ()
                                  (declare (not safe))
                                  (cons _e87632_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp92799)))))
            (if (macro-not-in-compilation-context-exception? _exn87630_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn87630_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92798
                              (let ()
                                (declare (not safe))
                                (cons _exn87630_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp92798)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn87624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87624_))
            (let ((_e87627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87624_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87627_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e87627_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92801
                                (let ()
                                  (declare (not safe))
                                  (cons _e87627_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp92801)))))
            (if (macro-not-in-compilation-context-exception? _exn87624_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn87624_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92800
                              (let ()
                                (declare (not safe))
                                (cons _exn87624_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp92800)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn87620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87620_))
            (let ((_e87622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87620_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e87622_))
            (macro-number-of-arguments-limit-exception? _exn87620_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn87616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87616_))
            (let ((_e87618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87616_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87618_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e87618_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92803
                                (let ()
                                  (declare (not safe))
                                  (cons _e87618_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp92803)))))
            (if (macro-number-of-arguments-limit-exception? _exn87616_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn87616_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92802
                              (let ()
                                (declare (not safe))
                                (cons _exn87616_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp92802)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn87610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87610_))
            (let ((_e87613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87610_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87613_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e87613_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92805
                                (let ()
                                  (declare (not safe))
                                  (cons _e87613_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp92805)))))
            (if (macro-number-of-arguments-limit-exception? _exn87610_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn87610_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92804
                              (let ()
                                (declare (not safe))
                                (cons _exn87610_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp92804)))))))
    (define os-exception?
      (lambda (_exn87606_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87606_))
            (let ((_e87608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87606_ 'exception))))
              (macro-os-exception? _e87608_))
            (macro-os-exception? _exn87606_))))
    (define os-exception-arguments
      (lambda (_exn87602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87602_))
            (let ((_e87604_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87602_ 'exception))))
              (if (macro-os-exception? _e87604_)
                  (macro-os-exception-arguments _e87604_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92807
                                (let ()
                                  (declare (not safe))
                                  (cons _e87604_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp92807)))))
            (if (macro-os-exception? _exn87602_)
                (macro-os-exception-arguments _exn87602_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92806
                              (let ()
                                (declare (not safe))
                                (cons _exn87602_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp92806)))))))
    (define os-exception-code
      (lambda (_exn87598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87598_))
            (let ((_e87600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87598_ 'exception))))
              (if (macro-os-exception? _e87600_)
                  (macro-os-exception-code _e87600_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92809
                                (let ()
                                  (declare (not safe))
                                  (cons _e87600_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp92809)))))
            (if (macro-os-exception? _exn87598_)
                (macro-os-exception-code _exn87598_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92808
                              (let ()
                                (declare (not safe))
                                (cons _exn87598_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp92808)))))))
    (define os-exception-message
      (lambda (_exn87594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87594_))
            (let ((_e87596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87594_ 'exception))))
              (if (macro-os-exception? _e87596_)
                  (macro-os-exception-message _e87596_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92811
                                (let ()
                                  (declare (not safe))
                                  (cons _e87596_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp92811)))))
            (if (macro-os-exception? _exn87594_)
                (macro-os-exception-message _exn87594_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92810
                              (let ()
                                (declare (not safe))
                                (cons _exn87594_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp92810)))))))
    (define os-exception-procedure
      (lambda (_exn87588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87588_))
            (let ((_e87591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87588_ 'exception))))
              (if (macro-os-exception? _e87591_)
                  (macro-os-exception-procedure _e87591_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92813
                                (let ()
                                  (declare (not safe))
                                  (cons _e87591_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp92813)))))
            (if (macro-os-exception? _exn87588_)
                (macro-os-exception-procedure _exn87588_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92812
                              (let ()
                                (declare (not safe))
                                (cons _exn87588_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp92812)))))))
    (define permission-denied-exception?
      (lambda (_exn87584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87584_))
            (let ((_e87586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87584_ 'exception))))
              (macro-permission-denied-exception? _e87586_))
            (macro-permission-denied-exception? _exn87584_))))
    (define permission-denied-exception-arguments
      (lambda (_exn87580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87580_))
            (let ((_e87582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87580_ 'exception))))
              (if (macro-permission-denied-exception? _e87582_)
                  (macro-permission-denied-exception-arguments _e87582_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92815
                                (let ()
                                  (declare (not safe))
                                  (cons _e87582_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp92815)))))
            (if (macro-permission-denied-exception? _exn87580_)
                (macro-permission-denied-exception-arguments _exn87580_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92814
                              (let ()
                                (declare (not safe))
                                (cons _exn87580_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp92814)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn87574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87574_))
            (let ((_e87577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87574_ 'exception))))
              (if (macro-permission-denied-exception? _e87577_)
                  (macro-permission-denied-exception-procedure _e87577_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92817
                                (let ()
                                  (declare (not safe))
                                  (cons _e87577_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp92817)))))
            (if (macro-permission-denied-exception? _exn87574_)
                (macro-permission-denied-exception-procedure _exn87574_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92816
                              (let ()
                                (declare (not safe))
                                (cons _exn87574_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp92816)))))))
    (define range-exception?
      (lambda (_exn87570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87570_))
            (let ((_e87572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87570_ 'exception))))
              (macro-range-exception? _e87572_))
            (macro-range-exception? _exn87570_))))
    (define range-exception-arg-id
      (lambda (_exn87566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87566_))
            (let ((_e87568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87566_ 'exception))))
              (if (macro-range-exception? _e87568_)
                  (macro-range-exception-arg-id _e87568_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92819
                                (let ()
                                  (declare (not safe))
                                  (cons _e87568_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp92819)))))
            (if (macro-range-exception? _exn87566_)
                (macro-range-exception-arg-id _exn87566_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92818
                              (let ()
                                (declare (not safe))
                                (cons _exn87566_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp92818)))))))
    (define range-exception-arguments
      (lambda (_exn87562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87562_))
            (let ((_e87564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87562_ 'exception))))
              (if (macro-range-exception? _e87564_)
                  (macro-range-exception-arguments _e87564_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92821
                                (let ()
                                  (declare (not safe))
                                  (cons _e87564_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp92821)))))
            (if (macro-range-exception? _exn87562_)
                (macro-range-exception-arguments _exn87562_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92820
                              (let ()
                                (declare (not safe))
                                (cons _exn87562_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp92820)))))))
    (define range-exception-procedure
      (lambda (_exn87556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87556_))
            (let ((_e87559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87556_ 'exception))))
              (if (macro-range-exception? _e87559_)
                  (macro-range-exception-procedure _e87559_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92823
                                (let ()
                                  (declare (not safe))
                                  (cons _e87559_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp92823)))))
            (if (macro-range-exception? _exn87556_)
                (macro-range-exception-procedure _exn87556_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92822
                              (let ()
                                (declare (not safe))
                                (cons _exn87556_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp92822)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn87552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87552_))
            (let ((_e87554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87552_ 'exception))))
              (macro-rpc-remote-error-exception? _e87554_))
            (macro-rpc-remote-error-exception? _exn87552_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn87548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87548_))
            (let ((_e87550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87548_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87550_)
                  (macro-rpc-remote-error-exception-arguments _e87550_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92825
                                (let ()
                                  (declare (not safe))
                                  (cons _e87550_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp92825)))))
            (if (macro-rpc-remote-error-exception? _exn87548_)
                (macro-rpc-remote-error-exception-arguments _exn87548_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92824
                              (let ()
                                (declare (not safe))
                                (cons _exn87548_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp92824)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn87544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87544_))
            (let ((_e87546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87544_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87546_)
                  (macro-rpc-remote-error-exception-message _e87546_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92827
                                (let ()
                                  (declare (not safe))
                                  (cons _e87546_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp92827)))))
            (if (macro-rpc-remote-error-exception? _exn87544_)
                (macro-rpc-remote-error-exception-message _exn87544_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92826
                              (let ()
                                (declare (not safe))
                                (cons _exn87544_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp92826)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn87538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87538_))
            (let ((_e87541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87538_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87541_)
                  (macro-rpc-remote-error-exception-procedure _e87541_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92829
                                (let ()
                                  (declare (not safe))
                                  (cons _e87541_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp92829)))))
            (if (macro-rpc-remote-error-exception? _exn87538_)
                (macro-rpc-remote-error-exception-procedure _exn87538_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92828
                              (let ()
                                (declare (not safe))
                                (cons _exn87538_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp92828)))))))
    (define scheduler-exception?
      (lambda (_exn87534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87534_))
            (let ((_e87536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87534_ 'exception))))
              (macro-scheduler-exception? _e87536_))
            (macro-scheduler-exception? _exn87534_))))
    (define scheduler-exception-reason
      (lambda (_exn87528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87528_))
            (let ((_e87531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87528_ 'exception))))
              (if (macro-scheduler-exception? _e87531_)
                  (macro-scheduler-exception-reason _e87531_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp92831
                                (let ()
                                  (declare (not safe))
                                  (cons _e87531_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp92831)))))
            (if (macro-scheduler-exception? _exn87528_)
                (macro-scheduler-exception-reason _exn87528_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp92830
                              (let ()
                                (declare (not safe))
                                (cons _exn87528_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp92830)))))))
    (define sfun-conversion-exception?
      (lambda (_exn87524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87524_))
            (let ((_e87526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87524_ 'exception))))
              (macro-sfun-conversion-exception? _e87526_))
            (macro-sfun-conversion-exception? _exn87524_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn87520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87520_))
            (let ((_e87522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87520_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87522_)
                  (macro-sfun-conversion-exception-arguments _e87522_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92833
                                (let ()
                                  (declare (not safe))
                                  (cons _e87522_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp92833)))))
            (if (macro-sfun-conversion-exception? _exn87520_)
                (macro-sfun-conversion-exception-arguments _exn87520_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92832
                              (let ()
                                (declare (not safe))
                                (cons _exn87520_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp92832)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn87516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87516_))
            (let ((_e87518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87516_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87518_)
                  (macro-sfun-conversion-exception-code _e87518_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92835
                                (let ()
                                  (declare (not safe))
                                  (cons _e87518_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp92835)))))
            (if (macro-sfun-conversion-exception? _exn87516_)
                (macro-sfun-conversion-exception-code _exn87516_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92834
                              (let ()
                                (declare (not safe))
                                (cons _exn87516_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp92834)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn87512_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87512_))
            (let ((_e87514_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87512_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87514_)
                  (macro-sfun-conversion-exception-message _e87514_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92837
                                (let ()
                                  (declare (not safe))
                                  (cons _e87514_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp92837)))))
            (if (macro-sfun-conversion-exception? _exn87512_)
                (macro-sfun-conversion-exception-message _exn87512_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92836
                              (let ()
                                (declare (not safe))
                                (cons _exn87512_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp92836)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn87506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87506_))
            (let ((_e87509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87506_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87509_)
                  (macro-sfun-conversion-exception-procedure _e87509_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92839
                                (let ()
                                  (declare (not safe))
                                  (cons _e87509_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp92839)))))
            (if (macro-sfun-conversion-exception? _exn87506_)
                (macro-sfun-conversion-exception-procedure _exn87506_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92838
                              (let ()
                                (declare (not safe))
                                (cons _exn87506_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp92838)))))))
    (define stack-overflow-exception?
      (lambda (_exn87500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87500_))
            (let ((_e87503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87500_ 'exception))))
              (macro-stack-overflow-exception? _e87503_))
            (macro-stack-overflow-exception? _exn87500_))))
    (define started-thread-exception?
      (lambda (_exn87496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87496_))
            (let ((_e87498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87496_ 'exception))))
              (macro-started-thread-exception? _e87498_))
            (macro-started-thread-exception? _exn87496_))))
    (define started-thread-exception-arguments
      (lambda (_exn87492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87492_))
            (let ((_e87494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87492_ 'exception))))
              (if (macro-started-thread-exception? _e87494_)
                  (macro-started-thread-exception-arguments _e87494_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92841
                                (let ()
                                  (declare (not safe))
                                  (cons _e87494_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp92841)))))
            (if (macro-started-thread-exception? _exn87492_)
                (macro-started-thread-exception-arguments _exn87492_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92840
                              (let ()
                                (declare (not safe))
                                (cons _exn87492_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp92840)))))))
    (define started-thread-exception-procedure
      (lambda (_exn87486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87486_))
            (let ((_e87489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87486_ 'exception))))
              (if (macro-started-thread-exception? _e87489_)
                  (macro-started-thread-exception-procedure _e87489_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92843
                                (let ()
                                  (declare (not safe))
                                  (cons _e87489_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp92843)))))
            (if (macro-started-thread-exception? _exn87486_)
                (macro-started-thread-exception-procedure _exn87486_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92842
                              (let ()
                                (declare (not safe))
                                (cons _exn87486_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp92842)))))))
    (define terminated-thread-exception?
      (lambda (_exn87482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87482_))
            (let ((_e87484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87482_ 'exception))))
              (macro-terminated-thread-exception? _e87484_))
            (macro-terminated-thread-exception? _exn87482_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn87478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87478_))
            (let ((_e87480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87478_ 'exception))))
              (if (macro-terminated-thread-exception? _e87480_)
                  (macro-terminated-thread-exception-arguments _e87480_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92845
                                (let ()
                                  (declare (not safe))
                                  (cons _e87480_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp92845)))))
            (if (macro-terminated-thread-exception? _exn87478_)
                (macro-terminated-thread-exception-arguments _exn87478_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92844
                              (let ()
                                (declare (not safe))
                                (cons _exn87478_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp92844)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn87472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87472_))
            (let ((_e87475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87472_ 'exception))))
              (if (macro-terminated-thread-exception? _e87475_)
                  (macro-terminated-thread-exception-procedure _e87475_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92847
                                (let ()
                                  (declare (not safe))
                                  (cons _e87475_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp92847)))))
            (if (macro-terminated-thread-exception? _exn87472_)
                (macro-terminated-thread-exception-procedure _exn87472_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92846
                              (let ()
                                (declare (not safe))
                                (cons _exn87472_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp92846)))))))
    (define type-exception?
      (lambda (_exn87468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87468_))
            (let ((_e87470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87468_ 'exception))))
              (macro-type-exception? _e87470_))
            (macro-type-exception? _exn87468_))))
    (define type-exception-arg-id
      (lambda (_exn87464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87464_))
            (let ((_e87466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87464_ 'exception))))
              (if (macro-type-exception? _e87466_)
                  (macro-type-exception-arg-id _e87466_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92849
                                (let ()
                                  (declare (not safe))
                                  (cons _e87466_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp92849)))))
            (if (macro-type-exception? _exn87464_)
                (macro-type-exception-arg-id _exn87464_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92848
                              (let ()
                                (declare (not safe))
                                (cons _exn87464_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp92848)))))))
    (define type-exception-arguments
      (lambda (_exn87460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87460_))
            (let ((_e87462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87460_ 'exception))))
              (if (macro-type-exception? _e87462_)
                  (macro-type-exception-arguments _e87462_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92851
                                (let ()
                                  (declare (not safe))
                                  (cons _e87462_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp92851)))))
            (if (macro-type-exception? _exn87460_)
                (macro-type-exception-arguments _exn87460_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92850
                              (let ()
                                (declare (not safe))
                                (cons _exn87460_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp92850)))))))
    (define type-exception-procedure
      (lambda (_exn87456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87456_))
            (let ((_e87458_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87456_ 'exception))))
              (if (macro-type-exception? _e87458_)
                  (macro-type-exception-procedure _e87458_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92853
                                (let ()
                                  (declare (not safe))
                                  (cons _e87458_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp92853)))))
            (if (macro-type-exception? _exn87456_)
                (macro-type-exception-procedure _exn87456_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92852
                              (let ()
                                (declare (not safe))
                                (cons _exn87456_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp92852)))))))
    (define type-exception-type-id
      (lambda (_exn87450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87450_))
            (let ((_e87453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87450_ 'exception))))
              (if (macro-type-exception? _e87453_)
                  (macro-type-exception-type-id _e87453_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92855
                                (let ()
                                  (declare (not safe))
                                  (cons _e87453_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp92855)))))
            (if (macro-type-exception? _exn87450_)
                (macro-type-exception-type-id _exn87450_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92854
                              (let ()
                                (declare (not safe))
                                (cons _exn87450_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp92854)))))))
    (define unbound-global-exception?
      (lambda (_exn87446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87446_))
            (let ((_e87448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87446_ 'exception))))
              (macro-unbound-global-exception? _e87448_))
            (macro-unbound-global-exception? _exn87446_))))
    (define unbound-global-exception-code
      (lambda (_exn87442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87442_))
            (let ((_e87444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87442_ 'exception))))
              (if (macro-unbound-global-exception? _e87444_)
                  (macro-unbound-global-exception-code _e87444_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92857
                                (let ()
                                  (declare (not safe))
                                  (cons _e87444_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp92857)))))
            (if (macro-unbound-global-exception? _exn87442_)
                (macro-unbound-global-exception-code _exn87442_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92856
                              (let ()
                                (declare (not safe))
                                (cons _exn87442_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp92856)))))))
    (define unbound-global-exception-rte
      (lambda (_exn87438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87438_))
            (let ((_e87440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87438_ 'exception))))
              (if (macro-unbound-global-exception? _e87440_)
                  (macro-unbound-global-exception-rte _e87440_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92859
                                (let ()
                                  (declare (not safe))
                                  (cons _e87440_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp92859)))))
            (if (macro-unbound-global-exception? _exn87438_)
                (macro-unbound-global-exception-rte _exn87438_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92858
                              (let ()
                                (declare (not safe))
                                (cons _exn87438_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp92858)))))))
    (define unbound-global-exception-variable
      (lambda (_exn87432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87432_))
            (let ((_e87435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87432_ 'exception))))
              (if (macro-unbound-global-exception? _e87435_)
                  (macro-unbound-global-exception-variable _e87435_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92861
                                (let ()
                                  (declare (not safe))
                                  (cons _e87435_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp92861)))))
            (if (macro-unbound-global-exception? _exn87432_)
                (macro-unbound-global-exception-variable _exn87432_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92860
                              (let ()
                                (declare (not safe))
                                (cons _exn87432_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp92860)))))))
    (define unbound-key-exception?
      (lambda (_exn87428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87428_))
            (let ((_e87430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87428_ 'exception))))
              (macro-unbound-key-exception? _e87430_))
            (macro-unbound-key-exception? _exn87428_))))
    (define unbound-key-exception-arguments
      (lambda (_exn87424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87424_))
            (let ((_e87426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87424_ 'exception))))
              (if (macro-unbound-key-exception? _e87426_)
                  (macro-unbound-key-exception-arguments _e87426_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92863
                                (let ()
                                  (declare (not safe))
                                  (cons _e87426_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp92863)))))
            (if (macro-unbound-key-exception? _exn87424_)
                (macro-unbound-key-exception-arguments _exn87424_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92862
                              (let ()
                                (declare (not safe))
                                (cons _exn87424_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp92862)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn87418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87418_))
            (let ((_e87421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87418_ 'exception))))
              (if (macro-unbound-key-exception? _e87421_)
                  (macro-unbound-key-exception-procedure _e87421_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92865
                                (let ()
                                  (declare (not safe))
                                  (cons _e87421_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp92865)))))
            (if (macro-unbound-key-exception? _exn87418_)
                (macro-unbound-key-exception-procedure _exn87418_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92864
                              (let ()
                                (declare (not safe))
                                (cons _exn87418_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp92864)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn87414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87414_))
            (let ((_e87416_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87414_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e87416_))
            (macro-unbound-os-environment-variable-exception? _exn87414_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn87410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87410_))
            (let ((_e87412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87410_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87412_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e87412_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92867
                                (let ()
                                  (declare (not safe))
                                  (cons _e87412_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp92867)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87410_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn87410_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92866
                              (let ()
                                (declare (not safe))
                                (cons _exn87410_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp92866)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn87404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87404_))
            (let ((_e87407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87404_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87407_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e87407_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92869
                                (let ()
                                  (declare (not safe))
                                  (cons _e87407_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp92869)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87404_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn87404_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92868
                              (let ()
                                (declare (not safe))
                                (cons _exn87404_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp92868)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn87400_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87400_))
            (let ((_e87402_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87400_ 'exception))))
              (macro-unbound-serial-number-exception? _e87402_))
            (macro-unbound-serial-number-exception? _exn87400_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn87396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87396_))
            (let ((_e87398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87396_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87398_)
                  (macro-unbound-serial-number-exception-arguments _e87398_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92871
                                (let ()
                                  (declare (not safe))
                                  (cons _e87398_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp92871)))))
            (if (macro-unbound-serial-number-exception? _exn87396_)
                (macro-unbound-serial-number-exception-arguments _exn87396_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92870
                              (let ()
                                (declare (not safe))
                                (cons _exn87396_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp92870)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn87390_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87390_))
            (let ((_e87393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87390_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87393_)
                  (macro-unbound-serial-number-exception-procedure _e87393_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92873
                                (let ()
                                  (declare (not safe))
                                  (cons _e87393_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp92873)))))
            (if (macro-unbound-serial-number-exception? _exn87390_)
                (macro-unbound-serial-number-exception-procedure _exn87390_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92872
                              (let ()
                                (declare (not safe))
                                (cons _exn87390_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp92872)))))))
    (define uncaught-exception?
      (lambda (_exn87386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87386_))
            (let ((_e87388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87386_ 'exception))))
              (macro-uncaught-exception? _e87388_))
            (macro-uncaught-exception? _exn87386_))))
    (define uncaught-exception-arguments
      (lambda (_exn87382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87382_))
            (let ((_e87384_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87382_ 'exception))))
              (if (macro-uncaught-exception? _e87384_)
                  (macro-uncaught-exception-arguments _e87384_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92875
                                (let ()
                                  (declare (not safe))
                                  (cons _e87384_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp92875)))))
            (if (macro-uncaught-exception? _exn87382_)
                (macro-uncaught-exception-arguments _exn87382_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92874
                              (let ()
                                (declare (not safe))
                                (cons _exn87382_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp92874)))))))
    (define uncaught-exception-procedure
      (lambda (_exn87378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87378_))
            (let ((_e87380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87378_ 'exception))))
              (if (macro-uncaught-exception? _e87380_)
                  (macro-uncaught-exception-procedure _e87380_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92877
                                (let ()
                                  (declare (not safe))
                                  (cons _e87380_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp92877)))))
            (if (macro-uncaught-exception? _exn87378_)
                (macro-uncaught-exception-procedure _exn87378_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92876
                              (let ()
                                (declare (not safe))
                                (cons _exn87378_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp92876)))))))
    (define uncaught-exception-reason
      (lambda (_exn87372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87372_))
            (let ((_e87375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87372_ 'exception))))
              (if (macro-uncaught-exception? _e87375_)
                  (macro-uncaught-exception-reason _e87375_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92879
                                (let ()
                                  (declare (not safe))
                                  (cons _e87375_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp92879)))))
            (if (macro-uncaught-exception? _exn87372_)
                (macro-uncaught-exception-reason _exn87372_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92878
                              (let ()
                                (declare (not safe))
                                (cons _exn87372_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp92878)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn87368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87368_))
            (let ((_e87370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87368_ 'exception))))
              (macro-uninitialized-thread-exception? _e87370_))
            (macro-uninitialized-thread-exception? _exn87368_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn87364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87364_))
            (let ((_e87366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87364_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87366_)
                  (macro-uninitialized-thread-exception-arguments _e87366_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92881
                                (let ()
                                  (declare (not safe))
                                  (cons _e87366_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp92881)))))
            (if (macro-uninitialized-thread-exception? _exn87364_)
                (macro-uninitialized-thread-exception-arguments _exn87364_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92880
                              (let ()
                                (declare (not safe))
                                (cons _exn87364_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp92880)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn87358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87358_))
            (let ((_e87361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87358_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87361_)
                  (macro-uninitialized-thread-exception-procedure _e87361_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92883
                                (let ()
                                  (declare (not safe))
                                  (cons _e87361_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp92883)))))
            (if (macro-uninitialized-thread-exception? _exn87358_)
                (macro-uninitialized-thread-exception-procedure _exn87358_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92882
                              (let ()
                                (declare (not safe))
                                (cons _exn87358_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp92882)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn87354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87354_))
            (let ((_e87356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87354_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e87356_))
            (macro-unknown-keyword-argument-exception? _exn87354_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn87350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87350_))
            (let ((_e87352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87350_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87352_)
                  (macro-unknown-keyword-argument-exception-arguments _e87352_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92885
                                (let ()
                                  (declare (not safe))
                                  (cons _e87352_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp92885)))))
            (if (macro-unknown-keyword-argument-exception? _exn87350_)
                (macro-unknown-keyword-argument-exception-arguments _exn87350_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92884
                              (let ()
                                (declare (not safe))
                                (cons _exn87350_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp92884)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn87344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87344_))
            (let ((_e87347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87344_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87347_)
                  (macro-unknown-keyword-argument-exception-procedure _e87347_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92887
                                (let ()
                                  (declare (not safe))
                                  (cons _e87347_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp92887)))))
            (if (macro-unknown-keyword-argument-exception? _exn87344_)
                (macro-unknown-keyword-argument-exception-procedure _exn87344_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92886
                              (let ()
                                (declare (not safe))
                                (cons _exn87344_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp92886)))))))
    (define unterminated-process-exception?
      (lambda (_exn87340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87340_))
            (let ((_e87342_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87340_ 'exception))))
              (macro-unterminated-process-exception? _e87342_))
            (macro-unterminated-process-exception? _exn87340_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn87336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87336_))
            (let ((_e87338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87336_ 'exception))))
              (if (macro-unterminated-process-exception? _e87338_)
                  (macro-unterminated-process-exception-arguments _e87338_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92889
                                (let ()
                                  (declare (not safe))
                                  (cons _e87338_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp92889)))))
            (if (macro-unterminated-process-exception? _exn87336_)
                (macro-unterminated-process-exception-arguments _exn87336_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92888
                              (let ()
                                (declare (not safe))
                                (cons _exn87336_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp92888)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn87330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87330_))
            (let ((_e87333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87330_ 'exception))))
              (if (macro-unterminated-process-exception? _e87333_)
                  (macro-unterminated-process-exception-procedure _e87333_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92891
                                (let ()
                                  (declare (not safe))
                                  (cons _e87333_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp92891)))))
            (if (macro-unterminated-process-exception? _exn87330_)
                (macro-unterminated-process-exception-procedure _exn87330_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92890
                              (let ()
                                (declare (not safe))
                                (cons _exn87330_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp92890)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn87326_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87326_))
            (let ((_e87328_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87326_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e87328_))
            (macro-wrong-number-of-arguments-exception? _exn87326_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn87322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87322_))
            (let ((_e87324_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87322_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87324_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e87324_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92893
                                (let ()
                                  (declare (not safe))
                                  (cons _e87324_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp92893)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87322_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn87322_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92892
                              (let ()
                                (declare (not safe))
                                (cons _exn87322_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp92892)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn87316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87316_))
            (let ((_e87319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87316_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87319_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e87319_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92895
                                (let ()
                                  (declare (not safe))
                                  (cons _e87319_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp92895)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87316_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn87316_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92894
                              (let ()
                                (declare (not safe))
                                (cons _exn87316_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp92894)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn87312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87312_))
            (let ((_e87314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87312_ 'exception))))
              (macro-wrong-number-of-values-exception? _e87314_))
            (macro-wrong-number-of-values-exception? _exn87312_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn87308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87308_))
            (let ((_e87310_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87308_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87310_)
                  (macro-wrong-number-of-values-exception-code _e87310_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92897
                                (let ()
                                  (declare (not safe))
                                  (cons _e87310_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp92897)))))
            (if (macro-wrong-number-of-values-exception? _exn87308_)
                (macro-wrong-number-of-values-exception-code _exn87308_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92896
                              (let ()
                                (declare (not safe))
                                (cons _exn87308_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp92896)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn87304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87304_))
            (let ((_e87306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87304_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87306_)
                  (macro-wrong-number-of-values-exception-rte _e87306_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92899
                                (let ()
                                  (declare (not safe))
                                  (cons _e87306_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp92899)))))
            (if (macro-wrong-number-of-values-exception? _exn87304_)
                (macro-wrong-number-of-values-exception-rte _exn87304_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92898
                              (let ()
                                (declare (not safe))
                                (cons _exn87304_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp92898)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn87298_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87298_))
            (let ((_e87301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87298_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87301_)
                  (macro-wrong-number-of-values-exception-vals _e87301_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92901
                                (let ()
                                  (declare (not safe))
                                  (cons _e87301_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp92901)))))
            (if (macro-wrong-number-of-values-exception? _exn87298_)
                (macro-wrong-number-of-values-exception-vals _exn87298_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92900
                              (let ()
                                (declare (not safe))
                                (cons _exn87298_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp92900)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn87292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87292_))
            (let ((_e87295_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87292_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e87295_))
            (macro-wrong-processor-c-return-exception? _exn87292_))))))
