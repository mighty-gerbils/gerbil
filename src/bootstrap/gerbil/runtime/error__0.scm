(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708370113)
  (begin
    (define Exception::t
      (let ((__tmp65508 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp65508
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args65479_ (apply make-instance Exception::t _$args65479_)))
    (define StackTrace::t
      (let ((__tmp65509 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp65509
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args65476_ (apply make-instance StackTrace::t _$args65476_)))
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
      (let ((__tmp65510 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp65510
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args65473_ (apply make-instance Error::t _$args65473_)))
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
      (let ((__tmp65511 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp65511
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args65470_
        (apply make-instance RuntimeException::t _$args65470_)))
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
      (lambda (_exn65465_ _continue65466_)
        (let ((_exn65468_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn65465_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn65468_ _continue65466_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn65461_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn65461_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn65461_ 'continuation))
                '#!void
                (let ((__tmp65512
                       (lambda (_cont65463_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn65461_
                            'continuation
                            _cont65463_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp65512)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn65461_))))
    (define error
      (lambda (_message65458_ . _irritants65459_)
        (raise (let ((__obj65502
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj65502
                  _message65458_
                  'irritants:
                  _irritants65459_)
                 __obj65502))))
    (define with-exception-handler
      (lambda (_handler65451_ _thunk65452_)
        (if (let () (declare (not safe)) (procedure? _handler65451_))
            '#!void
            (raise (let ((__obj65503
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65503
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65451_ '())))
                     __obj65503)))
        (if (let () (declare (not safe)) (procedure? _thunk65452_))
            '#!void
            (raise (let ((__obj65504
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65504
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65452_ '())))
                     __obj65504)))
        (let ((__tmp65513
               (lambda (_exn65454_)
                 (let ((_exn65456_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn65454_))))
                   (_handler65451_ _exn65456_)))))
          (declare (not safe))
          (##with-exception-handler __tmp65513 _thunk65452_))))
    (define with-catch
      (lambda (_handler65444_ _thunk65445_)
        (if (let () (declare (not safe)) (procedure? _handler65444_))
            '#!void
            (raise (let ((__obj65505
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65505
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65444_ '())))
                     __obj65505)))
        (if (let () (declare (not safe)) (procedure? _thunk65445_))
            '#!void
            (raise (let ((__obj65506
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65506
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65445_ '())))
                     __obj65506)))
        (let ((__tmp65514
               (lambda (_cont65447_)
                 (with-exception-handler
                  (lambda (_exn65449_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont65447_
                       _handler65444_
                       _exn65449_)))
                  _thunk65445_))))
          (declare (not safe))
          (##continuation-capture __tmp65514))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn65435_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn65435_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn65435_)))
            _exn65435_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn65435_))
                _exn65435_
                (if (macro-exception? _exn65435_)
                    (let ((_rte65440_
                           (let ((__obj65507
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj65507
                                _exn65435_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj65507)))
                      (let ((__tmp65515
                             (lambda (_cont65442_)
                               (let ((__tmp65516
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont65442_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte65440_
                                  'continuation
                                  __tmp65516)))))
                        (declare (not safe))
                        (##continuation-capture __tmp65515))
                      _rte65440_)
                    _exn65435_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj65430_)
        (let ((_$e65432_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj65430_))))
          (if _$e65432_
              _$e65432_
              (let () (declare (not safe)) (error-exception? _obj65430_))))))
    (define error-message
      (lambda (_obj65428_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65428_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65428_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj65428_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj65428_))
                '#f))))
    (define error-irritants
      (lambda (_obj65426_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65426_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65426_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj65426_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj65426_))
                '#f))))
    (define error-trace
      (lambda (_obj65424_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65424_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65424_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e65406_ _port65407_)
        (let ((_$e65409_
               (let ()
                 (declare (not safe))
                 (method-ref _e65406_ 'display-exception))))
          (if _$e65409_
              ((lambda (_f65412_) (_f65412_ _e65406_ _port65407_)) _$e65409_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e65406_ _port65407_))))))
    (define display-exception__0
      (lambda (_e65417_)
        (let ((_port65419_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e65417_ _port65419_))))
    (define display-exception
      (lambda _g65518_
        (let ((_g65517_ (let () (declare (not safe)) (##length _g65518_))))
          (cond ((let () (declare (not safe)) (##fx= _g65517_ 1))
                 (apply (lambda (_e65417_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e65417_)))
                        _g65518_))
                ((let () (declare (not safe)) (##fx= _g65517_ 2))
                 (apply (lambda (_e65421_ _port65422_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e65421_ _port65422_)))
                        _g65518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g65518_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self65395_ _message65396_ . _rest65397_)
        (let ((_message65403_
               (if (let () (declare (not safe)) (string? _message65396_))
                   _message65396_
                   (call-with-output-string
                    '""
                    (lambda (_g6539865400_)
                      (display _message65396_ _g6539865400_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self65395_ 'message _message65403_))
          (apply class-instance-init! _self65395_ _rest65397_))))
    (define Error:::init!::specialize
      (lambda (__t65481)
        (let ((__message65482
               (let ((__tmp65483
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65481 'message))))
                 (if __tmp65483
                     __tmp65483
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65395_ _message65396_ . _rest65397_)
            (let ((_message65403_
                   (if (let () (declare (not safe)) (string? _message65396_))
                       _message65396_
                       (call-with-output-string
                        '""
                        (lambda (_g6539865400_)
                          (display _message65396_ _g6539865400_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self65395_
                 _message65403_
                 __message65482
                 __t65481
                 '#f))
              (apply class-instance-init! _self65395_ _rest65397_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self65253_ _port65254_)
        (let ((_tmp-port65256_ (open-output-string))
              (_display-error-newline65257_
               (> (output-port-column _port65254_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65256_))
          (let ((__tmp65519
                 (lambda ()
                   (if _display-error-newline65257_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e65260_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65253_ 'where))))
                     (if _$e65260_ (display _$e65260_) (display '"?")))
                   (let ((__tmp65520
                          (let ((__tmp65521 (object-type _self65253_)))
                            (declare (not safe))
                            (##type-name __tmp65521))))
                     (declare (not safe))
                     (display* '" [" __tmp65520 '"]: "))
                   (let ((__tmp65522
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65253_ 'message))))
                     (declare (not safe))
                     (displayln __tmp65522))
                   (let ((_irritants65263_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65253_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants65263_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj65265_)
                              (write _obj65265_)
                              (write-char '#\space))
                            _irritants65263_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self65253_))
                            (dump-stack-trace?))
                       (let ((_cont6526665268_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self65253_
                                 'continuation))))
                         (if _cont6526665268_
                             (let ((_cont65271_ _cont6526665268_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont65271_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp65519
             current-output-port
             _tmp-port65256_))
          (let ((__tmp65523 (get-output-string _tmp-port65256_)))
            (declare (not safe))
            (##write-string __tmp65523 _port65254_)))))
    (define Error::display-exception::specialize
      (lambda (__t65484)
        (let ((__where65485
               (let ((__tmp65489
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65484 'where))))
                 (if __tmp65489
                     __tmp65489
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__continuation65486
               (let ((__tmp65490
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65484 'continuation))))
                 (if __tmp65490
                     __tmp65490
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__message65487
               (let ((__tmp65491
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65484 'message))))
                 (if __tmp65491
                     __tmp65491
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__irritants65488
               (let ((__tmp65492
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65484 'irritants))))
                 (if __tmp65492
                     __tmp65492
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants))))))
          (lambda (_self65253_ _port65254_)
            (let ((_tmp-port65256_ (open-output-string))
                  (_display-error-newline65257_
                   (> (output-port-column _port65254_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65256_))
              (let ((__tmp65524
                     (lambda ()
                       (if _display-error-newline65257_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e65260_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65253_
                                 __where65485
                                 __t65484
                                 '#f))))
                         (if _$e65260_ (display _$e65260_) (display '"?")))
                       (let ((__tmp65525
                              (let ((__tmp65526 (object-type _self65253_)))
                                (declare (not safe))
                                (##type-name __tmp65526))))
                         (declare (not safe))
                         (display* '" [" __tmp65525 '"]: "))
                       (let ((__tmp65527
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65253_
                                 __message65487
                                 __t65484
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp65527))
                       (let ((_irritants65263_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65253_
                                 __irritants65488
                                 __t65484
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants65263_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj65265_)
                                  (write _obj65265_)
                                  (write-char '#\space))
                                _irritants65263_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self65253_))
                                (dump-stack-trace?))
                           (let ((_cont6526665268_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self65253_
                                     __continuation65486
                                     __t65484
                                     '#f))))
                             (if _cont6526665268_
                                 (let ((_cont65271_ _cont6526665268_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont65271_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp65524
                 current-output-port
                 _tmp-port65256_))
              (let ((__tmp65528 (get-output-string _tmp-port65256_)))
                (declare (not safe))
                (##write-string __tmp65528 _port65254_)))))))
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
      (lambda (_self65120_ _port65121_)
        (let ((_tmp-port65123_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65123_))
          (let ((__tmp65529
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self65120_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp65529 _tmp-port65123_))
          (if (dump-stack-trace?)
              (let ((_cont6512465126_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self65120_ 'continuation))))
                (if _cont6512465126_
                    (let ((_cont65129_ _cont6512465126_))
                      (display '"--- continuation backtrace:" _tmp-port65123_)
                      (newline _tmp-port65123_)
                      (display-continuation-backtrace
                       _cont65129_
                       _tmp-port65123_))
                    '#f))
              '#!void)
          (let ((__tmp65530 (get-output-string _tmp-port65123_)))
            (declare (not safe))
            (##write-string __tmp65530 _port65121_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t65493)
        (let ((__exception65494
               (let ((__tmp65496
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65493 'exception))))
                 (if __tmp65496
                     __tmp65496
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation65495
               (let ((__tmp65497
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65493 'continuation))))
                 (if __tmp65497
                     __tmp65497
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self65120_ _port65121_)
            (let ((_tmp-port65123_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65123_))
              (let ((__tmp65531
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self65120_
                        __exception65494
                        __t65493
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp65531 _tmp-port65123_))
              (if (dump-stack-trace?)
                  (let ((_cont6512465126_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self65120_
                            __continuation65495
                            __t65493
                            '#f))))
                    (if _cont6512465126_
                        (let ((_cont65129_ _cont6512465126_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port65123_)
                          (newline _tmp-port65123_)
                          (display-continuation-backtrace
                           _cont65129_
                           _tmp-port65123_))
                        '#f))
                  '#!void)
              (let ((__tmp65532 (get-output-string _tmp-port65123_)))
                (declare (not safe))
                (##write-string __tmp65532 _port65121_)))))))
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
      (lambda (_port64992_)
        (if (macro-character-port? _port64992_)
            (let ((_old-width64994_
                   (macro-character-port-output-width _port64992_)))
              (macro-character-port-output-width-set!
               _port64992_
               (lambda (_port64996_) '256))
              _old-width64994_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port64989_ _old-width64990_)
        (if (macro-character-port? _port64989_)
            (macro-character-port-output-width-set!
             _port64989_
             _old-width64990_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e64987_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e64987_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn64981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64981_))
            (let ((_e64984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64981_ 'exception))))
              (macro-abandoned-mutex-exception? _e64984_))
            (macro-abandoned-mutex-exception? _exn64981_))))
    (define cfun-conversion-exception?
      (lambda (_exn64977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64977_))
            (let ((_e64979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64977_ 'exception))))
              (macro-cfun-conversion-exception? _e64979_))
            (macro-cfun-conversion-exception? _exn64977_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn64973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64973_))
            (let ((_e64975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64973_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64975_)
                  (macro-cfun-conversion-exception-arguments _e64975_)
                  (let ((__tmp65535
                         (let ((__tmp65536
                                (let ()
                                  (declare (not safe))
                                  (cons _e64975_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp65536))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65535))))
            (if (macro-cfun-conversion-exception? _exn64973_)
                (macro-cfun-conversion-exception-arguments _exn64973_)
                (let ((__tmp65533
                       (let ((__tmp65534
                              (let ()
                                (declare (not safe))
                                (cons _exn64973_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp65534))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65533))))))
    (define cfun-conversion-exception-code
      (lambda (_exn64969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64969_))
            (let ((_e64971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64969_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64971_)
                  (macro-cfun-conversion-exception-code _e64971_)
                  (let ((__tmp65539
                         (let ((__tmp65540
                                (let ()
                                  (declare (not safe))
                                  (cons _e64971_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp65540))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65539))))
            (if (macro-cfun-conversion-exception? _exn64969_)
                (macro-cfun-conversion-exception-code _exn64969_)
                (let ((__tmp65537
                       (let ((__tmp65538
                              (let ()
                                (declare (not safe))
                                (cons _exn64969_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp65538))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65537))))))
    (define cfun-conversion-exception-message
      (lambda (_exn64965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64965_))
            (let ((_e64967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64965_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64967_)
                  (macro-cfun-conversion-exception-message _e64967_)
                  (let ((__tmp65543
                         (let ((__tmp65544
                                (let ()
                                  (declare (not safe))
                                  (cons _e64967_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp65544))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65543))))
            (if (macro-cfun-conversion-exception? _exn64965_)
                (macro-cfun-conversion-exception-message _exn64965_)
                (let ((__tmp65541
                       (let ((__tmp65542
                              (let ()
                                (declare (not safe))
                                (cons _exn64965_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp65542))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65541))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn64959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64959_))
            (let ((_e64962_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64959_ 'exception))))
              (if (macro-cfun-conversion-exception? _e64962_)
                  (macro-cfun-conversion-exception-procedure _e64962_)
                  (let ((__tmp65547
                         (let ((__tmp65548
                                (let ()
                                  (declare (not safe))
                                  (cons _e64962_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp65548))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65547))))
            (if (macro-cfun-conversion-exception? _exn64959_)
                (macro-cfun-conversion-exception-procedure _exn64959_)
                (let ((__tmp65545
                       (let ((__tmp65546
                              (let ()
                                (declare (not safe))
                                (cons _exn64959_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp65546))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65545))))))
    (define datum-parsing-exception?
      (lambda (_exn64955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64955_))
            (let ((_e64957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64955_ 'exception))))
              (macro-datum-parsing-exception? _e64957_))
            (macro-datum-parsing-exception? _exn64955_))))
    (define datum-parsing-exception-kind
      (lambda (_exn64951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64951_))
            (let ((_e64953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64951_ 'exception))))
              (if (macro-datum-parsing-exception? _e64953_)
                  (macro-datum-parsing-exception-kind _e64953_)
                  (let ((__tmp65551
                         (let ((__tmp65552
                                (let ()
                                  (declare (not safe))
                                  (cons _e64953_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp65552))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65551))))
            (if (macro-datum-parsing-exception? _exn64951_)
                (macro-datum-parsing-exception-kind _exn64951_)
                (let ((__tmp65549
                       (let ((__tmp65550
                              (let ()
                                (declare (not safe))
                                (cons _exn64951_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp65550))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65549))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn64947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64947_))
            (let ((_e64949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64947_ 'exception))))
              (if (macro-datum-parsing-exception? _e64949_)
                  (macro-datum-parsing-exception-parameters _e64949_)
                  (let ((__tmp65555
                         (let ((__tmp65556
                                (let ()
                                  (declare (not safe))
                                  (cons _e64949_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp65556))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65555))))
            (if (macro-datum-parsing-exception? _exn64947_)
                (macro-datum-parsing-exception-parameters _exn64947_)
                (let ((__tmp65553
                       (let ((__tmp65554
                              (let ()
                                (declare (not safe))
                                (cons _exn64947_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp65554))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65553))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn64941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64941_))
            (let ((_e64944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64941_ 'exception))))
              (if (macro-datum-parsing-exception? _e64944_)
                  (macro-datum-parsing-exception-readenv _e64944_)
                  (let ((__tmp65559
                         (let ((__tmp65560
                                (let ()
                                  (declare (not safe))
                                  (cons _e64944_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp65560))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65559))))
            (if (macro-datum-parsing-exception? _exn64941_)
                (macro-datum-parsing-exception-readenv _exn64941_)
                (let ((__tmp65557
                       (let ((__tmp65558
                              (let ()
                                (declare (not safe))
                                (cons _exn64941_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp65558))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65557))))))
    (define deadlock-exception?
      (lambda (_exn64935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64935_))
            (let ((_e64938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64935_ 'exception))))
              (macro-deadlock-exception? _e64938_))
            (macro-deadlock-exception? _exn64935_))))
    (define divide-by-zero-exception?
      (lambda (_exn64931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64931_))
            (let ((_e64933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64931_ 'exception))))
              (macro-divide-by-zero-exception? _e64933_))
            (macro-divide-by-zero-exception? _exn64931_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn64927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64927_))
            (let ((_e64929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64927_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64929_)
                  (macro-divide-by-zero-exception-arguments _e64929_)
                  (let ((__tmp65563
                         (let ((__tmp65564
                                (let ()
                                  (declare (not safe))
                                  (cons _e64929_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp65564))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65563))))
            (if (macro-divide-by-zero-exception? _exn64927_)
                (macro-divide-by-zero-exception-arguments _exn64927_)
                (let ((__tmp65561
                       (let ((__tmp65562
                              (let ()
                                (declare (not safe))
                                (cons _exn64927_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp65562))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65561))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn64921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64921_))
            (let ((_e64924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64921_ 'exception))))
              (if (macro-divide-by-zero-exception? _e64924_)
                  (macro-divide-by-zero-exception-procedure _e64924_)
                  (let ((__tmp65567
                         (let ((__tmp65568
                                (let ()
                                  (declare (not safe))
                                  (cons _e64924_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp65568))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65567))))
            (if (macro-divide-by-zero-exception? _exn64921_)
                (macro-divide-by-zero-exception-procedure _exn64921_)
                (let ((__tmp65565
                       (let ((__tmp65566
                              (let ()
                                (declare (not safe))
                                (cons _exn64921_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp65566))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65565))))))
    (define error-exception?
      (lambda (_exn64917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64917_))
            (let ((_e64919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64917_ 'exception))))
              (macro-error-exception? _e64919_))
            (macro-error-exception? _exn64917_))))
    (define error-exception-message
      (lambda (_exn64913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64913_))
            (let ((_e64915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64913_ 'exception))))
              (if (macro-error-exception? _e64915_)
                  (macro-error-exception-message _e64915_)
                  (let ((__tmp65571
                         (let ((__tmp65572
                                (let ()
                                  (declare (not safe))
                                  (cons _e64915_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp65572))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65571))))
            (if (macro-error-exception? _exn64913_)
                (macro-error-exception-message _exn64913_)
                (let ((__tmp65569
                       (let ((__tmp65570
                              (let ()
                                (declare (not safe))
                                (cons _exn64913_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp65570))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65569))))))
    (define error-exception-parameters
      (lambda (_exn64907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64907_))
            (let ((_e64910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64907_ 'exception))))
              (if (macro-error-exception? _e64910_)
                  (macro-error-exception-parameters _e64910_)
                  (let ((__tmp65575
                         (let ((__tmp65576
                                (let ()
                                  (declare (not safe))
                                  (cons _e64910_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp65576))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65575))))
            (if (macro-error-exception? _exn64907_)
                (macro-error-exception-parameters _exn64907_)
                (let ((__tmp65573
                       (let ((__tmp65574
                              (let ()
                                (declare (not safe))
                                (cons _exn64907_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp65574))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65573))))))
    (define expression-parsing-exception?
      (lambda (_exn64903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64903_))
            (let ((_e64905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64903_ 'exception))))
              (macro-expression-parsing-exception? _e64905_))
            (macro-expression-parsing-exception? _exn64903_))))
    (define expression-parsing-exception-kind
      (lambda (_exn64899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64899_))
            (let ((_e64901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64899_ 'exception))))
              (if (macro-expression-parsing-exception? _e64901_)
                  (macro-expression-parsing-exception-kind _e64901_)
                  (let ((__tmp65579
                         (let ((__tmp65580
                                (let ()
                                  (declare (not safe))
                                  (cons _e64901_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp65580))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65579))))
            (if (macro-expression-parsing-exception? _exn64899_)
                (macro-expression-parsing-exception-kind _exn64899_)
                (let ((__tmp65577
                       (let ((__tmp65578
                              (let ()
                                (declare (not safe))
                                (cons _exn64899_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp65578))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65577))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn64895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64895_))
            (let ((_e64897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64895_ 'exception))))
              (if (macro-expression-parsing-exception? _e64897_)
                  (macro-expression-parsing-exception-parameters _e64897_)
                  (let ((__tmp65583
                         (let ((__tmp65584
                                (let ()
                                  (declare (not safe))
                                  (cons _e64897_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp65584))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65583))))
            (if (macro-expression-parsing-exception? _exn64895_)
                (macro-expression-parsing-exception-parameters _exn64895_)
                (let ((__tmp65581
                       (let ((__tmp65582
                              (let ()
                                (declare (not safe))
                                (cons _exn64895_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp65582))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65581))))))
    (define expression-parsing-exception-source
      (lambda (_exn64889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64889_))
            (let ((_e64892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64889_ 'exception))))
              (if (macro-expression-parsing-exception? _e64892_)
                  (macro-expression-parsing-exception-source _e64892_)
                  (let ((__tmp65587
                         (let ((__tmp65588
                                (let ()
                                  (declare (not safe))
                                  (cons _e64892_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp65588))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65587))))
            (if (macro-expression-parsing-exception? _exn64889_)
                (macro-expression-parsing-exception-source _exn64889_)
                (let ((__tmp65585
                       (let ((__tmp65586
                              (let ()
                                (declare (not safe))
                                (cons _exn64889_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp65586))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65585))))))
    (define file-exists-exception?
      (lambda (_exn64885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64885_))
            (let ((_e64887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64885_ 'exception))))
              (macro-file-exists-exception? _e64887_))
            (macro-file-exists-exception? _exn64885_))))
    (define file-exists-exception-arguments
      (lambda (_exn64881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64881_))
            (let ((_e64883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64881_ 'exception))))
              (if (macro-file-exists-exception? _e64883_)
                  (macro-file-exists-exception-arguments _e64883_)
                  (let ((__tmp65591
                         (let ((__tmp65592
                                (let ()
                                  (declare (not safe))
                                  (cons _e64883_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp65592))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65591))))
            (if (macro-file-exists-exception? _exn64881_)
                (macro-file-exists-exception-arguments _exn64881_)
                (let ((__tmp65589
                       (let ((__tmp65590
                              (let ()
                                (declare (not safe))
                                (cons _exn64881_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp65590))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65589))))))
    (define file-exists-exception-procedure
      (lambda (_exn64875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64875_))
            (let ((_e64878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64875_ 'exception))))
              (if (macro-file-exists-exception? _e64878_)
                  (macro-file-exists-exception-procedure _e64878_)
                  (let ((__tmp65595
                         (let ((__tmp65596
                                (let ()
                                  (declare (not safe))
                                  (cons _e64878_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp65596))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65595))))
            (if (macro-file-exists-exception? _exn64875_)
                (macro-file-exists-exception-procedure _exn64875_)
                (let ((__tmp65593
                       (let ((__tmp65594
                              (let ()
                                (declare (not safe))
                                (cons _exn64875_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp65594))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65593))))))
    (define fixnum-overflow-exception?
      (lambda (_exn64871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64871_))
            (let ((_e64873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64871_ 'exception))))
              (macro-fixnum-overflow-exception? _e64873_))
            (macro-fixnum-overflow-exception? _exn64871_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn64867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64867_))
            (let ((_e64869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64867_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64869_)
                  (macro-fixnum-overflow-exception-arguments _e64869_)
                  (let ((__tmp65599
                         (let ((__tmp65600
                                (let ()
                                  (declare (not safe))
                                  (cons _e64869_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp65600))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65599))))
            (if (macro-fixnum-overflow-exception? _exn64867_)
                (macro-fixnum-overflow-exception-arguments _exn64867_)
                (let ((__tmp65597
                       (let ((__tmp65598
                              (let ()
                                (declare (not safe))
                                (cons _exn64867_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp65598))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65597))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn64861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64861_))
            (let ((_e64864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64861_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e64864_)
                  (macro-fixnum-overflow-exception-procedure _e64864_)
                  (let ((__tmp65603
                         (let ((__tmp65604
                                (let ()
                                  (declare (not safe))
                                  (cons _e64864_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp65604))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65603))))
            (if (macro-fixnum-overflow-exception? _exn64861_)
                (macro-fixnum-overflow-exception-procedure _exn64861_)
                (let ((__tmp65601
                       (let ((__tmp65602
                              (let ()
                                (declare (not safe))
                                (cons _exn64861_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp65602))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65601))))))
    (define heap-overflow-exception?
      (lambda (_exn64855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64855_))
            (let ((_e64858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64855_ 'exception))))
              (macro-heap-overflow-exception? _e64858_))
            (macro-heap-overflow-exception? _exn64855_))))
    (define inactive-thread-exception?
      (lambda (_exn64851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64851_))
            (let ((_e64853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64851_ 'exception))))
              (macro-inactive-thread-exception? _e64853_))
            (macro-inactive-thread-exception? _exn64851_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn64847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64847_))
            (let ((_e64849_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64847_ 'exception))))
              (if (macro-inactive-thread-exception? _e64849_)
                  (macro-inactive-thread-exception-arguments _e64849_)
                  (let ((__tmp65607
                         (let ((__tmp65608
                                (let ()
                                  (declare (not safe))
                                  (cons _e64849_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp65608))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65607))))
            (if (macro-inactive-thread-exception? _exn64847_)
                (macro-inactive-thread-exception-arguments _exn64847_)
                (let ((__tmp65605
                       (let ((__tmp65606
                              (let ()
                                (declare (not safe))
                                (cons _exn64847_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp65606))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65605))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn64841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64841_))
            (let ((_e64844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64841_ 'exception))))
              (if (macro-inactive-thread-exception? _e64844_)
                  (macro-inactive-thread-exception-procedure _e64844_)
                  (let ((__tmp65611
                         (let ((__tmp65612
                                (let ()
                                  (declare (not safe))
                                  (cons _e64844_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp65612))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65611))))
            (if (macro-inactive-thread-exception? _exn64841_)
                (macro-inactive-thread-exception-procedure _exn64841_)
                (let ((__tmp65609
                       (let ((__tmp65610
                              (let ()
                                (declare (not safe))
                                (cons _exn64841_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp65610))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65609))))))
    (define initialized-thread-exception?
      (lambda (_exn64837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64837_))
            (let ((_e64839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64837_ 'exception))))
              (macro-initialized-thread-exception? _e64839_))
            (macro-initialized-thread-exception? _exn64837_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn64833_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64833_))
            (let ((_e64835_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64833_ 'exception))))
              (if (macro-initialized-thread-exception? _e64835_)
                  (macro-initialized-thread-exception-arguments _e64835_)
                  (let ((__tmp65615
                         (let ((__tmp65616
                                (let ()
                                  (declare (not safe))
                                  (cons _e64835_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp65616))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65615))))
            (if (macro-initialized-thread-exception? _exn64833_)
                (macro-initialized-thread-exception-arguments _exn64833_)
                (let ((__tmp65613
                       (let ((__tmp65614
                              (let ()
                                (declare (not safe))
                                (cons _exn64833_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp65614))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65613))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn64827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64827_))
            (let ((_e64830_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64827_ 'exception))))
              (if (macro-initialized-thread-exception? _e64830_)
                  (macro-initialized-thread-exception-procedure _e64830_)
                  (let ((__tmp65619
                         (let ((__tmp65620
                                (let ()
                                  (declare (not safe))
                                  (cons _e64830_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp65620))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65619))))
            (if (macro-initialized-thread-exception? _exn64827_)
                (macro-initialized-thread-exception-procedure _exn64827_)
                (let ((__tmp65617
                       (let ((__tmp65618
                              (let ()
                                (declare (not safe))
                                (cons _exn64827_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp65618))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65617))))))
    (define invalid-hash-number-exception?
      (lambda (_exn64823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64823_))
            (let ((_e64825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64823_ 'exception))))
              (macro-invalid-hash-number-exception? _e64825_))
            (macro-invalid-hash-number-exception? _exn64823_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn64819_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64819_))
            (let ((_e64821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64819_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64821_)
                  (macro-invalid-hash-number-exception-arguments _e64821_)
                  (let ((__tmp65623
                         (let ((__tmp65624
                                (let ()
                                  (declare (not safe))
                                  (cons _e64821_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp65624))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65623))))
            (if (macro-invalid-hash-number-exception? _exn64819_)
                (macro-invalid-hash-number-exception-arguments _exn64819_)
                (let ((__tmp65621
                       (let ((__tmp65622
                              (let ()
                                (declare (not safe))
                                (cons _exn64819_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp65622))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65621))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn64813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64813_))
            (let ((_e64816_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64813_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64816_)
                  (macro-invalid-hash-number-exception-procedure _e64816_)
                  (let ((__tmp65627
                         (let ((__tmp65628
                                (let ()
                                  (declare (not safe))
                                  (cons _e64816_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp65628))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65627))))
            (if (macro-invalid-hash-number-exception? _exn64813_)
                (macro-invalid-hash-number-exception-procedure _exn64813_)
                (let ((__tmp65625
                       (let ((__tmp65626
                              (let ()
                                (declare (not safe))
                                (cons _exn64813_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp65626))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65625))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn64809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64809_))
            (let ((_e64811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64809_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e64811_))
            (macro-invalid-utf8-encoding-exception? _exn64809_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn64805_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64805_))
            (let ((_e64807_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64805_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64807_)
                  (macro-invalid-utf8-encoding-exception-arguments _e64807_)
                  (let ((__tmp65631
                         (let ((__tmp65632
                                (let ()
                                  (declare (not safe))
                                  (cons _e64807_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp65632))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65631))))
            (if (macro-invalid-utf8-encoding-exception? _exn64805_)
                (macro-invalid-utf8-encoding-exception-arguments _exn64805_)
                (let ((__tmp65629
                       (let ((__tmp65630
                              (let ()
                                (declare (not safe))
                                (cons _exn64805_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp65630))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65629))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn64799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64799_))
            (let ((_e64802_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64799_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64802_)
                  (macro-invalid-utf8-encoding-exception-procedure _e64802_)
                  (let ((__tmp65635
                         (let ((__tmp65636
                                (let ()
                                  (declare (not safe))
                                  (cons _e64802_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp65636))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65635))))
            (if (macro-invalid-utf8-encoding-exception? _exn64799_)
                (macro-invalid-utf8-encoding-exception-procedure _exn64799_)
                (let ((__tmp65633
                       (let ((__tmp65634
                              (let ()
                                (declare (not safe))
                                (cons _exn64799_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp65634))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65633))))))
    (define join-timeout-exception?
      (lambda (_exn64795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64795_))
            (let ((_e64797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64795_ 'exception))))
              (macro-join-timeout-exception? _e64797_))
            (macro-join-timeout-exception? _exn64795_))))
    (define join-timeout-exception-arguments
      (lambda (_exn64791_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64791_))
            (let ((_e64793_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64791_ 'exception))))
              (if (macro-join-timeout-exception? _e64793_)
                  (macro-join-timeout-exception-arguments _e64793_)
                  (let ((__tmp65639
                         (let ((__tmp65640
                                (let ()
                                  (declare (not safe))
                                  (cons _e64793_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp65640))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65639))))
            (if (macro-join-timeout-exception? _exn64791_)
                (macro-join-timeout-exception-arguments _exn64791_)
                (let ((__tmp65637
                       (let ((__tmp65638
                              (let ()
                                (declare (not safe))
                                (cons _exn64791_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp65638))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65637))))))
    (define join-timeout-exception-procedure
      (lambda (_exn64785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64785_))
            (let ((_e64788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64785_ 'exception))))
              (if (macro-join-timeout-exception? _e64788_)
                  (macro-join-timeout-exception-procedure _e64788_)
                  (let ((__tmp65643
                         (let ((__tmp65644
                                (let ()
                                  (declare (not safe))
                                  (cons _e64788_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp65644))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65643))))
            (if (macro-join-timeout-exception? _exn64785_)
                (macro-join-timeout-exception-procedure _exn64785_)
                (let ((__tmp65641
                       (let ((__tmp65642
                              (let ()
                                (declare (not safe))
                                (cons _exn64785_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp65642))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65641))))))
    (define keyword-expected-exception?
      (lambda (_exn64781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64781_))
            (let ((_e64783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64781_ 'exception))))
              (macro-keyword-expected-exception? _e64783_))
            (macro-keyword-expected-exception? _exn64781_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn64777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64777_))
            (let ((_e64779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64777_ 'exception))))
              (if (macro-keyword-expected-exception? _e64779_)
                  (macro-keyword-expected-exception-arguments _e64779_)
                  (let ((__tmp65647
                         (let ((__tmp65648
                                (let ()
                                  (declare (not safe))
                                  (cons _e64779_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp65648))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65647))))
            (if (macro-keyword-expected-exception? _exn64777_)
                (macro-keyword-expected-exception-arguments _exn64777_)
                (let ((__tmp65645
                       (let ((__tmp65646
                              (let ()
                                (declare (not safe))
                                (cons _exn64777_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp65646))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65645))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn64771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64771_))
            (let ((_e64774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64771_ 'exception))))
              (if (macro-keyword-expected-exception? _e64774_)
                  (macro-keyword-expected-exception-procedure _e64774_)
                  (let ((__tmp65651
                         (let ((__tmp65652
                                (let ()
                                  (declare (not safe))
                                  (cons _e64774_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp65652))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65651))))
            (if (macro-keyword-expected-exception? _exn64771_)
                (macro-keyword-expected-exception-procedure _exn64771_)
                (let ((__tmp65649
                       (let ((__tmp65650
                              (let ()
                                (declare (not safe))
                                (cons _exn64771_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp65650))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65649))))))
    (define length-mismatch-exception?
      (lambda (_exn64767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64767_))
            (let ((_e64769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64767_ 'exception))))
              (macro-length-mismatch-exception? _e64769_))
            (macro-length-mismatch-exception? _exn64767_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn64763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64763_))
            (let ((_e64765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64763_ 'exception))))
              (if (macro-length-mismatch-exception? _e64765_)
                  (macro-length-mismatch-exception-arg-id _e64765_)
                  (let ((__tmp65655
                         (let ((__tmp65656
                                (let ()
                                  (declare (not safe))
                                  (cons _e64765_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp65656))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65655))))
            (if (macro-length-mismatch-exception? _exn64763_)
                (macro-length-mismatch-exception-arg-id _exn64763_)
                (let ((__tmp65653
                       (let ((__tmp65654
                              (let ()
                                (declare (not safe))
                                (cons _exn64763_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp65654))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65653))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn64759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64759_))
            (let ((_e64761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64759_ 'exception))))
              (if (macro-length-mismatch-exception? _e64761_)
                  (macro-length-mismatch-exception-arguments _e64761_)
                  (let ((__tmp65659
                         (let ((__tmp65660
                                (let ()
                                  (declare (not safe))
                                  (cons _e64761_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp65660))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65659))))
            (if (macro-length-mismatch-exception? _exn64759_)
                (macro-length-mismatch-exception-arguments _exn64759_)
                (let ((__tmp65657
                       (let ((__tmp65658
                              (let ()
                                (declare (not safe))
                                (cons _exn64759_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp65658))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65657))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn64753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64753_))
            (let ((_e64756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64753_ 'exception))))
              (if (macro-length-mismatch-exception? _e64756_)
                  (macro-length-mismatch-exception-procedure _e64756_)
                  (let ((__tmp65663
                         (let ((__tmp65664
                                (let ()
                                  (declare (not safe))
                                  (cons _e64756_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp65664))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65663))))
            (if (macro-length-mismatch-exception? _exn64753_)
                (macro-length-mismatch-exception-procedure _exn64753_)
                (let ((__tmp65661
                       (let ((__tmp65662
                              (let ()
                                (declare (not safe))
                                (cons _exn64753_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp65662))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65661))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn64749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64749_))
            (let ((_e64751_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64749_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e64751_))
            (macro-mailbox-receive-timeout-exception? _exn64749_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn64745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64745_))
            (let ((_e64747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64745_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64747_)
                  (macro-mailbox-receive-timeout-exception-arguments _e64747_)
                  (let ((__tmp65667
                         (let ((__tmp65668
                                (let ()
                                  (declare (not safe))
                                  (cons _e64747_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp65668))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65667))))
            (if (macro-mailbox-receive-timeout-exception? _exn64745_)
                (macro-mailbox-receive-timeout-exception-arguments _exn64745_)
                (let ((__tmp65665
                       (let ((__tmp65666
                              (let ()
                                (declare (not safe))
                                (cons _exn64745_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp65666))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65665))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn64739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64739_))
            (let ((_e64742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64739_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64742_)
                  (macro-mailbox-receive-timeout-exception-procedure _e64742_)
                  (let ((__tmp65671
                         (let ((__tmp65672
                                (let ()
                                  (declare (not safe))
                                  (cons _e64742_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp65672))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65671))))
            (if (macro-mailbox-receive-timeout-exception? _exn64739_)
                (macro-mailbox-receive-timeout-exception-procedure _exn64739_)
                (let ((__tmp65669
                       (let ((__tmp65670
                              (let ()
                                (declare (not safe))
                                (cons _exn64739_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp65670))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65669))))))
    (define module-not-found-exception?
      (lambda (_exn64735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64735_))
            (let ((_e64737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64735_ 'exception))))
              (macro-module-not-found-exception? _e64737_))
            (macro-module-not-found-exception? _exn64735_))))
    (define module-not-found-exception-arguments
      (lambda (_exn64731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64731_))
            (let ((_e64733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64731_ 'exception))))
              (if (macro-module-not-found-exception? _e64733_)
                  (macro-module-not-found-exception-arguments _e64733_)
                  (let ((__tmp65675
                         (let ((__tmp65676
                                (let ()
                                  (declare (not safe))
                                  (cons _e64733_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp65676))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65675))))
            (if (macro-module-not-found-exception? _exn64731_)
                (macro-module-not-found-exception-arguments _exn64731_)
                (let ((__tmp65673
                       (let ((__tmp65674
                              (let ()
                                (declare (not safe))
                                (cons _exn64731_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp65674))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65673))))))
    (define module-not-found-exception-procedure
      (lambda (_exn64725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64725_))
            (let ((_e64728_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64725_ 'exception))))
              (if (macro-module-not-found-exception? _e64728_)
                  (macro-module-not-found-exception-procedure _e64728_)
                  (let ((__tmp65679
                         (let ((__tmp65680
                                (let ()
                                  (declare (not safe))
                                  (cons _e64728_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp65680))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65679))))
            (if (macro-module-not-found-exception? _exn64725_)
                (macro-module-not-found-exception-procedure _exn64725_)
                (let ((__tmp65677
                       (let ((__tmp65678
                              (let ()
                                (declare (not safe))
                                (cons _exn64725_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp65678))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65677))))))
    (define multiple-c-return-exception?
      (lambda (_exn64719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64719_))
            (let ((_e64722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64719_ 'exception))))
              (macro-multiple-c-return-exception? _e64722_))
            (macro-multiple-c-return-exception? _exn64719_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn64715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64715_))
            (let ((_e64717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64715_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e64717_))
            (macro-no-such-file-or-directory-exception? _exn64715_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn64711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64711_))
            (let ((_e64713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64711_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64713_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e64713_)
                  (let ((__tmp65683
                         (let ((__tmp65684
                                (let ()
                                  (declare (not safe))
                                  (cons _e64713_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp65684))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65683))))
            (if (macro-no-such-file-or-directory-exception? _exn64711_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn64711_)
                (let ((__tmp65681
                       (let ((__tmp65682
                              (let ()
                                (declare (not safe))
                                (cons _exn64711_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp65682))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65681))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn64705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64705_))
            (let ((_e64708_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64705_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64708_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e64708_)
                  (let ((__tmp65687
                         (let ((__tmp65688
                                (let ()
                                  (declare (not safe))
                                  (cons _e64708_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp65688))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65687))))
            (if (macro-no-such-file-or-directory-exception? _exn64705_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn64705_)
                (let ((__tmp65685
                       (let ((__tmp65686
                              (let ()
                                (declare (not safe))
                                (cons _exn64705_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp65686))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65685))))))
    (define noncontinuable-exception?
      (lambda (_exn64701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64701_))
            (let ((_e64703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64701_ 'exception))))
              (macro-noncontinuable-exception? _e64703_))
            (macro-noncontinuable-exception? _exn64701_))))
    (define noncontinuable-exception-reason
      (lambda (_exn64695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64695_))
            (let ((_e64698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64695_ 'exception))))
              (if (macro-noncontinuable-exception? _e64698_)
                  (macro-noncontinuable-exception-reason _e64698_)
                  (let ((__tmp65691
                         (let ((__tmp65692
                                (let ()
                                  (declare (not safe))
                                  (cons _e64698_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp65692))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp65691))))
            (if (macro-noncontinuable-exception? _exn64695_)
                (macro-noncontinuable-exception-reason _exn64695_)
                (let ((__tmp65689
                       (let ((__tmp65690
                              (let ()
                                (declare (not safe))
                                (cons _exn64695_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp65690))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp65689))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn64691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64691_))
            (let ((_e64693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64691_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e64693_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn64691_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn64687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64687_))
            (let ((_e64689_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64687_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64689_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e64689_)
                  (let ((__tmp65695
                         (let ((__tmp65696
                                (let ()
                                  (declare (not safe))
                                  (cons _e64689_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp65696))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65695))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64687_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn64687_)
                (let ((__tmp65693
                       (let ((__tmp65694
                              (let ()
                                (declare (not safe))
                                (cons _exn64687_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp65694))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65693))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn64681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64681_))
            (let ((_e64684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64681_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64684_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e64684_)
                  (let ((__tmp65699
                         (let ((__tmp65700
                                (let ()
                                  (declare (not safe))
                                  (cons _e64684_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp65700))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65699))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64681_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn64681_)
                (let ((__tmp65697
                       (let ((__tmp65698
                              (let ()
                                (declare (not safe))
                                (cons _exn64681_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp65698))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65697))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn64677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64677_))
            (let ((_e64679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64677_ 'exception))))
              (macro-nonprocedure-operator-exception? _e64679_))
            (macro-nonprocedure-operator-exception? _exn64677_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn64673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64673_))
            (let ((_e64675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64673_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64675_)
                  (macro-nonprocedure-operator-exception-arguments _e64675_)
                  (let ((__tmp65703
                         (let ((__tmp65704
                                (let ()
                                  (declare (not safe))
                                  (cons _e64675_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp65704))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65703))))
            (if (macro-nonprocedure-operator-exception? _exn64673_)
                (macro-nonprocedure-operator-exception-arguments _exn64673_)
                (let ((__tmp65701
                       (let ((__tmp65702
                              (let ()
                                (declare (not safe))
                                (cons _exn64673_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp65702))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65701))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn64669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64669_))
            (let ((_e64671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64669_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64671_)
                  (macro-nonprocedure-operator-exception-code _e64671_)
                  (let ((__tmp65707
                         (let ((__tmp65708
                                (let ()
                                  (declare (not safe))
                                  (cons _e64671_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp65708))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65707))))
            (if (macro-nonprocedure-operator-exception? _exn64669_)
                (macro-nonprocedure-operator-exception-code _exn64669_)
                (let ((__tmp65705
                       (let ((__tmp65706
                              (let ()
                                (declare (not safe))
                                (cons _exn64669_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp65706))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65705))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn64665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64665_))
            (let ((_e64667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64665_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64667_)
                  (macro-nonprocedure-operator-exception-operator _e64667_)
                  (let ((__tmp65711
                         (let ((__tmp65712
                                (let ()
                                  (declare (not safe))
                                  (cons _e64667_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp65712))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65711))))
            (if (macro-nonprocedure-operator-exception? _exn64665_)
                (macro-nonprocedure-operator-exception-operator _exn64665_)
                (let ((__tmp65709
                       (let ((__tmp65710
                              (let ()
                                (declare (not safe))
                                (cons _exn64665_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp65710))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65709))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn64659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64659_))
            (let ((_e64662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64659_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64662_)
                  (macro-nonprocedure-operator-exception-rte _e64662_)
                  (let ((__tmp65715
                         (let ((__tmp65716
                                (let ()
                                  (declare (not safe))
                                  (cons _e64662_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp65716))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65715))))
            (if (macro-nonprocedure-operator-exception? _exn64659_)
                (macro-nonprocedure-operator-exception-rte _exn64659_)
                (let ((__tmp65713
                       (let ((__tmp65714
                              (let ()
                                (declare (not safe))
                                (cons _exn64659_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp65714))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65713))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn64655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64655_))
            (let ((_e64657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64655_ 'exception))))
              (macro-not-in-compilation-context-exception? _e64657_))
            (macro-not-in-compilation-context-exception? _exn64655_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn64651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64651_))
            (let ((_e64653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64651_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64653_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e64653_)
                  (let ((__tmp65719
                         (let ((__tmp65720
                                (let ()
                                  (declare (not safe))
                                  (cons _e64653_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp65720))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65719))))
            (if (macro-not-in-compilation-context-exception? _exn64651_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn64651_)
                (let ((__tmp65717
                       (let ((__tmp65718
                              (let ()
                                (declare (not safe))
                                (cons _exn64651_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp65718))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65717))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn64645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64645_))
            (let ((_e64648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64645_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64648_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e64648_)
                  (let ((__tmp65723
                         (let ((__tmp65724
                                (let ()
                                  (declare (not safe))
                                  (cons _e64648_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp65724))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65723))))
            (if (macro-not-in-compilation-context-exception? _exn64645_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn64645_)
                (let ((__tmp65721
                       (let ((__tmp65722
                              (let ()
                                (declare (not safe))
                                (cons _exn64645_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp65722))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65721))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn64641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64641_))
            (let ((_e64643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64641_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e64643_))
            (macro-number-of-arguments-limit-exception? _exn64641_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn64637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64637_))
            (let ((_e64639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64637_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64639_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e64639_)
                  (let ((__tmp65727
                         (let ((__tmp65728
                                (let ()
                                  (declare (not safe))
                                  (cons _e64639_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp65728))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65727))))
            (if (macro-number-of-arguments-limit-exception? _exn64637_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn64637_)
                (let ((__tmp65725
                       (let ((__tmp65726
                              (let ()
                                (declare (not safe))
                                (cons _exn64637_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp65726))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65725))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn64631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64631_))
            (let ((_e64634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64631_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64634_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e64634_)
                  (let ((__tmp65731
                         (let ((__tmp65732
                                (let ()
                                  (declare (not safe))
                                  (cons _e64634_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp65732))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65731))))
            (if (macro-number-of-arguments-limit-exception? _exn64631_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn64631_)
                (let ((__tmp65729
                       (let ((__tmp65730
                              (let ()
                                (declare (not safe))
                                (cons _exn64631_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp65730))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65729))))))
    (define os-exception?
      (lambda (_exn64627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64627_))
            (let ((_e64629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64627_ 'exception))))
              (macro-os-exception? _e64629_))
            (macro-os-exception? _exn64627_))))
    (define os-exception-arguments
      (lambda (_exn64623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64623_))
            (let ((_e64625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64623_ 'exception))))
              (if (macro-os-exception? _e64625_)
                  (macro-os-exception-arguments _e64625_)
                  (let ((__tmp65735
                         (let ((__tmp65736
                                (let ()
                                  (declare (not safe))
                                  (cons _e64625_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp65736))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65735))))
            (if (macro-os-exception? _exn64623_)
                (macro-os-exception-arguments _exn64623_)
                (let ((__tmp65733
                       (let ((__tmp65734
                              (let ()
                                (declare (not safe))
                                (cons _exn64623_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp65734))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65733))))))
    (define os-exception-code
      (lambda (_exn64619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64619_))
            (let ((_e64621_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64619_ 'exception))))
              (if (macro-os-exception? _e64621_)
                  (macro-os-exception-code _e64621_)
                  (let ((__tmp65739
                         (let ((__tmp65740
                                (let ()
                                  (declare (not safe))
                                  (cons _e64621_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp65740))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65739))))
            (if (macro-os-exception? _exn64619_)
                (macro-os-exception-code _exn64619_)
                (let ((__tmp65737
                       (let ((__tmp65738
                              (let ()
                                (declare (not safe))
                                (cons _exn64619_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp65738))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65737))))))
    (define os-exception-message
      (lambda (_exn64615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64615_))
            (let ((_e64617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64615_ 'exception))))
              (if (macro-os-exception? _e64617_)
                  (macro-os-exception-message _e64617_)
                  (let ((__tmp65743
                         (let ((__tmp65744
                                (let ()
                                  (declare (not safe))
                                  (cons _e64617_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp65744))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65743))))
            (if (macro-os-exception? _exn64615_)
                (macro-os-exception-message _exn64615_)
                (let ((__tmp65741
                       (let ((__tmp65742
                              (let ()
                                (declare (not safe))
                                (cons _exn64615_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp65742))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65741))))))
    (define os-exception-procedure
      (lambda (_exn64609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64609_))
            (let ((_e64612_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64609_ 'exception))))
              (if (macro-os-exception? _e64612_)
                  (macro-os-exception-procedure _e64612_)
                  (let ((__tmp65747
                         (let ((__tmp65748
                                (let ()
                                  (declare (not safe))
                                  (cons _e64612_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp65748))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65747))))
            (if (macro-os-exception? _exn64609_)
                (macro-os-exception-procedure _exn64609_)
                (let ((__tmp65745
                       (let ((__tmp65746
                              (let ()
                                (declare (not safe))
                                (cons _exn64609_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp65746))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65745))))))
    (define permission-denied-exception?
      (lambda (_exn64605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64605_))
            (let ((_e64607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64605_ 'exception))))
              (macro-permission-denied-exception? _e64607_))
            (macro-permission-denied-exception? _exn64605_))))
    (define permission-denied-exception-arguments
      (lambda (_exn64601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64601_))
            (let ((_e64603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64601_ 'exception))))
              (if (macro-permission-denied-exception? _e64603_)
                  (macro-permission-denied-exception-arguments _e64603_)
                  (let ((__tmp65751
                         (let ((__tmp65752
                                (let ()
                                  (declare (not safe))
                                  (cons _e64603_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp65752))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65751))))
            (if (macro-permission-denied-exception? _exn64601_)
                (macro-permission-denied-exception-arguments _exn64601_)
                (let ((__tmp65749
                       (let ((__tmp65750
                              (let ()
                                (declare (not safe))
                                (cons _exn64601_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp65750))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65749))))))
    (define permission-denied-exception-procedure
      (lambda (_exn64595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64595_))
            (let ((_e64598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64595_ 'exception))))
              (if (macro-permission-denied-exception? _e64598_)
                  (macro-permission-denied-exception-procedure _e64598_)
                  (let ((__tmp65755
                         (let ((__tmp65756
                                (let ()
                                  (declare (not safe))
                                  (cons _e64598_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp65756))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65755))))
            (if (macro-permission-denied-exception? _exn64595_)
                (macro-permission-denied-exception-procedure _exn64595_)
                (let ((__tmp65753
                       (let ((__tmp65754
                              (let ()
                                (declare (not safe))
                                (cons _exn64595_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp65754))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65753))))))
    (define range-exception?
      (lambda (_exn64591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64591_))
            (let ((_e64593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64591_ 'exception))))
              (macro-range-exception? _e64593_))
            (macro-range-exception? _exn64591_))))
    (define range-exception-arg-id
      (lambda (_exn64587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64587_))
            (let ((_e64589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64587_ 'exception))))
              (if (macro-range-exception? _e64589_)
                  (macro-range-exception-arg-id _e64589_)
                  (let ((__tmp65759
                         (let ((__tmp65760
                                (let ()
                                  (declare (not safe))
                                  (cons _e64589_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp65760))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65759))))
            (if (macro-range-exception? _exn64587_)
                (macro-range-exception-arg-id _exn64587_)
                (let ((__tmp65757
                       (let ((__tmp65758
                              (let ()
                                (declare (not safe))
                                (cons _exn64587_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp65758))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65757))))))
    (define range-exception-arguments
      (lambda (_exn64583_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64583_))
            (let ((_e64585_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64583_ 'exception))))
              (if (macro-range-exception? _e64585_)
                  (macro-range-exception-arguments _e64585_)
                  (let ((__tmp65763
                         (let ((__tmp65764
                                (let ()
                                  (declare (not safe))
                                  (cons _e64585_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp65764))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65763))))
            (if (macro-range-exception? _exn64583_)
                (macro-range-exception-arguments _exn64583_)
                (let ((__tmp65761
                       (let ((__tmp65762
                              (let ()
                                (declare (not safe))
                                (cons _exn64583_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp65762))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65761))))))
    (define range-exception-procedure
      (lambda (_exn64577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64577_))
            (let ((_e64580_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64577_ 'exception))))
              (if (macro-range-exception? _e64580_)
                  (macro-range-exception-procedure _e64580_)
                  (let ((__tmp65767
                         (let ((__tmp65768
                                (let ()
                                  (declare (not safe))
                                  (cons _e64580_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp65768))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65767))))
            (if (macro-range-exception? _exn64577_)
                (macro-range-exception-procedure _exn64577_)
                (let ((__tmp65765
                       (let ((__tmp65766
                              (let ()
                                (declare (not safe))
                                (cons _exn64577_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp65766))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65765))))))
    (define rpc-remote-error-exception?
      (lambda (_exn64573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64573_))
            (let ((_e64575_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64573_ 'exception))))
              (macro-rpc-remote-error-exception? _e64575_))
            (macro-rpc-remote-error-exception? _exn64573_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn64569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64569_))
            (let ((_e64571_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64569_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64571_)
                  (macro-rpc-remote-error-exception-arguments _e64571_)
                  (let ((__tmp65771
                         (let ((__tmp65772
                                (let ()
                                  (declare (not safe))
                                  (cons _e64571_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp65772))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65771))))
            (if (macro-rpc-remote-error-exception? _exn64569_)
                (macro-rpc-remote-error-exception-arguments _exn64569_)
                (let ((__tmp65769
                       (let ((__tmp65770
                              (let ()
                                (declare (not safe))
                                (cons _exn64569_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp65770))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65769))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn64565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64565_))
            (let ((_e64567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64565_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64567_)
                  (macro-rpc-remote-error-exception-message _e64567_)
                  (let ((__tmp65775
                         (let ((__tmp65776
                                (let ()
                                  (declare (not safe))
                                  (cons _e64567_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp65776))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65775))))
            (if (macro-rpc-remote-error-exception? _exn64565_)
                (macro-rpc-remote-error-exception-message _exn64565_)
                (let ((__tmp65773
                       (let ((__tmp65774
                              (let ()
                                (declare (not safe))
                                (cons _exn64565_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp65774))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65773))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn64559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64559_))
            (let ((_e64562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64559_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64562_)
                  (macro-rpc-remote-error-exception-procedure _e64562_)
                  (let ((__tmp65779
                         (let ((__tmp65780
                                (let ()
                                  (declare (not safe))
                                  (cons _e64562_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp65780))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65779))))
            (if (macro-rpc-remote-error-exception? _exn64559_)
                (macro-rpc-remote-error-exception-procedure _exn64559_)
                (let ((__tmp65777
                       (let ((__tmp65778
                              (let ()
                                (declare (not safe))
                                (cons _exn64559_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp65778))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65777))))))
    (define scheduler-exception?
      (lambda (_exn64555_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64555_))
            (let ((_e64557_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64555_ 'exception))))
              (macro-scheduler-exception? _e64557_))
            (macro-scheduler-exception? _exn64555_))))
    (define scheduler-exception-reason
      (lambda (_exn64549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64549_))
            (let ((_e64552_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64549_ 'exception))))
              (if (macro-scheduler-exception? _e64552_)
                  (macro-scheduler-exception-reason _e64552_)
                  (let ((__tmp65783
                         (let ((__tmp65784
                                (let ()
                                  (declare (not safe))
                                  (cons _e64552_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp65784))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp65783))))
            (if (macro-scheduler-exception? _exn64549_)
                (macro-scheduler-exception-reason _exn64549_)
                (let ((__tmp65781
                       (let ((__tmp65782
                              (let ()
                                (declare (not safe))
                                (cons _exn64549_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp65782))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp65781))))))
    (define sfun-conversion-exception?
      (lambda (_exn64545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64545_))
            (let ((_e64547_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64545_ 'exception))))
              (macro-sfun-conversion-exception? _e64547_))
            (macro-sfun-conversion-exception? _exn64545_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn64541_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64541_))
            (let ((_e64543_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64541_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64543_)
                  (macro-sfun-conversion-exception-arguments _e64543_)
                  (let ((__tmp65787
                         (let ((__tmp65788
                                (let ()
                                  (declare (not safe))
                                  (cons _e64543_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp65788))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65787))))
            (if (macro-sfun-conversion-exception? _exn64541_)
                (macro-sfun-conversion-exception-arguments _exn64541_)
                (let ((__tmp65785
                       (let ((__tmp65786
                              (let ()
                                (declare (not safe))
                                (cons _exn64541_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp65786))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65785))))))
    (define sfun-conversion-exception-code
      (lambda (_exn64537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64537_))
            (let ((_e64539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64537_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64539_)
                  (macro-sfun-conversion-exception-code _e64539_)
                  (let ((__tmp65791
                         (let ((__tmp65792
                                (let ()
                                  (declare (not safe))
                                  (cons _e64539_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp65792))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65791))))
            (if (macro-sfun-conversion-exception? _exn64537_)
                (macro-sfun-conversion-exception-code _exn64537_)
                (let ((__tmp65789
                       (let ((__tmp65790
                              (let ()
                                (declare (not safe))
                                (cons _exn64537_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp65790))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65789))))))
    (define sfun-conversion-exception-message
      (lambda (_exn64533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64533_))
            (let ((_e64535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64533_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64535_)
                  (macro-sfun-conversion-exception-message _e64535_)
                  (let ((__tmp65795
                         (let ((__tmp65796
                                (let ()
                                  (declare (not safe))
                                  (cons _e64535_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp65796))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65795))))
            (if (macro-sfun-conversion-exception? _exn64533_)
                (macro-sfun-conversion-exception-message _exn64533_)
                (let ((__tmp65793
                       (let ((__tmp65794
                              (let ()
                                (declare (not safe))
                                (cons _exn64533_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp65794))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65793))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn64527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64527_))
            (let ((_e64530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64527_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64530_)
                  (macro-sfun-conversion-exception-procedure _e64530_)
                  (let ((__tmp65799
                         (let ((__tmp65800
                                (let ()
                                  (declare (not safe))
                                  (cons _e64530_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp65800))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65799))))
            (if (macro-sfun-conversion-exception? _exn64527_)
                (macro-sfun-conversion-exception-procedure _exn64527_)
                (let ((__tmp65797
                       (let ((__tmp65798
                              (let ()
                                (declare (not safe))
                                (cons _exn64527_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp65798))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65797))))))
    (define stack-overflow-exception?
      (lambda (_exn64521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64521_))
            (let ((_e64524_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64521_ 'exception))))
              (macro-stack-overflow-exception? _e64524_))
            (macro-stack-overflow-exception? _exn64521_))))
    (define started-thread-exception?
      (lambda (_exn64517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64517_))
            (let ((_e64519_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64517_ 'exception))))
              (macro-started-thread-exception? _e64519_))
            (macro-started-thread-exception? _exn64517_))))
    (define started-thread-exception-arguments
      (lambda (_exn64513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64513_))
            (let ((_e64515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64513_ 'exception))))
              (if (macro-started-thread-exception? _e64515_)
                  (macro-started-thread-exception-arguments _e64515_)
                  (let ((__tmp65803
                         (let ((__tmp65804
                                (let ()
                                  (declare (not safe))
                                  (cons _e64515_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp65804))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65803))))
            (if (macro-started-thread-exception? _exn64513_)
                (macro-started-thread-exception-arguments _exn64513_)
                (let ((__tmp65801
                       (let ((__tmp65802
                              (let ()
                                (declare (not safe))
                                (cons _exn64513_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp65802))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65801))))))
    (define started-thread-exception-procedure
      (lambda (_exn64507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64507_))
            (let ((_e64510_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64507_ 'exception))))
              (if (macro-started-thread-exception? _e64510_)
                  (macro-started-thread-exception-procedure _e64510_)
                  (let ((__tmp65807
                         (let ((__tmp65808
                                (let ()
                                  (declare (not safe))
                                  (cons _e64510_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp65808))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65807))))
            (if (macro-started-thread-exception? _exn64507_)
                (macro-started-thread-exception-procedure _exn64507_)
                (let ((__tmp65805
                       (let ((__tmp65806
                              (let ()
                                (declare (not safe))
                                (cons _exn64507_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp65806))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65805))))))
    (define terminated-thread-exception?
      (lambda (_exn64503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64503_))
            (let ((_e64505_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64503_ 'exception))))
              (macro-terminated-thread-exception? _e64505_))
            (macro-terminated-thread-exception? _exn64503_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn64499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64499_))
            (let ((_e64501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64499_ 'exception))))
              (if (macro-terminated-thread-exception? _e64501_)
                  (macro-terminated-thread-exception-arguments _e64501_)
                  (let ((__tmp65811
                         (let ((__tmp65812
                                (let ()
                                  (declare (not safe))
                                  (cons _e64501_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp65812))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65811))))
            (if (macro-terminated-thread-exception? _exn64499_)
                (macro-terminated-thread-exception-arguments _exn64499_)
                (let ((__tmp65809
                       (let ((__tmp65810
                              (let ()
                                (declare (not safe))
                                (cons _exn64499_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp65810))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65809))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn64493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64493_))
            (let ((_e64496_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64493_ 'exception))))
              (if (macro-terminated-thread-exception? _e64496_)
                  (macro-terminated-thread-exception-procedure _e64496_)
                  (let ((__tmp65815
                         (let ((__tmp65816
                                (let ()
                                  (declare (not safe))
                                  (cons _e64496_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp65816))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65815))))
            (if (macro-terminated-thread-exception? _exn64493_)
                (macro-terminated-thread-exception-procedure _exn64493_)
                (let ((__tmp65813
                       (let ((__tmp65814
                              (let ()
                                (declare (not safe))
                                (cons _exn64493_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp65814))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65813))))))
    (define type-exception?
      (lambda (_exn64489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64489_))
            (let ((_e64491_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64489_ 'exception))))
              (macro-type-exception? _e64491_))
            (macro-type-exception? _exn64489_))))
    (define type-exception-arg-id
      (lambda (_exn64485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64485_))
            (let ((_e64487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64485_ 'exception))))
              (if (macro-type-exception? _e64487_)
                  (macro-type-exception-arg-id _e64487_)
                  (let ((__tmp65819
                         (let ((__tmp65820
                                (let ()
                                  (declare (not safe))
                                  (cons _e64487_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp65820))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65819))))
            (if (macro-type-exception? _exn64485_)
                (macro-type-exception-arg-id _exn64485_)
                (let ((__tmp65817
                       (let ((__tmp65818
                              (let ()
                                (declare (not safe))
                                (cons _exn64485_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp65818))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65817))))))
    (define type-exception-arguments
      (lambda (_exn64481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64481_))
            (let ((_e64483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64481_ 'exception))))
              (if (macro-type-exception? _e64483_)
                  (macro-type-exception-arguments _e64483_)
                  (let ((__tmp65823
                         (let ((__tmp65824
                                (let ()
                                  (declare (not safe))
                                  (cons _e64483_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp65824))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65823))))
            (if (macro-type-exception? _exn64481_)
                (macro-type-exception-arguments _exn64481_)
                (let ((__tmp65821
                       (let ((__tmp65822
                              (let ()
                                (declare (not safe))
                                (cons _exn64481_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp65822))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65821))))))
    (define type-exception-procedure
      (lambda (_exn64477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64477_))
            (let ((_e64479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64477_ 'exception))))
              (if (macro-type-exception? _e64479_)
                  (macro-type-exception-procedure _e64479_)
                  (let ((__tmp65827
                         (let ((__tmp65828
                                (let ()
                                  (declare (not safe))
                                  (cons _e64479_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp65828))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65827))))
            (if (macro-type-exception? _exn64477_)
                (macro-type-exception-procedure _exn64477_)
                (let ((__tmp65825
                       (let ((__tmp65826
                              (let ()
                                (declare (not safe))
                                (cons _exn64477_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp65826))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65825))))))
    (define type-exception-type-id
      (lambda (_exn64471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64471_))
            (let ((_e64474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64471_ 'exception))))
              (if (macro-type-exception? _e64474_)
                  (macro-type-exception-type-id _e64474_)
                  (let ((__tmp65831
                         (let ((__tmp65832
                                (let ()
                                  (declare (not safe))
                                  (cons _e64474_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp65832))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65831))))
            (if (macro-type-exception? _exn64471_)
                (macro-type-exception-type-id _exn64471_)
                (let ((__tmp65829
                       (let ((__tmp65830
                              (let ()
                                (declare (not safe))
                                (cons _exn64471_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp65830))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65829))))))
    (define unbound-global-exception?
      (lambda (_exn64467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64467_))
            (let ((_e64469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64467_ 'exception))))
              (macro-unbound-global-exception? _e64469_))
            (macro-unbound-global-exception? _exn64467_))))
    (define unbound-global-exception-code
      (lambda (_exn64463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64463_))
            (let ((_e64465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64463_ 'exception))))
              (if (macro-unbound-global-exception? _e64465_)
                  (macro-unbound-global-exception-code _e64465_)
                  (let ((__tmp65835
                         (let ((__tmp65836
                                (let ()
                                  (declare (not safe))
                                  (cons _e64465_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp65836))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65835))))
            (if (macro-unbound-global-exception? _exn64463_)
                (macro-unbound-global-exception-code _exn64463_)
                (let ((__tmp65833
                       (let ((__tmp65834
                              (let ()
                                (declare (not safe))
                                (cons _exn64463_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp65834))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65833))))))
    (define unbound-global-exception-rte
      (lambda (_exn64459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64459_))
            (let ((_e64461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64459_ 'exception))))
              (if (macro-unbound-global-exception? _e64461_)
                  (macro-unbound-global-exception-rte _e64461_)
                  (let ((__tmp65839
                         (let ((__tmp65840
                                (let ()
                                  (declare (not safe))
                                  (cons _e64461_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp65840))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65839))))
            (if (macro-unbound-global-exception? _exn64459_)
                (macro-unbound-global-exception-rte _exn64459_)
                (let ((__tmp65837
                       (let ((__tmp65838
                              (let ()
                                (declare (not safe))
                                (cons _exn64459_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp65838))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65837))))))
    (define unbound-global-exception-variable
      (lambda (_exn64453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64453_))
            (let ((_e64456_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64453_ 'exception))))
              (if (macro-unbound-global-exception? _e64456_)
                  (macro-unbound-global-exception-variable _e64456_)
                  (let ((__tmp65843
                         (let ((__tmp65844
                                (let ()
                                  (declare (not safe))
                                  (cons _e64456_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp65844))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp65843))))
            (if (macro-unbound-global-exception? _exn64453_)
                (macro-unbound-global-exception-variable _exn64453_)
                (let ((__tmp65841
                       (let ((__tmp65842
                              (let ()
                                (declare (not safe))
                                (cons _exn64453_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp65842))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp65841))))))
    (define unbound-key-exception?
      (lambda (_exn64449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64449_))
            (let ((_e64451_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64449_ 'exception))))
              (macro-unbound-key-exception? _e64451_))
            (macro-unbound-key-exception? _exn64449_))))
    (define unbound-key-exception-arguments
      (lambda (_exn64445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64445_))
            (let ((_e64447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64445_ 'exception))))
              (if (macro-unbound-key-exception? _e64447_)
                  (macro-unbound-key-exception-arguments _e64447_)
                  (let ((__tmp65847
                         (let ((__tmp65848
                                (let ()
                                  (declare (not safe))
                                  (cons _e64447_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp65848))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65847))))
            (if (macro-unbound-key-exception? _exn64445_)
                (macro-unbound-key-exception-arguments _exn64445_)
                (let ((__tmp65845
                       (let ((__tmp65846
                              (let ()
                                (declare (not safe))
                                (cons _exn64445_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp65846))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65845))))))
    (define unbound-key-exception-procedure
      (lambda (_exn64439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64439_))
            (let ((_e64442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64439_ 'exception))))
              (if (macro-unbound-key-exception? _e64442_)
                  (macro-unbound-key-exception-procedure _e64442_)
                  (let ((__tmp65851
                         (let ((__tmp65852
                                (let ()
                                  (declare (not safe))
                                  (cons _e64442_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp65852))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp65851))))
            (if (macro-unbound-key-exception? _exn64439_)
                (macro-unbound-key-exception-procedure _exn64439_)
                (let ((__tmp65849
                       (let ((__tmp65850
                              (let ()
                                (declare (not safe))
                                (cons _exn64439_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp65850))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp65849))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn64435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64435_))
            (let ((_e64437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64435_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e64437_))
            (macro-unbound-os-environment-variable-exception? _exn64435_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn64431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64431_))
            (let ((_e64433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64431_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64433_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e64433_)
                  (let ((__tmp65855
                         (let ((__tmp65856
                                (let ()
                                  (declare (not safe))
                                  (cons _e64433_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp65856))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65855))))
            (if (macro-unbound-os-environment-variable-exception? _exn64431_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn64431_)
                (let ((__tmp65853
                       (let ((__tmp65854
                              (let ()
                                (declare (not safe))
                                (cons _exn64431_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp65854))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65853))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn64425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64425_))
            (let ((_e64428_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64425_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64428_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e64428_)
                  (let ((__tmp65859
                         (let ((__tmp65860
                                (let ()
                                  (declare (not safe))
                                  (cons _e64428_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp65860))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp65859))))
            (if (macro-unbound-os-environment-variable-exception? _exn64425_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn64425_)
                (let ((__tmp65857
                       (let ((__tmp65858
                              (let ()
                                (declare (not safe))
                                (cons _exn64425_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp65858))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp65857))))))
    (define unbound-serial-number-exception?
      (lambda (_exn64421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64421_))
            (let ((_e64423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64421_ 'exception))))
              (macro-unbound-serial-number-exception? _e64423_))
            (macro-unbound-serial-number-exception? _exn64421_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn64417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64417_))
            (let ((_e64419_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64417_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64419_)
                  (macro-unbound-serial-number-exception-arguments _e64419_)
                  (let ((__tmp65863
                         (let ((__tmp65864
                                (let ()
                                  (declare (not safe))
                                  (cons _e64419_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp65864))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65863))))
            (if (macro-unbound-serial-number-exception? _exn64417_)
                (macro-unbound-serial-number-exception-arguments _exn64417_)
                (let ((__tmp65861
                       (let ((__tmp65862
                              (let ()
                                (declare (not safe))
                                (cons _exn64417_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp65862))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65861))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn64411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64411_))
            (let ((_e64414_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64411_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64414_)
                  (macro-unbound-serial-number-exception-procedure _e64414_)
                  (let ((__tmp65867
                         (let ((__tmp65868
                                (let ()
                                  (declare (not safe))
                                  (cons _e64414_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp65868))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp65867))))
            (if (macro-unbound-serial-number-exception? _exn64411_)
                (macro-unbound-serial-number-exception-procedure _exn64411_)
                (let ((__tmp65865
                       (let ((__tmp65866
                              (let ()
                                (declare (not safe))
                                (cons _exn64411_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp65866))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp65865))))))
    (define uncaught-exception?
      (lambda (_exn64407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64407_))
            (let ((_e64409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64407_ 'exception))))
              (macro-uncaught-exception? _e64409_))
            (macro-uncaught-exception? _exn64407_))))
    (define uncaught-exception-arguments
      (lambda (_exn64403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64403_))
            (let ((_e64405_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64403_ 'exception))))
              (if (macro-uncaught-exception? _e64405_)
                  (macro-uncaught-exception-arguments _e64405_)
                  (let ((__tmp65871
                         (let ((__tmp65872
                                (let ()
                                  (declare (not safe))
                                  (cons _e64405_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp65872))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65871))))
            (if (macro-uncaught-exception? _exn64403_)
                (macro-uncaught-exception-arguments _exn64403_)
                (let ((__tmp65869
                       (let ((__tmp65870
                              (let ()
                                (declare (not safe))
                                (cons _exn64403_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp65870))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65869))))))
    (define uncaught-exception-procedure
      (lambda (_exn64399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64399_))
            (let ((_e64401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64399_ 'exception))))
              (if (macro-uncaught-exception? _e64401_)
                  (macro-uncaught-exception-procedure _e64401_)
                  (let ((__tmp65875
                         (let ((__tmp65876
                                (let ()
                                  (declare (not safe))
                                  (cons _e64401_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp65876))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65875))))
            (if (macro-uncaught-exception? _exn64399_)
                (macro-uncaught-exception-procedure _exn64399_)
                (let ((__tmp65873
                       (let ((__tmp65874
                              (let ()
                                (declare (not safe))
                                (cons _exn64399_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp65874))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65873))))))
    (define uncaught-exception-reason
      (lambda (_exn64393_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64393_))
            (let ((_e64396_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64393_ 'exception))))
              (if (macro-uncaught-exception? _e64396_)
                  (macro-uncaught-exception-reason _e64396_)
                  (let ((__tmp65879
                         (let ((__tmp65880
                                (let ()
                                  (declare (not safe))
                                  (cons _e64396_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp65880))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp65879))))
            (if (macro-uncaught-exception? _exn64393_)
                (macro-uncaught-exception-reason _exn64393_)
                (let ((__tmp65877
                       (let ((__tmp65878
                              (let ()
                                (declare (not safe))
                                (cons _exn64393_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp65878))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp65877))))))
    (define uninitialized-thread-exception?
      (lambda (_exn64389_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64389_))
            (let ((_e64391_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64389_ 'exception))))
              (macro-uninitialized-thread-exception? _e64391_))
            (macro-uninitialized-thread-exception? _exn64389_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn64385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64385_))
            (let ((_e64387_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64385_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64387_)
                  (macro-uninitialized-thread-exception-arguments _e64387_)
                  (let ((__tmp65883
                         (let ((__tmp65884
                                (let ()
                                  (declare (not safe))
                                  (cons _e64387_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp65884))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65883))))
            (if (macro-uninitialized-thread-exception? _exn64385_)
                (macro-uninitialized-thread-exception-arguments _exn64385_)
                (let ((__tmp65881
                       (let ((__tmp65882
                              (let ()
                                (declare (not safe))
                                (cons _exn64385_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp65882))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65881))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn64379_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64379_))
            (let ((_e64382_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64379_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64382_)
                  (macro-uninitialized-thread-exception-procedure _e64382_)
                  (let ((__tmp65887
                         (let ((__tmp65888
                                (let ()
                                  (declare (not safe))
                                  (cons _e64382_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp65888))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp65887))))
            (if (macro-uninitialized-thread-exception? _exn64379_)
                (macro-uninitialized-thread-exception-procedure _exn64379_)
                (let ((__tmp65885
                       (let ((__tmp65886
                              (let ()
                                (declare (not safe))
                                (cons _exn64379_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp65886))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp65885))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn64375_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64375_))
            (let ((_e64377_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64375_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e64377_))
            (macro-unknown-keyword-argument-exception? _exn64375_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn64371_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64371_))
            (let ((_e64373_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64371_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64373_)
                  (macro-unknown-keyword-argument-exception-arguments _e64373_)
                  (let ((__tmp65891
                         (let ((__tmp65892
                                (let ()
                                  (declare (not safe))
                                  (cons _e64373_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp65892))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65891))))
            (if (macro-unknown-keyword-argument-exception? _exn64371_)
                (macro-unknown-keyword-argument-exception-arguments _exn64371_)
                (let ((__tmp65889
                       (let ((__tmp65890
                              (let ()
                                (declare (not safe))
                                (cons _exn64371_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp65890))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65889))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn64365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64365_))
            (let ((_e64368_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64365_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64368_)
                  (macro-unknown-keyword-argument-exception-procedure _e64368_)
                  (let ((__tmp65895
                         (let ((__tmp65896
                                (let ()
                                  (declare (not safe))
                                  (cons _e64368_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp65896))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp65895))))
            (if (macro-unknown-keyword-argument-exception? _exn64365_)
                (macro-unknown-keyword-argument-exception-procedure _exn64365_)
                (let ((__tmp65893
                       (let ((__tmp65894
                              (let ()
                                (declare (not safe))
                                (cons _exn64365_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp65894))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp65893))))))
    (define unterminated-process-exception?
      (lambda (_exn64361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64361_))
            (let ((_e64363_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64361_ 'exception))))
              (macro-unterminated-process-exception? _e64363_))
            (macro-unterminated-process-exception? _exn64361_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn64357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64357_))
            (let ((_e64359_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64357_ 'exception))))
              (if (macro-unterminated-process-exception? _e64359_)
                  (macro-unterminated-process-exception-arguments _e64359_)
                  (let ((__tmp65899
                         (let ((__tmp65900
                                (let ()
                                  (declare (not safe))
                                  (cons _e64359_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp65900))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65899))))
            (if (macro-unterminated-process-exception? _exn64357_)
                (macro-unterminated-process-exception-arguments _exn64357_)
                (let ((__tmp65897
                       (let ((__tmp65898
                              (let ()
                                (declare (not safe))
                                (cons _exn64357_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp65898))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65897))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn64351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64351_))
            (let ((_e64354_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64351_ 'exception))))
              (if (macro-unterminated-process-exception? _e64354_)
                  (macro-unterminated-process-exception-procedure _e64354_)
                  (let ((__tmp65903
                         (let ((__tmp65904
                                (let ()
                                  (declare (not safe))
                                  (cons _e64354_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp65904))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp65903))))
            (if (macro-unterminated-process-exception? _exn64351_)
                (macro-unterminated-process-exception-procedure _exn64351_)
                (let ((__tmp65901
                       (let ((__tmp65902
                              (let ()
                                (declare (not safe))
                                (cons _exn64351_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp65902))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp65901))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn64347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64347_))
            (let ((_e64349_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64347_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e64349_))
            (macro-wrong-number-of-arguments-exception? _exn64347_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn64343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64343_))
            (let ((_e64345_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64343_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64345_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e64345_)
                  (let ((__tmp65907
                         (let ((__tmp65908
                                (let ()
                                  (declare (not safe))
                                  (cons _e64345_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp65908))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65907))))
            (if (macro-wrong-number-of-arguments-exception? _exn64343_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn64343_)
                (let ((__tmp65905
                       (let ((__tmp65906
                              (let ()
                                (declare (not safe))
                                (cons _exn64343_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp65906))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65905))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn64337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64337_))
            (let ((_e64340_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64337_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64340_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e64340_)
                  (let ((__tmp65911
                         (let ((__tmp65912
                                (let ()
                                  (declare (not safe))
                                  (cons _e64340_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp65912))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp65911))))
            (if (macro-wrong-number-of-arguments-exception? _exn64337_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn64337_)
                (let ((__tmp65909
                       (let ((__tmp65910
                              (let ()
                                (declare (not safe))
                                (cons _exn64337_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp65910))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp65909))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn64333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64333_))
            (let ((_e64335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64333_ 'exception))))
              (macro-wrong-number-of-values-exception? _e64335_))
            (macro-wrong-number-of-values-exception? _exn64333_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn64329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64329_))
            (let ((_e64331_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64329_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64331_)
                  (macro-wrong-number-of-values-exception-code _e64331_)
                  (let ((__tmp65915
                         (let ((__tmp65916
                                (let ()
                                  (declare (not safe))
                                  (cons _e64331_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp65916))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65915))))
            (if (macro-wrong-number-of-values-exception? _exn64329_)
                (macro-wrong-number-of-values-exception-code _exn64329_)
                (let ((__tmp65913
                       (let ((__tmp65914
                              (let ()
                                (declare (not safe))
                                (cons _exn64329_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp65914))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65913))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn64325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64325_))
            (let ((_e64327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64325_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64327_)
                  (macro-wrong-number-of-values-exception-rte _e64327_)
                  (let ((__tmp65919
                         (let ((__tmp65920
                                (let ()
                                  (declare (not safe))
                                  (cons _e64327_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp65920))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65919))))
            (if (macro-wrong-number-of-values-exception? _exn64325_)
                (macro-wrong-number-of-values-exception-rte _exn64325_)
                (let ((__tmp65917
                       (let ((__tmp65918
                              (let ()
                                (declare (not safe))
                                (cons _exn64325_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp65918))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65917))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn64319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64319_))
            (let ((_e64322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64319_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64322_)
                  (macro-wrong-number-of-values-exception-vals _e64322_)
                  (let ((__tmp65923
                         (let ((__tmp65924
                                (let ()
                                  (declare (not safe))
                                  (cons _e64322_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp65924))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp65923))))
            (if (macro-wrong-number-of-values-exception? _exn64319_)
                (macro-wrong-number-of-values-exception-vals _exn64319_)
                (let ((__tmp65921
                       (let ((__tmp65922
                              (let ()
                                (declare (not safe))
                                (cons _exn64319_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp65922))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp65921))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn64313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64313_))
            (let ((_e64316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64313_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e64316_))
            (macro-wrong-processor-c-return-exception? _exn64313_))))))
