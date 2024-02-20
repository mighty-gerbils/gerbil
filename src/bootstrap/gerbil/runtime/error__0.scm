(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708387687)
  (begin
    (define Exception::t
      (let ((__tmp65520 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp65520
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args65491_ (apply make-instance Exception::t _$args65491_)))
    (define StackTrace::t
      (let ((__tmp65521 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp65521
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args65488_ (apply make-instance StackTrace::t _$args65488_)))
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
      (let ((__tmp65522 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp65522
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args65485_ (apply make-instance Error::t _$args65485_)))
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
      (let ((__tmp65523 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp65523
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args65482_
        (apply make-instance RuntimeException::t _$args65482_)))
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
      (lambda (_exn65477_ _continue65478_)
        (let ((_exn65480_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn65477_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn65480_ _continue65478_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn65473_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn65473_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn65473_ 'continuation))
                '#!void
                (let ((__tmp65524
                       (lambda (_cont65475_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn65473_
                            'continuation
                            _cont65475_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp65524)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn65473_))))
    (define error
      (lambda (_message65470_ . _irritants65471_)
        (raise (let ((__obj65514
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj65514
                  _message65470_
                  'irritants:
                  _irritants65471_)
                 __obj65514))))
    (define with-exception-handler
      (lambda (_handler65463_ _thunk65464_)
        (if (let () (declare (not safe)) (procedure? _handler65463_))
            '#!void
            (raise (let ((__obj65515
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65515
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65463_ '())))
                     __obj65515)))
        (if (let () (declare (not safe)) (procedure? _thunk65464_))
            '#!void
            (raise (let ((__obj65516
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65516
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65464_ '())))
                     __obj65516)))
        (let ((__tmp65525
               (lambda (_exn65466_)
                 (let ((_exn65468_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn65466_))))
                   (_handler65463_ _exn65468_)))))
          (declare (not safe))
          (##with-exception-handler __tmp65525 _thunk65464_))))
    (define with-catch
      (lambda (_handler65456_ _thunk65457_)
        (if (let () (declare (not safe)) (procedure? _handler65456_))
            '#!void
            (raise (let ((__obj65517
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65517
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65456_ '())))
                     __obj65517)))
        (if (let () (declare (not safe)) (procedure? _thunk65457_))
            '#!void
            (raise (let ((__obj65518
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65518
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65457_ '())))
                     __obj65518)))
        (let ((__tmp65526
               (lambda (_cont65459_)
                 (with-exception-handler
                  (lambda (_exn65461_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont65459_
                       _handler65456_
                       _exn65461_)))
                  _thunk65457_))))
          (declare (not safe))
          (##continuation-capture __tmp65526))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn65447_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn65447_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn65447_)))
            _exn65447_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn65447_))
                _exn65447_
                (if (macro-exception? _exn65447_)
                    (let ((_rte65452_
                           (let ((__obj65519
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj65519
                                _exn65447_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj65519)))
                      (let ((__tmp65527
                             (lambda (_cont65454_)
                               (let ((__tmp65528
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont65454_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte65452_
                                  'continuation
                                  __tmp65528)))))
                        (declare (not safe))
                        (##continuation-capture __tmp65527))
                      _rte65452_)
                    _exn65447_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj65442_)
        (let ((_$e65444_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj65442_))))
          (if _$e65444_
              _$e65444_
              (let () (declare (not safe)) (error-exception? _obj65442_))))))
    (define error-message
      (lambda (_obj65440_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65440_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65440_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj65440_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj65440_))
                '#f))))
    (define error-irritants
      (lambda (_obj65438_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65438_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65438_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj65438_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj65438_))
                '#f))))
    (define error-trace
      (lambda (_obj65436_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65436_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65436_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e65418_ _port65419_)
        (let ((_$e65421_
               (let ()
                 (declare (not safe))
                 (method-ref _e65418_ 'display-exception))))
          (if _$e65421_
              ((lambda (_f65424_) (_f65424_ _e65418_ _port65419_)) _$e65421_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e65418_ _port65419_))))))
    (define display-exception__0
      (lambda (_e65429_)
        (let ((_port65431_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e65429_ _port65431_))))
    (define display-exception
      (lambda _g65530_
        (let ((_g65529_ (let () (declare (not safe)) (##length _g65530_))))
          (cond ((let () (declare (not safe)) (##fx= _g65529_ 1))
                 (apply (lambda (_e65429_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e65429_)))
                        _g65530_))
                ((let () (declare (not safe)) (##fx= _g65529_ 2))
                 (apply (lambda (_e65433_ _port65434_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e65433_ _port65434_)))
                        _g65530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g65530_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self65407_ _message65408_ . _rest65409_)
        (let ((_message65415_
               (if (let () (declare (not safe)) (string? _message65408_))
                   _message65408_
                   (call-with-output-string
                    '""
                    (lambda (_g6541065412_)
                      (display _message65408_ _g6541065412_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self65407_ 'message _message65415_))
          (apply class-instance-init! _self65407_ _rest65409_))))
    (define Error:::init!::specialize
      (lambda (__t65493)
        (let ((__message65494
               (let ((__tmp65495
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65493 'message))))
                 (if __tmp65495
                     __tmp65495
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65407_ _message65408_ . _rest65409_)
            (let ((_message65415_
                   (if (let () (declare (not safe)) (string? _message65408_))
                       _message65408_
                       (call-with-output-string
                        '""
                        (lambda (_g6541065412_)
                          (display _message65408_ _g6541065412_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self65407_
                 _message65415_
                 __message65494
                 __t65493
                 '#f))
              (apply class-instance-init! _self65407_ _rest65409_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self65265_ _port65266_)
        (let ((_tmp-port65268_ (open-output-string))
              (_display-error-newline65269_
               (> (output-port-column _port65266_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65268_))
          (let ((__tmp65531
                 (lambda ()
                   (if _display-error-newline65269_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e65272_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65265_ 'where))))
                     (if _$e65272_ (display _$e65272_) (display '"?")))
                   (let ((__tmp65532
                          (let ((__tmp65533 (object-type _self65265_)))
                            (declare (not safe))
                            (##type-name __tmp65533))))
                     (declare (not safe))
                     (display* '" [" __tmp65532 '"]: "))
                   (let ((__tmp65534
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65265_ 'message))))
                     (declare (not safe))
                     (displayln __tmp65534))
                   (let ((_irritants65275_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65265_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants65275_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj65277_)
                              (write _obj65277_)
                              (write-char '#\space))
                            _irritants65275_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self65265_))
                            (dump-stack-trace?))
                       (let ((_cont6527865280_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self65265_
                                 'continuation))))
                         (if _cont6527865280_
                             (let ((_cont65283_ _cont6527865280_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont65283_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp65531
             current-output-port
             _tmp-port65268_))
          (let ((__tmp65535 (get-output-string _tmp-port65268_)))
            (declare (not safe))
            (##write-string __tmp65535 _port65266_)))))
    (define Error::display-exception::specialize
      (lambda (__t65496)
        (let ((__continuation65497
               (let ((__tmp65501
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65496 'continuation))))
                 (if __tmp65501
                     __tmp65501
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where65498
               (let ((__tmp65502
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65496 'where))))
                 (if __tmp65502
                     __tmp65502
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants65499
               (let ((__tmp65503
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65496 'irritants))))
                 (if __tmp65503
                     __tmp65503
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message65500
               (let ((__tmp65504
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65496 'message))))
                 (if __tmp65504
                     __tmp65504
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65265_ _port65266_)
            (let ((_tmp-port65268_ (open-output-string))
                  (_display-error-newline65269_
                   (> (output-port-column _port65266_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65268_))
              (let ((__tmp65536
                     (lambda ()
                       (if _display-error-newline65269_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e65272_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65265_
                                 __where65498
                                 __t65496
                                 '#f))))
                         (if _$e65272_ (display _$e65272_) (display '"?")))
                       (let ((__tmp65537
                              (let ((__tmp65538 (object-type _self65265_)))
                                (declare (not safe))
                                (##type-name __tmp65538))))
                         (declare (not safe))
                         (display* '" [" __tmp65537 '"]: "))
                       (let ((__tmp65539
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65265_
                                 __message65500
                                 __t65496
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp65539))
                       (let ((_irritants65275_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65265_
                                 __irritants65499
                                 __t65496
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants65275_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj65277_)
                                  (write _obj65277_)
                                  (write-char '#\space))
                                _irritants65275_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self65265_))
                                (dump-stack-trace?))
                           (let ((_cont6527865280_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self65265_
                                     __continuation65497
                                     __t65496
                                     '#f))))
                             (if _cont6527865280_
                                 (let ((_cont65283_ _cont6527865280_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont65283_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp65536
                 current-output-port
                 _tmp-port65268_))
              (let ((__tmp65540 (get-output-string _tmp-port65268_)))
                (declare (not safe))
                (##write-string __tmp65540 _port65266_)))))))
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
      (lambda (_self65132_ _port65133_)
        (let ((_tmp-port65135_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65135_))
          (let ((__tmp65541
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self65132_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp65541 _tmp-port65135_))
          (if (dump-stack-trace?)
              (let ((_cont6513665138_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self65132_ 'continuation))))
                (if _cont6513665138_
                    (let ((_cont65141_ _cont6513665138_))
                      (display '"--- continuation backtrace:" _tmp-port65135_)
                      (newline _tmp-port65135_)
                      (display-continuation-backtrace
                       _cont65141_
                       _tmp-port65135_))
                    '#f))
              '#!void)
          (let ((__tmp65542 (get-output-string _tmp-port65135_)))
            (declare (not safe))
            (##write-string __tmp65542 _port65133_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t65505)
        (let ((__exception65506
               (let ((__tmp65508
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65505 'exception))))
                 (if __tmp65508
                     __tmp65508
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation65507
               (let ((__tmp65509
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65505 'continuation))))
                 (if __tmp65509
                     __tmp65509
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self65132_ _port65133_)
            (let ((_tmp-port65135_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65135_))
              (let ((__tmp65543
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self65132_
                        __exception65506
                        __t65505
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp65543 _tmp-port65135_))
              (if (dump-stack-trace?)
                  (let ((_cont6513665138_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self65132_
                            __continuation65507
                            __t65505
                            '#f))))
                    (if _cont6513665138_
                        (let ((_cont65141_ _cont6513665138_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port65135_)
                          (newline _tmp-port65135_)
                          (display-continuation-backtrace
                           _cont65141_
                           _tmp-port65135_))
                        '#f))
                  '#!void)
              (let ((__tmp65544 (get-output-string _tmp-port65135_)))
                (declare (not safe))
                (##write-string __tmp65544 _port65133_)))))))
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
      (lambda (_port65004_)
        (if (macro-character-port? _port65004_)
            (let ((_old-width65006_
                   (macro-character-port-output-width _port65004_)))
              (macro-character-port-output-width-set!
               _port65004_
               (lambda (_port65008_) '256))
              _old-width65006_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port65001_ _old-width65002_)
        (if (macro-character-port? _port65001_)
            (macro-character-port-output-width-set!
             _port65001_
             _old-width65002_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e64999_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e64999_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn64993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64993_))
            (let ((_e64996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64993_ 'exception))))
              (macro-abandoned-mutex-exception? _e64996_))
            (macro-abandoned-mutex-exception? _exn64993_))))
    (define cfun-conversion-exception?
      (lambda (_exn64989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64989_))
            (let ((_e64991_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64989_ 'exception))))
              (macro-cfun-conversion-exception? _e64991_))
            (macro-cfun-conversion-exception? _exn64989_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn64985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64985_))
            (let ((_e64987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64985_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64987_)
                  (macro-cfun-conversion-exception-arguments _e64987_)
                  (let ((__tmp65547
                         (let ((__tmp65548
                                (let ()
                                  (declare (not safe))
                                  (cons _e64987_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp65548))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65547))))
            (if (macro-cfun-conversion-exception? _exn64985_)
                (macro-cfun-conversion-exception-arguments _exn64985_)
                (let ((__tmp65545
                       (let ((__tmp65546
                              (let ()
                                (declare (not safe))
                                (cons _exn64985_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp65546))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65545))))))
    (define cfun-conversion-exception-code
      (lambda (_exn64981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64981_))
            (let ((_e64983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64981_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64983_)
                  (macro-cfun-conversion-exception-code _e64983_)
                  (let ((__tmp65551
                         (let ((__tmp65552
                                (let ()
                                  (declare (not safe))
                                  (cons _e64983_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp65552))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65551))))
            (if (macro-cfun-conversion-exception? _exn64981_)
                (macro-cfun-conversion-exception-code _exn64981_)
                (let ((__tmp65549
                       (let ((__tmp65550
                              (let ()
                                (declare (not safe))
                                (cons _exn64981_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp65550))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65549))))))
    (define cfun-conversion-exception-message
      (lambda (_exn64977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64977_))
            (let ((_e64979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64977_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64979_)
                  (macro-cfun-conversion-exception-message _e64979_)
                  (let ((__tmp65555
                         (let ((__tmp65556
                                (let ()
                                  (declare (not safe))
                                  (cons _e64979_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp65556))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65555))))
            (if (macro-cfun-conversion-exception? _exn64977_)
                (macro-cfun-conversion-exception-message _exn64977_)
                (let ((__tmp65553
                       (let ((__tmp65554
                              (let ()
                                (declare (not safe))
                                (cons _exn64977_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp65554))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65553))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn64971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64971_))
            (let ((_e64974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64971_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64974_)
                  (macro-cfun-conversion-exception-procedure _e64974_)
                  (let ((__tmp65559
                         (let ((__tmp65560
                                (let ()
                                  (declare (not safe))
                                  (cons _e64974_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp65560))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65559))))
            (if (macro-cfun-conversion-exception? _exn64971_)
                (macro-cfun-conversion-exception-procedure _exn64971_)
                (let ((__tmp65557
                       (let ((__tmp65558
                              (let ()
                                (declare (not safe))
                                (cons _exn64971_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp65558))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65557))))))
    (define datum-parsing-exception?
      (lambda (_exn64967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64967_))
            (let ((_e64969_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64967_ 'exception))))
              (macro-datum-parsing-exception? _e64969_))
            (macro-datum-parsing-exception? _exn64967_))))
    (define datum-parsing-exception-kind
      (lambda (_exn64963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64963_))
            (let ((_e64965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64963_ 'exception))))
              (if (macro-datum-parsing-exception? _e64965_)
                  (macro-datum-parsing-exception-kind _e64965_)
                  (let ((__tmp65563
                         (let ((__tmp65564
                                (let ()
                                  (declare (not safe))
                                  (cons _e64965_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp65564))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65563))))
            (if (macro-datum-parsing-exception? _exn64963_)
                (macro-datum-parsing-exception-kind _exn64963_)
                (let ((__tmp65561
                       (let ((__tmp65562
                              (let ()
                                (declare (not safe))
                                (cons _exn64963_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp65562))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65561))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn64959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64959_))
            (let ((_e64961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64959_ 'exception))))
              (if (macro-datum-parsing-exception? _e64961_)
                  (macro-datum-parsing-exception-parameters _e64961_)
                  (let ((__tmp65567
                         (let ((__tmp65568
                                (let ()
                                  (declare (not safe))
                                  (cons _e64961_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp65568))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65567))))
            (if (macro-datum-parsing-exception? _exn64959_)
                (macro-datum-parsing-exception-parameters _exn64959_)
                (let ((__tmp65565
                       (let ((__tmp65566
                              (let ()
                                (declare (not safe))
                                (cons _exn64959_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp65566))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65565))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn64953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64953_))
            (let ((_e64956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64953_ 'exception))))
              (if (macro-datum-parsing-exception? _e64956_)
                  (macro-datum-parsing-exception-readenv _e64956_)
                  (let ((__tmp65571
                         (let ((__tmp65572
                                (let ()
                                  (declare (not safe))
                                  (cons _e64956_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp65572))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65571))))
            (if (macro-datum-parsing-exception? _exn64953_)
                (macro-datum-parsing-exception-readenv _exn64953_)
                (let ((__tmp65569
                       (let ((__tmp65570
                              (let ()
                                (declare (not safe))
                                (cons _exn64953_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp65570))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65569))))))
    (define deadlock-exception?
      (lambda (_exn64947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64947_))
            (let ((_e64950_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64947_ 'exception))))
              (macro-deadlock-exception? _e64950_))
            (macro-deadlock-exception? _exn64947_))))
    (define divide-by-zero-exception?
      (lambda (_exn64943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64943_))
            (let ((_e64945_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64943_ 'exception))))
              (macro-divide-by-zero-exception? _e64945_))
            (macro-divide-by-zero-exception? _exn64943_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn64939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64939_))
            (let ((_e64941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64939_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64941_)
                  (macro-divide-by-zero-exception-arguments _e64941_)
                  (let ((__tmp65575
                         (let ((__tmp65576
                                (let ()
                                  (declare (not safe))
                                  (cons _e64941_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp65576))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65575))))
            (if (macro-divide-by-zero-exception? _exn64939_)
                (macro-divide-by-zero-exception-arguments _exn64939_)
                (let ((__tmp65573
                       (let ((__tmp65574
                              (let ()
                                (declare (not safe))
                                (cons _exn64939_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp65574))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65573))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn64933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64933_))
            (let ((_e64936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64933_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64936_)
                  (macro-divide-by-zero-exception-procedure _e64936_)
                  (let ((__tmp65579
                         (let ((__tmp65580
                                (let ()
                                  (declare (not safe))
                                  (cons _e64936_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp65580))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65579))))
            (if (macro-divide-by-zero-exception? _exn64933_)
                (macro-divide-by-zero-exception-procedure _exn64933_)
                (let ((__tmp65577
                       (let ((__tmp65578
                              (let ()
                                (declare (not safe))
                                (cons _exn64933_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp65578))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65577))))))
    (define error-exception?
      (lambda (_exn64929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64929_))
            (let ((_e64931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64929_ 'exception))))
              (macro-error-exception? _e64931_))
            (macro-error-exception? _exn64929_))))
    (define error-exception-message
      (lambda (_exn64925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64925_))
            (let ((_e64927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64925_ 'exception))))
              (if (macro-error-exception? _e64927_)
                  (macro-error-exception-message _e64927_)
                  (let ((__tmp65583
                         (let ((__tmp65584
                                (let ()
                                  (declare (not safe))
                                  (cons _e64927_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp65584))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65583))))
            (if (macro-error-exception? _exn64925_)
                (macro-error-exception-message _exn64925_)
                (let ((__tmp65581
                       (let ((__tmp65582
                              (let ()
                                (declare (not safe))
                                (cons _exn64925_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp65582))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65581))))))
    (define error-exception-parameters
      (lambda (_exn64919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64919_))
            (let ((_e64922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64919_ 'exception))))
              (if (macro-error-exception? _e64922_)
                  (macro-error-exception-parameters _e64922_)
                  (let ((__tmp65587
                         (let ((__tmp65588
                                (let ()
                                  (declare (not safe))
                                  (cons _e64922_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp65588))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65587))))
            (if (macro-error-exception? _exn64919_)
                (macro-error-exception-parameters _exn64919_)
                (let ((__tmp65585
                       (let ((__tmp65586
                              (let ()
                                (declare (not safe))
                                (cons _exn64919_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp65586))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65585))))))
    (define expression-parsing-exception?
      (lambda (_exn64915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64915_))
            (let ((_e64917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64915_ 'exception))))
              (macro-expression-parsing-exception? _e64917_))
            (macro-expression-parsing-exception? _exn64915_))))
    (define expression-parsing-exception-kind
      (lambda (_exn64911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64911_))
            (let ((_e64913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64911_ 'exception))))
              (if (macro-expression-parsing-exception? _e64913_)
                  (macro-expression-parsing-exception-kind _e64913_)
                  (let ((__tmp65591
                         (let ((__tmp65592
                                (let ()
                                  (declare (not safe))
                                  (cons _e64913_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp65592))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65591))))
            (if (macro-expression-parsing-exception? _exn64911_)
                (macro-expression-parsing-exception-kind _exn64911_)
                (let ((__tmp65589
                       (let ((__tmp65590
                              (let ()
                                (declare (not safe))
                                (cons _exn64911_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp65590))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65589))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn64907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64907_))
            (let ((_e64909_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64907_ 'exception))))
              (if (macro-expression-parsing-exception? _e64909_)
                  (macro-expression-parsing-exception-parameters _e64909_)
                  (let ((__tmp65595
                         (let ((__tmp65596
                                (let ()
                                  (declare (not safe))
                                  (cons _e64909_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp65596))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65595))))
            (if (macro-expression-parsing-exception? _exn64907_)
                (macro-expression-parsing-exception-parameters _exn64907_)
                (let ((__tmp65593
                       (let ((__tmp65594
                              (let ()
                                (declare (not safe))
                                (cons _exn64907_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp65594))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65593))))))
    (define expression-parsing-exception-source
      (lambda (_exn64901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64901_))
            (let ((_e64904_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64901_ 'exception))))
              (if (macro-expression-parsing-exception? _e64904_)
                  (macro-expression-parsing-exception-source _e64904_)
                  (let ((__tmp65599
                         (let ((__tmp65600
                                (let ()
                                  (declare (not safe))
                                  (cons _e64904_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp65600))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65599))))
            (if (macro-expression-parsing-exception? _exn64901_)
                (macro-expression-parsing-exception-source _exn64901_)
                (let ((__tmp65597
                       (let ((__tmp65598
                              (let ()
                                (declare (not safe))
                                (cons _exn64901_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp65598))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65597))))))
    (define file-exists-exception?
      (lambda (_exn64897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64897_))
            (let ((_e64899_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64897_ 'exception))))
              (macro-file-exists-exception? _e64899_))
            (macro-file-exists-exception? _exn64897_))))
    (define file-exists-exception-arguments
      (lambda (_exn64893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64893_))
            (let ((_e64895_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64893_ 'exception))))
              (if (macro-file-exists-exception? _e64895_)
                  (macro-file-exists-exception-arguments _e64895_)
                  (let ((__tmp65603
                         (let ((__tmp65604
                                (let ()
                                  (declare (not safe))
                                  (cons _e64895_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp65604))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65603))))
            (if (macro-file-exists-exception? _exn64893_)
                (macro-file-exists-exception-arguments _exn64893_)
                (let ((__tmp65601
                       (let ((__tmp65602
                              (let ()
                                (declare (not safe))
                                (cons _exn64893_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp65602))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65601))))))
    (define file-exists-exception-procedure
      (lambda (_exn64887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64887_))
            (let ((_e64890_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64887_ 'exception))))
              (if (macro-file-exists-exception? _e64890_)
                  (macro-file-exists-exception-procedure _e64890_)
                  (let ((__tmp65607
                         (let ((__tmp65608
                                (let ()
                                  (declare (not safe))
                                  (cons _e64890_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp65608))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65607))))
            (if (macro-file-exists-exception? _exn64887_)
                (macro-file-exists-exception-procedure _exn64887_)
                (let ((__tmp65605
                       (let ((__tmp65606
                              (let ()
                                (declare (not safe))
                                (cons _exn64887_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp65606))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65605))))))
    (define fixnum-overflow-exception?
      (lambda (_exn64883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64883_))
            (let ((_e64885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64883_ 'exception))))
              (macro-fixnum-overflow-exception? _e64885_))
            (macro-fixnum-overflow-exception? _exn64883_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn64879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64879_))
            (let ((_e64881_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64879_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64881_)
                  (macro-fixnum-overflow-exception-arguments _e64881_)
                  (let ((__tmp65611
                         (let ((__tmp65612
                                (let ()
                                  (declare (not safe))
                                  (cons _e64881_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp65612))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65611))))
            (if (macro-fixnum-overflow-exception? _exn64879_)
                (macro-fixnum-overflow-exception-arguments _exn64879_)
                (let ((__tmp65609
                       (let ((__tmp65610
                              (let ()
                                (declare (not safe))
                                (cons _exn64879_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp65610))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65609))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn64873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64873_))
            (let ((_e64876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64873_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64876_)
                  (macro-fixnum-overflow-exception-procedure _e64876_)
                  (let ((__tmp65615
                         (let ((__tmp65616
                                (let ()
                                  (declare (not safe))
                                  (cons _e64876_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp65616))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65615))))
            (if (macro-fixnum-overflow-exception? _exn64873_)
                (macro-fixnum-overflow-exception-procedure _exn64873_)
                (let ((__tmp65613
                       (let ((__tmp65614
                              (let ()
                                (declare (not safe))
                                (cons _exn64873_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp65614))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65613))))))
    (define heap-overflow-exception?
      (lambda (_exn64867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64867_))
            (let ((_e64870_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64867_ 'exception))))
              (macro-heap-overflow-exception? _e64870_))
            (macro-heap-overflow-exception? _exn64867_))))
    (define inactive-thread-exception?
      (lambda (_exn64863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64863_))
            (let ((_e64865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64863_ 'exception))))
              (macro-inactive-thread-exception? _e64865_))
            (macro-inactive-thread-exception? _exn64863_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn64859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64859_))
            (let ((_e64861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64859_ 'exception))))
              (if (macro-inactive-thread-exception? _e64861_)
                  (macro-inactive-thread-exception-arguments _e64861_)
                  (let ((__tmp65619
                         (let ((__tmp65620
                                (let ()
                                  (declare (not safe))
                                  (cons _e64861_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp65620))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65619))))
            (if (macro-inactive-thread-exception? _exn64859_)
                (macro-inactive-thread-exception-arguments _exn64859_)
                (let ((__tmp65617
                       (let ((__tmp65618
                              (let ()
                                (declare (not safe))
                                (cons _exn64859_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp65618))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65617))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn64853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64853_))
            (let ((_e64856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64853_ 'exception))))
              (if (macro-inactive-thread-exception? _e64856_)
                  (macro-inactive-thread-exception-procedure _e64856_)
                  (let ((__tmp65623
                         (let ((__tmp65624
                                (let ()
                                  (declare (not safe))
                                  (cons _e64856_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp65624))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65623))))
            (if (macro-inactive-thread-exception? _exn64853_)
                (macro-inactive-thread-exception-procedure _exn64853_)
                (let ((__tmp65621
                       (let ((__tmp65622
                              (let ()
                                (declare (not safe))
                                (cons _exn64853_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp65622))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65621))))))
    (define initialized-thread-exception?
      (lambda (_exn64849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64849_))
            (let ((_e64851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64849_ 'exception))))
              (macro-initialized-thread-exception? _e64851_))
            (macro-initialized-thread-exception? _exn64849_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn64845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64845_))
            (let ((_e64847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64845_ 'exception))))
              (if (macro-initialized-thread-exception? _e64847_)
                  (macro-initialized-thread-exception-arguments _e64847_)
                  (let ((__tmp65627
                         (let ((__tmp65628
                                (let ()
                                  (declare (not safe))
                                  (cons _e64847_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp65628))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65627))))
            (if (macro-initialized-thread-exception? _exn64845_)
                (macro-initialized-thread-exception-arguments _exn64845_)
                (let ((__tmp65625
                       (let ((__tmp65626
                              (let ()
                                (declare (not safe))
                                (cons _exn64845_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp65626))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65625))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn64839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64839_))
            (let ((_e64842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64839_ 'exception))))
              (if (macro-initialized-thread-exception? _e64842_)
                  (macro-initialized-thread-exception-procedure _e64842_)
                  (let ((__tmp65631
                         (let ((__tmp65632
                                (let ()
                                  (declare (not safe))
                                  (cons _e64842_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp65632))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65631))))
            (if (macro-initialized-thread-exception? _exn64839_)
                (macro-initialized-thread-exception-procedure _exn64839_)
                (let ((__tmp65629
                       (let ((__tmp65630
                              (let ()
                                (declare (not safe))
                                (cons _exn64839_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp65630))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65629))))))
    (define invalid-hash-number-exception?
      (lambda (_exn64835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64835_))
            (let ((_e64837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64835_ 'exception))))
              (macro-invalid-hash-number-exception? _e64837_))
            (macro-invalid-hash-number-exception? _exn64835_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn64831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64831_))
            (let ((_e64833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64831_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64833_)
                  (macro-invalid-hash-number-exception-arguments _e64833_)
                  (let ((__tmp65635
                         (let ((__tmp65636
                                (let ()
                                  (declare (not safe))
                                  (cons _e64833_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp65636))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65635))))
            (if (macro-invalid-hash-number-exception? _exn64831_)
                (macro-invalid-hash-number-exception-arguments _exn64831_)
                (let ((__tmp65633
                       (let ((__tmp65634
                              (let ()
                                (declare (not safe))
                                (cons _exn64831_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp65634))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65633))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn64825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64825_))
            (let ((_e64828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64825_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64828_)
                  (macro-invalid-hash-number-exception-procedure _e64828_)
                  (let ((__tmp65639
                         (let ((__tmp65640
                                (let ()
                                  (declare (not safe))
                                  (cons _e64828_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp65640))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65639))))
            (if (macro-invalid-hash-number-exception? _exn64825_)
                (macro-invalid-hash-number-exception-procedure _exn64825_)
                (let ((__tmp65637
                       (let ((__tmp65638
                              (let ()
                                (declare (not safe))
                                (cons _exn64825_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp65638))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65637))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn64821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64821_))
            (let ((_e64823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64821_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e64823_))
            (macro-invalid-utf8-encoding-exception? _exn64821_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn64817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64817_))
            (let ((_e64819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64817_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64819_)
                  (macro-invalid-utf8-encoding-exception-arguments _e64819_)
                  (let ((__tmp65643
                         (let ((__tmp65644
                                (let ()
                                  (declare (not safe))
                                  (cons _e64819_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp65644))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65643))))
            (if (macro-invalid-utf8-encoding-exception? _exn64817_)
                (macro-invalid-utf8-encoding-exception-arguments _exn64817_)
                (let ((__tmp65641
                       (let ((__tmp65642
                              (let ()
                                (declare (not safe))
                                (cons _exn64817_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp65642))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65641))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn64811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64811_))
            (let ((_e64814_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64811_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64814_)
                  (macro-invalid-utf8-encoding-exception-procedure _e64814_)
                  (let ((__tmp65647
                         (let ((__tmp65648
                                (let ()
                                  (declare (not safe))
                                  (cons _e64814_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp65648))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65647))))
            (if (macro-invalid-utf8-encoding-exception? _exn64811_)
                (macro-invalid-utf8-encoding-exception-procedure _exn64811_)
                (let ((__tmp65645
                       (let ((__tmp65646
                              (let ()
                                (declare (not safe))
                                (cons _exn64811_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp65646))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65645))))))
    (define join-timeout-exception?
      (lambda (_exn64807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64807_))
            (let ((_e64809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64807_ 'exception))))
              (macro-join-timeout-exception? _e64809_))
            (macro-join-timeout-exception? _exn64807_))))
    (define join-timeout-exception-arguments
      (lambda (_exn64803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64803_))
            (let ((_e64805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64803_ 'exception))))
              (if (macro-join-timeout-exception? _e64805_)
                  (macro-join-timeout-exception-arguments _e64805_)
                  (let ((__tmp65651
                         (let ((__tmp65652
                                (let ()
                                  (declare (not safe))
                                  (cons _e64805_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp65652))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65651))))
            (if (macro-join-timeout-exception? _exn64803_)
                (macro-join-timeout-exception-arguments _exn64803_)
                (let ((__tmp65649
                       (let ((__tmp65650
                              (let ()
                                (declare (not safe))
                                (cons _exn64803_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp65650))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65649))))))
    (define join-timeout-exception-procedure
      (lambda (_exn64797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64797_))
            (let ((_e64800_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64797_ 'exception))))
              (if (macro-join-timeout-exception? _e64800_)
                  (macro-join-timeout-exception-procedure _e64800_)
                  (let ((__tmp65655
                         (let ((__tmp65656
                                (let ()
                                  (declare (not safe))
                                  (cons _e64800_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp65656))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65655))))
            (if (macro-join-timeout-exception? _exn64797_)
                (macro-join-timeout-exception-procedure _exn64797_)
                (let ((__tmp65653
                       (let ((__tmp65654
                              (let ()
                                (declare (not safe))
                                (cons _exn64797_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp65654))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65653))))))
    (define keyword-expected-exception?
      (lambda (_exn64793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64793_))
            (let ((_e64795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64793_ 'exception))))
              (macro-keyword-expected-exception? _e64795_))
            (macro-keyword-expected-exception? _exn64793_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn64789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64789_))
            (let ((_e64791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64789_ 'exception))))
              (if (macro-keyword-expected-exception? _e64791_)
                  (macro-keyword-expected-exception-arguments _e64791_)
                  (let ((__tmp65659
                         (let ((__tmp65660
                                (let ()
                                  (declare (not safe))
                                  (cons _e64791_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp65660))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65659))))
            (if (macro-keyword-expected-exception? _exn64789_)
                (macro-keyword-expected-exception-arguments _exn64789_)
                (let ((__tmp65657
                       (let ((__tmp65658
                              (let ()
                                (declare (not safe))
                                (cons _exn64789_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp65658))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65657))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn64783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64783_))
            (let ((_e64786_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64783_ 'exception))))
              (if (macro-keyword-expected-exception? _e64786_)
                  (macro-keyword-expected-exception-procedure _e64786_)
                  (let ((__tmp65663
                         (let ((__tmp65664
                                (let ()
                                  (declare (not safe))
                                  (cons _e64786_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp65664))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65663))))
            (if (macro-keyword-expected-exception? _exn64783_)
                (macro-keyword-expected-exception-procedure _exn64783_)
                (let ((__tmp65661
                       (let ((__tmp65662
                              (let ()
                                (declare (not safe))
                                (cons _exn64783_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp65662))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65661))))))
    (define length-mismatch-exception?
      (lambda (_exn64779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64779_))
            (let ((_e64781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64779_ 'exception))))
              (macro-length-mismatch-exception? _e64781_))
            (macro-length-mismatch-exception? _exn64779_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn64775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64775_))
            (let ((_e64777_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64775_ 'exception))))
              (if (macro-length-mismatch-exception? _e64777_)
                  (macro-length-mismatch-exception-arg-id _e64777_)
                  (let ((__tmp65667
                         (let ((__tmp65668
                                (let ()
                                  (declare (not safe))
                                  (cons _e64777_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp65668))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65667))))
            (if (macro-length-mismatch-exception? _exn64775_)
                (macro-length-mismatch-exception-arg-id _exn64775_)
                (let ((__tmp65665
                       (let ((__tmp65666
                              (let ()
                                (declare (not safe))
                                (cons _exn64775_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp65666))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65665))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn64771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64771_))
            (let ((_e64773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64771_ 'exception))))
              (if (macro-length-mismatch-exception? _e64773_)
                  (macro-length-mismatch-exception-arguments _e64773_)
                  (let ((__tmp65671
                         (let ((__tmp65672
                                (let ()
                                  (declare (not safe))
                                  (cons _e64773_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp65672))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65671))))
            (if (macro-length-mismatch-exception? _exn64771_)
                (macro-length-mismatch-exception-arguments _exn64771_)
                (let ((__tmp65669
                       (let ((__tmp65670
                              (let ()
                                (declare (not safe))
                                (cons _exn64771_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp65670))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65669))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn64765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64765_))
            (let ((_e64768_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64765_ 'exception))))
              (if (macro-length-mismatch-exception? _e64768_)
                  (macro-length-mismatch-exception-procedure _e64768_)
                  (let ((__tmp65675
                         (let ((__tmp65676
                                (let ()
                                  (declare (not safe))
                                  (cons _e64768_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp65676))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65675))))
            (if (macro-length-mismatch-exception? _exn64765_)
                (macro-length-mismatch-exception-procedure _exn64765_)
                (let ((__tmp65673
                       (let ((__tmp65674
                              (let ()
                                (declare (not safe))
                                (cons _exn64765_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp65674))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65673))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn64761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64761_))
            (let ((_e64763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64761_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e64763_))
            (macro-mailbox-receive-timeout-exception? _exn64761_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn64757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64757_))
            (let ((_e64759_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64757_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64759_)
                  (macro-mailbox-receive-timeout-exception-arguments _e64759_)
                  (let ((__tmp65679
                         (let ((__tmp65680
                                (let ()
                                  (declare (not safe))
                                  (cons _e64759_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp65680))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65679))))
            (if (macro-mailbox-receive-timeout-exception? _exn64757_)
                (macro-mailbox-receive-timeout-exception-arguments _exn64757_)
                (let ((__tmp65677
                       (let ((__tmp65678
                              (let ()
                                (declare (not safe))
                                (cons _exn64757_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp65678))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65677))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn64751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64751_))
            (let ((_e64754_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64751_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64754_)
                  (macro-mailbox-receive-timeout-exception-procedure _e64754_)
                  (let ((__tmp65683
                         (let ((__tmp65684
                                (let ()
                                  (declare (not safe))
                                  (cons _e64754_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp65684))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65683))))
            (if (macro-mailbox-receive-timeout-exception? _exn64751_)
                (macro-mailbox-receive-timeout-exception-procedure _exn64751_)
                (let ((__tmp65681
                       (let ((__tmp65682
                              (let ()
                                (declare (not safe))
                                (cons _exn64751_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp65682))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65681))))))
    (define module-not-found-exception?
      (lambda (_exn64747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64747_))
            (let ((_e64749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64747_ 'exception))))
              (macro-module-not-found-exception? _e64749_))
            (macro-module-not-found-exception? _exn64747_))))
    (define module-not-found-exception-arguments
      (lambda (_exn64743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64743_))
            (let ((_e64745_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64743_ 'exception))))
              (if (macro-module-not-found-exception? _e64745_)
                  (macro-module-not-found-exception-arguments _e64745_)
                  (let ((__tmp65687
                         (let ((__tmp65688
                                (let ()
                                  (declare (not safe))
                                  (cons _e64745_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp65688))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65687))))
            (if (macro-module-not-found-exception? _exn64743_)
                (macro-module-not-found-exception-arguments _exn64743_)
                (let ((__tmp65685
                       (let ((__tmp65686
                              (let ()
                                (declare (not safe))
                                (cons _exn64743_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp65686))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65685))))))
    (define module-not-found-exception-procedure
      (lambda (_exn64737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64737_))
            (let ((_e64740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64737_ 'exception))))
              (if (macro-module-not-found-exception? _e64740_)
                  (macro-module-not-found-exception-procedure _e64740_)
                  (let ((__tmp65691
                         (let ((__tmp65692
                                (let ()
                                  (declare (not safe))
                                  (cons _e64740_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp65692))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65691))))
            (if (macro-module-not-found-exception? _exn64737_)
                (macro-module-not-found-exception-procedure _exn64737_)
                (let ((__tmp65689
                       (let ((__tmp65690
                              (let ()
                                (declare (not safe))
                                (cons _exn64737_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp65690))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65689))))))
    (define multiple-c-return-exception?
      (lambda (_exn64731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64731_))
            (let ((_e64734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64731_ 'exception))))
              (macro-multiple-c-return-exception? _e64734_))
            (macro-multiple-c-return-exception? _exn64731_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn64727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64727_))
            (let ((_e64729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64727_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e64729_))
            (macro-no-such-file-or-directory-exception? _exn64727_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn64723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64723_))
            (let ((_e64725_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64723_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64725_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e64725_)
                  (let ((__tmp65695
                         (let ((__tmp65696
                                (let ()
                                  (declare (not safe))
                                  (cons _e64725_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp65696))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65695))))
            (if (macro-no-such-file-or-directory-exception? _exn64723_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn64723_)
                (let ((__tmp65693
                       (let ((__tmp65694
                              (let ()
                                (declare (not safe))
                                (cons _exn64723_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp65694))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65693))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn64717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64717_))
            (let ((_e64720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64717_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64720_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e64720_)
                  (let ((__tmp65699
                         (let ((__tmp65700
                                (let ()
                                  (declare (not safe))
                                  (cons _e64720_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp65700))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65699))))
            (if (macro-no-such-file-or-directory-exception? _exn64717_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn64717_)
                (let ((__tmp65697
                       (let ((__tmp65698
                              (let ()
                                (declare (not safe))
                                (cons _exn64717_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp65698))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65697))))))
    (define noncontinuable-exception?
      (lambda (_exn64713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64713_))
            (let ((_e64715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64713_ 'exception))))
              (macro-noncontinuable-exception? _e64715_))
            (macro-noncontinuable-exception? _exn64713_))))
    (define noncontinuable-exception-reason
      (lambda (_exn64707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64707_))
            (let ((_e64710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64707_ 'exception))))
              (if (macro-noncontinuable-exception? _e64710_)
                  (macro-noncontinuable-exception-reason _e64710_)
                  (let ((__tmp65703
                         (let ((__tmp65704
                                (let ()
                                  (declare (not safe))
                                  (cons _e64710_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp65704))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp65703))))
            (if (macro-noncontinuable-exception? _exn64707_)
                (macro-noncontinuable-exception-reason _exn64707_)
                (let ((__tmp65701
                       (let ((__tmp65702
                              (let ()
                                (declare (not safe))
                                (cons _exn64707_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp65702))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp65701))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn64703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64703_))
            (let ((_e64705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64703_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e64705_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn64703_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn64699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64699_))
            (let ((_e64701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64699_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64701_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e64701_)
                  (let ((__tmp65707
                         (let ((__tmp65708
                                (let ()
                                  (declare (not safe))
                                  (cons _e64701_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp65708))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65707))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64699_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn64699_)
                (let ((__tmp65705
                       (let ((__tmp65706
                              (let ()
                                (declare (not safe))
                                (cons _exn64699_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp65706))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65705))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn64693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64693_))
            (let ((_e64696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64693_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64696_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e64696_)
                  (let ((__tmp65711
                         (let ((__tmp65712
                                (let ()
                                  (declare (not safe))
                                  (cons _e64696_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp65712))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65711))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64693_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn64693_)
                (let ((__tmp65709
                       (let ((__tmp65710
                              (let ()
                                (declare (not safe))
                                (cons _exn64693_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp65710))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65709))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn64689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64689_))
            (let ((_e64691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64689_ 'exception))))
              (macro-nonprocedure-operator-exception? _e64691_))
            (macro-nonprocedure-operator-exception? _exn64689_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn64685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64685_))
            (let ((_e64687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64685_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64687_)
                  (macro-nonprocedure-operator-exception-arguments _e64687_)
                  (let ((__tmp65715
                         (let ((__tmp65716
                                (let ()
                                  (declare (not safe))
                                  (cons _e64687_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp65716))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65715))))
            (if (macro-nonprocedure-operator-exception? _exn64685_)
                (macro-nonprocedure-operator-exception-arguments _exn64685_)
                (let ((__tmp65713
                       (let ((__tmp65714
                              (let ()
                                (declare (not safe))
                                (cons _exn64685_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp65714))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65713))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn64681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64681_))
            (let ((_e64683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64681_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64683_)
                  (macro-nonprocedure-operator-exception-code _e64683_)
                  (let ((__tmp65719
                         (let ((__tmp65720
                                (let ()
                                  (declare (not safe))
                                  (cons _e64683_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp65720))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65719))))
            (if (macro-nonprocedure-operator-exception? _exn64681_)
                (macro-nonprocedure-operator-exception-code _exn64681_)
                (let ((__tmp65717
                       (let ((__tmp65718
                              (let ()
                                (declare (not safe))
                                (cons _exn64681_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp65718))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65717))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn64677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64677_))
            (let ((_e64679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64677_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64679_)
                  (macro-nonprocedure-operator-exception-operator _e64679_)
                  (let ((__tmp65723
                         (let ((__tmp65724
                                (let ()
                                  (declare (not safe))
                                  (cons _e64679_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp65724))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65723))))
            (if (macro-nonprocedure-operator-exception? _exn64677_)
                (macro-nonprocedure-operator-exception-operator _exn64677_)
                (let ((__tmp65721
                       (let ((__tmp65722
                              (let ()
                                (declare (not safe))
                                (cons _exn64677_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp65722))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65721))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn64671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64671_))
            (let ((_e64674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64671_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64674_)
                  (macro-nonprocedure-operator-exception-rte _e64674_)
                  (let ((__tmp65727
                         (let ((__tmp65728
                                (let ()
                                  (declare (not safe))
                                  (cons _e64674_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp65728))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65727))))
            (if (macro-nonprocedure-operator-exception? _exn64671_)
                (macro-nonprocedure-operator-exception-rte _exn64671_)
                (let ((__tmp65725
                       (let ((__tmp65726
                              (let ()
                                (declare (not safe))
                                (cons _exn64671_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp65726))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65725))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn64667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64667_))
            (let ((_e64669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64667_ 'exception))))
              (macro-not-in-compilation-context-exception? _e64669_))
            (macro-not-in-compilation-context-exception? _exn64667_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn64663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64663_))
            (let ((_e64665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64663_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64665_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e64665_)
                  (let ((__tmp65731
                         (let ((__tmp65732
                                (let ()
                                  (declare (not safe))
                                  (cons _e64665_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp65732))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65731))))
            (if (macro-not-in-compilation-context-exception? _exn64663_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn64663_)
                (let ((__tmp65729
                       (let ((__tmp65730
                              (let ()
                                (declare (not safe))
                                (cons _exn64663_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp65730))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65729))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn64657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64657_))
            (let ((_e64660_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64657_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64660_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e64660_)
                  (let ((__tmp65735
                         (let ((__tmp65736
                                (let ()
                                  (declare (not safe))
                                  (cons _e64660_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp65736))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65735))))
            (if (macro-not-in-compilation-context-exception? _exn64657_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn64657_)
                (let ((__tmp65733
                       (let ((__tmp65734
                              (let ()
                                (declare (not safe))
                                (cons _exn64657_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp65734))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65733))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn64653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64653_))
            (let ((_e64655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64653_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e64655_))
            (macro-number-of-arguments-limit-exception? _exn64653_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn64649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64649_))
            (let ((_e64651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64649_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64651_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e64651_)
                  (let ((__tmp65739
                         (let ((__tmp65740
                                (let ()
                                  (declare (not safe))
                                  (cons _e64651_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp65740))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65739))))
            (if (macro-number-of-arguments-limit-exception? _exn64649_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn64649_)
                (let ((__tmp65737
                       (let ((__tmp65738
                              (let ()
                                (declare (not safe))
                                (cons _exn64649_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp65738))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65737))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn64643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64643_))
            (let ((_e64646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64643_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64646_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e64646_)
                  (let ((__tmp65743
                         (let ((__tmp65744
                                (let ()
                                  (declare (not safe))
                                  (cons _e64646_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp65744))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65743))))
            (if (macro-number-of-arguments-limit-exception? _exn64643_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn64643_)
                (let ((__tmp65741
                       (let ((__tmp65742
                              (let ()
                                (declare (not safe))
                                (cons _exn64643_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp65742))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65741))))))
    (define os-exception?
      (lambda (_exn64639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64639_))
            (let ((_e64641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64639_ 'exception))))
              (macro-os-exception? _e64641_))
            (macro-os-exception? _exn64639_))))
    (define os-exception-arguments
      (lambda (_exn64635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64635_))
            (let ((_e64637_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64635_ 'exception))))
              (if (macro-os-exception? _e64637_)
                  (macro-os-exception-arguments _e64637_)
                  (let ((__tmp65747
                         (let ((__tmp65748
                                (let ()
                                  (declare (not safe))
                                  (cons _e64637_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp65748))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65747))))
            (if (macro-os-exception? _exn64635_)
                (macro-os-exception-arguments _exn64635_)
                (let ((__tmp65745
                       (let ((__tmp65746
                              (let ()
                                (declare (not safe))
                                (cons _exn64635_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp65746))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65745))))))
    (define os-exception-code
      (lambda (_exn64631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64631_))
            (let ((_e64633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64631_ 'exception))))
              (if (macro-os-exception? _e64633_)
                  (macro-os-exception-code _e64633_)
                  (let ((__tmp65751
                         (let ((__tmp65752
                                (let ()
                                  (declare (not safe))
                                  (cons _e64633_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp65752))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65751))))
            (if (macro-os-exception? _exn64631_)
                (macro-os-exception-code _exn64631_)
                (let ((__tmp65749
                       (let ((__tmp65750
                              (let ()
                                (declare (not safe))
                                (cons _exn64631_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp65750))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65749))))))
    (define os-exception-message
      (lambda (_exn64627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64627_))
            (let ((_e64629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64627_ 'exception))))
              (if (macro-os-exception? _e64629_)
                  (macro-os-exception-message _e64629_)
                  (let ((__tmp65755
                         (let ((__tmp65756
                                (let ()
                                  (declare (not safe))
                                  (cons _e64629_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp65756))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65755))))
            (if (macro-os-exception? _exn64627_)
                (macro-os-exception-message _exn64627_)
                (let ((__tmp65753
                       (let ((__tmp65754
                              (let ()
                                (declare (not safe))
                                (cons _exn64627_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp65754))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65753))))))
    (define os-exception-procedure
      (lambda (_exn64621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64621_))
            (let ((_e64624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64621_ 'exception))))
              (if (macro-os-exception? _e64624_)
                  (macro-os-exception-procedure _e64624_)
                  (let ((__tmp65759
                         (let ((__tmp65760
                                (let ()
                                  (declare (not safe))
                                  (cons _e64624_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp65760))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65759))))
            (if (macro-os-exception? _exn64621_)
                (macro-os-exception-procedure _exn64621_)
                (let ((__tmp65757
                       (let ((__tmp65758
                              (let ()
                                (declare (not safe))
                                (cons _exn64621_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp65758))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65757))))))
    (define permission-denied-exception?
      (lambda (_exn64617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64617_))
            (let ((_e64619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64617_ 'exception))))
              (macro-permission-denied-exception? _e64619_))
            (macro-permission-denied-exception? _exn64617_))))
    (define permission-denied-exception-arguments
      (lambda (_exn64613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64613_))
            (let ((_e64615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64613_ 'exception))))
              (if (macro-permission-denied-exception? _e64615_)
                  (macro-permission-denied-exception-arguments _e64615_)
                  (let ((__tmp65763
                         (let ((__tmp65764
                                (let ()
                                  (declare (not safe))
                                  (cons _e64615_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp65764))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65763))))
            (if (macro-permission-denied-exception? _exn64613_)
                (macro-permission-denied-exception-arguments _exn64613_)
                (let ((__tmp65761
                       (let ((__tmp65762
                              (let ()
                                (declare (not safe))
                                (cons _exn64613_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp65762))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65761))))))
    (define permission-denied-exception-procedure
      (lambda (_exn64607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64607_))
            (let ((_e64610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64607_ 'exception))))
              (if (macro-permission-denied-exception? _e64610_)
                  (macro-permission-denied-exception-procedure _e64610_)
                  (let ((__tmp65767
                         (let ((__tmp65768
                                (let ()
                                  (declare (not safe))
                                  (cons _e64610_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp65768))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65767))))
            (if (macro-permission-denied-exception? _exn64607_)
                (macro-permission-denied-exception-procedure _exn64607_)
                (let ((__tmp65765
                       (let ((__tmp65766
                              (let ()
                                (declare (not safe))
                                (cons _exn64607_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp65766))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65765))))))
    (define range-exception?
      (lambda (_exn64603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64603_))
            (let ((_e64605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64603_ 'exception))))
              (macro-range-exception? _e64605_))
            (macro-range-exception? _exn64603_))))
    (define range-exception-arg-id
      (lambda (_exn64599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64599_))
            (let ((_e64601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64599_ 'exception))))
              (if (macro-range-exception? _e64601_)
                  (macro-range-exception-arg-id _e64601_)
                  (let ((__tmp65771
                         (let ((__tmp65772
                                (let ()
                                  (declare (not safe))
                                  (cons _e64601_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp65772))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65771))))
            (if (macro-range-exception? _exn64599_)
                (macro-range-exception-arg-id _exn64599_)
                (let ((__tmp65769
                       (let ((__tmp65770
                              (let ()
                                (declare (not safe))
                                (cons _exn64599_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp65770))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65769))))))
    (define range-exception-arguments
      (lambda (_exn64595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64595_))
            (let ((_e64597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64595_ 'exception))))
              (if (macro-range-exception? _e64597_)
                  (macro-range-exception-arguments _e64597_)
                  (let ((__tmp65775
                         (let ((__tmp65776
                                (let ()
                                  (declare (not safe))
                                  (cons _e64597_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp65776))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65775))))
            (if (macro-range-exception? _exn64595_)
                (macro-range-exception-arguments _exn64595_)
                (let ((__tmp65773
                       (let ((__tmp65774
                              (let ()
                                (declare (not safe))
                                (cons _exn64595_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp65774))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65773))))))
    (define range-exception-procedure
      (lambda (_exn64589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64589_))
            (let ((_e64592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64589_ 'exception))))
              (if (macro-range-exception? _e64592_)
                  (macro-range-exception-procedure _e64592_)
                  (let ((__tmp65779
                         (let ((__tmp65780
                                (let ()
                                  (declare (not safe))
                                  (cons _e64592_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp65780))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65779))))
            (if (macro-range-exception? _exn64589_)
                (macro-range-exception-procedure _exn64589_)
                (let ((__tmp65777
                       (let ((__tmp65778
                              (let ()
                                (declare (not safe))
                                (cons _exn64589_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp65778))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65777))))))
    (define rpc-remote-error-exception?
      (lambda (_exn64585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64585_))
            (let ((_e64587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64585_ 'exception))))
              (macro-rpc-remote-error-exception? _e64587_))
            (macro-rpc-remote-error-exception? _exn64585_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn64581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64581_))
            (let ((_e64583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64581_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64583_)
                  (macro-rpc-remote-error-exception-arguments _e64583_)
                  (let ((__tmp65783
                         (let ((__tmp65784
                                (let ()
                                  (declare (not safe))
                                  (cons _e64583_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp65784))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65783))))
            (if (macro-rpc-remote-error-exception? _exn64581_)
                (macro-rpc-remote-error-exception-arguments _exn64581_)
                (let ((__tmp65781
                       (let ((__tmp65782
                              (let ()
                                (declare (not safe))
                                (cons _exn64581_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp65782))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65781))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn64577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64577_))
            (let ((_e64579_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64577_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64579_)
                  (macro-rpc-remote-error-exception-message _e64579_)
                  (let ((__tmp65787
                         (let ((__tmp65788
                                (let ()
                                  (declare (not safe))
                                  (cons _e64579_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp65788))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65787))))
            (if (macro-rpc-remote-error-exception? _exn64577_)
                (macro-rpc-remote-error-exception-message _exn64577_)
                (let ((__tmp65785
                       (let ((__tmp65786
                              (let ()
                                (declare (not safe))
                                (cons _exn64577_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp65786))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65785))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn64571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64571_))
            (let ((_e64574_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64571_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64574_)
                  (macro-rpc-remote-error-exception-procedure _e64574_)
                  (let ((__tmp65791
                         (let ((__tmp65792
                                (let ()
                                  (declare (not safe))
                                  (cons _e64574_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp65792))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65791))))
            (if (macro-rpc-remote-error-exception? _exn64571_)
                (macro-rpc-remote-error-exception-procedure _exn64571_)
                (let ((__tmp65789
                       (let ((__tmp65790
                              (let ()
                                (declare (not safe))
                                (cons _exn64571_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp65790))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65789))))))
    (define scheduler-exception?
      (lambda (_exn64567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64567_))
            (let ((_e64569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64567_ 'exception))))
              (macro-scheduler-exception? _e64569_))
            (macro-scheduler-exception? _exn64567_))))
    (define scheduler-exception-reason
      (lambda (_exn64561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64561_))
            (let ((_e64564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64561_ 'exception))))
              (if (macro-scheduler-exception? _e64564_)
                  (macro-scheduler-exception-reason _e64564_)
                  (let ((__tmp65795
                         (let ((__tmp65796
                                (let ()
                                  (declare (not safe))
                                  (cons _e64564_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp65796))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp65795))))
            (if (macro-scheduler-exception? _exn64561_)
                (macro-scheduler-exception-reason _exn64561_)
                (let ((__tmp65793
                       (let ((__tmp65794
                              (let ()
                                (declare (not safe))
                                (cons _exn64561_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp65794))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp65793))))))
    (define sfun-conversion-exception?
      (lambda (_exn64557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64557_))
            (let ((_e64559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64557_ 'exception))))
              (macro-sfun-conversion-exception? _e64559_))
            (macro-sfun-conversion-exception? _exn64557_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn64553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64553_))
            (let ((_e64555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64553_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64555_)
                  (macro-sfun-conversion-exception-arguments _e64555_)
                  (let ((__tmp65799
                         (let ((__tmp65800
                                (let ()
                                  (declare (not safe))
                                  (cons _e64555_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp65800))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65799))))
            (if (macro-sfun-conversion-exception? _exn64553_)
                (macro-sfun-conversion-exception-arguments _exn64553_)
                (let ((__tmp65797
                       (let ((__tmp65798
                              (let ()
                                (declare (not safe))
                                (cons _exn64553_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp65798))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65797))))))
    (define sfun-conversion-exception-code
      (lambda (_exn64549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64549_))
            (let ((_e64551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64549_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64551_)
                  (macro-sfun-conversion-exception-code _e64551_)
                  (let ((__tmp65803
                         (let ((__tmp65804
                                (let ()
                                  (declare (not safe))
                                  (cons _e64551_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp65804))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65803))))
            (if (macro-sfun-conversion-exception? _exn64549_)
                (macro-sfun-conversion-exception-code _exn64549_)
                (let ((__tmp65801
                       (let ((__tmp65802
                              (let ()
                                (declare (not safe))
                                (cons _exn64549_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp65802))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65801))))))
    (define sfun-conversion-exception-message
      (lambda (_exn64545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64545_))
            (let ((_e64547_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64545_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64547_)
                  (macro-sfun-conversion-exception-message _e64547_)
                  (let ((__tmp65807
                         (let ((__tmp65808
                                (let ()
                                  (declare (not safe))
                                  (cons _e64547_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp65808))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65807))))
            (if (macro-sfun-conversion-exception? _exn64545_)
                (macro-sfun-conversion-exception-message _exn64545_)
                (let ((__tmp65805
                       (let ((__tmp65806
                              (let ()
                                (declare (not safe))
                                (cons _exn64545_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp65806))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65805))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn64539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64539_))
            (let ((_e64542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64539_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64542_)
                  (macro-sfun-conversion-exception-procedure _e64542_)
                  (let ((__tmp65811
                         (let ((__tmp65812
                                (let ()
                                  (declare (not safe))
                                  (cons _e64542_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp65812))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65811))))
            (if (macro-sfun-conversion-exception? _exn64539_)
                (macro-sfun-conversion-exception-procedure _exn64539_)
                (let ((__tmp65809
                       (let ((__tmp65810
                              (let ()
                                (declare (not safe))
                                (cons _exn64539_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp65810))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65809))))))
    (define stack-overflow-exception?
      (lambda (_exn64533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64533_))
            (let ((_e64536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64533_ 'exception))))
              (macro-stack-overflow-exception? _e64536_))
            (macro-stack-overflow-exception? _exn64533_))))
    (define started-thread-exception?
      (lambda (_exn64529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64529_))
            (let ((_e64531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64529_ 'exception))))
              (macro-started-thread-exception? _e64531_))
            (macro-started-thread-exception? _exn64529_))))
    (define started-thread-exception-arguments
      (lambda (_exn64525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64525_))
            (let ((_e64527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64525_ 'exception))))
              (if (macro-started-thread-exception? _e64527_)
                  (macro-started-thread-exception-arguments _e64527_)
                  (let ((__tmp65815
                         (let ((__tmp65816
                                (let ()
                                  (declare (not safe))
                                  (cons _e64527_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp65816))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65815))))
            (if (macro-started-thread-exception? _exn64525_)
                (macro-started-thread-exception-arguments _exn64525_)
                (let ((__tmp65813
                       (let ((__tmp65814
                              (let ()
                                (declare (not safe))
                                (cons _exn64525_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp65814))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65813))))))
    (define started-thread-exception-procedure
      (lambda (_exn64519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64519_))
            (let ((_e64522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64519_ 'exception))))
              (if (macro-started-thread-exception? _e64522_)
                  (macro-started-thread-exception-procedure _e64522_)
                  (let ((__tmp65819
                         (let ((__tmp65820
                                (let ()
                                  (declare (not safe))
                                  (cons _e64522_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp65820))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65819))))
            (if (macro-started-thread-exception? _exn64519_)
                (macro-started-thread-exception-procedure _exn64519_)
                (let ((__tmp65817
                       (let ((__tmp65818
                              (let ()
                                (declare (not safe))
                                (cons _exn64519_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp65818))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65817))))))
    (define terminated-thread-exception?
      (lambda (_exn64515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64515_))
            (let ((_e64517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64515_ 'exception))))
              (macro-terminated-thread-exception? _e64517_))
            (macro-terminated-thread-exception? _exn64515_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn64511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64511_))
            (let ((_e64513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64511_ 'exception))))
              (if (macro-terminated-thread-exception? _e64513_)
                  (macro-terminated-thread-exception-arguments _e64513_)
                  (let ((__tmp65823
                         (let ((__tmp65824
                                (let ()
                                  (declare (not safe))
                                  (cons _e64513_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp65824))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65823))))
            (if (macro-terminated-thread-exception? _exn64511_)
                (macro-terminated-thread-exception-arguments _exn64511_)
                (let ((__tmp65821
                       (let ((__tmp65822
                              (let ()
                                (declare (not safe))
                                (cons _exn64511_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp65822))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65821))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn64505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64505_))
            (let ((_e64508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64505_ 'exception))))
              (if (macro-terminated-thread-exception? _e64508_)
                  (macro-terminated-thread-exception-procedure _e64508_)
                  (let ((__tmp65827
                         (let ((__tmp65828
                                (let ()
                                  (declare (not safe))
                                  (cons _e64508_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp65828))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65827))))
            (if (macro-terminated-thread-exception? _exn64505_)
                (macro-terminated-thread-exception-procedure _exn64505_)
                (let ((__tmp65825
                       (let ((__tmp65826
                              (let ()
                                (declare (not safe))
                                (cons _exn64505_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp65826))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65825))))))
    (define type-exception?
      (lambda (_exn64501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64501_))
            (let ((_e64503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64501_ 'exception))))
              (macro-type-exception? _e64503_))
            (macro-type-exception? _exn64501_))))
    (define type-exception-arg-id
      (lambda (_exn64497_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64497_))
            (let ((_e64499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64497_ 'exception))))
              (if (macro-type-exception? _e64499_)
                  (macro-type-exception-arg-id _e64499_)
                  (let ((__tmp65831
                         (let ((__tmp65832
                                (let ()
                                  (declare (not safe))
                                  (cons _e64499_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp65832))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65831))))
            (if (macro-type-exception? _exn64497_)
                (macro-type-exception-arg-id _exn64497_)
                (let ((__tmp65829
                       (let ((__tmp65830
                              (let ()
                                (declare (not safe))
                                (cons _exn64497_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp65830))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65829))))))
    (define type-exception-arguments
      (lambda (_exn64493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64493_))
            (let ((_e64495_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64493_ 'exception))))
              (if (macro-type-exception? _e64495_)
                  (macro-type-exception-arguments _e64495_)
                  (let ((__tmp65835
                         (let ((__tmp65836
                                (let ()
                                  (declare (not safe))
                                  (cons _e64495_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp65836))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65835))))
            (if (macro-type-exception? _exn64493_)
                (macro-type-exception-arguments _exn64493_)
                (let ((__tmp65833
                       (let ((__tmp65834
                              (let ()
                                (declare (not safe))
                                (cons _exn64493_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp65834))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65833))))))
    (define type-exception-procedure
      (lambda (_exn64489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64489_))
            (let ((_e64491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64489_ 'exception))))
              (if (macro-type-exception? _e64491_)
                  (macro-type-exception-procedure _e64491_)
                  (let ((__tmp65839
                         (let ((__tmp65840
                                (let ()
                                  (declare (not safe))
                                  (cons _e64491_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp65840))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65839))))
            (if (macro-type-exception? _exn64489_)
                (macro-type-exception-procedure _exn64489_)
                (let ((__tmp65837
                       (let ((__tmp65838
                              (let ()
                                (declare (not safe))
                                (cons _exn64489_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp65838))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65837))))))
    (define type-exception-type-id
      (lambda (_exn64483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64483_))
            (let ((_e64486_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64483_ 'exception))))
              (if (macro-type-exception? _e64486_)
                  (macro-type-exception-type-id _e64486_)
                  (let ((__tmp65843
                         (let ((__tmp65844
                                (let ()
                                  (declare (not safe))
                                  (cons _e64486_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp65844))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65843))))
            (if (macro-type-exception? _exn64483_)
                (macro-type-exception-type-id _exn64483_)
                (let ((__tmp65841
                       (let ((__tmp65842
                              (let ()
                                (declare (not safe))
                                (cons _exn64483_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp65842))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65841))))))
    (define unbound-global-exception?
      (lambda (_exn64479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64479_))
            (let ((_e64481_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64479_ 'exception))))
              (macro-unbound-global-exception? _e64481_))
            (macro-unbound-global-exception? _exn64479_))))
    (define unbound-global-exception-code
      (lambda (_exn64475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64475_))
            (let ((_e64477_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64475_ 'exception))))
              (if (macro-unbound-global-exception? _e64477_)
                  (macro-unbound-global-exception-code _e64477_)
                  (let ((__tmp65847
                         (let ((__tmp65848
                                (let ()
                                  (declare (not safe))
                                  (cons _e64477_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp65848))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65847))))
            (if (macro-unbound-global-exception? _exn64475_)
                (macro-unbound-global-exception-code _exn64475_)
                (let ((__tmp65845
                       (let ((__tmp65846
                              (let ()
                                (declare (not safe))
                                (cons _exn64475_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp65846))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65845))))))
    (define unbound-global-exception-rte
      (lambda (_exn64471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64471_))
            (let ((_e64473_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64471_ 'exception))))
              (if (macro-unbound-global-exception? _e64473_)
                  (macro-unbound-global-exception-rte _e64473_)
                  (let ((__tmp65851
                         (let ((__tmp65852
                                (let ()
                                  (declare (not safe))
                                  (cons _e64473_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp65852))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65851))))
            (if (macro-unbound-global-exception? _exn64471_)
                (macro-unbound-global-exception-rte _exn64471_)
                (let ((__tmp65849
                       (let ((__tmp65850
                              (let ()
                                (declare (not safe))
                                (cons _exn64471_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp65850))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65849))))))
    (define unbound-global-exception-variable
      (lambda (_exn64465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64465_))
            (let ((_e64468_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64465_ 'exception))))
              (if (macro-unbound-global-exception? _e64468_)
                  (macro-unbound-global-exception-variable _e64468_)
                  (let ((__tmp65855
                         (let ((__tmp65856
                                (let ()
                                  (declare (not safe))
                                  (cons _e64468_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp65856))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65855))))
            (if (macro-unbound-global-exception? _exn64465_)
                (macro-unbound-global-exception-variable _exn64465_)
                (let ((__tmp65853
                       (let ((__tmp65854
                              (let ()
                                (declare (not safe))
                                (cons _exn64465_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp65854))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65853))))))
    (define unbound-key-exception?
      (lambda (_exn64461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64461_))
            (let ((_e64463_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64461_ 'exception))))
              (macro-unbound-key-exception? _e64463_))
            (macro-unbound-key-exception? _exn64461_))))
    (define unbound-key-exception-arguments
      (lambda (_exn64457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64457_))
            (let ((_e64459_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64457_ 'exception))))
              (if (macro-unbound-key-exception? _e64459_)
                  (macro-unbound-key-exception-arguments _e64459_)
                  (let ((__tmp65859
                         (let ((__tmp65860
                                (let ()
                                  (declare (not safe))
                                  (cons _e64459_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp65860))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65859))))
            (if (macro-unbound-key-exception? _exn64457_)
                (macro-unbound-key-exception-arguments _exn64457_)
                (let ((__tmp65857
                       (let ((__tmp65858
                              (let ()
                                (declare (not safe))
                                (cons _exn64457_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp65858))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65857))))))
    (define unbound-key-exception-procedure
      (lambda (_exn64451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64451_))
            (let ((_e64454_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64451_ 'exception))))
              (if (macro-unbound-key-exception? _e64454_)
                  (macro-unbound-key-exception-procedure _e64454_)
                  (let ((__tmp65863
                         (let ((__tmp65864
                                (let ()
                                  (declare (not safe))
                                  (cons _e64454_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp65864))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65863))))
            (if (macro-unbound-key-exception? _exn64451_)
                (macro-unbound-key-exception-procedure _exn64451_)
                (let ((__tmp65861
                       (let ((__tmp65862
                              (let ()
                                (declare (not safe))
                                (cons _exn64451_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp65862))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65861))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn64447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64447_))
            (let ((_e64449_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64447_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e64449_))
            (macro-unbound-os-environment-variable-exception? _exn64447_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn64443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64443_))
            (let ((_e64445_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64443_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64445_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e64445_)
                  (let ((__tmp65867
                         (let ((__tmp65868
                                (let ()
                                  (declare (not safe))
                                  (cons _e64445_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp65868))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65867))))
            (if (macro-unbound-os-environment-variable-exception? _exn64443_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn64443_)
                (let ((__tmp65865
                       (let ((__tmp65866
                              (let ()
                                (declare (not safe))
                                (cons _exn64443_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp65866))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65865))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn64437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64437_))
            (let ((_e64440_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64437_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64440_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e64440_)
                  (let ((__tmp65871
                         (let ((__tmp65872
                                (let ()
                                  (declare (not safe))
                                  (cons _e64440_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp65872))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65871))))
            (if (macro-unbound-os-environment-variable-exception? _exn64437_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn64437_)
                (let ((__tmp65869
                       (let ((__tmp65870
                              (let ()
                                (declare (not safe))
                                (cons _exn64437_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp65870))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65869))))))
    (define unbound-serial-number-exception?
      (lambda (_exn64433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64433_))
            (let ((_e64435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64433_ 'exception))))
              (macro-unbound-serial-number-exception? _e64435_))
            (macro-unbound-serial-number-exception? _exn64433_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn64429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64429_))
            (let ((_e64431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64429_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64431_)
                  (macro-unbound-serial-number-exception-arguments _e64431_)
                  (let ((__tmp65875
                         (let ((__tmp65876
                                (let ()
                                  (declare (not safe))
                                  (cons _e64431_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp65876))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65875))))
            (if (macro-unbound-serial-number-exception? _exn64429_)
                (macro-unbound-serial-number-exception-arguments _exn64429_)
                (let ((__tmp65873
                       (let ((__tmp65874
                              (let ()
                                (declare (not safe))
                                (cons _exn64429_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp65874))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65873))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn64423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64423_))
            (let ((_e64426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64423_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64426_)
                  (macro-unbound-serial-number-exception-procedure _e64426_)
                  (let ((__tmp65879
                         (let ((__tmp65880
                                (let ()
                                  (declare (not safe))
                                  (cons _e64426_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp65880))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65879))))
            (if (macro-unbound-serial-number-exception? _exn64423_)
                (macro-unbound-serial-number-exception-procedure _exn64423_)
                (let ((__tmp65877
                       (let ((__tmp65878
                              (let ()
                                (declare (not safe))
                                (cons _exn64423_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp65878))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65877))))))
    (define uncaught-exception?
      (lambda (_exn64419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64419_))
            (let ((_e64421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64419_ 'exception))))
              (macro-uncaught-exception? _e64421_))
            (macro-uncaught-exception? _exn64419_))))
    (define uncaught-exception-arguments
      (lambda (_exn64415_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64415_))
            (let ((_e64417_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64415_ 'exception))))
              (if (macro-uncaught-exception? _e64417_)
                  (macro-uncaught-exception-arguments _e64417_)
                  (let ((__tmp65883
                         (let ((__tmp65884
                                (let ()
                                  (declare (not safe))
                                  (cons _e64417_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp65884))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65883))))
            (if (macro-uncaught-exception? _exn64415_)
                (macro-uncaught-exception-arguments _exn64415_)
                (let ((__tmp65881
                       (let ((__tmp65882
                              (let ()
                                (declare (not safe))
                                (cons _exn64415_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp65882))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65881))))))
    (define uncaught-exception-procedure
      (lambda (_exn64411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64411_))
            (let ((_e64413_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64411_ 'exception))))
              (if (macro-uncaught-exception? _e64413_)
                  (macro-uncaught-exception-procedure _e64413_)
                  (let ((__tmp65887
                         (let ((__tmp65888
                                (let ()
                                  (declare (not safe))
                                  (cons _e64413_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp65888))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65887))))
            (if (macro-uncaught-exception? _exn64411_)
                (macro-uncaught-exception-procedure _exn64411_)
                (let ((__tmp65885
                       (let ((__tmp65886
                              (let ()
                                (declare (not safe))
                                (cons _exn64411_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp65886))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65885))))))
    (define uncaught-exception-reason
      (lambda (_exn64405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64405_))
            (let ((_e64408_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64405_ 'exception))))
              (if (macro-uncaught-exception? _e64408_)
                  (macro-uncaught-exception-reason _e64408_)
                  (let ((__tmp65891
                         (let ((__tmp65892
                                (let ()
                                  (declare (not safe))
                                  (cons _e64408_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp65892))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65891))))
            (if (macro-uncaught-exception? _exn64405_)
                (macro-uncaught-exception-reason _exn64405_)
                (let ((__tmp65889
                       (let ((__tmp65890
                              (let ()
                                (declare (not safe))
                                (cons _exn64405_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp65890))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65889))))))
    (define uninitialized-thread-exception?
      (lambda (_exn64401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64401_))
            (let ((_e64403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64401_ 'exception))))
              (macro-uninitialized-thread-exception? _e64403_))
            (macro-uninitialized-thread-exception? _exn64401_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn64397_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64397_))
            (let ((_e64399_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64397_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64399_)
                  (macro-uninitialized-thread-exception-arguments _e64399_)
                  (let ((__tmp65895
                         (let ((__tmp65896
                                (let ()
                                  (declare (not safe))
                                  (cons _e64399_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp65896))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65895))))
            (if (macro-uninitialized-thread-exception? _exn64397_)
                (macro-uninitialized-thread-exception-arguments _exn64397_)
                (let ((__tmp65893
                       (let ((__tmp65894
                              (let ()
                                (declare (not safe))
                                (cons _exn64397_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp65894))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65893))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn64391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64391_))
            (let ((_e64394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64391_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64394_)
                  (macro-uninitialized-thread-exception-procedure _e64394_)
                  (let ((__tmp65899
                         (let ((__tmp65900
                                (let ()
                                  (declare (not safe))
                                  (cons _e64394_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp65900))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65899))))
            (if (macro-uninitialized-thread-exception? _exn64391_)
                (macro-uninitialized-thread-exception-procedure _exn64391_)
                (let ((__tmp65897
                       (let ((__tmp65898
                              (let ()
                                (declare (not safe))
                                (cons _exn64391_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp65898))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65897))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn64387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64387_))
            (let ((_e64389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64387_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e64389_))
            (macro-unknown-keyword-argument-exception? _exn64387_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn64383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64383_))
            (let ((_e64385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64383_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64385_)
                  (macro-unknown-keyword-argument-exception-arguments _e64385_)
                  (let ((__tmp65903
                         (let ((__tmp65904
                                (let ()
                                  (declare (not safe))
                                  (cons _e64385_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp65904))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65903))))
            (if (macro-unknown-keyword-argument-exception? _exn64383_)
                (macro-unknown-keyword-argument-exception-arguments _exn64383_)
                (let ((__tmp65901
                       (let ((__tmp65902
                              (let ()
                                (declare (not safe))
                                (cons _exn64383_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp65902))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65901))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn64377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64377_))
            (let ((_e64380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64377_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64380_)
                  (macro-unknown-keyword-argument-exception-procedure _e64380_)
                  (let ((__tmp65907
                         (let ((__tmp65908
                                (let ()
                                  (declare (not safe))
                                  (cons _e64380_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp65908))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65907))))
            (if (macro-unknown-keyword-argument-exception? _exn64377_)
                (macro-unknown-keyword-argument-exception-procedure _exn64377_)
                (let ((__tmp65905
                       (let ((__tmp65906
                              (let ()
                                (declare (not safe))
                                (cons _exn64377_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp65906))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65905))))))
    (define unterminated-process-exception?
      (lambda (_exn64373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64373_))
            (let ((_e64375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64373_ 'exception))))
              (macro-unterminated-process-exception? _e64375_))
            (macro-unterminated-process-exception? _exn64373_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn64369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64369_))
            (let ((_e64371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64369_ 'exception))))
              (if (macro-unterminated-process-exception? _e64371_)
                  (macro-unterminated-process-exception-arguments _e64371_)
                  (let ((__tmp65911
                         (let ((__tmp65912
                                (let ()
                                  (declare (not safe))
                                  (cons _e64371_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp65912))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65911))))
            (if (macro-unterminated-process-exception? _exn64369_)
                (macro-unterminated-process-exception-arguments _exn64369_)
                (let ((__tmp65909
                       (let ((__tmp65910
                              (let ()
                                (declare (not safe))
                                (cons _exn64369_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp65910))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65909))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn64363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64363_))
            (let ((_e64366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64363_ 'exception))))
              (if (macro-unterminated-process-exception? _e64366_)
                  (macro-unterminated-process-exception-procedure _e64366_)
                  (let ((__tmp65915
                         (let ((__tmp65916
                                (let ()
                                  (declare (not safe))
                                  (cons _e64366_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp65916))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65915))))
            (if (macro-unterminated-process-exception? _exn64363_)
                (macro-unterminated-process-exception-procedure _exn64363_)
                (let ((__tmp65913
                       (let ((__tmp65914
                              (let ()
                                (declare (not safe))
                                (cons _exn64363_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp65914))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65913))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn64359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64359_))
            (let ((_e64361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64359_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e64361_))
            (macro-wrong-number-of-arguments-exception? _exn64359_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn64355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64355_))
            (let ((_e64357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64355_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64357_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e64357_)
                  (let ((__tmp65919
                         (let ((__tmp65920
                                (let ()
                                  (declare (not safe))
                                  (cons _e64357_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp65920))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65919))))
            (if (macro-wrong-number-of-arguments-exception? _exn64355_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn64355_)
                (let ((__tmp65917
                       (let ((__tmp65918
                              (let ()
                                (declare (not safe))
                                (cons _exn64355_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp65918))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65917))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn64349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64349_))
            (let ((_e64352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64349_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64352_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e64352_)
                  (let ((__tmp65923
                         (let ((__tmp65924
                                (let ()
                                  (declare (not safe))
                                  (cons _e64352_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp65924))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65923))))
            (if (macro-wrong-number-of-arguments-exception? _exn64349_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn64349_)
                (let ((__tmp65921
                       (let ((__tmp65922
                              (let ()
                                (declare (not safe))
                                (cons _exn64349_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp65922))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65921))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn64345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64345_))
            (let ((_e64347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64345_ 'exception))))
              (macro-wrong-number-of-values-exception? _e64347_))
            (macro-wrong-number-of-values-exception? _exn64345_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn64341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64341_))
            (let ((_e64343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64341_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64343_)
                  (macro-wrong-number-of-values-exception-code _e64343_)
                  (let ((__tmp65927
                         (let ((__tmp65928
                                (let ()
                                  (declare (not safe))
                                  (cons _e64343_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp65928))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65927))))
            (if (macro-wrong-number-of-values-exception? _exn64341_)
                (macro-wrong-number-of-values-exception-code _exn64341_)
                (let ((__tmp65925
                       (let ((__tmp65926
                              (let ()
                                (declare (not safe))
                                (cons _exn64341_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp65926))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65925))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn64337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64337_))
            (let ((_e64339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64337_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64339_)
                  (macro-wrong-number-of-values-exception-rte _e64339_)
                  (let ((__tmp65931
                         (let ((__tmp65932
                                (let ()
                                  (declare (not safe))
                                  (cons _e64339_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp65932))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65931))))
            (if (macro-wrong-number-of-values-exception? _exn64337_)
                (macro-wrong-number-of-values-exception-rte _exn64337_)
                (let ((__tmp65929
                       (let ((__tmp65930
                              (let ()
                                (declare (not safe))
                                (cons _exn64337_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp65930))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65929))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn64331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64331_))
            (let ((_e64334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64331_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64334_)
                  (macro-wrong-number-of-values-exception-vals _e64334_)
                  (let ((__tmp65935
                         (let ((__tmp65936
                                (let ()
                                  (declare (not safe))
                                  (cons _e64334_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp65936))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65935))))
            (if (macro-wrong-number-of-values-exception? _exn64331_)
                (macro-wrong-number-of-values-exception-vals _exn64331_)
                (let ((__tmp65933
                       (let ((__tmp65934
                              (let ()
                                (declare (not safe))
                                (cons _exn64331_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp65934))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65933))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn64325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64325_))
            (let ((_e64328_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64325_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e64328_))
            (macro-wrong-processor-c-return-exception? _exn64325_))))))
