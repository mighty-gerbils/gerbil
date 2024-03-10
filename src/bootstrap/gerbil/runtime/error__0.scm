(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1710064746)
  (begin
    (define Exception::t
      (let ((__tmp63642 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp63642
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args63610_ (apply make-instance Exception::t _$args63610_)))
    (define StackTrace::t
      (let ((__tmp63643 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp63643
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args63607_ (apply make-instance StackTrace::t _$args63607_)))
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
      (let ((__tmp63644 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp63644
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args63604_ (apply make-instance Error::t _$args63604_)))
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
      (let ((__tmp63645 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp63645
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args63601_
        (apply make-instance RuntimeException::t _$args63601_)))
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
      (lambda (_exn63596_ _continue63597_)
        (let ((_exn63599_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn63596_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn63599_ _continue63597_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn63592_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn63592_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn63592_ 'continuation))
                '#!void
                (let ((__tmp63646
                       (lambda (_cont63594_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn63592_
                            'continuation
                            _cont63594_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp63646)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn63592_))))
    (define error
      (lambda (_message63589_ . _irritants63590_)
        (raise (let ((__obj63636
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj63636
                  _message63589_
                  'irritants:
                  _irritants63590_)
                 __obj63636))))
    (define with-exception-handler
      (lambda (_handler63582_ _thunk63583_)
        (if (let () (declare (not safe)) (procedure? _handler63582_))
            '#!void
            (raise (let ((__obj63637
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63637
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler63582_ '())))
                     __obj63637)))
        (if (let () (declare (not safe)) (procedure? _thunk63583_))
            '#!void
            (raise (let ((__obj63638
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63638
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk63583_ '())))
                     __obj63638)))
        (let ((__tmp63647
               (lambda (_exn63585_)
                 (let ((_exn63587_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn63585_))))
                   (_handler63582_ _exn63587_)))))
          (declare (not safe))
          (##with-exception-handler __tmp63647 _thunk63583_))))
    (define with-catch
      (lambda (_handler63575_ _thunk63576_)
        (if (let () (declare (not safe)) (procedure? _handler63575_))
            '#!void
            (raise (let ((__obj63639
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63639
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler63575_ '())))
                     __obj63639)))
        (if (let () (declare (not safe)) (procedure? _thunk63576_))
            '#!void
            (raise (let ((__obj63640
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj63640
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk63576_ '())))
                     __obj63640)))
        (let ((__tmp63648
               (lambda (_cont63578_)
                 (with-exception-handler
                  (lambda (_exn63580_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont63578_
                       _handler63575_
                       _exn63580_)))
                  _thunk63576_))))
          (declare (not safe))
          (##continuation-capture __tmp63648))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn63566_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn63566_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn63566_)))
            _exn63566_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn63566_))
                _exn63566_
                (if (macro-exception? _exn63566_)
                    (let ((_rte63571_
                           (let ((__obj63641
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj63641
                                _exn63566_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj63641)))
                      (let ((__tmp63649
                             (lambda (_cont63573_)
                               (let ((__tmp63650
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont63573_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte63571_
                                  'continuation
                                  __tmp63650)))))
                        (declare (not safe))
                        (##continuation-capture __tmp63649))
                      _rte63571_)
                    _exn63566_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj63561_)
        (let ((_$e63563_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj63561_))))
          (if _$e63563_
              _$e63563_
              (let () (declare (not safe)) (error-exception? _obj63561_))))))
    (define error-message
      (lambda (_obj63559_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj63559_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj63559_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj63559_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj63559_))
                '#f))))
    (define error-irritants
      (lambda (_obj63557_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj63557_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj63557_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj63557_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj63557_))
                '#f))))
    (define error-trace
      (lambda (_obj63555_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj63555_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj63555_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e63537_ _port63538_)
        (let ((_$e63540_
               (let ()
                 (declare (not safe))
                 (method-ref _e63537_ 'display-exception))))
          (if _$e63540_
              ((lambda (_f63543_) (_f63543_ _e63537_ _port63538_)) _$e63540_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e63537_ _port63538_))))))
    (define display-exception__0
      (lambda (_e63548_)
        (let ((_port63550_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e63548_ _port63550_))))
    (define display-exception
      (lambda _g63652_
        (let ((_g63651_ (let () (declare (not safe)) (##length _g63652_))))
          (cond ((let () (declare (not safe)) (##fx= _g63651_ 1))
                 (apply (lambda (_e63548_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e63548_)))
                        _g63652_))
                ((let () (declare (not safe)) (##fx= _g63651_ 2))
                 (apply (lambda (_e63552_ _port63553_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e63552_ _port63553_)))
                        _g63652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g63652_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self63526_ _message63527_ . _rest63528_)
        (let ((_message63534_
               (if (let () (declare (not safe)) (string? _message63527_))
                   _message63527_
                   (call-with-output-string
                    '""
                    (lambda (_g6352963531_)
                      (display _message63527_ _g6352963531_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self63526_ 'message _message63534_))
          (apply class-instance-init! _self63526_ _rest63528_))))
    (define Error:::init!::specialize
      (lambda (__klass63612 __method-table63613)
        (let ((__message63614
               (let ((__slot63615
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63612 'message))))
                 (if __slot63615
                     __slot63615
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self63526_ _message63527_ . _rest63528_)
            (let ((_message63534_
                   (if (let () (declare (not safe)) (string? _message63527_))
                       _message63527_
                       (call-with-output-string
                        '""
                        (lambda (_g6352963531_)
                          (display _message63527_ _g6352963531_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self63526_
                 _message63534_
                 __message63614
                 __klass63612
                 '#f))
              (apply class-instance-init! _self63526_ _rest63528_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self63384_ _port63385_)
        (let ((_tmp-port63387_ (open-output-string))
              (_display-error-newline63388_
               (> (output-port-column _port63385_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port63387_))
          (let ((__tmp63653
                 (lambda ()
                   (if _display-error-newline63388_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e63391_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self63384_ 'where))))
                     (if _$e63391_ (display _$e63391_) (display '"?")))
                   (let ((__tmp63654
                          (let ((__tmp63655 (object-type _self63384_)))
                            (declare (not safe))
                            (##type-name __tmp63655))))
                     (declare (not safe))
                     (display* '" [" __tmp63654 '"]: "))
                   (let ((__tmp63656
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self63384_ 'message))))
                     (declare (not safe))
                     (displayln __tmp63656))
                   (let ((_irritants63394_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self63384_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants63394_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj63396_)
                              (write _obj63396_)
                              (write-char '#\space))
                            _irritants63394_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self63384_))
                            (dump-stack-trace?))
                       (let ((_cont6339763399_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self63384_
                                 'continuation))))
                         (if _cont6339763399_
                             (let ((_cont63402_ _cont6339763399_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont63402_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp63653
             current-output-port
             _tmp-port63387_))
          (let ((__tmp63657 (get-output-string _tmp-port63387_)))
            (declare (not safe))
            (##write-string __tmp63657 _port63385_)))))
    (define Error::display-exception::specialize
      (lambda (__klass63616 __method-table63617)
        (let ((__irritants63618
               (let ((__slot63622
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63616 'irritants))))
                 (if __slot63622
                     __slot63622
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message63619
               (let ((__slot63623
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63616 'message))))
                 (if __slot63623
                     __slot63623
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__continuation63620
               (let ((__slot63624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63616 'continuation))))
                 (if __slot63624
                     __slot63624
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where63621
               (let ((__slot63625
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63616 'where))))
                 (if __slot63625
                     __slot63625
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where))))))
          (lambda (_self63384_ _port63385_)
            (let ((_tmp-port63387_ (open-output-string))
                  (_display-error-newline63388_
                   (> (output-port-column _port63385_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port63387_))
              (let ((__tmp63658
                     (lambda ()
                       (if _display-error-newline63388_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e63391_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self63384_
                                 __where63621
                                 __klass63616
                                 '#f))))
                         (if _$e63391_ (display _$e63391_) (display '"?")))
                       (let ((__tmp63659
                              (let ((__tmp63660 (object-type _self63384_)))
                                (declare (not safe))
                                (##type-name __tmp63660))))
                         (declare (not safe))
                         (display* '" [" __tmp63659 '"]: "))
                       (let ((__tmp63661
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self63384_
                                 __message63619
                                 __klass63616
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp63661))
                       (let ((_irritants63394_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self63384_
                                 __irritants63618
                                 __klass63616
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants63394_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj63396_)
                                  (write _obj63396_)
                                  (write-char '#\space))
                                _irritants63394_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self63384_))
                                (dump-stack-trace?))
                           (let ((_cont6339763399_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self63384_
                                     __continuation63620
                                     __klass63616
                                     '#f))))
                             (if _cont6339763399_
                                 (let ((_cont63402_ _cont6339763399_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont63402_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp63658
                 current-output-port
                 _tmp-port63387_))
              (let ((__tmp63662 (get-output-string _tmp-port63387_)))
                (declare (not safe))
                (##write-string __tmp63662 _port63385_)))))))
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
      (lambda (_self63251_ _port63252_)
        (let ((_tmp-port63254_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port63254_))
          (let ((__tmp63663
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self63251_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp63663 _tmp-port63254_))
          (if (dump-stack-trace?)
              (let ((_cont6325563257_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self63251_ 'continuation))))
                (if _cont6325563257_
                    (let ((_cont63260_ _cont6325563257_))
                      (display '"--- continuation backtrace:" _tmp-port63254_)
                      (newline _tmp-port63254_)
                      (display-continuation-backtrace
                       _cont63260_
                       _tmp-port63254_))
                    '#f))
              '#!void)
          (let ((__tmp63664 (get-output-string _tmp-port63254_)))
            (declare (not safe))
            (##write-string __tmp63664 _port63252_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass63626 __method-table63627)
        (let ((__continuation63628
               (let ((__slot63630
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63626 'continuation))))
                 (if __slot63630
                     __slot63630
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__exception63629
               (let ((__slot63631
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass63626 'exception))))
                 (if __slot63631
                     __slot63631
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception))))))
          (lambda (_self63251_ _port63252_)
            (let ((_tmp-port63254_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port63254_))
              (let ((__tmp63665
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self63251_
                        __exception63629
                        __klass63626
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp63665 _tmp-port63254_))
              (if (dump-stack-trace?)
                  (let ((_cont6325563257_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self63251_
                            __continuation63628
                            __klass63626
                            '#f))))
                    (if _cont6325563257_
                        (let ((_cont63260_ _cont6325563257_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port63254_)
                          (newline _tmp-port63254_)
                          (display-continuation-backtrace
                           _cont63260_
                           _tmp-port63254_))
                        '#f))
                  '#!void)
              (let ((__tmp63666 (get-output-string _tmp-port63254_)))
                (declare (not safe))
                (##write-string __tmp63666 _port63252_)))))))
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
      (lambda (_port63123_)
        (if (macro-character-port? _port63123_)
            (let ((_old-width63125_
                   (macro-character-port-output-width _port63123_)))
              (macro-character-port-output-width-set!
               _port63123_
               (lambda (_port63127_) '256))
              _old-width63125_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port63120_ _old-width63121_)
        (if (macro-character-port? _port63120_)
            (macro-character-port-output-width-set!
             _port63120_
             _old-width63121_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e63118_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e63118_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn63112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63112_))
            (let ((_e63115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63112_ 'exception))))
              (macro-abandoned-mutex-exception? _e63115_))
            (macro-abandoned-mutex-exception? _exn63112_))))
    (define cfun-conversion-exception?
      (lambda (_exn63108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63108_))
            (let ((_e63110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63108_ 'exception))))
              (macro-cfun-conversion-exception? _e63110_))
            (macro-cfun-conversion-exception? _exn63108_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn63104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63104_))
            (let ((_e63106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63104_ 'exception))))
              (if (macro-cfun-conversion-exception? _e63106_)
                  (macro-cfun-conversion-exception-arguments _e63106_)
                  (let ((__tmp63667
                         (let ((__tmp63668
                                (let ()
                                  (declare (not safe))
                                  (cons _e63106_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp63668))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63667))))
            (if (macro-cfun-conversion-exception? _exn63104_)
                (macro-cfun-conversion-exception-arguments _exn63104_)
                (let ((__tmp63669
                       (let ((__tmp63670
                              (let ()
                                (declare (not safe))
                                (cons _exn63104_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp63670))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63669))))))
    (define cfun-conversion-exception-code
      (lambda (_exn63100_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63100_))
            (let ((_e63102_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63100_ 'exception))))
              (if (macro-cfun-conversion-exception? _e63102_)
                  (macro-cfun-conversion-exception-code _e63102_)
                  (let ((__tmp63671
                         (let ((__tmp63672
                                (let ()
                                  (declare (not safe))
                                  (cons _e63102_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp63672))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63671))))
            (if (macro-cfun-conversion-exception? _exn63100_)
                (macro-cfun-conversion-exception-code _exn63100_)
                (let ((__tmp63673
                       (let ((__tmp63674
                              (let ()
                                (declare (not safe))
                                (cons _exn63100_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp63674))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63673))))))
    (define cfun-conversion-exception-message
      (lambda (_exn63096_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63096_))
            (let ((_e63098_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63096_ 'exception))))
              (if (macro-cfun-conversion-exception? _e63098_)
                  (macro-cfun-conversion-exception-message _e63098_)
                  (let ((__tmp63675
                         (let ((__tmp63676
                                (let ()
                                  (declare (not safe))
                                  (cons _e63098_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp63676))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63675))))
            (if (macro-cfun-conversion-exception? _exn63096_)
                (macro-cfun-conversion-exception-message _exn63096_)
                (let ((__tmp63677
                       (let ((__tmp63678
                              (let ()
                                (declare (not safe))
                                (cons _exn63096_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp63678))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63677))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn63090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63090_))
            (let ((_e63093_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63090_ 'exception))))
              (if (macro-cfun-conversion-exception? _e63093_)
                  (macro-cfun-conversion-exception-procedure _e63093_)
                  (let ((__tmp63679
                         (let ((__tmp63680
                                (let ()
                                  (declare (not safe))
                                  (cons _e63093_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp63680))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp63679))))
            (if (macro-cfun-conversion-exception? _exn63090_)
                (macro-cfun-conversion-exception-procedure _exn63090_)
                (let ((__tmp63681
                       (let ((__tmp63682
                              (let ()
                                (declare (not safe))
                                (cons _exn63090_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp63682))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp63681))))))
    (define datum-parsing-exception?
      (lambda (_exn63086_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63086_))
            (let ((_e63088_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63086_ 'exception))))
              (macro-datum-parsing-exception? _e63088_))
            (macro-datum-parsing-exception? _exn63086_))))
    (define datum-parsing-exception-kind
      (lambda (_exn63082_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63082_))
            (let ((_e63084_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63082_ 'exception))))
              (if (macro-datum-parsing-exception? _e63084_)
                  (macro-datum-parsing-exception-kind _e63084_)
                  (let ((__tmp63683
                         (let ((__tmp63684
                                (let ()
                                  (declare (not safe))
                                  (cons _e63084_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp63684))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp63683))))
            (if (macro-datum-parsing-exception? _exn63082_)
                (macro-datum-parsing-exception-kind _exn63082_)
                (let ((__tmp63685
                       (let ((__tmp63686
                              (let ()
                                (declare (not safe))
                                (cons _exn63082_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp63686))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp63685))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn63078_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63078_))
            (let ((_e63080_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63078_ 'exception))))
              (if (macro-datum-parsing-exception? _e63080_)
                  (macro-datum-parsing-exception-parameters _e63080_)
                  (let ((__tmp63687
                         (let ((__tmp63688
                                (let ()
                                  (declare (not safe))
                                  (cons _e63080_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp63688))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp63687))))
            (if (macro-datum-parsing-exception? _exn63078_)
                (macro-datum-parsing-exception-parameters _exn63078_)
                (let ((__tmp63689
                       (let ((__tmp63690
                              (let ()
                                (declare (not safe))
                                (cons _exn63078_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp63690))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp63689))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn63072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63072_))
            (let ((_e63075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63072_ 'exception))))
              (if (macro-datum-parsing-exception? _e63075_)
                  (macro-datum-parsing-exception-readenv _e63075_)
                  (let ((__tmp63691
                         (let ((__tmp63692
                                (let ()
                                  (declare (not safe))
                                  (cons _e63075_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp63692))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp63691))))
            (if (macro-datum-parsing-exception? _exn63072_)
                (macro-datum-parsing-exception-readenv _exn63072_)
                (let ((__tmp63693
                       (let ((__tmp63694
                              (let ()
                                (declare (not safe))
                                (cons _exn63072_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp63694))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp63693))))))
    (define deadlock-exception?
      (lambda (_exn63066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63066_))
            (let ((_e63069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63066_ 'exception))))
              (macro-deadlock-exception? _e63069_))
            (macro-deadlock-exception? _exn63066_))))
    (define divide-by-zero-exception?
      (lambda (_exn63062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63062_))
            (let ((_e63064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63062_ 'exception))))
              (macro-divide-by-zero-exception? _e63064_))
            (macro-divide-by-zero-exception? _exn63062_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn63058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63058_))
            (let ((_e63060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63058_ 'exception))))
              (if (macro-divide-by-zero-exception? _e63060_)
                  (macro-divide-by-zero-exception-arguments _e63060_)
                  (let ((__tmp63695
                         (let ((__tmp63696
                                (let ()
                                  (declare (not safe))
                                  (cons _e63060_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp63696))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp63695))))
            (if (macro-divide-by-zero-exception? _exn63058_)
                (macro-divide-by-zero-exception-arguments _exn63058_)
                (let ((__tmp63697
                       (let ((__tmp63698
                              (let ()
                                (declare (not safe))
                                (cons _exn63058_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp63698))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp63697))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn63052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63052_))
            (let ((_e63055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63052_ 'exception))))
              (if (macro-divide-by-zero-exception? _e63055_)
                  (macro-divide-by-zero-exception-procedure _e63055_)
                  (let ((__tmp63699
                         (let ((__tmp63700
                                (let ()
                                  (declare (not safe))
                                  (cons _e63055_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp63700))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp63699))))
            (if (macro-divide-by-zero-exception? _exn63052_)
                (macro-divide-by-zero-exception-procedure _exn63052_)
                (let ((__tmp63701
                       (let ((__tmp63702
                              (let ()
                                (declare (not safe))
                                (cons _exn63052_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp63702))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp63701))))))
    (define error-exception?
      (lambda (_exn63048_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63048_))
            (let ((_e63050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63048_ 'exception))))
              (macro-error-exception? _e63050_))
            (macro-error-exception? _exn63048_))))
    (define error-exception-message
      (lambda (_exn63044_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63044_))
            (let ((_e63046_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63044_ 'exception))))
              (if (macro-error-exception? _e63046_)
                  (macro-error-exception-message _e63046_)
                  (let ((__tmp63703
                         (let ((__tmp63704
                                (let ()
                                  (declare (not safe))
                                  (cons _e63046_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp63704))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp63703))))
            (if (macro-error-exception? _exn63044_)
                (macro-error-exception-message _exn63044_)
                (let ((__tmp63705
                       (let ((__tmp63706
                              (let ()
                                (declare (not safe))
                                (cons _exn63044_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp63706))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp63705))))))
    (define error-exception-parameters
      (lambda (_exn63038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63038_))
            (let ((_e63041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63038_ 'exception))))
              (if (macro-error-exception? _e63041_)
                  (macro-error-exception-parameters _e63041_)
                  (let ((__tmp63707
                         (let ((__tmp63708
                                (let ()
                                  (declare (not safe))
                                  (cons _e63041_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp63708))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp63707))))
            (if (macro-error-exception? _exn63038_)
                (macro-error-exception-parameters _exn63038_)
                (let ((__tmp63709
                       (let ((__tmp63710
                              (let ()
                                (declare (not safe))
                                (cons _exn63038_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp63710))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp63709))))))
    (define expression-parsing-exception?
      (lambda (_exn63034_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63034_))
            (let ((_e63036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63034_ 'exception))))
              (macro-expression-parsing-exception? _e63036_))
            (macro-expression-parsing-exception? _exn63034_))))
    (define expression-parsing-exception-kind
      (lambda (_exn63030_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63030_))
            (let ((_e63032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63030_ 'exception))))
              (if (macro-expression-parsing-exception? _e63032_)
                  (macro-expression-parsing-exception-kind _e63032_)
                  (let ((__tmp63711
                         (let ((__tmp63712
                                (let ()
                                  (declare (not safe))
                                  (cons _e63032_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp63712))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp63711))))
            (if (macro-expression-parsing-exception? _exn63030_)
                (macro-expression-parsing-exception-kind _exn63030_)
                (let ((__tmp63713
                       (let ((__tmp63714
                              (let ()
                                (declare (not safe))
                                (cons _exn63030_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp63714))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp63713))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn63026_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63026_))
            (let ((_e63028_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63026_ 'exception))))
              (if (macro-expression-parsing-exception? _e63028_)
                  (macro-expression-parsing-exception-parameters _e63028_)
                  (let ((__tmp63715
                         (let ((__tmp63716
                                (let ()
                                  (declare (not safe))
                                  (cons _e63028_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp63716))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp63715))))
            (if (macro-expression-parsing-exception? _exn63026_)
                (macro-expression-parsing-exception-parameters _exn63026_)
                (let ((__tmp63717
                       (let ((__tmp63718
                              (let ()
                                (declare (not safe))
                                (cons _exn63026_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp63718))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp63717))))))
    (define expression-parsing-exception-source
      (lambda (_exn63020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63020_))
            (let ((_e63023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63020_ 'exception))))
              (if (macro-expression-parsing-exception? _e63023_)
                  (macro-expression-parsing-exception-source _e63023_)
                  (let ((__tmp63719
                         (let ((__tmp63720
                                (let ()
                                  (declare (not safe))
                                  (cons _e63023_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp63720))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp63719))))
            (if (macro-expression-parsing-exception? _exn63020_)
                (macro-expression-parsing-exception-source _exn63020_)
                (let ((__tmp63721
                       (let ((__tmp63722
                              (let ()
                                (declare (not safe))
                                (cons _exn63020_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp63722))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp63721))))))
    (define file-exists-exception?
      (lambda (_exn63016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63016_))
            (let ((_e63018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63016_ 'exception))))
              (macro-file-exists-exception? _e63018_))
            (macro-file-exists-exception? _exn63016_))))
    (define file-exists-exception-arguments
      (lambda (_exn63012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63012_))
            (let ((_e63014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63012_ 'exception))))
              (if (macro-file-exists-exception? _e63014_)
                  (macro-file-exists-exception-arguments _e63014_)
                  (let ((__tmp63723
                         (let ((__tmp63724
                                (let ()
                                  (declare (not safe))
                                  (cons _e63014_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp63724))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp63723))))
            (if (macro-file-exists-exception? _exn63012_)
                (macro-file-exists-exception-arguments _exn63012_)
                (let ((__tmp63725
                       (let ((__tmp63726
                              (let ()
                                (declare (not safe))
                                (cons _exn63012_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp63726))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp63725))))))
    (define file-exists-exception-procedure
      (lambda (_exn63006_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63006_))
            (let ((_e63009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63006_ 'exception))))
              (if (macro-file-exists-exception? _e63009_)
                  (macro-file-exists-exception-procedure _e63009_)
                  (let ((__tmp63727
                         (let ((__tmp63728
                                (let ()
                                  (declare (not safe))
                                  (cons _e63009_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp63728))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp63727))))
            (if (macro-file-exists-exception? _exn63006_)
                (macro-file-exists-exception-procedure _exn63006_)
                (let ((__tmp63729
                       (let ((__tmp63730
                              (let ()
                                (declare (not safe))
                                (cons _exn63006_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp63730))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp63729))))))
    (define fixnum-overflow-exception?
      (lambda (_exn63002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn63002_))
            (let ((_e63004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn63002_ 'exception))))
              (macro-fixnum-overflow-exception? _e63004_))
            (macro-fixnum-overflow-exception? _exn63002_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn62998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62998_))
            (let ((_e63000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62998_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e63000_)
                  (macro-fixnum-overflow-exception-arguments _e63000_)
                  (let ((__tmp63731
                         (let ((__tmp63732
                                (let ()
                                  (declare (not safe))
                                  (cons _e63000_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp63732))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp63731))))
            (if (macro-fixnum-overflow-exception? _exn62998_)
                (macro-fixnum-overflow-exception-arguments _exn62998_)
                (let ((__tmp63733
                       (let ((__tmp63734
                              (let ()
                                (declare (not safe))
                                (cons _exn62998_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp63734))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp63733))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn62992_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62992_))
            (let ((_e62995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62992_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e62995_)
                  (macro-fixnum-overflow-exception-procedure _e62995_)
                  (let ((__tmp63735
                         (let ((__tmp63736
                                (let ()
                                  (declare (not safe))
                                  (cons _e62995_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp63736))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp63735))))
            (if (macro-fixnum-overflow-exception? _exn62992_)
                (macro-fixnum-overflow-exception-procedure _exn62992_)
                (let ((__tmp63737
                       (let ((__tmp63738
                              (let ()
                                (declare (not safe))
                                (cons _exn62992_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp63738))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp63737))))))
    (define heap-overflow-exception?
      (lambda (_exn62986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62986_))
            (let ((_e62989_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62986_ 'exception))))
              (macro-heap-overflow-exception? _e62989_))
            (macro-heap-overflow-exception? _exn62986_))))
    (define inactive-thread-exception?
      (lambda (_exn62982_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62982_))
            (let ((_e62984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62982_ 'exception))))
              (macro-inactive-thread-exception? _e62984_))
            (macro-inactive-thread-exception? _exn62982_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn62978_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62978_))
            (let ((_e62980_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62978_ 'exception))))
              (if (macro-inactive-thread-exception? _e62980_)
                  (macro-inactive-thread-exception-arguments _e62980_)
                  (let ((__tmp63739
                         (let ((__tmp63740
                                (let ()
                                  (declare (not safe))
                                  (cons _e62980_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp63740))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp63739))))
            (if (macro-inactive-thread-exception? _exn62978_)
                (macro-inactive-thread-exception-arguments _exn62978_)
                (let ((__tmp63741
                       (let ((__tmp63742
                              (let ()
                                (declare (not safe))
                                (cons _exn62978_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp63742))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp63741))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn62972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62972_))
            (let ((_e62975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62972_ 'exception))))
              (if (macro-inactive-thread-exception? _e62975_)
                  (macro-inactive-thread-exception-procedure _e62975_)
                  (let ((__tmp63743
                         (let ((__tmp63744
                                (let ()
                                  (declare (not safe))
                                  (cons _e62975_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp63744))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp63743))))
            (if (macro-inactive-thread-exception? _exn62972_)
                (macro-inactive-thread-exception-procedure _exn62972_)
                (let ((__tmp63745
                       (let ((__tmp63746
                              (let ()
                                (declare (not safe))
                                (cons _exn62972_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp63746))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp63745))))))
    (define initialized-thread-exception?
      (lambda (_exn62968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62968_))
            (let ((_e62970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62968_ 'exception))))
              (macro-initialized-thread-exception? _e62970_))
            (macro-initialized-thread-exception? _exn62968_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn62964_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62964_))
            (let ((_e62966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62964_ 'exception))))
              (if (macro-initialized-thread-exception? _e62966_)
                  (macro-initialized-thread-exception-arguments _e62966_)
                  (let ((__tmp63747
                         (let ((__tmp63748
                                (let ()
                                  (declare (not safe))
                                  (cons _e62966_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp63748))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp63747))))
            (if (macro-initialized-thread-exception? _exn62964_)
                (macro-initialized-thread-exception-arguments _exn62964_)
                (let ((__tmp63749
                       (let ((__tmp63750
                              (let ()
                                (declare (not safe))
                                (cons _exn62964_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp63750))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp63749))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn62958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62958_))
            (let ((_e62961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62958_ 'exception))))
              (if (macro-initialized-thread-exception? _e62961_)
                  (macro-initialized-thread-exception-procedure _e62961_)
                  (let ((__tmp63751
                         (let ((__tmp63752
                                (let ()
                                  (declare (not safe))
                                  (cons _e62961_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp63752))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp63751))))
            (if (macro-initialized-thread-exception? _exn62958_)
                (macro-initialized-thread-exception-procedure _exn62958_)
                (let ((__tmp63753
                       (let ((__tmp63754
                              (let ()
                                (declare (not safe))
                                (cons _exn62958_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp63754))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp63753))))))
    (define invalid-hash-number-exception?
      (lambda (_exn62954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62954_))
            (let ((_e62956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62954_ 'exception))))
              (macro-invalid-hash-number-exception? _e62956_))
            (macro-invalid-hash-number-exception? _exn62954_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn62950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62950_))
            (let ((_e62952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62950_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e62952_)
                  (macro-invalid-hash-number-exception-arguments _e62952_)
                  (let ((__tmp63755
                         (let ((__tmp63756
                                (let ()
                                  (declare (not safe))
                                  (cons _e62952_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp63756))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp63755))))
            (if (macro-invalid-hash-number-exception? _exn62950_)
                (macro-invalid-hash-number-exception-arguments _exn62950_)
                (let ((__tmp63757
                       (let ((__tmp63758
                              (let ()
                                (declare (not safe))
                                (cons _exn62950_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp63758))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp63757))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn62944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62944_))
            (let ((_e62947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62944_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e62947_)
                  (macro-invalid-hash-number-exception-procedure _e62947_)
                  (let ((__tmp63759
                         (let ((__tmp63760
                                (let ()
                                  (declare (not safe))
                                  (cons _e62947_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp63760))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp63759))))
            (if (macro-invalid-hash-number-exception? _exn62944_)
                (macro-invalid-hash-number-exception-procedure _exn62944_)
                (let ((__tmp63761
                       (let ((__tmp63762
                              (let ()
                                (declare (not safe))
                                (cons _exn62944_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp63762))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp63761))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn62940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62940_))
            (let ((_e62942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62940_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e62942_))
            (macro-invalid-utf8-encoding-exception? _exn62940_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn62936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62936_))
            (let ((_e62938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62936_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e62938_)
                  (macro-invalid-utf8-encoding-exception-arguments _e62938_)
                  (let ((__tmp63763
                         (let ((__tmp63764
                                (let ()
                                  (declare (not safe))
                                  (cons _e62938_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp63764))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp63763))))
            (if (macro-invalid-utf8-encoding-exception? _exn62936_)
                (macro-invalid-utf8-encoding-exception-arguments _exn62936_)
                (let ((__tmp63765
                       (let ((__tmp63766
                              (let ()
                                (declare (not safe))
                                (cons _exn62936_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp63766))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp63765))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn62930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62930_))
            (let ((_e62933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62930_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e62933_)
                  (macro-invalid-utf8-encoding-exception-procedure _e62933_)
                  (let ((__tmp63767
                         (let ((__tmp63768
                                (let ()
                                  (declare (not safe))
                                  (cons _e62933_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp63768))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp63767))))
            (if (macro-invalid-utf8-encoding-exception? _exn62930_)
                (macro-invalid-utf8-encoding-exception-procedure _exn62930_)
                (let ((__tmp63769
                       (let ((__tmp63770
                              (let ()
                                (declare (not safe))
                                (cons _exn62930_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp63770))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp63769))))))
    (define join-timeout-exception?
      (lambda (_exn62926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62926_))
            (let ((_e62928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62926_ 'exception))))
              (macro-join-timeout-exception? _e62928_))
            (macro-join-timeout-exception? _exn62926_))))
    (define join-timeout-exception-arguments
      (lambda (_exn62922_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62922_))
            (let ((_e62924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62922_ 'exception))))
              (if (macro-join-timeout-exception? _e62924_)
                  (macro-join-timeout-exception-arguments _e62924_)
                  (let ((__tmp63771
                         (let ((__tmp63772
                                (let ()
                                  (declare (not safe))
                                  (cons _e62924_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp63772))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp63771))))
            (if (macro-join-timeout-exception? _exn62922_)
                (macro-join-timeout-exception-arguments _exn62922_)
                (let ((__tmp63773
                       (let ((__tmp63774
                              (let ()
                                (declare (not safe))
                                (cons _exn62922_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp63774))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp63773))))))
    (define join-timeout-exception-procedure
      (lambda (_exn62916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62916_))
            (let ((_e62919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62916_ 'exception))))
              (if (macro-join-timeout-exception? _e62919_)
                  (macro-join-timeout-exception-procedure _e62919_)
                  (let ((__tmp63775
                         (let ((__tmp63776
                                (let ()
                                  (declare (not safe))
                                  (cons _e62919_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp63776))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp63775))))
            (if (macro-join-timeout-exception? _exn62916_)
                (macro-join-timeout-exception-procedure _exn62916_)
                (let ((__tmp63777
                       (let ((__tmp63778
                              (let ()
                                (declare (not safe))
                                (cons _exn62916_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp63778))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp63777))))))
    (define keyword-expected-exception?
      (lambda (_exn62912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62912_))
            (let ((_e62914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62912_ 'exception))))
              (macro-keyword-expected-exception? _e62914_))
            (macro-keyword-expected-exception? _exn62912_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn62908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62908_))
            (let ((_e62910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62908_ 'exception))))
              (if (macro-keyword-expected-exception? _e62910_)
                  (macro-keyword-expected-exception-arguments _e62910_)
                  (let ((__tmp63779
                         (let ((__tmp63780
                                (let ()
                                  (declare (not safe))
                                  (cons _e62910_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp63780))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp63779))))
            (if (macro-keyword-expected-exception? _exn62908_)
                (macro-keyword-expected-exception-arguments _exn62908_)
                (let ((__tmp63781
                       (let ((__tmp63782
                              (let ()
                                (declare (not safe))
                                (cons _exn62908_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp63782))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp63781))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn62902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62902_))
            (let ((_e62905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62902_ 'exception))))
              (if (macro-keyword-expected-exception? _e62905_)
                  (macro-keyword-expected-exception-procedure _e62905_)
                  (let ((__tmp63783
                         (let ((__tmp63784
                                (let ()
                                  (declare (not safe))
                                  (cons _e62905_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp63784))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp63783))))
            (if (macro-keyword-expected-exception? _exn62902_)
                (macro-keyword-expected-exception-procedure _exn62902_)
                (let ((__tmp63785
                       (let ((__tmp63786
                              (let ()
                                (declare (not safe))
                                (cons _exn62902_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp63786))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp63785))))))
    (define length-mismatch-exception?
      (lambda (_exn62898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62898_))
            (let ((_e62900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62898_ 'exception))))
              (macro-length-mismatch-exception? _e62900_))
            (macro-length-mismatch-exception? _exn62898_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn62894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62894_))
            (let ((_e62896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62894_ 'exception))))
              (if (macro-length-mismatch-exception? _e62896_)
                  (macro-length-mismatch-exception-arg-id _e62896_)
                  (let ((__tmp63787
                         (let ((__tmp63788
                                (let ()
                                  (declare (not safe))
                                  (cons _e62896_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp63788))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp63787))))
            (if (macro-length-mismatch-exception? _exn62894_)
                (macro-length-mismatch-exception-arg-id _exn62894_)
                (let ((__tmp63789
                       (let ((__tmp63790
                              (let ()
                                (declare (not safe))
                                (cons _exn62894_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp63790))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp63789))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn62890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62890_))
            (let ((_e62892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62890_ 'exception))))
              (if (macro-length-mismatch-exception? _e62892_)
                  (macro-length-mismatch-exception-arguments _e62892_)
                  (let ((__tmp63791
                         (let ((__tmp63792
                                (let ()
                                  (declare (not safe))
                                  (cons _e62892_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp63792))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp63791))))
            (if (macro-length-mismatch-exception? _exn62890_)
                (macro-length-mismatch-exception-arguments _exn62890_)
                (let ((__tmp63793
                       (let ((__tmp63794
                              (let ()
                                (declare (not safe))
                                (cons _exn62890_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp63794))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp63793))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn62884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62884_))
            (let ((_e62887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62884_ 'exception))))
              (if (macro-length-mismatch-exception? _e62887_)
                  (macro-length-mismatch-exception-procedure _e62887_)
                  (let ((__tmp63795
                         (let ((__tmp63796
                                (let ()
                                  (declare (not safe))
                                  (cons _e62887_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp63796))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp63795))))
            (if (macro-length-mismatch-exception? _exn62884_)
                (macro-length-mismatch-exception-procedure _exn62884_)
                (let ((__tmp63797
                       (let ((__tmp63798
                              (let ()
                                (declare (not safe))
                                (cons _exn62884_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp63798))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp63797))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn62880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62880_))
            (let ((_e62882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62880_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e62882_))
            (macro-mailbox-receive-timeout-exception? _exn62880_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn62876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62876_))
            (let ((_e62878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62876_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e62878_)
                  (macro-mailbox-receive-timeout-exception-arguments _e62878_)
                  (let ((__tmp63799
                         (let ((__tmp63800
                                (let ()
                                  (declare (not safe))
                                  (cons _e62878_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp63800))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp63799))))
            (if (macro-mailbox-receive-timeout-exception? _exn62876_)
                (macro-mailbox-receive-timeout-exception-arguments _exn62876_)
                (let ((__tmp63801
                       (let ((__tmp63802
                              (let ()
                                (declare (not safe))
                                (cons _exn62876_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp63802))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp63801))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn62870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62870_))
            (let ((_e62873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62870_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e62873_)
                  (macro-mailbox-receive-timeout-exception-procedure _e62873_)
                  (let ((__tmp63803
                         (let ((__tmp63804
                                (let ()
                                  (declare (not safe))
                                  (cons _e62873_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp63804))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp63803))))
            (if (macro-mailbox-receive-timeout-exception? _exn62870_)
                (macro-mailbox-receive-timeout-exception-procedure _exn62870_)
                (let ((__tmp63805
                       (let ((__tmp63806
                              (let ()
                                (declare (not safe))
                                (cons _exn62870_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp63806))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp63805))))))
    (define module-not-found-exception?
      (lambda (_exn62866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62866_))
            (let ((_e62868_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62866_ 'exception))))
              (macro-module-not-found-exception? _e62868_))
            (macro-module-not-found-exception? _exn62866_))))
    (define module-not-found-exception-arguments
      (lambda (_exn62862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62862_))
            (let ((_e62864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62862_ 'exception))))
              (if (macro-module-not-found-exception? _e62864_)
                  (macro-module-not-found-exception-arguments _e62864_)
                  (let ((__tmp63807
                         (let ((__tmp63808
                                (let ()
                                  (declare (not safe))
                                  (cons _e62864_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp63808))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp63807))))
            (if (macro-module-not-found-exception? _exn62862_)
                (macro-module-not-found-exception-arguments _exn62862_)
                (let ((__tmp63809
                       (let ((__tmp63810
                              (let ()
                                (declare (not safe))
                                (cons _exn62862_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp63810))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp63809))))))
    (define module-not-found-exception-procedure
      (lambda (_exn62856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62856_))
            (let ((_e62859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62856_ 'exception))))
              (if (macro-module-not-found-exception? _e62859_)
                  (macro-module-not-found-exception-procedure _e62859_)
                  (let ((__tmp63811
                         (let ((__tmp63812
                                (let ()
                                  (declare (not safe))
                                  (cons _e62859_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp63812))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp63811))))
            (if (macro-module-not-found-exception? _exn62856_)
                (macro-module-not-found-exception-procedure _exn62856_)
                (let ((__tmp63813
                       (let ((__tmp63814
                              (let ()
                                (declare (not safe))
                                (cons _exn62856_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp63814))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp63813))))))
    (define multiple-c-return-exception?
      (lambda (_exn62850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62850_))
            (let ((_e62853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62850_ 'exception))))
              (macro-multiple-c-return-exception? _e62853_))
            (macro-multiple-c-return-exception? _exn62850_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn62846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62846_))
            (let ((_e62848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62846_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e62848_))
            (macro-no-such-file-or-directory-exception? _exn62846_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn62842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62842_))
            (let ((_e62844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62842_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e62844_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e62844_)
                  (let ((__tmp63815
                         (let ((__tmp63816
                                (let ()
                                  (declare (not safe))
                                  (cons _e62844_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp63816))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp63815))))
            (if (macro-no-such-file-or-directory-exception? _exn62842_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn62842_)
                (let ((__tmp63817
                       (let ((__tmp63818
                              (let ()
                                (declare (not safe))
                                (cons _exn62842_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp63818))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp63817))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn62836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62836_))
            (let ((_e62839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62836_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e62839_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e62839_)
                  (let ((__tmp63819
                         (let ((__tmp63820
                                (let ()
                                  (declare (not safe))
                                  (cons _e62839_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp63820))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp63819))))
            (if (macro-no-such-file-or-directory-exception? _exn62836_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn62836_)
                (let ((__tmp63821
                       (let ((__tmp63822
                              (let ()
                                (declare (not safe))
                                (cons _exn62836_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp63822))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp63821))))))
    (define noncontinuable-exception?
      (lambda (_exn62832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62832_))
            (let ((_e62834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62832_ 'exception))))
              (macro-noncontinuable-exception? _e62834_))
            (macro-noncontinuable-exception? _exn62832_))))
    (define noncontinuable-exception-reason
      (lambda (_exn62826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62826_))
            (let ((_e62829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62826_ 'exception))))
              (if (macro-noncontinuable-exception? _e62829_)
                  (macro-noncontinuable-exception-reason _e62829_)
                  (let ((__tmp63823
                         (let ((__tmp63824
                                (let ()
                                  (declare (not safe))
                                  (cons _e62829_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp63824))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp63823))))
            (if (macro-noncontinuable-exception? _exn62826_)
                (macro-noncontinuable-exception-reason _exn62826_)
                (let ((__tmp63825
                       (let ((__tmp63826
                              (let ()
                                (declare (not safe))
                                (cons _exn62826_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp63826))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp63825))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn62822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62822_))
            (let ((_e62824_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62822_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e62824_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn62822_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn62818_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62818_))
            (let ((_e62820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62818_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e62820_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e62820_)
                  (let ((__tmp63827
                         (let ((__tmp63828
                                (let ()
                                  (declare (not safe))
                                  (cons _e62820_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp63828))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp63827))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn62818_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn62818_)
                (let ((__tmp63829
                       (let ((__tmp63830
                              (let ()
                                (declare (not safe))
                                (cons _exn62818_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp63830))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp63829))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn62812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62812_))
            (let ((_e62815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62812_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e62815_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e62815_)
                  (let ((__tmp63831
                         (let ((__tmp63832
                                (let ()
                                  (declare (not safe))
                                  (cons _e62815_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp63832))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp63831))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn62812_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn62812_)
                (let ((__tmp63833
                       (let ((__tmp63834
                              (let ()
                                (declare (not safe))
                                (cons _exn62812_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp63834))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp63833))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn62808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62808_))
            (let ((_e62810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62808_ 'exception))))
              (macro-nonprocedure-operator-exception? _e62810_))
            (macro-nonprocedure-operator-exception? _exn62808_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn62804_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62804_))
            (let ((_e62806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62804_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62806_)
                  (macro-nonprocedure-operator-exception-arguments _e62806_)
                  (let ((__tmp63835
                         (let ((__tmp63836
                                (let ()
                                  (declare (not safe))
                                  (cons _e62806_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp63836))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63835))))
            (if (macro-nonprocedure-operator-exception? _exn62804_)
                (macro-nonprocedure-operator-exception-arguments _exn62804_)
                (let ((__tmp63837
                       (let ((__tmp63838
                              (let ()
                                (declare (not safe))
                                (cons _exn62804_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp63838))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63837))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn62800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62800_))
            (let ((_e62802_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62800_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62802_)
                  (macro-nonprocedure-operator-exception-code _e62802_)
                  (let ((__tmp63839
                         (let ((__tmp63840
                                (let ()
                                  (declare (not safe))
                                  (cons _e62802_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp63840))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63839))))
            (if (macro-nonprocedure-operator-exception? _exn62800_)
                (macro-nonprocedure-operator-exception-code _exn62800_)
                (let ((__tmp63841
                       (let ((__tmp63842
                              (let ()
                                (declare (not safe))
                                (cons _exn62800_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp63842))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63841))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn62796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62796_))
            (let ((_e62798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62796_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62798_)
                  (macro-nonprocedure-operator-exception-operator _e62798_)
                  (let ((__tmp63843
                         (let ((__tmp63844
                                (let ()
                                  (declare (not safe))
                                  (cons _e62798_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp63844))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63843))))
            (if (macro-nonprocedure-operator-exception? _exn62796_)
                (macro-nonprocedure-operator-exception-operator _exn62796_)
                (let ((__tmp63845
                       (let ((__tmp63846
                              (let ()
                                (declare (not safe))
                                (cons _exn62796_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp63846))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63845))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn62790_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62790_))
            (let ((_e62793_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62790_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e62793_)
                  (macro-nonprocedure-operator-exception-rte _e62793_)
                  (let ((__tmp63847
                         (let ((__tmp63848
                                (let ()
                                  (declare (not safe))
                                  (cons _e62793_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp63848))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp63847))))
            (if (macro-nonprocedure-operator-exception? _exn62790_)
                (macro-nonprocedure-operator-exception-rte _exn62790_)
                (let ((__tmp63849
                       (let ((__tmp63850
                              (let ()
                                (declare (not safe))
                                (cons _exn62790_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp63850))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp63849))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn62786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62786_))
            (let ((_e62788_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62786_ 'exception))))
              (macro-not-in-compilation-context-exception? _e62788_))
            (macro-not-in-compilation-context-exception? _exn62786_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn62782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62782_))
            (let ((_e62784_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62782_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e62784_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e62784_)
                  (let ((__tmp63851
                         (let ((__tmp63852
                                (let ()
                                  (declare (not safe))
                                  (cons _e62784_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp63852))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp63851))))
            (if (macro-not-in-compilation-context-exception? _exn62782_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn62782_)
                (let ((__tmp63853
                       (let ((__tmp63854
                              (let ()
                                (declare (not safe))
                                (cons _exn62782_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp63854))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp63853))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn62776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62776_))
            (let ((_e62779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62776_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e62779_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e62779_)
                  (let ((__tmp63855
                         (let ((__tmp63856
                                (let ()
                                  (declare (not safe))
                                  (cons _e62779_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp63856))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp63855))))
            (if (macro-not-in-compilation-context-exception? _exn62776_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn62776_)
                (let ((__tmp63857
                       (let ((__tmp63858
                              (let ()
                                (declare (not safe))
                                (cons _exn62776_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp63858))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp63857))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn62772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62772_))
            (let ((_e62774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62772_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e62774_))
            (macro-number-of-arguments-limit-exception? _exn62772_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn62768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62768_))
            (let ((_e62770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62768_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e62770_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e62770_)
                  (let ((__tmp63859
                         (let ((__tmp63860
                                (let ()
                                  (declare (not safe))
                                  (cons _e62770_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp63860))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp63859))))
            (if (macro-number-of-arguments-limit-exception? _exn62768_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn62768_)
                (let ((__tmp63861
                       (let ((__tmp63862
                              (let ()
                                (declare (not safe))
                                (cons _exn62768_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp63862))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp63861))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn62762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62762_))
            (let ((_e62765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62762_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e62765_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e62765_)
                  (let ((__tmp63863
                         (let ((__tmp63864
                                (let ()
                                  (declare (not safe))
                                  (cons _e62765_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp63864))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp63863))))
            (if (macro-number-of-arguments-limit-exception? _exn62762_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn62762_)
                (let ((__tmp63865
                       (let ((__tmp63866
                              (let ()
                                (declare (not safe))
                                (cons _exn62762_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp63866))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp63865))))))
    (define os-exception?
      (lambda (_exn62758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62758_))
            (let ((_e62760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62758_ 'exception))))
              (macro-os-exception? _e62760_))
            (macro-os-exception? _exn62758_))))
    (define os-exception-arguments
      (lambda (_exn62754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62754_))
            (let ((_e62756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62754_ 'exception))))
              (if (macro-os-exception? _e62756_)
                  (macro-os-exception-arguments _e62756_)
                  (let ((__tmp63867
                         (let ((__tmp63868
                                (let ()
                                  (declare (not safe))
                                  (cons _e62756_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp63868))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63867))))
            (if (macro-os-exception? _exn62754_)
                (macro-os-exception-arguments _exn62754_)
                (let ((__tmp63869
                       (let ((__tmp63870
                              (let ()
                                (declare (not safe))
                                (cons _exn62754_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp63870))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63869))))))
    (define os-exception-code
      (lambda (_exn62750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62750_))
            (let ((_e62752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62750_ 'exception))))
              (if (macro-os-exception? _e62752_)
                  (macro-os-exception-code _e62752_)
                  (let ((__tmp63871
                         (let ((__tmp63872
                                (let ()
                                  (declare (not safe))
                                  (cons _e62752_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp63872))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63871))))
            (if (macro-os-exception? _exn62750_)
                (macro-os-exception-code _exn62750_)
                (let ((__tmp63873
                       (let ((__tmp63874
                              (let ()
                                (declare (not safe))
                                (cons _exn62750_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp63874))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63873))))))
    (define os-exception-message
      (lambda (_exn62746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62746_))
            (let ((_e62748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62746_ 'exception))))
              (if (macro-os-exception? _e62748_)
                  (macro-os-exception-message _e62748_)
                  (let ((__tmp63875
                         (let ((__tmp63876
                                (let ()
                                  (declare (not safe))
                                  (cons _e62748_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp63876))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63875))))
            (if (macro-os-exception? _exn62746_)
                (macro-os-exception-message _exn62746_)
                (let ((__tmp63877
                       (let ((__tmp63878
                              (let ()
                                (declare (not safe))
                                (cons _exn62746_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp63878))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63877))))))
    (define os-exception-procedure
      (lambda (_exn62740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62740_))
            (let ((_e62743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62740_ 'exception))))
              (if (macro-os-exception? _e62743_)
                  (macro-os-exception-procedure _e62743_)
                  (let ((__tmp63879
                         (let ((__tmp63880
                                (let ()
                                  (declare (not safe))
                                  (cons _e62743_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp63880))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp63879))))
            (if (macro-os-exception? _exn62740_)
                (macro-os-exception-procedure _exn62740_)
                (let ((__tmp63881
                       (let ((__tmp63882
                              (let ()
                                (declare (not safe))
                                (cons _exn62740_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp63882))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp63881))))))
    (define permission-denied-exception?
      (lambda (_exn62736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62736_))
            (let ((_e62738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62736_ 'exception))))
              (macro-permission-denied-exception? _e62738_))
            (macro-permission-denied-exception? _exn62736_))))
    (define permission-denied-exception-arguments
      (lambda (_exn62732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62732_))
            (let ((_e62734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62732_ 'exception))))
              (if (macro-permission-denied-exception? _e62734_)
                  (macro-permission-denied-exception-arguments _e62734_)
                  (let ((__tmp63883
                         (let ((__tmp63884
                                (let ()
                                  (declare (not safe))
                                  (cons _e62734_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp63884))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp63883))))
            (if (macro-permission-denied-exception? _exn62732_)
                (macro-permission-denied-exception-arguments _exn62732_)
                (let ((__tmp63885
                       (let ((__tmp63886
                              (let ()
                                (declare (not safe))
                                (cons _exn62732_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp63886))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp63885))))))
    (define permission-denied-exception-procedure
      (lambda (_exn62726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62726_))
            (let ((_e62729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62726_ 'exception))))
              (if (macro-permission-denied-exception? _e62729_)
                  (macro-permission-denied-exception-procedure _e62729_)
                  (let ((__tmp63887
                         (let ((__tmp63888
                                (let ()
                                  (declare (not safe))
                                  (cons _e62729_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp63888))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp63887))))
            (if (macro-permission-denied-exception? _exn62726_)
                (macro-permission-denied-exception-procedure _exn62726_)
                (let ((__tmp63889
                       (let ((__tmp63890
                              (let ()
                                (declare (not safe))
                                (cons _exn62726_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp63890))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp63889))))))
    (define range-exception?
      (lambda (_exn62722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62722_))
            (let ((_e62724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62722_ 'exception))))
              (macro-range-exception? _e62724_))
            (macro-range-exception? _exn62722_))))
    (define range-exception-arg-id
      (lambda (_exn62718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62718_))
            (let ((_e62720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62718_ 'exception))))
              (if (macro-range-exception? _e62720_)
                  (macro-range-exception-arg-id _e62720_)
                  (let ((__tmp63891
                         (let ((__tmp63892
                                (let ()
                                  (declare (not safe))
                                  (cons _e62720_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp63892))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp63891))))
            (if (macro-range-exception? _exn62718_)
                (macro-range-exception-arg-id _exn62718_)
                (let ((__tmp63893
                       (let ((__tmp63894
                              (let ()
                                (declare (not safe))
                                (cons _exn62718_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp63894))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp63893))))))
    (define range-exception-arguments
      (lambda (_exn62714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62714_))
            (let ((_e62716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62714_ 'exception))))
              (if (macro-range-exception? _e62716_)
                  (macro-range-exception-arguments _e62716_)
                  (let ((__tmp63895
                         (let ((__tmp63896
                                (let ()
                                  (declare (not safe))
                                  (cons _e62716_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp63896))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp63895))))
            (if (macro-range-exception? _exn62714_)
                (macro-range-exception-arguments _exn62714_)
                (let ((__tmp63897
                       (let ((__tmp63898
                              (let ()
                                (declare (not safe))
                                (cons _exn62714_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp63898))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp63897))))))
    (define range-exception-procedure
      (lambda (_exn62708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62708_))
            (let ((_e62711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62708_ 'exception))))
              (if (macro-range-exception? _e62711_)
                  (macro-range-exception-procedure _e62711_)
                  (let ((__tmp63899
                         (let ((__tmp63900
                                (let ()
                                  (declare (not safe))
                                  (cons _e62711_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp63900))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp63899))))
            (if (macro-range-exception? _exn62708_)
                (macro-range-exception-procedure _exn62708_)
                (let ((__tmp63901
                       (let ((__tmp63902
                              (let ()
                                (declare (not safe))
                                (cons _exn62708_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp63902))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp63901))))))
    (define rpc-remote-error-exception?
      (lambda (_exn62704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62704_))
            (let ((_e62706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62704_ 'exception))))
              (macro-rpc-remote-error-exception? _e62706_))
            (macro-rpc-remote-error-exception? _exn62704_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn62700_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62700_))
            (let ((_e62702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62700_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e62702_)
                  (macro-rpc-remote-error-exception-arguments _e62702_)
                  (let ((__tmp63903
                         (let ((__tmp63904
                                (let ()
                                  (declare (not safe))
                                  (cons _e62702_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp63904))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp63903))))
            (if (macro-rpc-remote-error-exception? _exn62700_)
                (macro-rpc-remote-error-exception-arguments _exn62700_)
                (let ((__tmp63905
                       (let ((__tmp63906
                              (let ()
                                (declare (not safe))
                                (cons _exn62700_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp63906))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp63905))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn62696_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62696_))
            (let ((_e62698_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62696_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e62698_)
                  (macro-rpc-remote-error-exception-message _e62698_)
                  (let ((__tmp63907
                         (let ((__tmp63908
                                (let ()
                                  (declare (not safe))
                                  (cons _e62698_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp63908))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp63907))))
            (if (macro-rpc-remote-error-exception? _exn62696_)
                (macro-rpc-remote-error-exception-message _exn62696_)
                (let ((__tmp63909
                       (let ((__tmp63910
                              (let ()
                                (declare (not safe))
                                (cons _exn62696_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp63910))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp63909))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn62690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62690_))
            (let ((_e62693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62690_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e62693_)
                  (macro-rpc-remote-error-exception-procedure _e62693_)
                  (let ((__tmp63911
                         (let ((__tmp63912
                                (let ()
                                  (declare (not safe))
                                  (cons _e62693_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp63912))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp63911))))
            (if (macro-rpc-remote-error-exception? _exn62690_)
                (macro-rpc-remote-error-exception-procedure _exn62690_)
                (let ((__tmp63913
                       (let ((__tmp63914
                              (let ()
                                (declare (not safe))
                                (cons _exn62690_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp63914))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp63913))))))
    (define scheduler-exception?
      (lambda (_exn62686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62686_))
            (let ((_e62688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62686_ 'exception))))
              (macro-scheduler-exception? _e62688_))
            (macro-scheduler-exception? _exn62686_))))
    (define scheduler-exception-reason
      (lambda (_exn62680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62680_))
            (let ((_e62683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62680_ 'exception))))
              (if (macro-scheduler-exception? _e62683_)
                  (macro-scheduler-exception-reason _e62683_)
                  (let ((__tmp63915
                         (let ((__tmp63916
                                (let ()
                                  (declare (not safe))
                                  (cons _e62683_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp63916))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp63915))))
            (if (macro-scheduler-exception? _exn62680_)
                (macro-scheduler-exception-reason _exn62680_)
                (let ((__tmp63917
                       (let ((__tmp63918
                              (let ()
                                (declare (not safe))
                                (cons _exn62680_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp63918))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp63917))))))
    (define sfun-conversion-exception?
      (lambda (_exn62676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62676_))
            (let ((_e62678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62676_ 'exception))))
              (macro-sfun-conversion-exception? _e62678_))
            (macro-sfun-conversion-exception? _exn62676_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn62672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62672_))
            (let ((_e62674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62672_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62674_)
                  (macro-sfun-conversion-exception-arguments _e62674_)
                  (let ((__tmp63919
                         (let ((__tmp63920
                                (let ()
                                  (declare (not safe))
                                  (cons _e62674_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp63920))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63919))))
            (if (macro-sfun-conversion-exception? _exn62672_)
                (macro-sfun-conversion-exception-arguments _exn62672_)
                (let ((__tmp63921
                       (let ((__tmp63922
                              (let ()
                                (declare (not safe))
                                (cons _exn62672_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp63922))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63921))))))
    (define sfun-conversion-exception-code
      (lambda (_exn62668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62668_))
            (let ((_e62670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62668_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62670_)
                  (macro-sfun-conversion-exception-code _e62670_)
                  (let ((__tmp63923
                         (let ((__tmp63924
                                (let ()
                                  (declare (not safe))
                                  (cons _e62670_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp63924))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63923))))
            (if (macro-sfun-conversion-exception? _exn62668_)
                (macro-sfun-conversion-exception-code _exn62668_)
                (let ((__tmp63925
                       (let ((__tmp63926
                              (let ()
                                (declare (not safe))
                                (cons _exn62668_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp63926))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63925))))))
    (define sfun-conversion-exception-message
      (lambda (_exn62664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62664_))
            (let ((_e62666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62664_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62666_)
                  (macro-sfun-conversion-exception-message _e62666_)
                  (let ((__tmp63927
                         (let ((__tmp63928
                                (let ()
                                  (declare (not safe))
                                  (cons _e62666_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp63928))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63927))))
            (if (macro-sfun-conversion-exception? _exn62664_)
                (macro-sfun-conversion-exception-message _exn62664_)
                (let ((__tmp63929
                       (let ((__tmp63930
                              (let ()
                                (declare (not safe))
                                (cons _exn62664_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp63930))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63929))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn62658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62658_))
            (let ((_e62661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62658_ 'exception))))
              (if (macro-sfun-conversion-exception? _e62661_)
                  (macro-sfun-conversion-exception-procedure _e62661_)
                  (let ((__tmp63931
                         (let ((__tmp63932
                                (let ()
                                  (declare (not safe))
                                  (cons _e62661_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp63932))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp63931))))
            (if (macro-sfun-conversion-exception? _exn62658_)
                (macro-sfun-conversion-exception-procedure _exn62658_)
                (let ((__tmp63933
                       (let ((__tmp63934
                              (let ()
                                (declare (not safe))
                                (cons _exn62658_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp63934))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp63933))))))
    (define stack-overflow-exception?
      (lambda (_exn62652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62652_))
            (let ((_e62655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62652_ 'exception))))
              (macro-stack-overflow-exception? _e62655_))
            (macro-stack-overflow-exception? _exn62652_))))
    (define started-thread-exception?
      (lambda (_exn62648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62648_))
            (let ((_e62650_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62648_ 'exception))))
              (macro-started-thread-exception? _e62650_))
            (macro-started-thread-exception? _exn62648_))))
    (define started-thread-exception-arguments
      (lambda (_exn62644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62644_))
            (let ((_e62646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62644_ 'exception))))
              (if (macro-started-thread-exception? _e62646_)
                  (macro-started-thread-exception-arguments _e62646_)
                  (let ((__tmp63935
                         (let ((__tmp63936
                                (let ()
                                  (declare (not safe))
                                  (cons _e62646_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp63936))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp63935))))
            (if (macro-started-thread-exception? _exn62644_)
                (macro-started-thread-exception-arguments _exn62644_)
                (let ((__tmp63937
                       (let ((__tmp63938
                              (let ()
                                (declare (not safe))
                                (cons _exn62644_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp63938))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp63937))))))
    (define started-thread-exception-procedure
      (lambda (_exn62638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62638_))
            (let ((_e62641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62638_ 'exception))))
              (if (macro-started-thread-exception? _e62641_)
                  (macro-started-thread-exception-procedure _e62641_)
                  (let ((__tmp63939
                         (let ((__tmp63940
                                (let ()
                                  (declare (not safe))
                                  (cons _e62641_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp63940))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp63939))))
            (if (macro-started-thread-exception? _exn62638_)
                (macro-started-thread-exception-procedure _exn62638_)
                (let ((__tmp63941
                       (let ((__tmp63942
                              (let ()
                                (declare (not safe))
                                (cons _exn62638_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp63942))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp63941))))))
    (define terminated-thread-exception?
      (lambda (_exn62634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62634_))
            (let ((_e62636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62634_ 'exception))))
              (macro-terminated-thread-exception? _e62636_))
            (macro-terminated-thread-exception? _exn62634_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn62630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62630_))
            (let ((_e62632_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62630_ 'exception))))
              (if (macro-terminated-thread-exception? _e62632_)
                  (macro-terminated-thread-exception-arguments _e62632_)
                  (let ((__tmp63943
                         (let ((__tmp63944
                                (let ()
                                  (declare (not safe))
                                  (cons _e62632_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp63944))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp63943))))
            (if (macro-terminated-thread-exception? _exn62630_)
                (macro-terminated-thread-exception-arguments _exn62630_)
                (let ((__tmp63945
                       (let ((__tmp63946
                              (let ()
                                (declare (not safe))
                                (cons _exn62630_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp63946))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp63945))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn62624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62624_))
            (let ((_e62627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62624_ 'exception))))
              (if (macro-terminated-thread-exception? _e62627_)
                  (macro-terminated-thread-exception-procedure _e62627_)
                  (let ((__tmp63947
                         (let ((__tmp63948
                                (let ()
                                  (declare (not safe))
                                  (cons _e62627_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp63948))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp63947))))
            (if (macro-terminated-thread-exception? _exn62624_)
                (macro-terminated-thread-exception-procedure _exn62624_)
                (let ((__tmp63949
                       (let ((__tmp63950
                              (let ()
                                (declare (not safe))
                                (cons _exn62624_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp63950))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp63949))))))
    (define type-exception?
      (lambda (_exn62620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62620_))
            (let ((_e62622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62620_ 'exception))))
              (macro-type-exception? _e62622_))
            (macro-type-exception? _exn62620_))))
    (define type-exception-arg-id
      (lambda (_exn62616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62616_))
            (let ((_e62618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62616_ 'exception))))
              (if (macro-type-exception? _e62618_)
                  (macro-type-exception-arg-id _e62618_)
                  (let ((__tmp63951
                         (let ((__tmp63952
                                (let ()
                                  (declare (not safe))
                                  (cons _e62618_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp63952))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63951))))
            (if (macro-type-exception? _exn62616_)
                (macro-type-exception-arg-id _exn62616_)
                (let ((__tmp63953
                       (let ((__tmp63954
                              (let ()
                                (declare (not safe))
                                (cons _exn62616_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp63954))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63953))))))
    (define type-exception-arguments
      (lambda (_exn62612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62612_))
            (let ((_e62614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62612_ 'exception))))
              (if (macro-type-exception? _e62614_)
                  (macro-type-exception-arguments _e62614_)
                  (let ((__tmp63955
                         (let ((__tmp63956
                                (let ()
                                  (declare (not safe))
                                  (cons _e62614_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp63956))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63955))))
            (if (macro-type-exception? _exn62612_)
                (macro-type-exception-arguments _exn62612_)
                (let ((__tmp63957
                       (let ((__tmp63958
                              (let ()
                                (declare (not safe))
                                (cons _exn62612_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp63958))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63957))))))
    (define type-exception-procedure
      (lambda (_exn62608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62608_))
            (let ((_e62610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62608_ 'exception))))
              (if (macro-type-exception? _e62610_)
                  (macro-type-exception-procedure _e62610_)
                  (let ((__tmp63959
                         (let ((__tmp63960
                                (let ()
                                  (declare (not safe))
                                  (cons _e62610_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp63960))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63959))))
            (if (macro-type-exception? _exn62608_)
                (macro-type-exception-procedure _exn62608_)
                (let ((__tmp63961
                       (let ((__tmp63962
                              (let ()
                                (declare (not safe))
                                (cons _exn62608_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp63962))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63961))))))
    (define type-exception-type-id
      (lambda (_exn62602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62602_))
            (let ((_e62605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62602_ 'exception))))
              (if (macro-type-exception? _e62605_)
                  (macro-type-exception-type-id _e62605_)
                  (let ((__tmp63963
                         (let ((__tmp63964
                                (let ()
                                  (declare (not safe))
                                  (cons _e62605_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp63964))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp63963))))
            (if (macro-type-exception? _exn62602_)
                (macro-type-exception-type-id _exn62602_)
                (let ((__tmp63965
                       (let ((__tmp63966
                              (let ()
                                (declare (not safe))
                                (cons _exn62602_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp63966))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp63965))))))
    (define unbound-global-exception?
      (lambda (_exn62598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62598_))
            (let ((_e62600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62598_ 'exception))))
              (macro-unbound-global-exception? _e62600_))
            (macro-unbound-global-exception? _exn62598_))))
    (define unbound-global-exception-code
      (lambda (_exn62594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62594_))
            (let ((_e62596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62594_ 'exception))))
              (if (macro-unbound-global-exception? _e62596_)
                  (macro-unbound-global-exception-code _e62596_)
                  (let ((__tmp63967
                         (let ((__tmp63968
                                (let ()
                                  (declare (not safe))
                                  (cons _e62596_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp63968))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp63967))))
            (if (macro-unbound-global-exception? _exn62594_)
                (macro-unbound-global-exception-code _exn62594_)
                (let ((__tmp63969
                       (let ((__tmp63970
                              (let ()
                                (declare (not safe))
                                (cons _exn62594_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp63970))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp63969))))))
    (define unbound-global-exception-rte
      (lambda (_exn62590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62590_))
            (let ((_e62592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62590_ 'exception))))
              (if (macro-unbound-global-exception? _e62592_)
                  (macro-unbound-global-exception-rte _e62592_)
                  (let ((__tmp63971
                         (let ((__tmp63972
                                (let ()
                                  (declare (not safe))
                                  (cons _e62592_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp63972))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp63971))))
            (if (macro-unbound-global-exception? _exn62590_)
                (macro-unbound-global-exception-rte _exn62590_)
                (let ((__tmp63973
                       (let ((__tmp63974
                              (let ()
                                (declare (not safe))
                                (cons _exn62590_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp63974))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp63973))))))
    (define unbound-global-exception-variable
      (lambda (_exn62584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62584_))
            (let ((_e62587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62584_ 'exception))))
              (if (macro-unbound-global-exception? _e62587_)
                  (macro-unbound-global-exception-variable _e62587_)
                  (let ((__tmp63975
                         (let ((__tmp63976
                                (let ()
                                  (declare (not safe))
                                  (cons _e62587_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp63976))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp63975))))
            (if (macro-unbound-global-exception? _exn62584_)
                (macro-unbound-global-exception-variable _exn62584_)
                (let ((__tmp63977
                       (let ((__tmp63978
                              (let ()
                                (declare (not safe))
                                (cons _exn62584_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp63978))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp63977))))))
    (define unbound-key-exception?
      (lambda (_exn62580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62580_))
            (let ((_e62582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62580_ 'exception))))
              (macro-unbound-key-exception? _e62582_))
            (macro-unbound-key-exception? _exn62580_))))
    (define unbound-key-exception-arguments
      (lambda (_exn62576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62576_))
            (let ((_e62578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62576_ 'exception))))
              (if (macro-unbound-key-exception? _e62578_)
                  (macro-unbound-key-exception-arguments _e62578_)
                  (let ((__tmp63979
                         (let ((__tmp63980
                                (let ()
                                  (declare (not safe))
                                  (cons _e62578_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp63980))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp63979))))
            (if (macro-unbound-key-exception? _exn62576_)
                (macro-unbound-key-exception-arguments _exn62576_)
                (let ((__tmp63981
                       (let ((__tmp63982
                              (let ()
                                (declare (not safe))
                                (cons _exn62576_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp63982))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp63981))))))
    (define unbound-key-exception-procedure
      (lambda (_exn62570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62570_))
            (let ((_e62573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62570_ 'exception))))
              (if (macro-unbound-key-exception? _e62573_)
                  (macro-unbound-key-exception-procedure _e62573_)
                  (let ((__tmp63983
                         (let ((__tmp63984
                                (let ()
                                  (declare (not safe))
                                  (cons _e62573_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp63984))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp63983))))
            (if (macro-unbound-key-exception? _exn62570_)
                (macro-unbound-key-exception-procedure _exn62570_)
                (let ((__tmp63985
                       (let ((__tmp63986
                              (let ()
                                (declare (not safe))
                                (cons _exn62570_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp63986))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp63985))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn62566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62566_))
            (let ((_e62568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62566_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e62568_))
            (macro-unbound-os-environment-variable-exception? _exn62566_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn62562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62562_))
            (let ((_e62564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62562_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e62564_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e62564_)
                  (let ((__tmp63987
                         (let ((__tmp63988
                                (let ()
                                  (declare (not safe))
                                  (cons _e62564_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp63988))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp63987))))
            (if (macro-unbound-os-environment-variable-exception? _exn62562_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn62562_)
                (let ((__tmp63989
                       (let ((__tmp63990
                              (let ()
                                (declare (not safe))
                                (cons _exn62562_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp63990))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp63989))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn62556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62556_))
            (let ((_e62559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62556_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e62559_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e62559_)
                  (let ((__tmp63991
                         (let ((__tmp63992
                                (let ()
                                  (declare (not safe))
                                  (cons _e62559_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp63992))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp63991))))
            (if (macro-unbound-os-environment-variable-exception? _exn62556_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn62556_)
                (let ((__tmp63993
                       (let ((__tmp63994
                              (let ()
                                (declare (not safe))
                                (cons _exn62556_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp63994))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp63993))))))
    (define unbound-serial-number-exception?
      (lambda (_exn62552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62552_))
            (let ((_e62554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62552_ 'exception))))
              (macro-unbound-serial-number-exception? _e62554_))
            (macro-unbound-serial-number-exception? _exn62552_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn62548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62548_))
            (let ((_e62550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62548_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e62550_)
                  (macro-unbound-serial-number-exception-arguments _e62550_)
                  (let ((__tmp63995
                         (let ((__tmp63996
                                (let ()
                                  (declare (not safe))
                                  (cons _e62550_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp63996))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp63995))))
            (if (macro-unbound-serial-number-exception? _exn62548_)
                (macro-unbound-serial-number-exception-arguments _exn62548_)
                (let ((__tmp63997
                       (let ((__tmp63998
                              (let ()
                                (declare (not safe))
                                (cons _exn62548_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp63998))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp63997))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn62542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62542_))
            (let ((_e62545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62542_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e62545_)
                  (macro-unbound-serial-number-exception-procedure _e62545_)
                  (let ((__tmp63999
                         (let ((__tmp64000
                                (let ()
                                  (declare (not safe))
                                  (cons _e62545_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp64000))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp63999))))
            (if (macro-unbound-serial-number-exception? _exn62542_)
                (macro-unbound-serial-number-exception-procedure _exn62542_)
                (let ((__tmp64001
                       (let ((__tmp64002
                              (let ()
                                (declare (not safe))
                                (cons _exn62542_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp64002))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp64001))))))
    (define uncaught-exception?
      (lambda (_exn62538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62538_))
            (let ((_e62540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62538_ 'exception))))
              (macro-uncaught-exception? _e62540_))
            (macro-uncaught-exception? _exn62538_))))
    (define uncaught-exception-arguments
      (lambda (_exn62534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62534_))
            (let ((_e62536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62534_ 'exception))))
              (if (macro-uncaught-exception? _e62536_)
                  (macro-uncaught-exception-arguments _e62536_)
                  (let ((__tmp64003
                         (let ((__tmp64004
                                (let ()
                                  (declare (not safe))
                                  (cons _e62536_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp64004))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp64003))))
            (if (macro-uncaught-exception? _exn62534_)
                (macro-uncaught-exception-arguments _exn62534_)
                (let ((__tmp64005
                       (let ((__tmp64006
                              (let ()
                                (declare (not safe))
                                (cons _exn62534_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp64006))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp64005))))))
    (define uncaught-exception-procedure
      (lambda (_exn62530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62530_))
            (let ((_e62532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62530_ 'exception))))
              (if (macro-uncaught-exception? _e62532_)
                  (macro-uncaught-exception-procedure _e62532_)
                  (let ((__tmp64007
                         (let ((__tmp64008
                                (let ()
                                  (declare (not safe))
                                  (cons _e62532_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp64008))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp64007))))
            (if (macro-uncaught-exception? _exn62530_)
                (macro-uncaught-exception-procedure _exn62530_)
                (let ((__tmp64009
                       (let ((__tmp64010
                              (let ()
                                (declare (not safe))
                                (cons _exn62530_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp64010))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp64009))))))
    (define uncaught-exception-reason
      (lambda (_exn62524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62524_))
            (let ((_e62527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62524_ 'exception))))
              (if (macro-uncaught-exception? _e62527_)
                  (macro-uncaught-exception-reason _e62527_)
                  (let ((__tmp64011
                         (let ((__tmp64012
                                (let ()
                                  (declare (not safe))
                                  (cons _e62527_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp64012))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp64011))))
            (if (macro-uncaught-exception? _exn62524_)
                (macro-uncaught-exception-reason _exn62524_)
                (let ((__tmp64013
                       (let ((__tmp64014
                              (let ()
                                (declare (not safe))
                                (cons _exn62524_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp64014))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp64013))))))
    (define uninitialized-thread-exception?
      (lambda (_exn62520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62520_))
            (let ((_e62522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62520_ 'exception))))
              (macro-uninitialized-thread-exception? _e62522_))
            (macro-uninitialized-thread-exception? _exn62520_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn62516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62516_))
            (let ((_e62518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62516_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e62518_)
                  (macro-uninitialized-thread-exception-arguments _e62518_)
                  (let ((__tmp64015
                         (let ((__tmp64016
                                (let ()
                                  (declare (not safe))
                                  (cons _e62518_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp64016))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp64015))))
            (if (macro-uninitialized-thread-exception? _exn62516_)
                (macro-uninitialized-thread-exception-arguments _exn62516_)
                (let ((__tmp64017
                       (let ((__tmp64018
                              (let ()
                                (declare (not safe))
                                (cons _exn62516_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp64018))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp64017))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn62510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62510_))
            (let ((_e62513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62510_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e62513_)
                  (macro-uninitialized-thread-exception-procedure _e62513_)
                  (let ((__tmp64019
                         (let ((__tmp64020
                                (let ()
                                  (declare (not safe))
                                  (cons _e62513_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp64020))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp64019))))
            (if (macro-uninitialized-thread-exception? _exn62510_)
                (macro-uninitialized-thread-exception-procedure _exn62510_)
                (let ((__tmp64021
                       (let ((__tmp64022
                              (let ()
                                (declare (not safe))
                                (cons _exn62510_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp64022))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp64021))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn62506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62506_))
            (let ((_e62508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62506_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e62508_))
            (macro-unknown-keyword-argument-exception? _exn62506_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn62502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62502_))
            (let ((_e62504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62502_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e62504_)
                  (macro-unknown-keyword-argument-exception-arguments _e62504_)
                  (let ((__tmp64023
                         (let ((__tmp64024
                                (let ()
                                  (declare (not safe))
                                  (cons _e62504_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp64024))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp64023))))
            (if (macro-unknown-keyword-argument-exception? _exn62502_)
                (macro-unknown-keyword-argument-exception-arguments _exn62502_)
                (let ((__tmp64025
                       (let ((__tmp64026
                              (let ()
                                (declare (not safe))
                                (cons _exn62502_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp64026))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp64025))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn62496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62496_))
            (let ((_e62499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62496_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e62499_)
                  (macro-unknown-keyword-argument-exception-procedure _e62499_)
                  (let ((__tmp64027
                         (let ((__tmp64028
                                (let ()
                                  (declare (not safe))
                                  (cons _e62499_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp64028))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp64027))))
            (if (macro-unknown-keyword-argument-exception? _exn62496_)
                (macro-unknown-keyword-argument-exception-procedure _exn62496_)
                (let ((__tmp64029
                       (let ((__tmp64030
                              (let ()
                                (declare (not safe))
                                (cons _exn62496_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp64030))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp64029))))))
    (define unterminated-process-exception?
      (lambda (_exn62492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62492_))
            (let ((_e62494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62492_ 'exception))))
              (macro-unterminated-process-exception? _e62494_))
            (macro-unterminated-process-exception? _exn62492_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn62488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62488_))
            (let ((_e62490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62488_ 'exception))))
              (if (macro-unterminated-process-exception? _e62490_)
                  (macro-unterminated-process-exception-arguments _e62490_)
                  (let ((__tmp64031
                         (let ((__tmp64032
                                (let ()
                                  (declare (not safe))
                                  (cons _e62490_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp64032))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp64031))))
            (if (macro-unterminated-process-exception? _exn62488_)
                (macro-unterminated-process-exception-arguments _exn62488_)
                (let ((__tmp64033
                       (let ((__tmp64034
                              (let ()
                                (declare (not safe))
                                (cons _exn62488_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp64034))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp64033))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn62482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62482_))
            (let ((_e62485_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62482_ 'exception))))
              (if (macro-unterminated-process-exception? _e62485_)
                  (macro-unterminated-process-exception-procedure _e62485_)
                  (let ((__tmp64035
                         (let ((__tmp64036
                                (let ()
                                  (declare (not safe))
                                  (cons _e62485_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp64036))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp64035))))
            (if (macro-unterminated-process-exception? _exn62482_)
                (macro-unterminated-process-exception-procedure _exn62482_)
                (let ((__tmp64037
                       (let ((__tmp64038
                              (let ()
                                (declare (not safe))
                                (cons _exn62482_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp64038))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp64037))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn62478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62478_))
            (let ((_e62480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62478_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e62480_))
            (macro-wrong-number-of-arguments-exception? _exn62478_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn62474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62474_))
            (let ((_e62476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62474_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e62476_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e62476_)
                  (let ((__tmp64039
                         (let ((__tmp64040
                                (let ()
                                  (declare (not safe))
                                  (cons _e62476_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp64040))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp64039))))
            (if (macro-wrong-number-of-arguments-exception? _exn62474_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn62474_)
                (let ((__tmp64041
                       (let ((__tmp64042
                              (let ()
                                (declare (not safe))
                                (cons _exn62474_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp64042))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp64041))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn62468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62468_))
            (let ((_e62471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62468_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e62471_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e62471_)
                  (let ((__tmp64043
                         (let ((__tmp64044
                                (let ()
                                  (declare (not safe))
                                  (cons _e62471_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp64044))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp64043))))
            (if (macro-wrong-number-of-arguments-exception? _exn62468_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn62468_)
                (let ((__tmp64045
                       (let ((__tmp64046
                              (let ()
                                (declare (not safe))
                                (cons _exn62468_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp64046))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp64045))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn62464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62464_))
            (let ((_e62466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62464_ 'exception))))
              (macro-wrong-number-of-values-exception? _e62466_))
            (macro-wrong-number-of-values-exception? _exn62464_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn62460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62460_))
            (let ((_e62462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62460_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e62462_)
                  (macro-wrong-number-of-values-exception-code _e62462_)
                  (let ((__tmp64047
                         (let ((__tmp64048
                                (let ()
                                  (declare (not safe))
                                  (cons _e62462_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp64048))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp64047))))
            (if (macro-wrong-number-of-values-exception? _exn62460_)
                (macro-wrong-number-of-values-exception-code _exn62460_)
                (let ((__tmp64049
                       (let ((__tmp64050
                              (let ()
                                (declare (not safe))
                                (cons _exn62460_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp64050))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp64049))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn62456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62456_))
            (let ((_e62458_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62456_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e62458_)
                  (macro-wrong-number-of-values-exception-rte _e62458_)
                  (let ((__tmp64051
                         (let ((__tmp64052
                                (let ()
                                  (declare (not safe))
                                  (cons _e62458_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp64052))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp64051))))
            (if (macro-wrong-number-of-values-exception? _exn62456_)
                (macro-wrong-number-of-values-exception-rte _exn62456_)
                (let ((__tmp64053
                       (let ((__tmp64054
                              (let ()
                                (declare (not safe))
                                (cons _exn62456_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp64054))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp64053))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn62450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62450_))
            (let ((_e62453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62450_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e62453_)
                  (macro-wrong-number-of-values-exception-vals _e62453_)
                  (let ((__tmp64055
                         (let ((__tmp64056
                                (let ()
                                  (declare (not safe))
                                  (cons _e62453_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp64056))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp64055))))
            (if (macro-wrong-number-of-values-exception? _exn62450_)
                (macro-wrong-number-of-values-exception-vals _exn62450_)
                (let ((__tmp64057
                       (let ((__tmp64058
                              (let ()
                                (declare (not safe))
                                (cons _exn62450_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp64058))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp64057))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn62444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn62444_))
            (let ((_e62447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn62444_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e62447_))
            (macro-wrong-processor-c-return-exception? _exn62444_))))))
