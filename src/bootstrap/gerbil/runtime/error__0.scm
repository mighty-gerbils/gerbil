(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708418154)
  (begin
    (define Exception::t
      (let ((__tmp65688 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp65688
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args65659_ (apply make-instance Exception::t _$args65659_)))
    (define StackTrace::t
      (let ((__tmp65689 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp65689
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args65656_ (apply make-instance StackTrace::t _$args65656_)))
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
      (let ((__tmp65690 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp65690
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args65653_ (apply make-instance Error::t _$args65653_)))
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
      (let ((__tmp65691 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp65691
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args65650_
        (apply make-instance RuntimeException::t _$args65650_)))
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
      (lambda (_exn65645_ _continue65646_)
        (let ((_exn65648_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn65645_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn65648_ _continue65646_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn65641_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn65641_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn65641_ 'continuation))
                '#!void
                (let ((__tmp65692
                       (lambda (_cont65643_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn65641_
                            'continuation
                            _cont65643_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp65692)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn65641_))))
    (define error
      (lambda (_message65638_ . _irritants65639_)
        (raise (let ((__obj65682
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj65682
                  _message65638_
                  'irritants:
                  _irritants65639_)
                 __obj65682))))
    (define with-exception-handler
      (lambda (_handler65631_ _thunk65632_)
        (if (let () (declare (not safe)) (procedure? _handler65631_))
            '#!void
            (raise (let ((__obj65683
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65683
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65631_ '())))
                     __obj65683)))
        (if (let () (declare (not safe)) (procedure? _thunk65632_))
            '#!void
            (raise (let ((__obj65684
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65684
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65632_ '())))
                     __obj65684)))
        (let ((__tmp65693
               (lambda (_exn65634_)
                 (let ((_exn65636_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn65634_))))
                   (_handler65631_ _exn65636_)))))
          (declare (not safe))
          (##with-exception-handler __tmp65693 _thunk65632_))))
    (define with-catch
      (lambda (_handler65624_ _thunk65625_)
        (if (let () (declare (not safe)) (procedure? _handler65624_))
            '#!void
            (raise (let ((__obj65685
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65685
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler65624_ '())))
                     __obj65685)))
        (if (let () (declare (not safe)) (procedure? _thunk65625_))
            '#!void
            (raise (let ((__obj65686
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj65686
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk65625_ '())))
                     __obj65686)))
        (let ((__tmp65694
               (lambda (_cont65627_)
                 (with-exception-handler
                  (lambda (_exn65629_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont65627_
                       _handler65624_
                       _exn65629_)))
                  _thunk65625_))))
          (declare (not safe))
          (##continuation-capture __tmp65694))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn65615_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn65615_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn65615_)))
            _exn65615_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn65615_))
                _exn65615_
                (if (macro-exception? _exn65615_)
                    (let ((_rte65620_
                           (let ((__obj65687
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj65687
                                _exn65615_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj65687)))
                      (let ((__tmp65695
                             (lambda (_cont65622_)
                               (let ((__tmp65696
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont65622_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte65620_
                                  'continuation
                                  __tmp65696)))))
                        (declare (not safe))
                        (##continuation-capture __tmp65695))
                      _rte65620_)
                    _exn65615_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj65610_)
        (let ((_$e65612_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj65610_))))
          (if _$e65612_
              _$e65612_
              (let () (declare (not safe)) (error-exception? _obj65610_))))))
    (define error-message
      (lambda (_obj65608_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65608_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65608_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj65608_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj65608_))
                '#f))))
    (define error-irritants
      (lambda (_obj65606_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65606_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65606_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj65606_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj65606_))
                '#f))))
    (define error-trace
      (lambda (_obj65604_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65604_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65604_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e65586_ _port65587_)
        (let ((_$e65589_
               (let ()
                 (declare (not safe))
                 (method-ref _e65586_ 'display-exception))))
          (if _$e65589_
              ((lambda (_f65592_) (_f65592_ _e65586_ _port65587_)) _$e65589_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e65586_ _port65587_))))))
    (define display-exception__0
      (lambda (_e65597_)
        (let ((_port65599_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e65597_ _port65599_))))
    (define display-exception
      (lambda _g65698_
        (let ((_g65697_ (let () (declare (not safe)) (##length _g65698_))))
          (cond ((let () (declare (not safe)) (##fx= _g65697_ 1))
                 (apply (lambda (_e65597_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e65597_)))
                        _g65698_))
                ((let () (declare (not safe)) (##fx= _g65697_ 2))
                 (apply (lambda (_e65601_ _port65602_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e65601_ _port65602_)))
                        _g65698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g65698_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self65575_ _message65576_ . _rest65577_)
        (let ((_message65583_
               (if (let () (declare (not safe)) (string? _message65576_))
                   _message65576_
                   (call-with-output-string
                    '""
                    (lambda (_g6557865580_)
                      (display _message65576_ _g6557865580_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self65575_ 'message _message65583_))
          (apply class-instance-init! _self65575_ _rest65577_))))
    (define Error:::init!::specialize
      (lambda (__t65661)
        (let ((__message65662
               (let ((__tmp65663
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65661 'message))))
                 (if __tmp65663
                     __tmp65663
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65575_ _message65576_ . _rest65577_)
            (let ((_message65583_
                   (if (let () (declare (not safe)) (string? _message65576_))
                       _message65576_
                       (call-with-output-string
                        '""
                        (lambda (_g6557865580_)
                          (display _message65576_ _g6557865580_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self65575_
                 _message65583_
                 __message65662
                 __t65661
                 '#f))
              (apply class-instance-init! _self65575_ _rest65577_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self65433_ _port65434_)
        (let ((_tmp-port65436_ (open-output-string))
              (_display-error-newline65437_
               (> (output-port-column _port65434_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65436_))
          (let ((__tmp65699
                 (lambda ()
                   (if _display-error-newline65437_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e65440_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65433_ 'where))))
                     (if _$e65440_ (display _$e65440_) (display '"?")))
                   (let ((__tmp65700
                          (let ((__tmp65701 (object-type _self65433_)))
                            (declare (not safe))
                            (##type-name __tmp65701))))
                     (declare (not safe))
                     (display* '" [" __tmp65700 '"]: "))
                   (let ((__tmp65702
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65433_ 'message))))
                     (declare (not safe))
                     (displayln __tmp65702))
                   (let ((_irritants65443_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65433_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants65443_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj65445_)
                              (write _obj65445_)
                              (write-char '#\space))
                            _irritants65443_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self65433_))
                            (dump-stack-trace?))
                       (let ((_cont6544665448_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self65433_
                                 'continuation))))
                         (if _cont6544665448_
                             (let ((_cont65451_ _cont6544665448_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont65451_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp65699
             current-output-port
             _tmp-port65436_))
          (let ((__tmp65703 (get-output-string _tmp-port65436_)))
            (declare (not safe))
            (##write-string __tmp65703 _port65434_)))))
    (define Error::display-exception::specialize
      (lambda (__t65664)
        (let ((__irritants65665
               (let ((__tmp65669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65664 'irritants))))
                 (if __tmp65669
                     __tmp65669
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message65666
               (let ((__tmp65670
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65664 'message))))
                 (if __tmp65670
                     __tmp65670
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__continuation65667
               (let ((__tmp65671
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65664 'continuation))))
                 (if __tmp65671
                     __tmp65671
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where65668
               (let ((__tmp65672
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65664 'where))))
                 (if __tmp65672
                     __tmp65672
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where))))))
          (lambda (_self65433_ _port65434_)
            (let ((_tmp-port65436_ (open-output-string))
                  (_display-error-newline65437_
                   (> (output-port-column _port65434_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65436_))
              (let ((__tmp65704
                     (lambda ()
                       (if _display-error-newline65437_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e65440_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65433_
                                 __where65668
                                 __t65664
                                 '#f))))
                         (if _$e65440_ (display _$e65440_) (display '"?")))
                       (let ((__tmp65705
                              (let ((__tmp65706 (object-type _self65433_)))
                                (declare (not safe))
                                (##type-name __tmp65706))))
                         (declare (not safe))
                         (display* '" [" __tmp65705 '"]: "))
                       (let ((__tmp65707
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65433_
                                 __message65666
                                 __t65664
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp65707))
                       (let ((_irritants65443_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65433_
                                 __irritants65665
                                 __t65664
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants65443_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj65445_)
                                  (write _obj65445_)
                                  (write-char '#\space))
                                _irritants65443_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self65433_))
                                (dump-stack-trace?))
                           (let ((_cont6544665448_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self65433_
                                     __continuation65667
                                     __t65664
                                     '#f))))
                             (if _cont6544665448_
                                 (let ((_cont65451_ _cont6544665448_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont65451_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp65704
                 current-output-port
                 _tmp-port65436_))
              (let ((__tmp65708 (get-output-string _tmp-port65436_)))
                (declare (not safe))
                (##write-string __tmp65708 _port65434_)))))))
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
      (lambda (_self65300_ _port65301_)
        (let ((_tmp-port65303_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65303_))
          (let ((__tmp65709
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self65300_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp65709 _tmp-port65303_))
          (if (dump-stack-trace?)
              (let ((_cont6530465306_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self65300_ 'continuation))))
                (if _cont6530465306_
                    (let ((_cont65309_ _cont6530465306_))
                      (display '"--- continuation backtrace:" _tmp-port65303_)
                      (newline _tmp-port65303_)
                      (display-continuation-backtrace
                       _cont65309_
                       _tmp-port65303_))
                    '#f))
              '#!void)
          (let ((__tmp65710 (get-output-string _tmp-port65303_)))
            (declare (not safe))
            (##write-string __tmp65710 _port65301_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t65673)
        (let ((__exception65674
               (let ((__tmp65676
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65673 'exception))))
                 (if __tmp65676
                     __tmp65676
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation65675
               (let ((__tmp65677
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t65673 'continuation))))
                 (if __tmp65677
                     __tmp65677
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self65300_ _port65301_)
            (let ((_tmp-port65303_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65303_))
              (let ((__tmp65711
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self65300_
                        __exception65674
                        __t65673
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp65711 _tmp-port65303_))
              (if (dump-stack-trace?)
                  (let ((_cont6530465306_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self65300_
                            __continuation65675
                            __t65673
                            '#f))))
                    (if _cont6530465306_
                        (let ((_cont65309_ _cont6530465306_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port65303_)
                          (newline _tmp-port65303_)
                          (display-continuation-backtrace
                           _cont65309_
                           _tmp-port65303_))
                        '#f))
                  '#!void)
              (let ((__tmp65712 (get-output-string _tmp-port65303_)))
                (declare (not safe))
                (##write-string __tmp65712 _port65301_)))))))
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
      (lambda (_port65172_)
        (if (macro-character-port? _port65172_)
            (let ((_old-width65174_
                   (macro-character-port-output-width _port65172_)))
              (macro-character-port-output-width-set!
               _port65172_
               (lambda (_port65176_) '256))
              _old-width65174_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port65169_ _old-width65170_)
        (if (macro-character-port? _port65169_)
            (macro-character-port-output-width-set!
             _port65169_
             _old-width65170_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e65167_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e65167_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn65161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65161_))
            (let ((_e65164_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65161_ 'exception))))
              (macro-abandoned-mutex-exception? _e65164_))
            (macro-abandoned-mutex-exception? _exn65161_))))
    (define cfun-conversion-exception?
      (lambda (_exn65157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65157_))
            (let ((_e65159_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65157_ 'exception))))
              (macro-cfun-conversion-exception? _e65159_))
            (macro-cfun-conversion-exception? _exn65157_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn65153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65153_))
            (let ((_e65155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65153_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65155_)
                  (macro-cfun-conversion-exception-arguments _e65155_)
                  (let ((__tmp65715
                         (let ((__tmp65716
                                (let ()
                                  (declare (not safe))
                                  (cons _e65155_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp65716))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65715))))
            (if (macro-cfun-conversion-exception? _exn65153_)
                (macro-cfun-conversion-exception-arguments _exn65153_)
                (let ((__tmp65713
                       (let ((__tmp65714
                              (let ()
                                (declare (not safe))
                                (cons _exn65153_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp65714))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65713))))))
    (define cfun-conversion-exception-code
      (lambda (_exn65149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65149_))
            (let ((_e65151_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65149_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65151_)
                  (macro-cfun-conversion-exception-code _e65151_)
                  (let ((__tmp65719
                         (let ((__tmp65720
                                (let ()
                                  (declare (not safe))
                                  (cons _e65151_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp65720))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65719))))
            (if (macro-cfun-conversion-exception? _exn65149_)
                (macro-cfun-conversion-exception-code _exn65149_)
                (let ((__tmp65717
                       (let ((__tmp65718
                              (let ()
                                (declare (not safe))
                                (cons _exn65149_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp65718))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65717))))))
    (define cfun-conversion-exception-message
      (lambda (_exn65145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65145_))
            (let ((_e65147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65145_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65147_)
                  (macro-cfun-conversion-exception-message _e65147_)
                  (let ((__tmp65723
                         (let ((__tmp65724
                                (let ()
                                  (declare (not safe))
                                  (cons _e65147_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp65724))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65723))))
            (if (macro-cfun-conversion-exception? _exn65145_)
                (macro-cfun-conversion-exception-message _exn65145_)
                (let ((__tmp65721
                       (let ((__tmp65722
                              (let ()
                                (declare (not safe))
                                (cons _exn65145_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp65722))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65721))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn65139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65139_))
            (let ((_e65142_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65139_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65142_)
                  (macro-cfun-conversion-exception-procedure _e65142_)
                  (let ((__tmp65727
                         (let ((__tmp65728
                                (let ()
                                  (declare (not safe))
                                  (cons _e65142_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp65728))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp65727))))
            (if (macro-cfun-conversion-exception? _exn65139_)
                (macro-cfun-conversion-exception-procedure _exn65139_)
                (let ((__tmp65725
                       (let ((__tmp65726
                              (let ()
                                (declare (not safe))
                                (cons _exn65139_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp65726))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp65725))))))
    (define datum-parsing-exception?
      (lambda (_exn65135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65135_))
            (let ((_e65137_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65135_ 'exception))))
              (macro-datum-parsing-exception? _e65137_))
            (macro-datum-parsing-exception? _exn65135_))))
    (define datum-parsing-exception-kind
      (lambda (_exn65131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65131_))
            (let ((_e65133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65131_ 'exception))))
              (if (macro-datum-parsing-exception? _e65133_)
                  (macro-datum-parsing-exception-kind _e65133_)
                  (let ((__tmp65731
                         (let ((__tmp65732
                                (let ()
                                  (declare (not safe))
                                  (cons _e65133_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp65732))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65731))))
            (if (macro-datum-parsing-exception? _exn65131_)
                (macro-datum-parsing-exception-kind _exn65131_)
                (let ((__tmp65729
                       (let ((__tmp65730
                              (let ()
                                (declare (not safe))
                                (cons _exn65131_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp65730))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65729))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn65127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65127_))
            (let ((_e65129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65127_ 'exception))))
              (if (macro-datum-parsing-exception? _e65129_)
                  (macro-datum-parsing-exception-parameters _e65129_)
                  (let ((__tmp65735
                         (let ((__tmp65736
                                (let ()
                                  (declare (not safe))
                                  (cons _e65129_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp65736))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65735))))
            (if (macro-datum-parsing-exception? _exn65127_)
                (macro-datum-parsing-exception-parameters _exn65127_)
                (let ((__tmp65733
                       (let ((__tmp65734
                              (let ()
                                (declare (not safe))
                                (cons _exn65127_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp65734))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65733))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn65121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65121_))
            (let ((_e65124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65121_ 'exception))))
              (if (macro-datum-parsing-exception? _e65124_)
                  (macro-datum-parsing-exception-readenv _e65124_)
                  (let ((__tmp65739
                         (let ((__tmp65740
                                (let ()
                                  (declare (not safe))
                                  (cons _e65124_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp65740))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp65739))))
            (if (macro-datum-parsing-exception? _exn65121_)
                (macro-datum-parsing-exception-readenv _exn65121_)
                (let ((__tmp65737
                       (let ((__tmp65738
                              (let ()
                                (declare (not safe))
                                (cons _exn65121_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp65738))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp65737))))))
    (define deadlock-exception?
      (lambda (_exn65115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65115_))
            (let ((_e65118_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65115_ 'exception))))
              (macro-deadlock-exception? _e65118_))
            (macro-deadlock-exception? _exn65115_))))
    (define divide-by-zero-exception?
      (lambda (_exn65111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65111_))
            (let ((_e65113_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65111_ 'exception))))
              (macro-divide-by-zero-exception? _e65113_))
            (macro-divide-by-zero-exception? _exn65111_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn65107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65107_))
            (let ((_e65109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65107_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65109_)
                  (macro-divide-by-zero-exception-arguments _e65109_)
                  (let ((__tmp65743
                         (let ((__tmp65744
                                (let ()
                                  (declare (not safe))
                                  (cons _e65109_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp65744))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65743))))
            (if (macro-divide-by-zero-exception? _exn65107_)
                (macro-divide-by-zero-exception-arguments _exn65107_)
                (let ((__tmp65741
                       (let ((__tmp65742
                              (let ()
                                (declare (not safe))
                                (cons _exn65107_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp65742))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65741))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn65101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65101_))
            (let ((_e65104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65101_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65104_)
                  (macro-divide-by-zero-exception-procedure _e65104_)
                  (let ((__tmp65747
                         (let ((__tmp65748
                                (let ()
                                  (declare (not safe))
                                  (cons _e65104_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp65748))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp65747))))
            (if (macro-divide-by-zero-exception? _exn65101_)
                (macro-divide-by-zero-exception-procedure _exn65101_)
                (let ((__tmp65745
                       (let ((__tmp65746
                              (let ()
                                (declare (not safe))
                                (cons _exn65101_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp65746))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp65745))))))
    (define error-exception?
      (lambda (_exn65097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65097_))
            (let ((_e65099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65097_ 'exception))))
              (macro-error-exception? _e65099_))
            (macro-error-exception? _exn65097_))))
    (define error-exception-message
      (lambda (_exn65093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65093_))
            (let ((_e65095_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65093_ 'exception))))
              (if (macro-error-exception? _e65095_)
                  (macro-error-exception-message _e65095_)
                  (let ((__tmp65751
                         (let ((__tmp65752
                                (let ()
                                  (declare (not safe))
                                  (cons _e65095_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp65752))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65751))))
            (if (macro-error-exception? _exn65093_)
                (macro-error-exception-message _exn65093_)
                (let ((__tmp65749
                       (let ((__tmp65750
                              (let ()
                                (declare (not safe))
                                (cons _exn65093_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp65750))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65749))))))
    (define error-exception-parameters
      (lambda (_exn65087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65087_))
            (let ((_e65090_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65087_ 'exception))))
              (if (macro-error-exception? _e65090_)
                  (macro-error-exception-parameters _e65090_)
                  (let ((__tmp65755
                         (let ((__tmp65756
                                (let ()
                                  (declare (not safe))
                                  (cons _e65090_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp65756))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp65755))))
            (if (macro-error-exception? _exn65087_)
                (macro-error-exception-parameters _exn65087_)
                (let ((__tmp65753
                       (let ((__tmp65754
                              (let ()
                                (declare (not safe))
                                (cons _exn65087_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp65754))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp65753))))))
    (define expression-parsing-exception?
      (lambda (_exn65083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65083_))
            (let ((_e65085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65083_ 'exception))))
              (macro-expression-parsing-exception? _e65085_))
            (macro-expression-parsing-exception? _exn65083_))))
    (define expression-parsing-exception-kind
      (lambda (_exn65079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65079_))
            (let ((_e65081_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65079_ 'exception))))
              (if (macro-expression-parsing-exception? _e65081_)
                  (macro-expression-parsing-exception-kind _e65081_)
                  (let ((__tmp65759
                         (let ((__tmp65760
                                (let ()
                                  (declare (not safe))
                                  (cons _e65081_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp65760))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65759))))
            (if (macro-expression-parsing-exception? _exn65079_)
                (macro-expression-parsing-exception-kind _exn65079_)
                (let ((__tmp65757
                       (let ((__tmp65758
                              (let ()
                                (declare (not safe))
                                (cons _exn65079_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp65758))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65757))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn65075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65075_))
            (let ((_e65077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65075_ 'exception))))
              (if (macro-expression-parsing-exception? _e65077_)
                  (macro-expression-parsing-exception-parameters _e65077_)
                  (let ((__tmp65763
                         (let ((__tmp65764
                                (let ()
                                  (declare (not safe))
                                  (cons _e65077_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp65764))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65763))))
            (if (macro-expression-parsing-exception? _exn65075_)
                (macro-expression-parsing-exception-parameters _exn65075_)
                (let ((__tmp65761
                       (let ((__tmp65762
                              (let ()
                                (declare (not safe))
                                (cons _exn65075_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp65762))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65761))))))
    (define expression-parsing-exception-source
      (lambda (_exn65069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65069_))
            (let ((_e65072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65069_ 'exception))))
              (if (macro-expression-parsing-exception? _e65072_)
                  (macro-expression-parsing-exception-source _e65072_)
                  (let ((__tmp65767
                         (let ((__tmp65768
                                (let ()
                                  (declare (not safe))
                                  (cons _e65072_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp65768))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp65767))))
            (if (macro-expression-parsing-exception? _exn65069_)
                (macro-expression-parsing-exception-source _exn65069_)
                (let ((__tmp65765
                       (let ((__tmp65766
                              (let ()
                                (declare (not safe))
                                (cons _exn65069_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp65766))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp65765))))))
    (define file-exists-exception?
      (lambda (_exn65065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65065_))
            (let ((_e65067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65065_ 'exception))))
              (macro-file-exists-exception? _e65067_))
            (macro-file-exists-exception? _exn65065_))))
    (define file-exists-exception-arguments
      (lambda (_exn65061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65061_))
            (let ((_e65063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65061_ 'exception))))
              (if (macro-file-exists-exception? _e65063_)
                  (macro-file-exists-exception-arguments _e65063_)
                  (let ((__tmp65771
                         (let ((__tmp65772
                                (let ()
                                  (declare (not safe))
                                  (cons _e65063_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp65772))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65771))))
            (if (macro-file-exists-exception? _exn65061_)
                (macro-file-exists-exception-arguments _exn65061_)
                (let ((__tmp65769
                       (let ((__tmp65770
                              (let ()
                                (declare (not safe))
                                (cons _exn65061_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp65770))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65769))))))
    (define file-exists-exception-procedure
      (lambda (_exn65055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65055_))
            (let ((_e65058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65055_ 'exception))))
              (if (macro-file-exists-exception? _e65058_)
                  (macro-file-exists-exception-procedure _e65058_)
                  (let ((__tmp65775
                         (let ((__tmp65776
                                (let ()
                                  (declare (not safe))
                                  (cons _e65058_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp65776))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp65775))))
            (if (macro-file-exists-exception? _exn65055_)
                (macro-file-exists-exception-procedure _exn65055_)
                (let ((__tmp65773
                       (let ((__tmp65774
                              (let ()
                                (declare (not safe))
                                (cons _exn65055_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp65774))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp65773))))))
    (define fixnum-overflow-exception?
      (lambda (_exn65051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65051_))
            (let ((_e65053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65051_ 'exception))))
              (macro-fixnum-overflow-exception? _e65053_))
            (macro-fixnum-overflow-exception? _exn65051_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn65047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65047_))
            (let ((_e65049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65047_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65049_)
                  (macro-fixnum-overflow-exception-arguments _e65049_)
                  (let ((__tmp65779
                         (let ((__tmp65780
                                (let ()
                                  (declare (not safe))
                                  (cons _e65049_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp65780))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65779))))
            (if (macro-fixnum-overflow-exception? _exn65047_)
                (macro-fixnum-overflow-exception-arguments _exn65047_)
                (let ((__tmp65777
                       (let ((__tmp65778
                              (let ()
                                (declare (not safe))
                                (cons _exn65047_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp65778))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65777))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn65041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65041_))
            (let ((_e65044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65041_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65044_)
                  (macro-fixnum-overflow-exception-procedure _e65044_)
                  (let ((__tmp65783
                         (let ((__tmp65784
                                (let ()
                                  (declare (not safe))
                                  (cons _e65044_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp65784))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp65783))))
            (if (macro-fixnum-overflow-exception? _exn65041_)
                (macro-fixnum-overflow-exception-procedure _exn65041_)
                (let ((__tmp65781
                       (let ((__tmp65782
                              (let ()
                                (declare (not safe))
                                (cons _exn65041_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp65782))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp65781))))))
    (define heap-overflow-exception?
      (lambda (_exn65035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65035_))
            (let ((_e65038_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65035_ 'exception))))
              (macro-heap-overflow-exception? _e65038_))
            (macro-heap-overflow-exception? _exn65035_))))
    (define inactive-thread-exception?
      (lambda (_exn65031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65031_))
            (let ((_e65033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65031_ 'exception))))
              (macro-inactive-thread-exception? _e65033_))
            (macro-inactive-thread-exception? _exn65031_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn65027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65027_))
            (let ((_e65029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65027_ 'exception))))
              (if (macro-inactive-thread-exception? _e65029_)
                  (macro-inactive-thread-exception-arguments _e65029_)
                  (let ((__tmp65787
                         (let ((__tmp65788
                                (let ()
                                  (declare (not safe))
                                  (cons _e65029_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp65788))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65787))))
            (if (macro-inactive-thread-exception? _exn65027_)
                (macro-inactive-thread-exception-arguments _exn65027_)
                (let ((__tmp65785
                       (let ((__tmp65786
                              (let ()
                                (declare (not safe))
                                (cons _exn65027_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp65786))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65785))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn65021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65021_))
            (let ((_e65024_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65021_ 'exception))))
              (if (macro-inactive-thread-exception? _e65024_)
                  (macro-inactive-thread-exception-procedure _e65024_)
                  (let ((__tmp65791
                         (let ((__tmp65792
                                (let ()
                                  (declare (not safe))
                                  (cons _e65024_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp65792))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp65791))))
            (if (macro-inactive-thread-exception? _exn65021_)
                (macro-inactive-thread-exception-procedure _exn65021_)
                (let ((__tmp65789
                       (let ((__tmp65790
                              (let ()
                                (declare (not safe))
                                (cons _exn65021_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp65790))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp65789))))))
    (define initialized-thread-exception?
      (lambda (_exn65017_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65017_))
            (let ((_e65019_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65017_ 'exception))))
              (macro-initialized-thread-exception? _e65019_))
            (macro-initialized-thread-exception? _exn65017_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn65013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65013_))
            (let ((_e65015_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65013_ 'exception))))
              (if (macro-initialized-thread-exception? _e65015_)
                  (macro-initialized-thread-exception-arguments _e65015_)
                  (let ((__tmp65795
                         (let ((__tmp65796
                                (let ()
                                  (declare (not safe))
                                  (cons _e65015_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp65796))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65795))))
            (if (macro-initialized-thread-exception? _exn65013_)
                (macro-initialized-thread-exception-arguments _exn65013_)
                (let ((__tmp65793
                       (let ((__tmp65794
                              (let ()
                                (declare (not safe))
                                (cons _exn65013_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp65794))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65793))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn65007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65007_))
            (let ((_e65010_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65007_ 'exception))))
              (if (macro-initialized-thread-exception? _e65010_)
                  (macro-initialized-thread-exception-procedure _e65010_)
                  (let ((__tmp65799
                         (let ((__tmp65800
                                (let ()
                                  (declare (not safe))
                                  (cons _e65010_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp65800))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp65799))))
            (if (macro-initialized-thread-exception? _exn65007_)
                (macro-initialized-thread-exception-procedure _exn65007_)
                (let ((__tmp65797
                       (let ((__tmp65798
                              (let ()
                                (declare (not safe))
                                (cons _exn65007_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp65798))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp65797))))))
    (define invalid-hash-number-exception?
      (lambda (_exn65003_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65003_))
            (let ((_e65005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65003_ 'exception))))
              (macro-invalid-hash-number-exception? _e65005_))
            (macro-invalid-hash-number-exception? _exn65003_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn64999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64999_))
            (let ((_e65001_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64999_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65001_)
                  (macro-invalid-hash-number-exception-arguments _e65001_)
                  (let ((__tmp65803
                         (let ((__tmp65804
                                (let ()
                                  (declare (not safe))
                                  (cons _e65001_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp65804))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65803))))
            (if (macro-invalid-hash-number-exception? _exn64999_)
                (macro-invalid-hash-number-exception-arguments _exn64999_)
                (let ((__tmp65801
                       (let ((__tmp65802
                              (let ()
                                (declare (not safe))
                                (cons _exn64999_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp65802))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65801))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn64993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64993_))
            (let ((_e64996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64993_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e64996_)
                  (macro-invalid-hash-number-exception-procedure _e64996_)
                  (let ((__tmp65807
                         (let ((__tmp65808
                                (let ()
                                  (declare (not safe))
                                  (cons _e64996_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp65808))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp65807))))
            (if (macro-invalid-hash-number-exception? _exn64993_)
                (macro-invalid-hash-number-exception-procedure _exn64993_)
                (let ((__tmp65805
                       (let ((__tmp65806
                              (let ()
                                (declare (not safe))
                                (cons _exn64993_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp65806))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp65805))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn64989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64989_))
            (let ((_e64991_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64989_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e64991_))
            (macro-invalid-utf8-encoding-exception? _exn64989_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn64985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64985_))
            (let ((_e64987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64985_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64987_)
                  (macro-invalid-utf8-encoding-exception-arguments _e64987_)
                  (let ((__tmp65811
                         (let ((__tmp65812
                                (let ()
                                  (declare (not safe))
                                  (cons _e64987_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp65812))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65811))))
            (if (macro-invalid-utf8-encoding-exception? _exn64985_)
                (macro-invalid-utf8-encoding-exception-arguments _exn64985_)
                (let ((__tmp65809
                       (let ((__tmp65810
                              (let ()
                                (declare (not safe))
                                (cons _exn64985_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp65810))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65809))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn64979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64979_))
            (let ((_e64982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64979_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e64982_)
                  (macro-invalid-utf8-encoding-exception-procedure _e64982_)
                  (let ((__tmp65815
                         (let ((__tmp65816
                                (let ()
                                  (declare (not safe))
                                  (cons _e64982_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp65816))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp65815))))
            (if (macro-invalid-utf8-encoding-exception? _exn64979_)
                (macro-invalid-utf8-encoding-exception-procedure _exn64979_)
                (let ((__tmp65813
                       (let ((__tmp65814
                              (let ()
                                (declare (not safe))
                                (cons _exn64979_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp65814))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp65813))))))
    (define join-timeout-exception?
      (lambda (_exn64975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64975_))
            (let ((_e64977_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64975_ 'exception))))
              (macro-join-timeout-exception? _e64977_))
            (macro-join-timeout-exception? _exn64975_))))
    (define join-timeout-exception-arguments
      (lambda (_exn64971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64971_))
            (let ((_e64973_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64971_ 'exception))))
              (if (macro-join-timeout-exception? _e64973_)
                  (macro-join-timeout-exception-arguments _e64973_)
                  (let ((__tmp65819
                         (let ((__tmp65820
                                (let ()
                                  (declare (not safe))
                                  (cons _e64973_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp65820))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65819))))
            (if (macro-join-timeout-exception? _exn64971_)
                (macro-join-timeout-exception-arguments _exn64971_)
                (let ((__tmp65817
                       (let ((__tmp65818
                              (let ()
                                (declare (not safe))
                                (cons _exn64971_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp65818))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65817))))))
    (define join-timeout-exception-procedure
      (lambda (_exn64965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64965_))
            (let ((_e64968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64965_ 'exception))))
              (if (macro-join-timeout-exception? _e64968_)
                  (macro-join-timeout-exception-procedure _e64968_)
                  (let ((__tmp65823
                         (let ((__tmp65824
                                (let ()
                                  (declare (not safe))
                                  (cons _e64968_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp65824))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp65823))))
            (if (macro-join-timeout-exception? _exn64965_)
                (macro-join-timeout-exception-procedure _exn64965_)
                (let ((__tmp65821
                       (let ((__tmp65822
                              (let ()
                                (declare (not safe))
                                (cons _exn64965_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp65822))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp65821))))))
    (define keyword-expected-exception?
      (lambda (_exn64961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64961_))
            (let ((_e64963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64961_ 'exception))))
              (macro-keyword-expected-exception? _e64963_))
            (macro-keyword-expected-exception? _exn64961_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn64957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64957_))
            (let ((_e64959_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64957_ 'exception))))
              (if (macro-keyword-expected-exception? _e64959_)
                  (macro-keyword-expected-exception-arguments _e64959_)
                  (let ((__tmp65827
                         (let ((__tmp65828
                                (let ()
                                  (declare (not safe))
                                  (cons _e64959_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp65828))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65827))))
            (if (macro-keyword-expected-exception? _exn64957_)
                (macro-keyword-expected-exception-arguments _exn64957_)
                (let ((__tmp65825
                       (let ((__tmp65826
                              (let ()
                                (declare (not safe))
                                (cons _exn64957_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp65826))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65825))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn64951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64951_))
            (let ((_e64954_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64951_ 'exception))))
              (if (macro-keyword-expected-exception? _e64954_)
                  (macro-keyword-expected-exception-procedure _e64954_)
                  (let ((__tmp65831
                         (let ((__tmp65832
                                (let ()
                                  (declare (not safe))
                                  (cons _e64954_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp65832))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp65831))))
            (if (macro-keyword-expected-exception? _exn64951_)
                (macro-keyword-expected-exception-procedure _exn64951_)
                (let ((__tmp65829
                       (let ((__tmp65830
                              (let ()
                                (declare (not safe))
                                (cons _exn64951_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp65830))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp65829))))))
    (define length-mismatch-exception?
      (lambda (_exn64947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64947_))
            (let ((_e64949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64947_ 'exception))))
              (macro-length-mismatch-exception? _e64949_))
            (macro-length-mismatch-exception? _exn64947_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn64943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64943_))
            (let ((_e64945_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64943_ 'exception))))
              (if (macro-length-mismatch-exception? _e64945_)
                  (macro-length-mismatch-exception-arg-id _e64945_)
                  (let ((__tmp65835
                         (let ((__tmp65836
                                (let ()
                                  (declare (not safe))
                                  (cons _e64945_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp65836))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65835))))
            (if (macro-length-mismatch-exception? _exn64943_)
                (macro-length-mismatch-exception-arg-id _exn64943_)
                (let ((__tmp65833
                       (let ((__tmp65834
                              (let ()
                                (declare (not safe))
                                (cons _exn64943_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp65834))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65833))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn64939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64939_))
            (let ((_e64941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64939_ 'exception))))
              (if (macro-length-mismatch-exception? _e64941_)
                  (macro-length-mismatch-exception-arguments _e64941_)
                  (let ((__tmp65839
                         (let ((__tmp65840
                                (let ()
                                  (declare (not safe))
                                  (cons _e64941_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp65840))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65839))))
            (if (macro-length-mismatch-exception? _exn64939_)
                (macro-length-mismatch-exception-arguments _exn64939_)
                (let ((__tmp65837
                       (let ((__tmp65838
                              (let ()
                                (declare (not safe))
                                (cons _exn64939_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp65838))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65837))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn64933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64933_))
            (let ((_e64936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64933_ 'exception))))
              (if (macro-length-mismatch-exception? _e64936_)
                  (macro-length-mismatch-exception-procedure _e64936_)
                  (let ((__tmp65843
                         (let ((__tmp65844
                                (let ()
                                  (declare (not safe))
                                  (cons _e64936_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp65844))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp65843))))
            (if (macro-length-mismatch-exception? _exn64933_)
                (macro-length-mismatch-exception-procedure _exn64933_)
                (let ((__tmp65841
                       (let ((__tmp65842
                              (let ()
                                (declare (not safe))
                                (cons _exn64933_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp65842))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp65841))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn64929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64929_))
            (let ((_e64931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64929_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e64931_))
            (macro-mailbox-receive-timeout-exception? _exn64929_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn64925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64925_))
            (let ((_e64927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64925_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64927_)
                  (macro-mailbox-receive-timeout-exception-arguments _e64927_)
                  (let ((__tmp65847
                         (let ((__tmp65848
                                (let ()
                                  (declare (not safe))
                                  (cons _e64927_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp65848))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65847))))
            (if (macro-mailbox-receive-timeout-exception? _exn64925_)
                (macro-mailbox-receive-timeout-exception-arguments _exn64925_)
                (let ((__tmp65845
                       (let ((__tmp65846
                              (let ()
                                (declare (not safe))
                                (cons _exn64925_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp65846))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65845))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn64919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64919_))
            (let ((_e64922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64919_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e64922_)
                  (macro-mailbox-receive-timeout-exception-procedure _e64922_)
                  (let ((__tmp65851
                         (let ((__tmp65852
                                (let ()
                                  (declare (not safe))
                                  (cons _e64922_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp65852))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp65851))))
            (if (macro-mailbox-receive-timeout-exception? _exn64919_)
                (macro-mailbox-receive-timeout-exception-procedure _exn64919_)
                (let ((__tmp65849
                       (let ((__tmp65850
                              (let ()
                                (declare (not safe))
                                (cons _exn64919_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp65850))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp65849))))))
    (define module-not-found-exception?
      (lambda (_exn64915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64915_))
            (let ((_e64917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64915_ 'exception))))
              (macro-module-not-found-exception? _e64917_))
            (macro-module-not-found-exception? _exn64915_))))
    (define module-not-found-exception-arguments
      (lambda (_exn64911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64911_))
            (let ((_e64913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64911_ 'exception))))
              (if (macro-module-not-found-exception? _e64913_)
                  (macro-module-not-found-exception-arguments _e64913_)
                  (let ((__tmp65855
                         (let ((__tmp65856
                                (let ()
                                  (declare (not safe))
                                  (cons _e64913_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp65856))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65855))))
            (if (macro-module-not-found-exception? _exn64911_)
                (macro-module-not-found-exception-arguments _exn64911_)
                (let ((__tmp65853
                       (let ((__tmp65854
                              (let ()
                                (declare (not safe))
                                (cons _exn64911_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp65854))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65853))))))
    (define module-not-found-exception-procedure
      (lambda (_exn64905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64905_))
            (let ((_e64908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64905_ 'exception))))
              (if (macro-module-not-found-exception? _e64908_)
                  (macro-module-not-found-exception-procedure _e64908_)
                  (let ((__tmp65859
                         (let ((__tmp65860
                                (let ()
                                  (declare (not safe))
                                  (cons _e64908_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp65860))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp65859))))
            (if (macro-module-not-found-exception? _exn64905_)
                (macro-module-not-found-exception-procedure _exn64905_)
                (let ((__tmp65857
                       (let ((__tmp65858
                              (let ()
                                (declare (not safe))
                                (cons _exn64905_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp65858))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp65857))))))
    (define multiple-c-return-exception?
      (lambda (_exn64899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64899_))
            (let ((_e64902_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64899_ 'exception))))
              (macro-multiple-c-return-exception? _e64902_))
            (macro-multiple-c-return-exception? _exn64899_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn64895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64895_))
            (let ((_e64897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64895_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e64897_))
            (macro-no-such-file-or-directory-exception? _exn64895_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn64891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64891_))
            (let ((_e64893_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64891_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64893_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e64893_)
                  (let ((__tmp65863
                         (let ((__tmp65864
                                (let ()
                                  (declare (not safe))
                                  (cons _e64893_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp65864))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65863))))
            (if (macro-no-such-file-or-directory-exception? _exn64891_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn64891_)
                (let ((__tmp65861
                       (let ((__tmp65862
                              (let ()
                                (declare (not safe))
                                (cons _exn64891_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp65862))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65861))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn64885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64885_))
            (let ((_e64888_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64885_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e64888_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e64888_)
                  (let ((__tmp65867
                         (let ((__tmp65868
                                (let ()
                                  (declare (not safe))
                                  (cons _e64888_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp65868))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp65867))))
            (if (macro-no-such-file-or-directory-exception? _exn64885_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn64885_)
                (let ((__tmp65865
                       (let ((__tmp65866
                              (let ()
                                (declare (not safe))
                                (cons _exn64885_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp65866))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp65865))))))
    (define noncontinuable-exception?
      (lambda (_exn64881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64881_))
            (let ((_e64883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64881_ 'exception))))
              (macro-noncontinuable-exception? _e64883_))
            (macro-noncontinuable-exception? _exn64881_))))
    (define noncontinuable-exception-reason
      (lambda (_exn64875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64875_))
            (let ((_e64878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64875_ 'exception))))
              (if (macro-noncontinuable-exception? _e64878_)
                  (macro-noncontinuable-exception-reason _e64878_)
                  (let ((__tmp65871
                         (let ((__tmp65872
                                (let ()
                                  (declare (not safe))
                                  (cons _e64878_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp65872))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp65871))))
            (if (macro-noncontinuable-exception? _exn64875_)
                (macro-noncontinuable-exception-reason _exn64875_)
                (let ((__tmp65869
                       (let ((__tmp65870
                              (let ()
                                (declare (not safe))
                                (cons _exn64875_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp65870))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp65869))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn64871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64871_))
            (let ((_e64873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64871_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e64873_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn64871_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn64867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64867_))
            (let ((_e64869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64867_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64869_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e64869_)
                  (let ((__tmp65875
                         (let ((__tmp65876
                                (let ()
                                  (declare (not safe))
                                  (cons _e64869_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp65876))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65875))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64867_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn64867_)
                (let ((__tmp65873
                       (let ((__tmp65874
                              (let ()
                                (declare (not safe))
                                (cons _exn64867_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp65874))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65873))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn64861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64861_))
            (let ((_e64864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64861_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e64864_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e64864_)
                  (let ((__tmp65879
                         (let ((__tmp65880
                                (let ()
                                  (declare (not safe))
                                  (cons _e64864_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp65880))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp65879))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn64861_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn64861_)
                (let ((__tmp65877
                       (let ((__tmp65878
                              (let ()
                                (declare (not safe))
                                (cons _exn64861_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp65878))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp65877))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn64857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64857_))
            (let ((_e64859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64857_ 'exception))))
              (macro-nonprocedure-operator-exception? _e64859_))
            (macro-nonprocedure-operator-exception? _exn64857_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn64853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64853_))
            (let ((_e64855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64853_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64855_)
                  (macro-nonprocedure-operator-exception-arguments _e64855_)
                  (let ((__tmp65883
                         (let ((__tmp65884
                                (let ()
                                  (declare (not safe))
                                  (cons _e64855_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp65884))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65883))))
            (if (macro-nonprocedure-operator-exception? _exn64853_)
                (macro-nonprocedure-operator-exception-arguments _exn64853_)
                (let ((__tmp65881
                       (let ((__tmp65882
                              (let ()
                                (declare (not safe))
                                (cons _exn64853_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp65882))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65881))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn64849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64849_))
            (let ((_e64851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64849_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64851_)
                  (macro-nonprocedure-operator-exception-code _e64851_)
                  (let ((__tmp65887
                         (let ((__tmp65888
                                (let ()
                                  (declare (not safe))
                                  (cons _e64851_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp65888))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65887))))
            (if (macro-nonprocedure-operator-exception? _exn64849_)
                (macro-nonprocedure-operator-exception-code _exn64849_)
                (let ((__tmp65885
                       (let ((__tmp65886
                              (let ()
                                (declare (not safe))
                                (cons _exn64849_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp65886))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65885))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn64845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64845_))
            (let ((_e64847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64845_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64847_)
                  (macro-nonprocedure-operator-exception-operator _e64847_)
                  (let ((__tmp65891
                         (let ((__tmp65892
                                (let ()
                                  (declare (not safe))
                                  (cons _e64847_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp65892))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65891))))
            (if (macro-nonprocedure-operator-exception? _exn64845_)
                (macro-nonprocedure-operator-exception-operator _exn64845_)
                (let ((__tmp65889
                       (let ((__tmp65890
                              (let ()
                                (declare (not safe))
                                (cons _exn64845_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp65890))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65889))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn64839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64839_))
            (let ((_e64842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64839_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e64842_)
                  (macro-nonprocedure-operator-exception-rte _e64842_)
                  (let ((__tmp65895
                         (let ((__tmp65896
                                (let ()
                                  (declare (not safe))
                                  (cons _e64842_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp65896))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp65895))))
            (if (macro-nonprocedure-operator-exception? _exn64839_)
                (macro-nonprocedure-operator-exception-rte _exn64839_)
                (let ((__tmp65893
                       (let ((__tmp65894
                              (let ()
                                (declare (not safe))
                                (cons _exn64839_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp65894))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp65893))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn64835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64835_))
            (let ((_e64837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64835_ 'exception))))
              (macro-not-in-compilation-context-exception? _e64837_))
            (macro-not-in-compilation-context-exception? _exn64835_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn64831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64831_))
            (let ((_e64833_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64831_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64833_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e64833_)
                  (let ((__tmp65899
                         (let ((__tmp65900
                                (let ()
                                  (declare (not safe))
                                  (cons _e64833_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp65900))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65899))))
            (if (macro-not-in-compilation-context-exception? _exn64831_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn64831_)
                (let ((__tmp65897
                       (let ((__tmp65898
                              (let ()
                                (declare (not safe))
                                (cons _exn64831_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp65898))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65897))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn64825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64825_))
            (let ((_e64828_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64825_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e64828_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e64828_)
                  (let ((__tmp65903
                         (let ((__tmp65904
                                (let ()
                                  (declare (not safe))
                                  (cons _e64828_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp65904))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp65903))))
            (if (macro-not-in-compilation-context-exception? _exn64825_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn64825_)
                (let ((__tmp65901
                       (let ((__tmp65902
                              (let ()
                                (declare (not safe))
                                (cons _exn64825_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp65902))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp65901))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn64821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64821_))
            (let ((_e64823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64821_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e64823_))
            (macro-number-of-arguments-limit-exception? _exn64821_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn64817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64817_))
            (let ((_e64819_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64817_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64819_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e64819_)
                  (let ((__tmp65907
                         (let ((__tmp65908
                                (let ()
                                  (declare (not safe))
                                  (cons _e64819_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp65908))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65907))))
            (if (macro-number-of-arguments-limit-exception? _exn64817_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn64817_)
                (let ((__tmp65905
                       (let ((__tmp65906
                              (let ()
                                (declare (not safe))
                                (cons _exn64817_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp65906))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65905))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn64811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64811_))
            (let ((_e64814_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64811_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e64814_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e64814_)
                  (let ((__tmp65911
                         (let ((__tmp65912
                                (let ()
                                  (declare (not safe))
                                  (cons _e64814_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp65912))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp65911))))
            (if (macro-number-of-arguments-limit-exception? _exn64811_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn64811_)
                (let ((__tmp65909
                       (let ((__tmp65910
                              (let ()
                                (declare (not safe))
                                (cons _exn64811_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp65910))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp65909))))))
    (define os-exception?
      (lambda (_exn64807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64807_))
            (let ((_e64809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64807_ 'exception))))
              (macro-os-exception? _e64809_))
            (macro-os-exception? _exn64807_))))
    (define os-exception-arguments
      (lambda (_exn64803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64803_))
            (let ((_e64805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64803_ 'exception))))
              (if (macro-os-exception? _e64805_)
                  (macro-os-exception-arguments _e64805_)
                  (let ((__tmp65915
                         (let ((__tmp65916
                                (let ()
                                  (declare (not safe))
                                  (cons _e64805_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp65916))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65915))))
            (if (macro-os-exception? _exn64803_)
                (macro-os-exception-arguments _exn64803_)
                (let ((__tmp65913
                       (let ((__tmp65914
                              (let ()
                                (declare (not safe))
                                (cons _exn64803_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp65914))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65913))))))
    (define os-exception-code
      (lambda (_exn64799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64799_))
            (let ((_e64801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64799_ 'exception))))
              (if (macro-os-exception? _e64801_)
                  (macro-os-exception-code _e64801_)
                  (let ((__tmp65919
                         (let ((__tmp65920
                                (let ()
                                  (declare (not safe))
                                  (cons _e64801_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp65920))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65919))))
            (if (macro-os-exception? _exn64799_)
                (macro-os-exception-code _exn64799_)
                (let ((__tmp65917
                       (let ((__tmp65918
                              (let ()
                                (declare (not safe))
                                (cons _exn64799_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp65918))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65917))))))
    (define os-exception-message
      (lambda (_exn64795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64795_))
            (let ((_e64797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64795_ 'exception))))
              (if (macro-os-exception? _e64797_)
                  (macro-os-exception-message _e64797_)
                  (let ((__tmp65923
                         (let ((__tmp65924
                                (let ()
                                  (declare (not safe))
                                  (cons _e64797_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp65924))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65923))))
            (if (macro-os-exception? _exn64795_)
                (macro-os-exception-message _exn64795_)
                (let ((__tmp65921
                       (let ((__tmp65922
                              (let ()
                                (declare (not safe))
                                (cons _exn64795_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp65922))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65921))))))
    (define os-exception-procedure
      (lambda (_exn64789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64789_))
            (let ((_e64792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64789_ 'exception))))
              (if (macro-os-exception? _e64792_)
                  (macro-os-exception-procedure _e64792_)
                  (let ((__tmp65927
                         (let ((__tmp65928
                                (let ()
                                  (declare (not safe))
                                  (cons _e64792_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp65928))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp65927))))
            (if (macro-os-exception? _exn64789_)
                (macro-os-exception-procedure _exn64789_)
                (let ((__tmp65925
                       (let ((__tmp65926
                              (let ()
                                (declare (not safe))
                                (cons _exn64789_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp65926))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp65925))))))
    (define permission-denied-exception?
      (lambda (_exn64785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64785_))
            (let ((_e64787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64785_ 'exception))))
              (macro-permission-denied-exception? _e64787_))
            (macro-permission-denied-exception? _exn64785_))))
    (define permission-denied-exception-arguments
      (lambda (_exn64781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64781_))
            (let ((_e64783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64781_ 'exception))))
              (if (macro-permission-denied-exception? _e64783_)
                  (macro-permission-denied-exception-arguments _e64783_)
                  (let ((__tmp65931
                         (let ((__tmp65932
                                (let ()
                                  (declare (not safe))
                                  (cons _e64783_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp65932))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65931))))
            (if (macro-permission-denied-exception? _exn64781_)
                (macro-permission-denied-exception-arguments _exn64781_)
                (let ((__tmp65929
                       (let ((__tmp65930
                              (let ()
                                (declare (not safe))
                                (cons _exn64781_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp65930))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65929))))))
    (define permission-denied-exception-procedure
      (lambda (_exn64775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64775_))
            (let ((_e64778_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64775_ 'exception))))
              (if (macro-permission-denied-exception? _e64778_)
                  (macro-permission-denied-exception-procedure _e64778_)
                  (let ((__tmp65935
                         (let ((__tmp65936
                                (let ()
                                  (declare (not safe))
                                  (cons _e64778_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp65936))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp65935))))
            (if (macro-permission-denied-exception? _exn64775_)
                (macro-permission-denied-exception-procedure _exn64775_)
                (let ((__tmp65933
                       (let ((__tmp65934
                              (let ()
                                (declare (not safe))
                                (cons _exn64775_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp65934))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp65933))))))
    (define range-exception?
      (lambda (_exn64771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64771_))
            (let ((_e64773_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64771_ 'exception))))
              (macro-range-exception? _e64773_))
            (macro-range-exception? _exn64771_))))
    (define range-exception-arg-id
      (lambda (_exn64767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64767_))
            (let ((_e64769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64767_ 'exception))))
              (if (macro-range-exception? _e64769_)
                  (macro-range-exception-arg-id _e64769_)
                  (let ((__tmp65939
                         (let ((__tmp65940
                                (let ()
                                  (declare (not safe))
                                  (cons _e64769_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp65940))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65939))))
            (if (macro-range-exception? _exn64767_)
                (macro-range-exception-arg-id _exn64767_)
                (let ((__tmp65937
                       (let ((__tmp65938
                              (let ()
                                (declare (not safe))
                                (cons _exn64767_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp65938))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65937))))))
    (define range-exception-arguments
      (lambda (_exn64763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64763_))
            (let ((_e64765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64763_ 'exception))))
              (if (macro-range-exception? _e64765_)
                  (macro-range-exception-arguments _e64765_)
                  (let ((__tmp65943
                         (let ((__tmp65944
                                (let ()
                                  (declare (not safe))
                                  (cons _e64765_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp65944))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65943))))
            (if (macro-range-exception? _exn64763_)
                (macro-range-exception-arguments _exn64763_)
                (let ((__tmp65941
                       (let ((__tmp65942
                              (let ()
                                (declare (not safe))
                                (cons _exn64763_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp65942))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65941))))))
    (define range-exception-procedure
      (lambda (_exn64757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64757_))
            (let ((_e64760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64757_ 'exception))))
              (if (macro-range-exception? _e64760_)
                  (macro-range-exception-procedure _e64760_)
                  (let ((__tmp65947
                         (let ((__tmp65948
                                (let ()
                                  (declare (not safe))
                                  (cons _e64760_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp65948))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp65947))))
            (if (macro-range-exception? _exn64757_)
                (macro-range-exception-procedure _exn64757_)
                (let ((__tmp65945
                       (let ((__tmp65946
                              (let ()
                                (declare (not safe))
                                (cons _exn64757_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp65946))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp65945))))))
    (define rpc-remote-error-exception?
      (lambda (_exn64753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64753_))
            (let ((_e64755_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64753_ 'exception))))
              (macro-rpc-remote-error-exception? _e64755_))
            (macro-rpc-remote-error-exception? _exn64753_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn64749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64749_))
            (let ((_e64751_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64749_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64751_)
                  (macro-rpc-remote-error-exception-arguments _e64751_)
                  (let ((__tmp65951
                         (let ((__tmp65952
                                (let ()
                                  (declare (not safe))
                                  (cons _e64751_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp65952))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65951))))
            (if (macro-rpc-remote-error-exception? _exn64749_)
                (macro-rpc-remote-error-exception-arguments _exn64749_)
                (let ((__tmp65949
                       (let ((__tmp65950
                              (let ()
                                (declare (not safe))
                                (cons _exn64749_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp65950))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65949))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn64745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64745_))
            (let ((_e64747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64745_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64747_)
                  (macro-rpc-remote-error-exception-message _e64747_)
                  (let ((__tmp65955
                         (let ((__tmp65956
                                (let ()
                                  (declare (not safe))
                                  (cons _e64747_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp65956))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65955))))
            (if (macro-rpc-remote-error-exception? _exn64745_)
                (macro-rpc-remote-error-exception-message _exn64745_)
                (let ((__tmp65953
                       (let ((__tmp65954
                              (let ()
                                (declare (not safe))
                                (cons _exn64745_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp65954))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65953))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn64739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64739_))
            (let ((_e64742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64739_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e64742_)
                  (macro-rpc-remote-error-exception-procedure _e64742_)
                  (let ((__tmp65959
                         (let ((__tmp65960
                                (let ()
                                  (declare (not safe))
                                  (cons _e64742_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp65960))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp65959))))
            (if (macro-rpc-remote-error-exception? _exn64739_)
                (macro-rpc-remote-error-exception-procedure _exn64739_)
                (let ((__tmp65957
                       (let ((__tmp65958
                              (let ()
                                (declare (not safe))
                                (cons _exn64739_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp65958))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp65957))))))
    (define scheduler-exception?
      (lambda (_exn64735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64735_))
            (let ((_e64737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64735_ 'exception))))
              (macro-scheduler-exception? _e64737_))
            (macro-scheduler-exception? _exn64735_))))
    (define scheduler-exception-reason
      (lambda (_exn64729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64729_))
            (let ((_e64732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64729_ 'exception))))
              (if (macro-scheduler-exception? _e64732_)
                  (macro-scheduler-exception-reason _e64732_)
                  (let ((__tmp65963
                         (let ((__tmp65964
                                (let ()
                                  (declare (not safe))
                                  (cons _e64732_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp65964))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp65963))))
            (if (macro-scheduler-exception? _exn64729_)
                (macro-scheduler-exception-reason _exn64729_)
                (let ((__tmp65961
                       (let ((__tmp65962
                              (let ()
                                (declare (not safe))
                                (cons _exn64729_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp65962))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp65961))))))
    (define sfun-conversion-exception?
      (lambda (_exn64725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64725_))
            (let ((_e64727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64725_ 'exception))))
              (macro-sfun-conversion-exception? _e64727_))
            (macro-sfun-conversion-exception? _exn64725_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn64721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64721_))
            (let ((_e64723_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64721_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64723_)
                  (macro-sfun-conversion-exception-arguments _e64723_)
                  (let ((__tmp65967
                         (let ((__tmp65968
                                (let ()
                                  (declare (not safe))
                                  (cons _e64723_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp65968))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65967))))
            (if (macro-sfun-conversion-exception? _exn64721_)
                (macro-sfun-conversion-exception-arguments _exn64721_)
                (let ((__tmp65965
                       (let ((__tmp65966
                              (let ()
                                (declare (not safe))
                                (cons _exn64721_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp65966))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65965))))))
    (define sfun-conversion-exception-code
      (lambda (_exn64717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64717_))
            (let ((_e64719_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64717_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64719_)
                  (macro-sfun-conversion-exception-code _e64719_)
                  (let ((__tmp65971
                         (let ((__tmp65972
                                (let ()
                                  (declare (not safe))
                                  (cons _e64719_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp65972))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65971))))
            (if (macro-sfun-conversion-exception? _exn64717_)
                (macro-sfun-conversion-exception-code _exn64717_)
                (let ((__tmp65969
                       (let ((__tmp65970
                              (let ()
                                (declare (not safe))
                                (cons _exn64717_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp65970))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65969))))))
    (define sfun-conversion-exception-message
      (lambda (_exn64713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64713_))
            (let ((_e64715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64713_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64715_)
                  (macro-sfun-conversion-exception-message _e64715_)
                  (let ((__tmp65975
                         (let ((__tmp65976
                                (let ()
                                  (declare (not safe))
                                  (cons _e64715_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp65976))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65975))))
            (if (macro-sfun-conversion-exception? _exn64713_)
                (macro-sfun-conversion-exception-message _exn64713_)
                (let ((__tmp65973
                       (let ((__tmp65974
                              (let ()
                                (declare (not safe))
                                (cons _exn64713_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp65974))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65973))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn64707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64707_))
            (let ((_e64710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64707_ 'exception))))
              (if (macro-sfun-conversion-exception? _e64710_)
                  (macro-sfun-conversion-exception-procedure _e64710_)
                  (let ((__tmp65979
                         (let ((__tmp65980
                                (let ()
                                  (declare (not safe))
                                  (cons _e64710_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp65980))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp65979))))
            (if (macro-sfun-conversion-exception? _exn64707_)
                (macro-sfun-conversion-exception-procedure _exn64707_)
                (let ((__tmp65977
                       (let ((__tmp65978
                              (let ()
                                (declare (not safe))
                                (cons _exn64707_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp65978))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp65977))))))
    (define stack-overflow-exception?
      (lambda (_exn64701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64701_))
            (let ((_e64704_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64701_ 'exception))))
              (macro-stack-overflow-exception? _e64704_))
            (macro-stack-overflow-exception? _exn64701_))))
    (define started-thread-exception?
      (lambda (_exn64697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64697_))
            (let ((_e64699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64697_ 'exception))))
              (macro-started-thread-exception? _e64699_))
            (macro-started-thread-exception? _exn64697_))))
    (define started-thread-exception-arguments
      (lambda (_exn64693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64693_))
            (let ((_e64695_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64693_ 'exception))))
              (if (macro-started-thread-exception? _e64695_)
                  (macro-started-thread-exception-arguments _e64695_)
                  (let ((__tmp65983
                         (let ((__tmp65984
                                (let ()
                                  (declare (not safe))
                                  (cons _e64695_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp65984))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65983))))
            (if (macro-started-thread-exception? _exn64693_)
                (macro-started-thread-exception-arguments _exn64693_)
                (let ((__tmp65981
                       (let ((__tmp65982
                              (let ()
                                (declare (not safe))
                                (cons _exn64693_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp65982))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65981))))))
    (define started-thread-exception-procedure
      (lambda (_exn64687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64687_))
            (let ((_e64690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64687_ 'exception))))
              (if (macro-started-thread-exception? _e64690_)
                  (macro-started-thread-exception-procedure _e64690_)
                  (let ((__tmp65987
                         (let ((__tmp65988
                                (let ()
                                  (declare (not safe))
                                  (cons _e64690_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp65988))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp65987))))
            (if (macro-started-thread-exception? _exn64687_)
                (macro-started-thread-exception-procedure _exn64687_)
                (let ((__tmp65985
                       (let ((__tmp65986
                              (let ()
                                (declare (not safe))
                                (cons _exn64687_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp65986))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp65985))))))
    (define terminated-thread-exception?
      (lambda (_exn64683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64683_))
            (let ((_e64685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64683_ 'exception))))
              (macro-terminated-thread-exception? _e64685_))
            (macro-terminated-thread-exception? _exn64683_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn64679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64679_))
            (let ((_e64681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64679_ 'exception))))
              (if (macro-terminated-thread-exception? _e64681_)
                  (macro-terminated-thread-exception-arguments _e64681_)
                  (let ((__tmp65991
                         (let ((__tmp65992
                                (let ()
                                  (declare (not safe))
                                  (cons _e64681_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp65992))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65991))))
            (if (macro-terminated-thread-exception? _exn64679_)
                (macro-terminated-thread-exception-arguments _exn64679_)
                (let ((__tmp65989
                       (let ((__tmp65990
                              (let ()
                                (declare (not safe))
                                (cons _exn64679_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp65990))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65989))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn64673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64673_))
            (let ((_e64676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64673_ 'exception))))
              (if (macro-terminated-thread-exception? _e64676_)
                  (macro-terminated-thread-exception-procedure _e64676_)
                  (let ((__tmp65995
                         (let ((__tmp65996
                                (let ()
                                  (declare (not safe))
                                  (cons _e64676_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp65996))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp65995))))
            (if (macro-terminated-thread-exception? _exn64673_)
                (macro-terminated-thread-exception-procedure _exn64673_)
                (let ((__tmp65993
                       (let ((__tmp65994
                              (let ()
                                (declare (not safe))
                                (cons _exn64673_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp65994))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp65993))))))
    (define type-exception?
      (lambda (_exn64669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64669_))
            (let ((_e64671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64669_ 'exception))))
              (macro-type-exception? _e64671_))
            (macro-type-exception? _exn64669_))))
    (define type-exception-arg-id
      (lambda (_exn64665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64665_))
            (let ((_e64667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64665_ 'exception))))
              (if (macro-type-exception? _e64667_)
                  (macro-type-exception-arg-id _e64667_)
                  (let ((__tmp65999
                         (let ((__tmp66000
                                (let ()
                                  (declare (not safe))
                                  (cons _e64667_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp66000))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp65999))))
            (if (macro-type-exception? _exn64665_)
                (macro-type-exception-arg-id _exn64665_)
                (let ((__tmp65997
                       (let ((__tmp65998
                              (let ()
                                (declare (not safe))
                                (cons _exn64665_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp65998))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp65997))))))
    (define type-exception-arguments
      (lambda (_exn64661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64661_))
            (let ((_e64663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64661_ 'exception))))
              (if (macro-type-exception? _e64663_)
                  (macro-type-exception-arguments _e64663_)
                  (let ((__tmp66003
                         (let ((__tmp66004
                                (let ()
                                  (declare (not safe))
                                  (cons _e64663_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp66004))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66003))))
            (if (macro-type-exception? _exn64661_)
                (macro-type-exception-arguments _exn64661_)
                (let ((__tmp66001
                       (let ((__tmp66002
                              (let ()
                                (declare (not safe))
                                (cons _exn64661_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp66002))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66001))))))
    (define type-exception-procedure
      (lambda (_exn64657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64657_))
            (let ((_e64659_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64657_ 'exception))))
              (if (macro-type-exception? _e64659_)
                  (macro-type-exception-procedure _e64659_)
                  (let ((__tmp66007
                         (let ((__tmp66008
                                (let ()
                                  (declare (not safe))
                                  (cons _e64659_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp66008))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66007))))
            (if (macro-type-exception? _exn64657_)
                (macro-type-exception-procedure _exn64657_)
                (let ((__tmp66005
                       (let ((__tmp66006
                              (let ()
                                (declare (not safe))
                                (cons _exn64657_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp66006))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66005))))))
    (define type-exception-type-id
      (lambda (_exn64651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64651_))
            (let ((_e64654_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64651_ 'exception))))
              (if (macro-type-exception? _e64654_)
                  (macro-type-exception-type-id _e64654_)
                  (let ((__tmp66011
                         (let ((__tmp66012
                                (let ()
                                  (declare (not safe))
                                  (cons _e64654_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp66012))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66011))))
            (if (macro-type-exception? _exn64651_)
                (macro-type-exception-type-id _exn64651_)
                (let ((__tmp66009
                       (let ((__tmp66010
                              (let ()
                                (declare (not safe))
                                (cons _exn64651_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp66010))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66009))))))
    (define unbound-global-exception?
      (lambda (_exn64647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64647_))
            (let ((_e64649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64647_ 'exception))))
              (macro-unbound-global-exception? _e64649_))
            (macro-unbound-global-exception? _exn64647_))))
    (define unbound-global-exception-code
      (lambda (_exn64643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64643_))
            (let ((_e64645_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64643_ 'exception))))
              (if (macro-unbound-global-exception? _e64645_)
                  (macro-unbound-global-exception-code _e64645_)
                  (let ((__tmp66015
                         (let ((__tmp66016
                                (let ()
                                  (declare (not safe))
                                  (cons _e64645_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp66016))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66015))))
            (if (macro-unbound-global-exception? _exn64643_)
                (macro-unbound-global-exception-code _exn64643_)
                (let ((__tmp66013
                       (let ((__tmp66014
                              (let ()
                                (declare (not safe))
                                (cons _exn64643_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp66014))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66013))))))
    (define unbound-global-exception-rte
      (lambda (_exn64639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64639_))
            (let ((_e64641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64639_ 'exception))))
              (if (macro-unbound-global-exception? _e64641_)
                  (macro-unbound-global-exception-rte _e64641_)
                  (let ((__tmp66019
                         (let ((__tmp66020
                                (let ()
                                  (declare (not safe))
                                  (cons _e64641_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp66020))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66019))))
            (if (macro-unbound-global-exception? _exn64639_)
                (macro-unbound-global-exception-rte _exn64639_)
                (let ((__tmp66017
                       (let ((__tmp66018
                              (let ()
                                (declare (not safe))
                                (cons _exn64639_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp66018))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66017))))))
    (define unbound-global-exception-variable
      (lambda (_exn64633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64633_))
            (let ((_e64636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64633_ 'exception))))
              (if (macro-unbound-global-exception? _e64636_)
                  (macro-unbound-global-exception-variable _e64636_)
                  (let ((__tmp66023
                         (let ((__tmp66024
                                (let ()
                                  (declare (not safe))
                                  (cons _e64636_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp66024))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66023))))
            (if (macro-unbound-global-exception? _exn64633_)
                (macro-unbound-global-exception-variable _exn64633_)
                (let ((__tmp66021
                       (let ((__tmp66022
                              (let ()
                                (declare (not safe))
                                (cons _exn64633_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp66022))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66021))))))
    (define unbound-key-exception?
      (lambda (_exn64629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64629_))
            (let ((_e64631_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64629_ 'exception))))
              (macro-unbound-key-exception? _e64631_))
            (macro-unbound-key-exception? _exn64629_))))
    (define unbound-key-exception-arguments
      (lambda (_exn64625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64625_))
            (let ((_e64627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64625_ 'exception))))
              (if (macro-unbound-key-exception? _e64627_)
                  (macro-unbound-key-exception-arguments _e64627_)
                  (let ((__tmp66027
                         (let ((__tmp66028
                                (let ()
                                  (declare (not safe))
                                  (cons _e64627_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp66028))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66027))))
            (if (macro-unbound-key-exception? _exn64625_)
                (macro-unbound-key-exception-arguments _exn64625_)
                (let ((__tmp66025
                       (let ((__tmp66026
                              (let ()
                                (declare (not safe))
                                (cons _exn64625_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp66026))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66025))))))
    (define unbound-key-exception-procedure
      (lambda (_exn64619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64619_))
            (let ((_e64622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64619_ 'exception))))
              (if (macro-unbound-key-exception? _e64622_)
                  (macro-unbound-key-exception-procedure _e64622_)
                  (let ((__tmp66031
                         (let ((__tmp66032
                                (let ()
                                  (declare (not safe))
                                  (cons _e64622_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp66032))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66031))))
            (if (macro-unbound-key-exception? _exn64619_)
                (macro-unbound-key-exception-procedure _exn64619_)
                (let ((__tmp66029
                       (let ((__tmp66030
                              (let ()
                                (declare (not safe))
                                (cons _exn64619_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp66030))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66029))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn64615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64615_))
            (let ((_e64617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64615_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e64617_))
            (macro-unbound-os-environment-variable-exception? _exn64615_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn64611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64611_))
            (let ((_e64613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64611_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64613_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e64613_)
                  (let ((__tmp66035
                         (let ((__tmp66036
                                (let ()
                                  (declare (not safe))
                                  (cons _e64613_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp66036))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66035))))
            (if (macro-unbound-os-environment-variable-exception? _exn64611_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn64611_)
                (let ((__tmp66033
                       (let ((__tmp66034
                              (let ()
                                (declare (not safe))
                                (cons _exn64611_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp66034))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66033))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn64605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64605_))
            (let ((_e64608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64605_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64608_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e64608_)
                  (let ((__tmp66039
                         (let ((__tmp66040
                                (let ()
                                  (declare (not safe))
                                  (cons _e64608_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp66040))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66039))))
            (if (macro-unbound-os-environment-variable-exception? _exn64605_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn64605_)
                (let ((__tmp66037
                       (let ((__tmp66038
                              (let ()
                                (declare (not safe))
                                (cons _exn64605_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp66038))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66037))))))
    (define unbound-serial-number-exception?
      (lambda (_exn64601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64601_))
            (let ((_e64603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64601_ 'exception))))
              (macro-unbound-serial-number-exception? _e64603_))
            (macro-unbound-serial-number-exception? _exn64601_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn64597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64597_))
            (let ((_e64599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64597_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64599_)
                  (macro-unbound-serial-number-exception-arguments _e64599_)
                  (let ((__tmp66043
                         (let ((__tmp66044
                                (let ()
                                  (declare (not safe))
                                  (cons _e64599_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp66044))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66043))))
            (if (macro-unbound-serial-number-exception? _exn64597_)
                (macro-unbound-serial-number-exception-arguments _exn64597_)
                (let ((__tmp66041
                       (let ((__tmp66042
                              (let ()
                                (declare (not safe))
                                (cons _exn64597_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp66042))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66041))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn64591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64591_))
            (let ((_e64594_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64591_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64594_)
                  (macro-unbound-serial-number-exception-procedure _e64594_)
                  (let ((__tmp66047
                         (let ((__tmp66048
                                (let ()
                                  (declare (not safe))
                                  (cons _e64594_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp66048))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66047))))
            (if (macro-unbound-serial-number-exception? _exn64591_)
                (macro-unbound-serial-number-exception-procedure _exn64591_)
                (let ((__tmp66045
                       (let ((__tmp66046
                              (let ()
                                (declare (not safe))
                                (cons _exn64591_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp66046))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66045))))))
    (define uncaught-exception?
      (lambda (_exn64587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64587_))
            (let ((_e64589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64587_ 'exception))))
              (macro-uncaught-exception? _e64589_))
            (macro-uncaught-exception? _exn64587_))))
    (define uncaught-exception-arguments
      (lambda (_exn64583_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64583_))
            (let ((_e64585_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64583_ 'exception))))
              (if (macro-uncaught-exception? _e64585_)
                  (macro-uncaught-exception-arguments _e64585_)
                  (let ((__tmp66051
                         (let ((__tmp66052
                                (let ()
                                  (declare (not safe))
                                  (cons _e64585_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp66052))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66051))))
            (if (macro-uncaught-exception? _exn64583_)
                (macro-uncaught-exception-arguments _exn64583_)
                (let ((__tmp66049
                       (let ((__tmp66050
                              (let ()
                                (declare (not safe))
                                (cons _exn64583_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp66050))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66049))))))
    (define uncaught-exception-procedure
      (lambda (_exn64579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64579_))
            (let ((_e64581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64579_ 'exception))))
              (if (macro-uncaught-exception? _e64581_)
                  (macro-uncaught-exception-procedure _e64581_)
                  (let ((__tmp66055
                         (let ((__tmp66056
                                (let ()
                                  (declare (not safe))
                                  (cons _e64581_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp66056))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66055))))
            (if (macro-uncaught-exception? _exn64579_)
                (macro-uncaught-exception-procedure _exn64579_)
                (let ((__tmp66053
                       (let ((__tmp66054
                              (let ()
                                (declare (not safe))
                                (cons _exn64579_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp66054))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66053))))))
    (define uncaught-exception-reason
      (lambda (_exn64573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64573_))
            (let ((_e64576_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64573_ 'exception))))
              (if (macro-uncaught-exception? _e64576_)
                  (macro-uncaught-exception-reason _e64576_)
                  (let ((__tmp66059
                         (let ((__tmp66060
                                (let ()
                                  (declare (not safe))
                                  (cons _e64576_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp66060))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66059))))
            (if (macro-uncaught-exception? _exn64573_)
                (macro-uncaught-exception-reason _exn64573_)
                (let ((__tmp66057
                       (let ((__tmp66058
                              (let ()
                                (declare (not safe))
                                (cons _exn64573_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp66058))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66057))))))
    (define uninitialized-thread-exception?
      (lambda (_exn64569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64569_))
            (let ((_e64571_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64569_ 'exception))))
              (macro-uninitialized-thread-exception? _e64571_))
            (macro-uninitialized-thread-exception? _exn64569_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn64565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64565_))
            (let ((_e64567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64565_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64567_)
                  (macro-uninitialized-thread-exception-arguments _e64567_)
                  (let ((__tmp66063
                         (let ((__tmp66064
                                (let ()
                                  (declare (not safe))
                                  (cons _e64567_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp66064))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66063))))
            (if (macro-uninitialized-thread-exception? _exn64565_)
                (macro-uninitialized-thread-exception-arguments _exn64565_)
                (let ((__tmp66061
                       (let ((__tmp66062
                              (let ()
                                (declare (not safe))
                                (cons _exn64565_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp66062))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66061))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn64559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64559_))
            (let ((_e64562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64559_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64562_)
                  (macro-uninitialized-thread-exception-procedure _e64562_)
                  (let ((__tmp66067
                         (let ((__tmp66068
                                (let ()
                                  (declare (not safe))
                                  (cons _e64562_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp66068))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66067))))
            (if (macro-uninitialized-thread-exception? _exn64559_)
                (macro-uninitialized-thread-exception-procedure _exn64559_)
                (let ((__tmp66065
                       (let ((__tmp66066
                              (let ()
                                (declare (not safe))
                                (cons _exn64559_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp66066))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66065))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn64555_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64555_))
            (let ((_e64557_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64555_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e64557_))
            (macro-unknown-keyword-argument-exception? _exn64555_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn64551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64551_))
            (let ((_e64553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64551_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64553_)
                  (macro-unknown-keyword-argument-exception-arguments _e64553_)
                  (let ((__tmp66071
                         (let ((__tmp66072
                                (let ()
                                  (declare (not safe))
                                  (cons _e64553_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp66072))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66071))))
            (if (macro-unknown-keyword-argument-exception? _exn64551_)
                (macro-unknown-keyword-argument-exception-arguments _exn64551_)
                (let ((__tmp66069
                       (let ((__tmp66070
                              (let ()
                                (declare (not safe))
                                (cons _exn64551_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp66070))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66069))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn64545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64545_))
            (let ((_e64548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64545_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64548_)
                  (macro-unknown-keyword-argument-exception-procedure _e64548_)
                  (let ((__tmp66075
                         (let ((__tmp66076
                                (let ()
                                  (declare (not safe))
                                  (cons _e64548_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp66076))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66075))))
            (if (macro-unknown-keyword-argument-exception? _exn64545_)
                (macro-unknown-keyword-argument-exception-procedure _exn64545_)
                (let ((__tmp66073
                       (let ((__tmp66074
                              (let ()
                                (declare (not safe))
                                (cons _exn64545_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp66074))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66073))))))
    (define unterminated-process-exception?
      (lambda (_exn64541_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64541_))
            (let ((_e64543_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64541_ 'exception))))
              (macro-unterminated-process-exception? _e64543_))
            (macro-unterminated-process-exception? _exn64541_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn64537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64537_))
            (let ((_e64539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64537_ 'exception))))
              (if (macro-unterminated-process-exception? _e64539_)
                  (macro-unterminated-process-exception-arguments _e64539_)
                  (let ((__tmp66079
                         (let ((__tmp66080
                                (let ()
                                  (declare (not safe))
                                  (cons _e64539_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp66080))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66079))))
            (if (macro-unterminated-process-exception? _exn64537_)
                (macro-unterminated-process-exception-arguments _exn64537_)
                (let ((__tmp66077
                       (let ((__tmp66078
                              (let ()
                                (declare (not safe))
                                (cons _exn64537_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp66078))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66077))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn64531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64531_))
            (let ((_e64534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64531_ 'exception))))
              (if (macro-unterminated-process-exception? _e64534_)
                  (macro-unterminated-process-exception-procedure _e64534_)
                  (let ((__tmp66083
                         (let ((__tmp66084
                                (let ()
                                  (declare (not safe))
                                  (cons _e64534_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp66084))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66083))))
            (if (macro-unterminated-process-exception? _exn64531_)
                (macro-unterminated-process-exception-procedure _exn64531_)
                (let ((__tmp66081
                       (let ((__tmp66082
                              (let ()
                                (declare (not safe))
                                (cons _exn64531_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp66082))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66081))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn64527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64527_))
            (let ((_e64529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64527_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e64529_))
            (macro-wrong-number-of-arguments-exception? _exn64527_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn64523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64523_))
            (let ((_e64525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64523_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64525_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e64525_)
                  (let ((__tmp66087
                         (let ((__tmp66088
                                (let ()
                                  (declare (not safe))
                                  (cons _e64525_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp66088))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66087))))
            (if (macro-wrong-number-of-arguments-exception? _exn64523_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn64523_)
                (let ((__tmp66085
                       (let ((__tmp66086
                              (let ()
                                (declare (not safe))
                                (cons _exn64523_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp66086))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66085))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn64517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64517_))
            (let ((_e64520_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64517_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64520_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e64520_)
                  (let ((__tmp66091
                         (let ((__tmp66092
                                (let ()
                                  (declare (not safe))
                                  (cons _e64520_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp66092))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66091))))
            (if (macro-wrong-number-of-arguments-exception? _exn64517_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn64517_)
                (let ((__tmp66089
                       (let ((__tmp66090
                              (let ()
                                (declare (not safe))
                                (cons _exn64517_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp66090))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66089))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn64513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64513_))
            (let ((_e64515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64513_ 'exception))))
              (macro-wrong-number-of-values-exception? _e64515_))
            (macro-wrong-number-of-values-exception? _exn64513_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn64509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64509_))
            (let ((_e64511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64509_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64511_)
                  (macro-wrong-number-of-values-exception-code _e64511_)
                  (let ((__tmp66095
                         (let ((__tmp66096
                                (let ()
                                  (declare (not safe))
                                  (cons _e64511_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp66096))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66095))))
            (if (macro-wrong-number-of-values-exception? _exn64509_)
                (macro-wrong-number-of-values-exception-code _exn64509_)
                (let ((__tmp66093
                       (let ((__tmp66094
                              (let ()
                                (declare (not safe))
                                (cons _exn64509_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp66094))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66093))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn64505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64505_))
            (let ((_e64507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64505_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64507_)
                  (macro-wrong-number-of-values-exception-rte _e64507_)
                  (let ((__tmp66099
                         (let ((__tmp66100
                                (let ()
                                  (declare (not safe))
                                  (cons _e64507_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp66100))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66099))))
            (if (macro-wrong-number-of-values-exception? _exn64505_)
                (macro-wrong-number-of-values-exception-rte _exn64505_)
                (let ((__tmp66097
                       (let ((__tmp66098
                              (let ()
                                (declare (not safe))
                                (cons _exn64505_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp66098))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66097))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn64499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64499_))
            (let ((_e64502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64499_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64502_)
                  (macro-wrong-number-of-values-exception-vals _e64502_)
                  (let ((__tmp66103
                         (let ((__tmp66104
                                (let ()
                                  (declare (not safe))
                                  (cons _e64502_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp66104))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66103))))
            (if (macro-wrong-number-of-values-exception? _exn64499_)
                (macro-wrong-number-of-values-exception-vals _exn64499_)
                (let ((__tmp66101
                       (let ((__tmp66102
                              (let ()
                                (declare (not safe))
                                (cons _exn64499_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp66102))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66101))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn64493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64493_))
            (let ((_e64496_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64493_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e64496_))
            (macro-wrong-processor-c-return-exception? _exn64493_))))))
