(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708168068)
  (begin
    (define Exception::t
      (let ((__tmp103871 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp103871
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args99274_ (apply make-instance Exception::t _$args99274_)))
    (define StackTrace::t
      (let ((__tmp103872 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp103872
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args99271_ (apply make-instance StackTrace::t _$args99271_)))
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
      (let ((__tmp103873 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp103873
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args99268_ (apply make-instance Error::t _$args99268_)))
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
      (let ((__tmp103874 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp103874
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args99265_
        (apply make-instance RuntimeException::t _$args99265_)))
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
      (lambda (_exn99260_ _continue99261_)
        (let ((_exn99263_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn99260_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn99263_ _continue99261_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn99256_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn99256_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn99256_ 'continuation))
                '#!void
                (let ((__tmp103875
                       (lambda (_cont99258_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn99256_
                            'continuation
                            _cont99258_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp103875)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn99256_))))
    (define error
      (lambda (_message99253_ . _irritants99254_)
        (raise (let ((__obj103865
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj103865
                  _message99253_
                  'irritants:
                  _irritants99254_)
                 __obj103865))))
    (define with-exception-handler
      (lambda (_handler99246_ _thunk99247_)
        (if (let () (declare (not safe)) (procedure? _handler99246_))
            '#!void
            (raise (let ((__obj103866
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103866
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler99246_ '())))
                     __obj103866)))
        (if (let () (declare (not safe)) (procedure? _thunk99247_))
            '#!void
            (raise (let ((__obj103867
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103867
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk99247_ '())))
                     __obj103867)))
        (let ((__tmp103876
               (lambda (_exn99249_)
                 (let ((_exn99251_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn99249_))))
                   (_handler99246_ _exn99251_)))))
          (declare (not safe))
          (##with-exception-handler __tmp103876 _thunk99247_))))
    (define with-catch
      (lambda (_handler99239_ _thunk99240_)
        (if (let () (declare (not safe)) (procedure? _handler99239_))
            '#!void
            (raise (let ((__obj103868
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103868
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler99239_ '())))
                     __obj103868)))
        (if (let () (declare (not safe)) (procedure? _thunk99240_))
            '#!void
            (raise (let ((__obj103869
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj103869
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk99240_ '())))
                     __obj103869)))
        (let ((__tmp103877
               (lambda (_cont99242_)
                 (with-exception-handler
                  (lambda (_exn99244_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont99242_
                       _handler99239_
                       _exn99244_)))
                  _thunk99240_))))
          (declare (not safe))
          (##continuation-capture __tmp103877))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn99230_)
        (if (or (heap-overflow-exception? _exn99230_)
                (stack-overflow-exception? _exn99230_))
            _exn99230_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn99230_))
                _exn99230_
                (if (macro-exception? _exn99230_)
                    (let ((_rte99235_
                           (let ((__obj103870
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj103870
                                _exn99230_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj103870)))
                      (let ((__tmp103878
                             (lambda (_cont99237_)
                               (let ((__tmp103879
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont99237_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte99235_
                                  'continuation
                                  __tmp103879)))))
                        (declare (not safe))
                        (##continuation-capture __tmp103878))
                      _rte99235_)
                    _exn99230_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj99225_)
        (let ((_$e99227_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj99225_))))
          (if _$e99227_ _$e99227_ (error-exception? _obj99225_)))))
    (define error-message
      (lambda (_obj99223_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj99223_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj99223_ 'message))
            (if (error-exception? _obj99223_)
                (error-exception-message _obj99223_)
                '#f))))
    (define error-irritants
      (lambda (_obj99221_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj99221_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj99221_ 'irritants))
            (if (error-exception? _obj99221_)
                (error-exception-parameters _obj99221_)
                '#f))))
    (define error-trace
      (lambda (_obj99219_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj99219_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj99219_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e99201_ _port99202_)
        (let ((_$e99204_
               (let ()
                 (declare (not safe))
                 (method-ref _e99201_ 'display-exception))))
          (if _$e99204_
              ((lambda (_f99207_) (_f99207_ _e99201_ _port99202_)) _$e99204_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e99201_ _port99202_))))))
    (define display-exception__0
      (lambda (_e99212_)
        (let ((_port99214_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e99212_ _port99214_))))
    (define display-exception
      (lambda _g103881_
        (let ((_g103880_ (let () (declare (not safe)) (##length _g103881_))))
          (cond ((let () (declare (not safe)) (##fx= _g103880_ 1))
                 (apply (lambda (_e99212_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e99212_)))
                        _g103881_))
                ((let () (declare (not safe)) (##fx= _g103880_ 2))
                 (apply (lambda (_e99216_ _port99217_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e99216_ _port99217_)))
                        _g103881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g103881_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self99190_ _message99191_ . _rest99192_)
        (let ((_message99198_
               (if (let () (declare (not safe)) (string? _message99191_))
                   _message99191_
                   (call-with-output-string
                    '""
                    (lambda (_g9919399195_)
                      (display _message99191_ _g9919399195_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self99190_ 'message _message99198_))
          (apply class-instance-init! _self99190_ _rest99192_))))
    (define Error:::init!::specialize
      (lambda (__t103844)
        (let ((__message103845
               (let ((__tmp103846
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103844 'message))))
                 (if __tmp103846
                     __tmp103846
                     (error '"Unknown slot" 'message)))))
          (lambda (_self99190_ _message99191_ . _rest99192_)
            (let ((_message99198_
                   (if (let () (declare (not safe)) (string? _message99191_))
                       _message99191_
                       (call-with-output-string
                        '""
                        (lambda (_g9919399195_)
                          (display _message99191_ _g9919399195_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99190_
                 _message99198_
                 __message103845
                 __t103844
                 '#f))
              (apply class-instance-init! _self99190_ _rest99192_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self99048_ _port99049_)
        (let ((_tmp-port99051_ (open-output-string))
              (_display-error-newline99052_
               (> (output-port-column _port99049_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port99051_))
          (let ((__tmp103882
                 (lambda ()
                   (if _display-error-newline99052_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e99055_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self99048_ 'where))))
                     (if _$e99055_ (display _$e99055_) (display '"?")))
                   (let ((__tmp103883
                          (let ((__tmp103884
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self99048_))))
                            (declare (not safe))
                            (##type-name __tmp103884))))
                     (declare (not safe))
                     (display* '" [" __tmp103883 '"]: "))
                   (let ((__tmp103885
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self99048_ 'message))))
                     (declare (not safe))
                     (displayln __tmp103885))
                   (let ((_irritants99058_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self99048_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants99058_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj99060_)
                              (write _obj99060_)
                              (write-char '#\space))
                            _irritants99058_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self99048_))
                            (dump-stack-trace?))
                       (let ((_cont9906199063_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self99048_
                                 'continuation))))
                         (if _cont9906199063_
                             (let ((_cont99066_ _cont9906199063_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont99066_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp103882
             current-output-port
             _tmp-port99051_))
          (let ((__tmp103886 (get-output-string _tmp-port99051_)))
            (declare (not safe))
            (##write-string __tmp103886 _port99049_)))))
    (define Error::display-exception::specialize
      (lambda (__t103847)
        (let ((__where103848
               (let ((__tmp103852
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103847 'where))))
                 (if __tmp103852 __tmp103852 (error '"Unknown slot" 'where))))
              (__message103849
               (let ((__tmp103853
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103847 'message))))
                 (if __tmp103853
                     __tmp103853
                     (error '"Unknown slot" 'message))))
              (__continuation103850
               (let ((__tmp103854
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103847 'continuation))))
                 (if __tmp103854
                     __tmp103854
                     (error '"Unknown slot" 'continuation))))
              (__irritants103851
               (let ((__tmp103855
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103847 'irritants))))
                 (if __tmp103855
                     __tmp103855
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self99048_ _port99049_)
            (let ((_tmp-port99051_ (open-output-string))
                  (_display-error-newline99052_
                   (> (output-port-column _port99049_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port99051_))
              (let ((__tmp103887
                     (lambda ()
                       (if _display-error-newline99052_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e99055_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self99048_
                                 __where103848
                                 __t103847
                                 '#f))))
                         (if _$e99055_ (display _$e99055_) (display '"?")))
                       (let ((__tmp103888
                              (let ((__tmp103889
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self99048_))))
                                (declare (not safe))
                                (##type-name __tmp103889))))
                         (declare (not safe))
                         (display* '" [" __tmp103888 '"]: "))
                       (let ((__tmp103890
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self99048_
                                 __message103849
                                 __t103847
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp103890))
                       (let ((_irritants99058_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self99048_
                                 __irritants103851
                                 __t103847
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants99058_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj99060_)
                                  (write _obj99060_)
                                  (write-char '#\space))
                                _irritants99058_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self99048_))
                                (dump-stack-trace?))
                           (let ((_cont9906199063_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self99048_
                                     __continuation103850
                                     __t103847
                                     '#f))))
                             (if _cont9906199063_
                                 (let ((_cont99066_ _cont9906199063_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont99066_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp103887
                 current-output-port
                 _tmp-port99051_))
              (let ((__tmp103891 (get-output-string _tmp-port99051_)))
                (declare (not safe))
                (##write-string __tmp103891 _port99049_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self98915_ _port98916_)
        (let ((_tmp-port98918_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port98918_))
          (let ((__tmp103892
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self98915_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp103892 _tmp-port98918_))
          (if (dump-stack-trace?)
              (let ((_cont9891998921_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self98915_ 'continuation))))
                (if _cont9891998921_
                    (let ((_cont98924_ _cont9891998921_))
                      (display '"--- continuation backtrace:" _tmp-port98918_)
                      (newline _tmp-port98918_)
                      (display-continuation-backtrace
                       _cont98924_
                       _tmp-port98918_))
                    '#f))
              '#!void)
          (let ((__tmp103893 (get-output-string _tmp-port98918_)))
            (declare (not safe))
            (##write-string __tmp103893 _port98916_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t103856)
        (let ((__exception103857
               (let ((__tmp103859
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103856 'exception))))
                 (if __tmp103859
                     __tmp103859
                     (error '"Unknown slot" 'exception))))
              (__continuation103858
               (let ((__tmp103860
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t103856 'continuation))))
                 (if __tmp103860
                     __tmp103860
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self98915_ _port98916_)
            (let ((_tmp-port98918_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port98918_))
              (let ((__tmp103894
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self98915_
                        __exception103857
                        __t103856
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp103894 _tmp-port98918_))
              (if (dump-stack-trace?)
                  (let ((_cont9891998921_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self98915_
                            __continuation103858
                            __t103856
                            '#f))))
                    (if _cont9891998921_
                        (let ((_cont98924_ _cont9891998921_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port98918_)
                          (newline _tmp-port98918_)
                          (display-continuation-backtrace
                           _cont98924_
                           _tmp-port98918_))
                        '#f))
                  '#!void)
              (let ((__tmp103895 (get-output-string _tmp-port98918_)))
                (declare (not safe))
                (##write-string __tmp103895 _port98916_)))))))
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
      (lambda (_port98787_)
        (if (macro-character-port? _port98787_)
            (let ((_old-width98789_
                   (macro-character-port-output-width _port98787_)))
              (macro-character-port-output-width-set!
               _port98787_
               (lambda (_port98791_) '256))
              _old-width98789_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port98784_ _old-width98785_)
        (if (macro-character-port? _port98784_)
            (macro-character-port-output-width-set!
             _port98784_
             _old-width98785_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e98782_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e98782_))))
    (define abandoned-mutex-exception?
      (lambda (_exn98776_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98776_))
            (let ((_e98779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98776_ 'exception))))
              (macro-abandoned-mutex-exception? _e98779_))
            (macro-abandoned-mutex-exception? _exn98776_))))
    (define cfun-conversion-exception?
      (lambda (_exn98772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98772_))
            (let ((_e98774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98772_ 'exception))))
              (macro-cfun-conversion-exception? _e98774_))
            (macro-cfun-conversion-exception? _exn98772_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn98768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98768_))
            (let ((_e98770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98768_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98770_)
                  (macro-cfun-conversion-exception-arguments _e98770_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103897
                                (let ()
                                  (declare (not safe))
                                  (cons _e98770_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp103897)))))
            (if (macro-cfun-conversion-exception? _exn98768_)
                (macro-cfun-conversion-exception-arguments _exn98768_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103896
                              (let ()
                                (declare (not safe))
                                (cons _exn98768_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp103896)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn98764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98764_))
            (let ((_e98766_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98764_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98766_)
                  (macro-cfun-conversion-exception-code _e98766_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103899
                                (let ()
                                  (declare (not safe))
                                  (cons _e98766_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp103899)))))
            (if (macro-cfun-conversion-exception? _exn98764_)
                (macro-cfun-conversion-exception-code _exn98764_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103898
                              (let ()
                                (declare (not safe))
                                (cons _exn98764_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp103898)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn98760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98760_))
            (let ((_e98762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98760_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98762_)
                  (macro-cfun-conversion-exception-message _e98762_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103901
                                (let ()
                                  (declare (not safe))
                                  (cons _e98762_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp103901)))))
            (if (macro-cfun-conversion-exception? _exn98760_)
                (macro-cfun-conversion-exception-message _exn98760_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103900
                              (let ()
                                (declare (not safe))
                                (cons _exn98760_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp103900)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn98754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98754_))
            (let ((_e98757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98754_ 'exception))))
              (if (macro-cfun-conversion-exception? _e98757_)
                  (macro-cfun-conversion-exception-procedure _e98757_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp103903
                                (let ()
                                  (declare (not safe))
                                  (cons _e98757_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp103903)))))
            (if (macro-cfun-conversion-exception? _exn98754_)
                (macro-cfun-conversion-exception-procedure _exn98754_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp103902
                              (let ()
                                (declare (not safe))
                                (cons _exn98754_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp103902)))))))
    (define datum-parsing-exception?
      (lambda (_exn98750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98750_))
            (let ((_e98752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98750_ 'exception))))
              (macro-datum-parsing-exception? _e98752_))
            (macro-datum-parsing-exception? _exn98750_))))
    (define datum-parsing-exception-kind
      (lambda (_exn98746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98746_))
            (let ((_e98748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98746_ 'exception))))
              (if (macro-datum-parsing-exception? _e98748_)
                  (macro-datum-parsing-exception-kind _e98748_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp103905
                                (let ()
                                  (declare (not safe))
                                  (cons _e98748_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp103905)))))
            (if (macro-datum-parsing-exception? _exn98746_)
                (macro-datum-parsing-exception-kind _exn98746_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp103904
                              (let ()
                                (declare (not safe))
                                (cons _exn98746_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp103904)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn98742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98742_))
            (let ((_e98744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98742_ 'exception))))
              (if (macro-datum-parsing-exception? _e98744_)
                  (macro-datum-parsing-exception-parameters _e98744_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp103907
                                (let ()
                                  (declare (not safe))
                                  (cons _e98744_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp103907)))))
            (if (macro-datum-parsing-exception? _exn98742_)
                (macro-datum-parsing-exception-parameters _exn98742_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp103906
                              (let ()
                                (declare (not safe))
                                (cons _exn98742_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp103906)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn98736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98736_))
            (let ((_e98739_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98736_ 'exception))))
              (if (macro-datum-parsing-exception? _e98739_)
                  (macro-datum-parsing-exception-readenv _e98739_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp103909
                                (let ()
                                  (declare (not safe))
                                  (cons _e98739_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp103909)))))
            (if (macro-datum-parsing-exception? _exn98736_)
                (macro-datum-parsing-exception-readenv _exn98736_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp103908
                              (let ()
                                (declare (not safe))
                                (cons _exn98736_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp103908)))))))
    (define deadlock-exception?
      (lambda (_exn98730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98730_))
            (let ((_e98733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98730_ 'exception))))
              (macro-deadlock-exception? _e98733_))
            (macro-deadlock-exception? _exn98730_))))
    (define divide-by-zero-exception?
      (lambda (_exn98726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98726_))
            (let ((_e98728_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98726_ 'exception))))
              (macro-divide-by-zero-exception? _e98728_))
            (macro-divide-by-zero-exception? _exn98726_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn98722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98722_))
            (let ((_e98724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98722_ 'exception))))
              (if (macro-divide-by-zero-exception? _e98724_)
                  (macro-divide-by-zero-exception-arguments _e98724_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp103911
                                (let ()
                                  (declare (not safe))
                                  (cons _e98724_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp103911)))))
            (if (macro-divide-by-zero-exception? _exn98722_)
                (macro-divide-by-zero-exception-arguments _exn98722_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp103910
                              (let ()
                                (declare (not safe))
                                (cons _exn98722_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp103910)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn98716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98716_))
            (let ((_e98719_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98716_ 'exception))))
              (if (macro-divide-by-zero-exception? _e98719_)
                  (macro-divide-by-zero-exception-procedure _e98719_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp103913
                                (let ()
                                  (declare (not safe))
                                  (cons _e98719_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp103913)))))
            (if (macro-divide-by-zero-exception? _exn98716_)
                (macro-divide-by-zero-exception-procedure _exn98716_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp103912
                              (let ()
                                (declare (not safe))
                                (cons _exn98716_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp103912)))))))
    (define error-exception?
      (lambda (_exn98712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98712_))
            (let ((_e98714_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98712_ 'exception))))
              (macro-error-exception? _e98714_))
            (macro-error-exception? _exn98712_))))
    (define error-exception-message
      (lambda (_exn98708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98708_))
            (let ((_e98710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98708_ 'exception))))
              (if (macro-error-exception? _e98710_)
                  (macro-error-exception-message _e98710_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp103915
                                (let ()
                                  (declare (not safe))
                                  (cons _e98710_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp103915)))))
            (if (macro-error-exception? _exn98708_)
                (macro-error-exception-message _exn98708_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp103914
                              (let ()
                                (declare (not safe))
                                (cons _exn98708_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp103914)))))))
    (define error-exception-parameters
      (lambda (_exn98702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98702_))
            (let ((_e98705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98702_ 'exception))))
              (if (macro-error-exception? _e98705_)
                  (macro-error-exception-parameters _e98705_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp103917
                                (let ()
                                  (declare (not safe))
                                  (cons _e98705_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp103917)))))
            (if (macro-error-exception? _exn98702_)
                (macro-error-exception-parameters _exn98702_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp103916
                              (let ()
                                (declare (not safe))
                                (cons _exn98702_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp103916)))))))
    (define expression-parsing-exception?
      (lambda (_exn98698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98698_))
            (let ((_e98700_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98698_ 'exception))))
              (macro-expression-parsing-exception? _e98700_))
            (macro-expression-parsing-exception? _exn98698_))))
    (define expression-parsing-exception-kind
      (lambda (_exn98694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98694_))
            (let ((_e98696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98694_ 'exception))))
              (if (macro-expression-parsing-exception? _e98696_)
                  (macro-expression-parsing-exception-kind _e98696_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp103919
                                (let ()
                                  (declare (not safe))
                                  (cons _e98696_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp103919)))))
            (if (macro-expression-parsing-exception? _exn98694_)
                (macro-expression-parsing-exception-kind _exn98694_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp103918
                              (let ()
                                (declare (not safe))
                                (cons _exn98694_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp103918)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn98690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98690_))
            (let ((_e98692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98690_ 'exception))))
              (if (macro-expression-parsing-exception? _e98692_)
                  (macro-expression-parsing-exception-parameters _e98692_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp103921
                                (let ()
                                  (declare (not safe))
                                  (cons _e98692_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp103921)))))
            (if (macro-expression-parsing-exception? _exn98690_)
                (macro-expression-parsing-exception-parameters _exn98690_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp103920
                              (let ()
                                (declare (not safe))
                                (cons _exn98690_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp103920)))))))
    (define expression-parsing-exception-source
      (lambda (_exn98684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98684_))
            (let ((_e98687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98684_ 'exception))))
              (if (macro-expression-parsing-exception? _e98687_)
                  (macro-expression-parsing-exception-source _e98687_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp103923
                                (let ()
                                  (declare (not safe))
                                  (cons _e98687_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp103923)))))
            (if (macro-expression-parsing-exception? _exn98684_)
                (macro-expression-parsing-exception-source _exn98684_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp103922
                              (let ()
                                (declare (not safe))
                                (cons _exn98684_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp103922)))))))
    (define file-exists-exception?
      (lambda (_exn98680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98680_))
            (let ((_e98682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98680_ 'exception))))
              (macro-file-exists-exception? _e98682_))
            (macro-file-exists-exception? _exn98680_))))
    (define file-exists-exception-arguments
      (lambda (_exn98676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98676_))
            (let ((_e98678_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98676_ 'exception))))
              (if (macro-file-exists-exception? _e98678_)
                  (macro-file-exists-exception-arguments _e98678_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp103925
                                (let ()
                                  (declare (not safe))
                                  (cons _e98678_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp103925)))))
            (if (macro-file-exists-exception? _exn98676_)
                (macro-file-exists-exception-arguments _exn98676_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp103924
                              (let ()
                                (declare (not safe))
                                (cons _exn98676_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp103924)))))))
    (define file-exists-exception-procedure
      (lambda (_exn98670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98670_))
            (let ((_e98673_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98670_ 'exception))))
              (if (macro-file-exists-exception? _e98673_)
                  (macro-file-exists-exception-procedure _e98673_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp103927
                                (let ()
                                  (declare (not safe))
                                  (cons _e98673_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp103927)))))
            (if (macro-file-exists-exception? _exn98670_)
                (macro-file-exists-exception-procedure _exn98670_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp103926
                              (let ()
                                (declare (not safe))
                                (cons _exn98670_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp103926)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn98666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98666_))
            (let ((_e98668_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98666_ 'exception))))
              (macro-fixnum-overflow-exception? _e98668_))
            (macro-fixnum-overflow-exception? _exn98666_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn98662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98662_))
            (let ((_e98664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98662_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e98664_)
                  (macro-fixnum-overflow-exception-arguments _e98664_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp103929
                                (let ()
                                  (declare (not safe))
                                  (cons _e98664_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp103929)))))
            (if (macro-fixnum-overflow-exception? _exn98662_)
                (macro-fixnum-overflow-exception-arguments _exn98662_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp103928
                              (let ()
                                (declare (not safe))
                                (cons _exn98662_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp103928)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn98656_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98656_))
            (let ((_e98659_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98656_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e98659_)
                  (macro-fixnum-overflow-exception-procedure _e98659_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp103931
                                (let ()
                                  (declare (not safe))
                                  (cons _e98659_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp103931)))))
            (if (macro-fixnum-overflow-exception? _exn98656_)
                (macro-fixnum-overflow-exception-procedure _exn98656_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp103930
                              (let ()
                                (declare (not safe))
                                (cons _exn98656_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp103930)))))))
    (define heap-overflow-exception?
      (lambda (_exn98650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98650_))
            (let ((_e98653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98650_ 'exception))))
              (macro-heap-overflow-exception? _e98653_))
            (macro-heap-overflow-exception? _exn98650_))))
    (define inactive-thread-exception?
      (lambda (_exn98646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98646_))
            (let ((_e98648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98646_ 'exception))))
              (macro-inactive-thread-exception? _e98648_))
            (macro-inactive-thread-exception? _exn98646_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn98642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98642_))
            (let ((_e98644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98642_ 'exception))))
              (if (macro-inactive-thread-exception? _e98644_)
                  (macro-inactive-thread-exception-arguments _e98644_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp103933
                                (let ()
                                  (declare (not safe))
                                  (cons _e98644_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp103933)))))
            (if (macro-inactive-thread-exception? _exn98642_)
                (macro-inactive-thread-exception-arguments _exn98642_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp103932
                              (let ()
                                (declare (not safe))
                                (cons _exn98642_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp103932)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn98636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98636_))
            (let ((_e98639_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98636_ 'exception))))
              (if (macro-inactive-thread-exception? _e98639_)
                  (macro-inactive-thread-exception-procedure _e98639_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp103935
                                (let ()
                                  (declare (not safe))
                                  (cons _e98639_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp103935)))))
            (if (macro-inactive-thread-exception? _exn98636_)
                (macro-inactive-thread-exception-procedure _exn98636_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp103934
                              (let ()
                                (declare (not safe))
                                (cons _exn98636_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp103934)))))))
    (define initialized-thread-exception?
      (lambda (_exn98632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98632_))
            (let ((_e98634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98632_ 'exception))))
              (macro-initialized-thread-exception? _e98634_))
            (macro-initialized-thread-exception? _exn98632_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn98628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98628_))
            (let ((_e98630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98628_ 'exception))))
              (if (macro-initialized-thread-exception? _e98630_)
                  (macro-initialized-thread-exception-arguments _e98630_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp103937
                                (let ()
                                  (declare (not safe))
                                  (cons _e98630_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp103937)))))
            (if (macro-initialized-thread-exception? _exn98628_)
                (macro-initialized-thread-exception-arguments _exn98628_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp103936
                              (let ()
                                (declare (not safe))
                                (cons _exn98628_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp103936)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn98622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98622_))
            (let ((_e98625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98622_ 'exception))))
              (if (macro-initialized-thread-exception? _e98625_)
                  (macro-initialized-thread-exception-procedure _e98625_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp103939
                                (let ()
                                  (declare (not safe))
                                  (cons _e98625_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp103939)))))
            (if (macro-initialized-thread-exception? _exn98622_)
                (macro-initialized-thread-exception-procedure _exn98622_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp103938
                              (let ()
                                (declare (not safe))
                                (cons _exn98622_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp103938)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn98618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98618_))
            (let ((_e98620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98618_ 'exception))))
              (macro-invalid-hash-number-exception? _e98620_))
            (macro-invalid-hash-number-exception? _exn98618_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn98614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98614_))
            (let ((_e98616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98614_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e98616_)
                  (macro-invalid-hash-number-exception-arguments _e98616_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp103941
                                (let ()
                                  (declare (not safe))
                                  (cons _e98616_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp103941)))))
            (if (macro-invalid-hash-number-exception? _exn98614_)
                (macro-invalid-hash-number-exception-arguments _exn98614_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp103940
                              (let ()
                                (declare (not safe))
                                (cons _exn98614_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp103940)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn98608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98608_))
            (let ((_e98611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98608_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e98611_)
                  (macro-invalid-hash-number-exception-procedure _e98611_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp103943
                                (let ()
                                  (declare (not safe))
                                  (cons _e98611_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp103943)))))
            (if (macro-invalid-hash-number-exception? _exn98608_)
                (macro-invalid-hash-number-exception-procedure _exn98608_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp103942
                              (let ()
                                (declare (not safe))
                                (cons _exn98608_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp103942)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn98604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98604_))
            (let ((_e98606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98604_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e98606_))
            (macro-invalid-utf8-encoding-exception? _exn98604_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn98600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98600_))
            (let ((_e98602_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98600_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e98602_)
                  (macro-invalid-utf8-encoding-exception-arguments _e98602_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp103945
                                (let ()
                                  (declare (not safe))
                                  (cons _e98602_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp103945)))))
            (if (macro-invalid-utf8-encoding-exception? _exn98600_)
                (macro-invalid-utf8-encoding-exception-arguments _exn98600_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp103944
                              (let ()
                                (declare (not safe))
                                (cons _exn98600_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp103944)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn98594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98594_))
            (let ((_e98597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98594_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e98597_)
                  (macro-invalid-utf8-encoding-exception-procedure _e98597_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp103947
                                (let ()
                                  (declare (not safe))
                                  (cons _e98597_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp103947)))))
            (if (macro-invalid-utf8-encoding-exception? _exn98594_)
                (macro-invalid-utf8-encoding-exception-procedure _exn98594_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp103946
                              (let ()
                                (declare (not safe))
                                (cons _exn98594_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp103946)))))))
    (define join-timeout-exception?
      (lambda (_exn98590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98590_))
            (let ((_e98592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98590_ 'exception))))
              (macro-join-timeout-exception? _e98592_))
            (macro-join-timeout-exception? _exn98590_))))
    (define join-timeout-exception-arguments
      (lambda (_exn98586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98586_))
            (let ((_e98588_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98586_ 'exception))))
              (if (macro-join-timeout-exception? _e98588_)
                  (macro-join-timeout-exception-arguments _e98588_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp103949
                                (let ()
                                  (declare (not safe))
                                  (cons _e98588_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp103949)))))
            (if (macro-join-timeout-exception? _exn98586_)
                (macro-join-timeout-exception-arguments _exn98586_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp103948
                              (let ()
                                (declare (not safe))
                                (cons _exn98586_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp103948)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn98580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98580_))
            (let ((_e98583_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98580_ 'exception))))
              (if (macro-join-timeout-exception? _e98583_)
                  (macro-join-timeout-exception-procedure _e98583_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp103951
                                (let ()
                                  (declare (not safe))
                                  (cons _e98583_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp103951)))))
            (if (macro-join-timeout-exception? _exn98580_)
                (macro-join-timeout-exception-procedure _exn98580_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp103950
                              (let ()
                                (declare (not safe))
                                (cons _exn98580_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp103950)))))))
    (define keyword-expected-exception?
      (lambda (_exn98576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98576_))
            (let ((_e98578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98576_ 'exception))))
              (macro-keyword-expected-exception? _e98578_))
            (macro-keyword-expected-exception? _exn98576_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn98572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98572_))
            (let ((_e98574_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98572_ 'exception))))
              (if (macro-keyword-expected-exception? _e98574_)
                  (macro-keyword-expected-exception-arguments _e98574_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp103953
                                (let ()
                                  (declare (not safe))
                                  (cons _e98574_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp103953)))))
            (if (macro-keyword-expected-exception? _exn98572_)
                (macro-keyword-expected-exception-arguments _exn98572_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp103952
                              (let ()
                                (declare (not safe))
                                (cons _exn98572_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp103952)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn98566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98566_))
            (let ((_e98569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98566_ 'exception))))
              (if (macro-keyword-expected-exception? _e98569_)
                  (macro-keyword-expected-exception-procedure _e98569_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp103955
                                (let ()
                                  (declare (not safe))
                                  (cons _e98569_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp103955)))))
            (if (macro-keyword-expected-exception? _exn98566_)
                (macro-keyword-expected-exception-procedure _exn98566_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp103954
                              (let ()
                                (declare (not safe))
                                (cons _exn98566_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp103954)))))))
    (define length-mismatch-exception?
      (lambda (_exn98562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98562_))
            (let ((_e98564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98562_ 'exception))))
              (macro-length-mismatch-exception? _e98564_))
            (macro-length-mismatch-exception? _exn98562_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn98558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98558_))
            (let ((_e98560_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98558_ 'exception))))
              (if (macro-length-mismatch-exception? _e98560_)
                  (macro-length-mismatch-exception-arg-id _e98560_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp103957
                                (let ()
                                  (declare (not safe))
                                  (cons _e98560_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp103957)))))
            (if (macro-length-mismatch-exception? _exn98558_)
                (macro-length-mismatch-exception-arg-id _exn98558_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp103956
                              (let ()
                                (declare (not safe))
                                (cons _exn98558_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp103956)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn98554_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98554_))
            (let ((_e98556_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98554_ 'exception))))
              (if (macro-length-mismatch-exception? _e98556_)
                  (macro-length-mismatch-exception-arguments _e98556_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp103959
                                (let ()
                                  (declare (not safe))
                                  (cons _e98556_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp103959)))))
            (if (macro-length-mismatch-exception? _exn98554_)
                (macro-length-mismatch-exception-arguments _exn98554_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp103958
                              (let ()
                                (declare (not safe))
                                (cons _exn98554_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp103958)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn98548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98548_))
            (let ((_e98551_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98548_ 'exception))))
              (if (macro-length-mismatch-exception? _e98551_)
                  (macro-length-mismatch-exception-procedure _e98551_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp103961
                                (let ()
                                  (declare (not safe))
                                  (cons _e98551_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp103961)))))
            (if (macro-length-mismatch-exception? _exn98548_)
                (macro-length-mismatch-exception-procedure _exn98548_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp103960
                              (let ()
                                (declare (not safe))
                                (cons _exn98548_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp103960)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn98544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98544_))
            (let ((_e98546_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98544_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e98546_))
            (macro-mailbox-receive-timeout-exception? _exn98544_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn98540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98540_))
            (let ((_e98542_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98540_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e98542_)
                  (macro-mailbox-receive-timeout-exception-arguments _e98542_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp103963
                                (let ()
                                  (declare (not safe))
                                  (cons _e98542_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp103963)))))
            (if (macro-mailbox-receive-timeout-exception? _exn98540_)
                (macro-mailbox-receive-timeout-exception-arguments _exn98540_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp103962
                              (let ()
                                (declare (not safe))
                                (cons _exn98540_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp103962)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn98534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98534_))
            (let ((_e98537_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98534_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e98537_)
                  (macro-mailbox-receive-timeout-exception-procedure _e98537_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp103965
                                (let ()
                                  (declare (not safe))
                                  (cons _e98537_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp103965)))))
            (if (macro-mailbox-receive-timeout-exception? _exn98534_)
                (macro-mailbox-receive-timeout-exception-procedure _exn98534_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp103964
                              (let ()
                                (declare (not safe))
                                (cons _exn98534_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp103964)))))))
    (define module-not-found-exception?
      (lambda (_exn98530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98530_))
            (let ((_e98532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98530_ 'exception))))
              (macro-module-not-found-exception? _e98532_))
            (macro-module-not-found-exception? _exn98530_))))
    (define module-not-found-exception-arguments
      (lambda (_exn98526_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98526_))
            (let ((_e98528_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98526_ 'exception))))
              (if (macro-module-not-found-exception? _e98528_)
                  (macro-module-not-found-exception-arguments _e98528_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp103967
                                (let ()
                                  (declare (not safe))
                                  (cons _e98528_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp103967)))))
            (if (macro-module-not-found-exception? _exn98526_)
                (macro-module-not-found-exception-arguments _exn98526_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp103966
                              (let ()
                                (declare (not safe))
                                (cons _exn98526_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp103966)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn98520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98520_))
            (let ((_e98523_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98520_ 'exception))))
              (if (macro-module-not-found-exception? _e98523_)
                  (macro-module-not-found-exception-procedure _e98523_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp103969
                                (let ()
                                  (declare (not safe))
                                  (cons _e98523_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp103969)))))
            (if (macro-module-not-found-exception? _exn98520_)
                (macro-module-not-found-exception-procedure _exn98520_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp103968
                              (let ()
                                (declare (not safe))
                                (cons _exn98520_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp103968)))))))
    (define multiple-c-return-exception?
      (lambda (_exn98514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98514_))
            (let ((_e98517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98514_ 'exception))))
              (macro-multiple-c-return-exception? _e98517_))
            (macro-multiple-c-return-exception? _exn98514_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn98510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98510_))
            (let ((_e98512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98510_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e98512_))
            (macro-no-such-file-or-directory-exception? _exn98510_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn98506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98506_))
            (let ((_e98508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98506_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e98508_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e98508_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp103971
                                (let ()
                                  (declare (not safe))
                                  (cons _e98508_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp103971)))))
            (if (macro-no-such-file-or-directory-exception? _exn98506_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn98506_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp103970
                              (let ()
                                (declare (not safe))
                                (cons _exn98506_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp103970)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn98500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98500_))
            (let ((_e98503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98500_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e98503_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e98503_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp103973
                                (let ()
                                  (declare (not safe))
                                  (cons _e98503_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp103973)))))
            (if (macro-no-such-file-or-directory-exception? _exn98500_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn98500_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp103972
                              (let ()
                                (declare (not safe))
                                (cons _exn98500_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp103972)))))))
    (define noncontinuable-exception?
      (lambda (_exn98496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98496_))
            (let ((_e98498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98496_ 'exception))))
              (macro-noncontinuable-exception? _e98498_))
            (macro-noncontinuable-exception? _exn98496_))))
    (define noncontinuable-exception-reason
      (lambda (_exn98490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98490_))
            (let ((_e98493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98490_ 'exception))))
              (if (macro-noncontinuable-exception? _e98493_)
                  (macro-noncontinuable-exception-reason _e98493_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp103975
                                (let ()
                                  (declare (not safe))
                                  (cons _e98493_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp103975)))))
            (if (macro-noncontinuable-exception? _exn98490_)
                (macro-noncontinuable-exception-reason _exn98490_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp103974
                              (let ()
                                (declare (not safe))
                                (cons _exn98490_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp103974)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn98486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98486_))
            (let ((_e98488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98486_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e98488_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn98486_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn98482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98482_))
            (let ((_e98484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98482_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e98484_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e98484_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp103977
                                (let ()
                                  (declare (not safe))
                                  (cons _e98484_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp103977)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn98482_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn98482_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp103976
                              (let ()
                                (declare (not safe))
                                (cons _exn98482_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp103976)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn98476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98476_))
            (let ((_e98479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98476_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e98479_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e98479_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp103979
                                (let ()
                                  (declare (not safe))
                                  (cons _e98479_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp103979)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn98476_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn98476_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp103978
                              (let ()
                                (declare (not safe))
                                (cons _exn98476_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp103978)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn98472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98472_))
            (let ((_e98474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98472_ 'exception))))
              (macro-nonprocedure-operator-exception? _e98474_))
            (macro-nonprocedure-operator-exception? _exn98472_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn98468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98468_))
            (let ((_e98470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98468_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98470_)
                  (macro-nonprocedure-operator-exception-arguments _e98470_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103981
                                (let ()
                                  (declare (not safe))
                                  (cons _e98470_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp103981)))))
            (if (macro-nonprocedure-operator-exception? _exn98468_)
                (macro-nonprocedure-operator-exception-arguments _exn98468_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103980
                              (let ()
                                (declare (not safe))
                                (cons _exn98468_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp103980)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn98464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98464_))
            (let ((_e98466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98464_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98466_)
                  (macro-nonprocedure-operator-exception-code _e98466_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103983
                                (let ()
                                  (declare (not safe))
                                  (cons _e98466_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp103983)))))
            (if (macro-nonprocedure-operator-exception? _exn98464_)
                (macro-nonprocedure-operator-exception-code _exn98464_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103982
                              (let ()
                                (declare (not safe))
                                (cons _exn98464_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp103982)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn98460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98460_))
            (let ((_e98462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98460_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98462_)
                  (macro-nonprocedure-operator-exception-operator _e98462_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103985
                                (let ()
                                  (declare (not safe))
                                  (cons _e98462_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp103985)))))
            (if (macro-nonprocedure-operator-exception? _exn98460_)
                (macro-nonprocedure-operator-exception-operator _exn98460_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103984
                              (let ()
                                (declare (not safe))
                                (cons _exn98460_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp103984)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn98454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98454_))
            (let ((_e98457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98454_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e98457_)
                  (macro-nonprocedure-operator-exception-rte _e98457_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp103987
                                (let ()
                                  (declare (not safe))
                                  (cons _e98457_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp103987)))))
            (if (macro-nonprocedure-operator-exception? _exn98454_)
                (macro-nonprocedure-operator-exception-rte _exn98454_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp103986
                              (let ()
                                (declare (not safe))
                                (cons _exn98454_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp103986)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn98450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98450_))
            (let ((_e98452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98450_ 'exception))))
              (macro-not-in-compilation-context-exception? _e98452_))
            (macro-not-in-compilation-context-exception? _exn98450_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn98446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98446_))
            (let ((_e98448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98446_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e98448_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e98448_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp103989
                                (let ()
                                  (declare (not safe))
                                  (cons _e98448_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp103989)))))
            (if (macro-not-in-compilation-context-exception? _exn98446_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn98446_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp103988
                              (let ()
                                (declare (not safe))
                                (cons _exn98446_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp103988)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn98440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98440_))
            (let ((_e98443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98440_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e98443_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e98443_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp103991
                                (let ()
                                  (declare (not safe))
                                  (cons _e98443_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp103991)))))
            (if (macro-not-in-compilation-context-exception? _exn98440_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn98440_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp103990
                              (let ()
                                (declare (not safe))
                                (cons _exn98440_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp103990)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn98436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98436_))
            (let ((_e98438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98436_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e98438_))
            (macro-number-of-arguments-limit-exception? _exn98436_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn98432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98432_))
            (let ((_e98434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98432_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e98434_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e98434_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp103993
                                (let ()
                                  (declare (not safe))
                                  (cons _e98434_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp103993)))))
            (if (macro-number-of-arguments-limit-exception? _exn98432_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn98432_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp103992
                              (let ()
                                (declare (not safe))
                                (cons _exn98432_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp103992)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn98426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98426_))
            (let ((_e98429_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98426_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e98429_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e98429_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp103995
                                (let ()
                                  (declare (not safe))
                                  (cons _e98429_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp103995)))))
            (if (macro-number-of-arguments-limit-exception? _exn98426_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn98426_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp103994
                              (let ()
                                (declare (not safe))
                                (cons _exn98426_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp103994)))))))
    (define os-exception?
      (lambda (_exn98422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98422_))
            (let ((_e98424_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98422_ 'exception))))
              (macro-os-exception? _e98424_))
            (macro-os-exception? _exn98422_))))
    (define os-exception-arguments
      (lambda (_exn98418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98418_))
            (let ((_e98420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98418_ 'exception))))
              (if (macro-os-exception? _e98420_)
                  (macro-os-exception-arguments _e98420_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp103997
                                (let ()
                                  (declare (not safe))
                                  (cons _e98420_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp103997)))))
            (if (macro-os-exception? _exn98418_)
                (macro-os-exception-arguments _exn98418_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp103996
                              (let ()
                                (declare (not safe))
                                (cons _exn98418_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp103996)))))))
    (define os-exception-code
      (lambda (_exn98414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98414_))
            (let ((_e98416_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98414_ 'exception))))
              (if (macro-os-exception? _e98416_)
                  (macro-os-exception-code _e98416_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp103999
                                (let ()
                                  (declare (not safe))
                                  (cons _e98416_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp103999)))))
            (if (macro-os-exception? _exn98414_)
                (macro-os-exception-code _exn98414_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp103998
                              (let ()
                                (declare (not safe))
                                (cons _exn98414_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp103998)))))))
    (define os-exception-message
      (lambda (_exn98410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98410_))
            (let ((_e98412_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98410_ 'exception))))
              (if (macro-os-exception? _e98412_)
                  (macro-os-exception-message _e98412_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp104001
                                (let ()
                                  (declare (not safe))
                                  (cons _e98412_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp104001)))))
            (if (macro-os-exception? _exn98410_)
                (macro-os-exception-message _exn98410_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp104000
                              (let ()
                                (declare (not safe))
                                (cons _exn98410_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp104000)))))))
    (define os-exception-procedure
      (lambda (_exn98404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98404_))
            (let ((_e98407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98404_ 'exception))))
              (if (macro-os-exception? _e98407_)
                  (macro-os-exception-procedure _e98407_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp104003
                                (let ()
                                  (declare (not safe))
                                  (cons _e98407_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp104003)))))
            (if (macro-os-exception? _exn98404_)
                (macro-os-exception-procedure _exn98404_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp104002
                              (let ()
                                (declare (not safe))
                                (cons _exn98404_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp104002)))))))
    (define permission-denied-exception?
      (lambda (_exn98400_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98400_))
            (let ((_e98402_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98400_ 'exception))))
              (macro-permission-denied-exception? _e98402_))
            (macro-permission-denied-exception? _exn98400_))))
    (define permission-denied-exception-arguments
      (lambda (_exn98396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98396_))
            (let ((_e98398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98396_ 'exception))))
              (if (macro-permission-denied-exception? _e98398_)
                  (macro-permission-denied-exception-arguments _e98398_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp104005
                                (let ()
                                  (declare (not safe))
                                  (cons _e98398_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp104005)))))
            (if (macro-permission-denied-exception? _exn98396_)
                (macro-permission-denied-exception-arguments _exn98396_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp104004
                              (let ()
                                (declare (not safe))
                                (cons _exn98396_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp104004)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn98390_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98390_))
            (let ((_e98393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98390_ 'exception))))
              (if (macro-permission-denied-exception? _e98393_)
                  (macro-permission-denied-exception-procedure _e98393_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp104007
                                (let ()
                                  (declare (not safe))
                                  (cons _e98393_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp104007)))))
            (if (macro-permission-denied-exception? _exn98390_)
                (macro-permission-denied-exception-procedure _exn98390_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp104006
                              (let ()
                                (declare (not safe))
                                (cons _exn98390_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp104006)))))))
    (define range-exception?
      (lambda (_exn98386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98386_))
            (let ((_e98388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98386_ 'exception))))
              (macro-range-exception? _e98388_))
            (macro-range-exception? _exn98386_))))
    (define range-exception-arg-id
      (lambda (_exn98382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98382_))
            (let ((_e98384_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98382_ 'exception))))
              (if (macro-range-exception? _e98384_)
                  (macro-range-exception-arg-id _e98384_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp104009
                                (let ()
                                  (declare (not safe))
                                  (cons _e98384_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp104009)))))
            (if (macro-range-exception? _exn98382_)
                (macro-range-exception-arg-id _exn98382_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp104008
                              (let ()
                                (declare (not safe))
                                (cons _exn98382_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp104008)))))))
    (define range-exception-arguments
      (lambda (_exn98378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98378_))
            (let ((_e98380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98378_ 'exception))))
              (if (macro-range-exception? _e98380_)
                  (macro-range-exception-arguments _e98380_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp104011
                                (let ()
                                  (declare (not safe))
                                  (cons _e98380_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp104011)))))
            (if (macro-range-exception? _exn98378_)
                (macro-range-exception-arguments _exn98378_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp104010
                              (let ()
                                (declare (not safe))
                                (cons _exn98378_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp104010)))))))
    (define range-exception-procedure
      (lambda (_exn98372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98372_))
            (let ((_e98375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98372_ 'exception))))
              (if (macro-range-exception? _e98375_)
                  (macro-range-exception-procedure _e98375_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp104013
                                (let ()
                                  (declare (not safe))
                                  (cons _e98375_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp104013)))))
            (if (macro-range-exception? _exn98372_)
                (macro-range-exception-procedure _exn98372_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp104012
                              (let ()
                                (declare (not safe))
                                (cons _exn98372_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp104012)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn98368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98368_))
            (let ((_e98370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98368_ 'exception))))
              (macro-rpc-remote-error-exception? _e98370_))
            (macro-rpc-remote-error-exception? _exn98368_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn98364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98364_))
            (let ((_e98366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98364_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e98366_)
                  (macro-rpc-remote-error-exception-arguments _e98366_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp104015
                                (let ()
                                  (declare (not safe))
                                  (cons _e98366_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp104015)))))
            (if (macro-rpc-remote-error-exception? _exn98364_)
                (macro-rpc-remote-error-exception-arguments _exn98364_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp104014
                              (let ()
                                (declare (not safe))
                                (cons _exn98364_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp104014)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn98360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98360_))
            (let ((_e98362_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98360_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e98362_)
                  (macro-rpc-remote-error-exception-message _e98362_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp104017
                                (let ()
                                  (declare (not safe))
                                  (cons _e98362_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp104017)))))
            (if (macro-rpc-remote-error-exception? _exn98360_)
                (macro-rpc-remote-error-exception-message _exn98360_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp104016
                              (let ()
                                (declare (not safe))
                                (cons _exn98360_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp104016)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn98354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98354_))
            (let ((_e98357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98354_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e98357_)
                  (macro-rpc-remote-error-exception-procedure _e98357_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp104019
                                (let ()
                                  (declare (not safe))
                                  (cons _e98357_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp104019)))))
            (if (macro-rpc-remote-error-exception? _exn98354_)
                (macro-rpc-remote-error-exception-procedure _exn98354_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp104018
                              (let ()
                                (declare (not safe))
                                (cons _exn98354_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp104018)))))))
    (define scheduler-exception?
      (lambda (_exn98350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98350_))
            (let ((_e98352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98350_ 'exception))))
              (macro-scheduler-exception? _e98352_))
            (macro-scheduler-exception? _exn98350_))))
    (define scheduler-exception-reason
      (lambda (_exn98344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98344_))
            (let ((_e98347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98344_ 'exception))))
              (if (macro-scheduler-exception? _e98347_)
                  (macro-scheduler-exception-reason _e98347_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp104021
                                (let ()
                                  (declare (not safe))
                                  (cons _e98347_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp104021)))))
            (if (macro-scheduler-exception? _exn98344_)
                (macro-scheduler-exception-reason _exn98344_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp104020
                              (let ()
                                (declare (not safe))
                                (cons _exn98344_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp104020)))))))
    (define sfun-conversion-exception?
      (lambda (_exn98340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98340_))
            (let ((_e98342_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98340_ 'exception))))
              (macro-sfun-conversion-exception? _e98342_))
            (macro-sfun-conversion-exception? _exn98340_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn98336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98336_))
            (let ((_e98338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98336_ 'exception))))
              (if (macro-sfun-conversion-exception? _e98338_)
                  (macro-sfun-conversion-exception-arguments _e98338_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp104023
                                (let ()
                                  (declare (not safe))
                                  (cons _e98338_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp104023)))))
            (if (macro-sfun-conversion-exception? _exn98336_)
                (macro-sfun-conversion-exception-arguments _exn98336_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp104022
                              (let ()
                                (declare (not safe))
                                (cons _exn98336_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp104022)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn98332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98332_))
            (let ((_e98334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98332_ 'exception))))
              (if (macro-sfun-conversion-exception? _e98334_)
                  (macro-sfun-conversion-exception-code _e98334_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp104025
                                (let ()
                                  (declare (not safe))
                                  (cons _e98334_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp104025)))))
            (if (macro-sfun-conversion-exception? _exn98332_)
                (macro-sfun-conversion-exception-code _exn98332_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp104024
                              (let ()
                                (declare (not safe))
                                (cons _exn98332_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp104024)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn98328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98328_))
            (let ((_e98330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98328_ 'exception))))
              (if (macro-sfun-conversion-exception? _e98330_)
                  (macro-sfun-conversion-exception-message _e98330_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp104027
                                (let ()
                                  (declare (not safe))
                                  (cons _e98330_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp104027)))))
            (if (macro-sfun-conversion-exception? _exn98328_)
                (macro-sfun-conversion-exception-message _exn98328_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp104026
                              (let ()
                                (declare (not safe))
                                (cons _exn98328_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp104026)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn98322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98322_))
            (let ((_e98325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98322_ 'exception))))
              (if (macro-sfun-conversion-exception? _e98325_)
                  (macro-sfun-conversion-exception-procedure _e98325_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp104029
                                (let ()
                                  (declare (not safe))
                                  (cons _e98325_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp104029)))))
            (if (macro-sfun-conversion-exception? _exn98322_)
                (macro-sfun-conversion-exception-procedure _exn98322_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp104028
                              (let ()
                                (declare (not safe))
                                (cons _exn98322_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp104028)))))))
    (define stack-overflow-exception?
      (lambda (_exn98316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98316_))
            (let ((_e98319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98316_ 'exception))))
              (macro-stack-overflow-exception? _e98319_))
            (macro-stack-overflow-exception? _exn98316_))))
    (define started-thread-exception?
      (lambda (_exn98312_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98312_))
            (let ((_e98314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98312_ 'exception))))
              (macro-started-thread-exception? _e98314_))
            (macro-started-thread-exception? _exn98312_))))
    (define started-thread-exception-arguments
      (lambda (_exn98308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98308_))
            (let ((_e98310_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98308_ 'exception))))
              (if (macro-started-thread-exception? _e98310_)
                  (macro-started-thread-exception-arguments _e98310_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp104031
                                (let ()
                                  (declare (not safe))
                                  (cons _e98310_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp104031)))))
            (if (macro-started-thread-exception? _exn98308_)
                (macro-started-thread-exception-arguments _exn98308_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp104030
                              (let ()
                                (declare (not safe))
                                (cons _exn98308_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp104030)))))))
    (define started-thread-exception-procedure
      (lambda (_exn98302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98302_))
            (let ((_e98305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98302_ 'exception))))
              (if (macro-started-thread-exception? _e98305_)
                  (macro-started-thread-exception-procedure _e98305_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp104033
                                (let ()
                                  (declare (not safe))
                                  (cons _e98305_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp104033)))))
            (if (macro-started-thread-exception? _exn98302_)
                (macro-started-thread-exception-procedure _exn98302_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp104032
                              (let ()
                                (declare (not safe))
                                (cons _exn98302_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp104032)))))))
    (define terminated-thread-exception?
      (lambda (_exn98298_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98298_))
            (let ((_e98300_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98298_ 'exception))))
              (macro-terminated-thread-exception? _e98300_))
            (macro-terminated-thread-exception? _exn98298_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn98294_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98294_))
            (let ((_e98296_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98294_ 'exception))))
              (if (macro-terminated-thread-exception? _e98296_)
                  (macro-terminated-thread-exception-arguments _e98296_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp104035
                                (let ()
                                  (declare (not safe))
                                  (cons _e98296_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp104035)))))
            (if (macro-terminated-thread-exception? _exn98294_)
                (macro-terminated-thread-exception-arguments _exn98294_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp104034
                              (let ()
                                (declare (not safe))
                                (cons _exn98294_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp104034)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn98288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98288_))
            (let ((_e98291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98288_ 'exception))))
              (if (macro-terminated-thread-exception? _e98291_)
                  (macro-terminated-thread-exception-procedure _e98291_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp104037
                                (let ()
                                  (declare (not safe))
                                  (cons _e98291_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp104037)))))
            (if (macro-terminated-thread-exception? _exn98288_)
                (macro-terminated-thread-exception-procedure _exn98288_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp104036
                              (let ()
                                (declare (not safe))
                                (cons _exn98288_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp104036)))))))
    (define type-exception?
      (lambda (_exn98284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98284_))
            (let ((_e98286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98284_ 'exception))))
              (macro-type-exception? _e98286_))
            (macro-type-exception? _exn98284_))))
    (define type-exception-arg-id
      (lambda (_exn98280_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98280_))
            (let ((_e98282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98280_ 'exception))))
              (if (macro-type-exception? _e98282_)
                  (macro-type-exception-arg-id _e98282_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp104039
                                (let ()
                                  (declare (not safe))
                                  (cons _e98282_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp104039)))))
            (if (macro-type-exception? _exn98280_)
                (macro-type-exception-arg-id _exn98280_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp104038
                              (let ()
                                (declare (not safe))
                                (cons _exn98280_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp104038)))))))
    (define type-exception-arguments
      (lambda (_exn98276_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98276_))
            (let ((_e98278_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98276_ 'exception))))
              (if (macro-type-exception? _e98278_)
                  (macro-type-exception-arguments _e98278_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp104041
                                (let ()
                                  (declare (not safe))
                                  (cons _e98278_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp104041)))))
            (if (macro-type-exception? _exn98276_)
                (macro-type-exception-arguments _exn98276_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp104040
                              (let ()
                                (declare (not safe))
                                (cons _exn98276_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp104040)))))))
    (define type-exception-procedure
      (lambda (_exn98272_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98272_))
            (let ((_e98274_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98272_ 'exception))))
              (if (macro-type-exception? _e98274_)
                  (macro-type-exception-procedure _e98274_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp104043
                                (let ()
                                  (declare (not safe))
                                  (cons _e98274_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp104043)))))
            (if (macro-type-exception? _exn98272_)
                (macro-type-exception-procedure _exn98272_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp104042
                              (let ()
                                (declare (not safe))
                                (cons _exn98272_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp104042)))))))
    (define type-exception-type-id
      (lambda (_exn98266_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98266_))
            (let ((_e98269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98266_ 'exception))))
              (if (macro-type-exception? _e98269_)
                  (macro-type-exception-type-id _e98269_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp104045
                                (let ()
                                  (declare (not safe))
                                  (cons _e98269_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp104045)))))
            (if (macro-type-exception? _exn98266_)
                (macro-type-exception-type-id _exn98266_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp104044
                              (let ()
                                (declare (not safe))
                                (cons _exn98266_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp104044)))))))
    (define unbound-global-exception?
      (lambda (_exn98262_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98262_))
            (let ((_e98264_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98262_ 'exception))))
              (macro-unbound-global-exception? _e98264_))
            (macro-unbound-global-exception? _exn98262_))))
    (define unbound-global-exception-code
      (lambda (_exn98258_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98258_))
            (let ((_e98260_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98258_ 'exception))))
              (if (macro-unbound-global-exception? _e98260_)
                  (macro-unbound-global-exception-code _e98260_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp104047
                                (let ()
                                  (declare (not safe))
                                  (cons _e98260_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code
                                 __tmp104047)))))
            (if (macro-unbound-global-exception? _exn98258_)
                (macro-unbound-global-exception-code _exn98258_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp104046
                              (let ()
                                (declare (not safe))
                                (cons _exn98258_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code
                               __tmp104046)))))))
    (define unbound-global-exception-rte
      (lambda (_exn98254_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98254_))
            (let ((_e98256_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98254_ 'exception))))
              (if (macro-unbound-global-exception? _e98256_)
                  (macro-unbound-global-exception-rte _e98256_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp104049
                                (let ()
                                  (declare (not safe))
                                  (cons _e98256_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp104049)))))
            (if (macro-unbound-global-exception? _exn98254_)
                (macro-unbound-global-exception-rte _exn98254_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp104048
                              (let ()
                                (declare (not safe))
                                (cons _exn98254_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp104048)))))))
    (define unbound-global-exception-variable
      (lambda (_exn98248_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98248_))
            (let ((_e98251_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98248_ 'exception))))
              (if (macro-unbound-global-exception? _e98251_)
                  (macro-unbound-global-exception-variable _e98251_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp104051
                                (let ()
                                  (declare (not safe))
                                  (cons _e98251_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp104051)))))
            (if (macro-unbound-global-exception? _exn98248_)
                (macro-unbound-global-exception-variable _exn98248_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp104050
                              (let ()
                                (declare (not safe))
                                (cons _exn98248_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp104050)))))))
    (define unbound-key-exception?
      (lambda (_exn98244_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98244_))
            (let ((_e98246_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98244_ 'exception))))
              (macro-unbound-key-exception? _e98246_))
            (macro-unbound-key-exception? _exn98244_))))
    (define unbound-key-exception-arguments
      (lambda (_exn98240_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98240_))
            (let ((_e98242_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98240_ 'exception))))
              (if (macro-unbound-key-exception? _e98242_)
                  (macro-unbound-key-exception-arguments _e98242_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp104053
                                (let ()
                                  (declare (not safe))
                                  (cons _e98242_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp104053)))))
            (if (macro-unbound-key-exception? _exn98240_)
                (macro-unbound-key-exception-arguments _exn98240_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp104052
                              (let ()
                                (declare (not safe))
                                (cons _exn98240_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp104052)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn98234_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98234_))
            (let ((_e98237_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98234_ 'exception))))
              (if (macro-unbound-key-exception? _e98237_)
                  (macro-unbound-key-exception-procedure _e98237_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp104055
                                (let ()
                                  (declare (not safe))
                                  (cons _e98237_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp104055)))))
            (if (macro-unbound-key-exception? _exn98234_)
                (macro-unbound-key-exception-procedure _exn98234_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp104054
                              (let ()
                                (declare (not safe))
                                (cons _exn98234_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp104054)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn98230_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98230_))
            (let ((_e98232_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98230_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e98232_))
            (macro-unbound-os-environment-variable-exception? _exn98230_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn98226_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98226_))
            (let ((_e98228_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98226_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e98228_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e98228_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp104057
                                (let ()
                                  (declare (not safe))
                                  (cons _e98228_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp104057)))))
            (if (macro-unbound-os-environment-variable-exception? _exn98226_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn98226_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp104056
                              (let ()
                                (declare (not safe))
                                (cons _exn98226_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp104056)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn98220_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98220_))
            (let ((_e98223_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98220_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e98223_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e98223_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp104059
                                (let ()
                                  (declare (not safe))
                                  (cons _e98223_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp104059)))))
            (if (macro-unbound-os-environment-variable-exception? _exn98220_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn98220_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp104058
                              (let ()
                                (declare (not safe))
                                (cons _exn98220_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp104058)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn98216_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98216_))
            (let ((_e98218_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98216_ 'exception))))
              (macro-unbound-serial-number-exception? _e98218_))
            (macro-unbound-serial-number-exception? _exn98216_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn98212_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98212_))
            (let ((_e98214_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98212_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e98214_)
                  (macro-unbound-serial-number-exception-arguments _e98214_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp104061
                                (let ()
                                  (declare (not safe))
                                  (cons _e98214_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp104061)))))
            (if (macro-unbound-serial-number-exception? _exn98212_)
                (macro-unbound-serial-number-exception-arguments _exn98212_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp104060
                              (let ()
                                (declare (not safe))
                                (cons _exn98212_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp104060)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn98206_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98206_))
            (let ((_e98209_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98206_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e98209_)
                  (macro-unbound-serial-number-exception-procedure _e98209_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp104063
                                (let ()
                                  (declare (not safe))
                                  (cons _e98209_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp104063)))))
            (if (macro-unbound-serial-number-exception? _exn98206_)
                (macro-unbound-serial-number-exception-procedure _exn98206_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp104062
                              (let ()
                                (declare (not safe))
                                (cons _exn98206_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp104062)))))))
    (define uncaught-exception?
      (lambda (_exn98202_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98202_))
            (let ((_e98204_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98202_ 'exception))))
              (macro-uncaught-exception? _e98204_))
            (macro-uncaught-exception? _exn98202_))))
    (define uncaught-exception-arguments
      (lambda (_exn98198_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98198_))
            (let ((_e98200_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98198_ 'exception))))
              (if (macro-uncaught-exception? _e98200_)
                  (macro-uncaught-exception-arguments _e98200_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp104065
                                (let ()
                                  (declare (not safe))
                                  (cons _e98200_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp104065)))))
            (if (macro-uncaught-exception? _exn98198_)
                (macro-uncaught-exception-arguments _exn98198_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp104064
                              (let ()
                                (declare (not safe))
                                (cons _exn98198_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp104064)))))))
    (define uncaught-exception-procedure
      (lambda (_exn98194_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98194_))
            (let ((_e98196_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98194_ 'exception))))
              (if (macro-uncaught-exception? _e98196_)
                  (macro-uncaught-exception-procedure _e98196_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp104067
                                (let ()
                                  (declare (not safe))
                                  (cons _e98196_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp104067)))))
            (if (macro-uncaught-exception? _exn98194_)
                (macro-uncaught-exception-procedure _exn98194_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp104066
                              (let ()
                                (declare (not safe))
                                (cons _exn98194_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp104066)))))))
    (define uncaught-exception-reason
      (lambda (_exn98188_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98188_))
            (let ((_e98191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98188_ 'exception))))
              (if (macro-uncaught-exception? _e98191_)
                  (macro-uncaught-exception-reason _e98191_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp104069
                                (let ()
                                  (declare (not safe))
                                  (cons _e98191_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp104069)))))
            (if (macro-uncaught-exception? _exn98188_)
                (macro-uncaught-exception-reason _exn98188_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp104068
                              (let ()
                                (declare (not safe))
                                (cons _exn98188_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp104068)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn98184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98184_))
            (let ((_e98186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98184_ 'exception))))
              (macro-uninitialized-thread-exception? _e98186_))
            (macro-uninitialized-thread-exception? _exn98184_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn98180_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98180_))
            (let ((_e98182_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98180_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e98182_)
                  (macro-uninitialized-thread-exception-arguments _e98182_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp104071
                                (let ()
                                  (declare (not safe))
                                  (cons _e98182_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp104071)))))
            (if (macro-uninitialized-thread-exception? _exn98180_)
                (macro-uninitialized-thread-exception-arguments _exn98180_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp104070
                              (let ()
                                (declare (not safe))
                                (cons _exn98180_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp104070)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn98174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98174_))
            (let ((_e98177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98174_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e98177_)
                  (macro-uninitialized-thread-exception-procedure _e98177_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp104073
                                (let ()
                                  (declare (not safe))
                                  (cons _e98177_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp104073)))))
            (if (macro-uninitialized-thread-exception? _exn98174_)
                (macro-uninitialized-thread-exception-procedure _exn98174_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp104072
                              (let ()
                                (declare (not safe))
                                (cons _exn98174_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp104072)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn98170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98170_))
            (let ((_e98172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98170_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e98172_))
            (macro-unknown-keyword-argument-exception? _exn98170_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn98166_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98166_))
            (let ((_e98168_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98166_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e98168_)
                  (macro-unknown-keyword-argument-exception-arguments _e98168_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp104075
                                (let ()
                                  (declare (not safe))
                                  (cons _e98168_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp104075)))))
            (if (macro-unknown-keyword-argument-exception? _exn98166_)
                (macro-unknown-keyword-argument-exception-arguments _exn98166_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp104074
                              (let ()
                                (declare (not safe))
                                (cons _exn98166_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp104074)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn98160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98160_))
            (let ((_e98163_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98160_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e98163_)
                  (macro-unknown-keyword-argument-exception-procedure _e98163_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp104077
                                (let ()
                                  (declare (not safe))
                                  (cons _e98163_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp104077)))))
            (if (macro-unknown-keyword-argument-exception? _exn98160_)
                (macro-unknown-keyword-argument-exception-procedure _exn98160_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp104076
                              (let ()
                                (declare (not safe))
                                (cons _exn98160_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp104076)))))))
    (define unterminated-process-exception?
      (lambda (_exn98156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98156_))
            (let ((_e98158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98156_ 'exception))))
              (macro-unterminated-process-exception? _e98158_))
            (macro-unterminated-process-exception? _exn98156_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn98152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98152_))
            (let ((_e98154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98152_ 'exception))))
              (if (macro-unterminated-process-exception? _e98154_)
                  (macro-unterminated-process-exception-arguments _e98154_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp104079
                                (let ()
                                  (declare (not safe))
                                  (cons _e98154_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp104079)))))
            (if (macro-unterminated-process-exception? _exn98152_)
                (macro-unterminated-process-exception-arguments _exn98152_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp104078
                              (let ()
                                (declare (not safe))
                                (cons _exn98152_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp104078)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn98146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98146_))
            (let ((_e98149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98146_ 'exception))))
              (if (macro-unterminated-process-exception? _e98149_)
                  (macro-unterminated-process-exception-procedure _e98149_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp104081
                                (let ()
                                  (declare (not safe))
                                  (cons _e98149_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp104081)))))
            (if (macro-unterminated-process-exception? _exn98146_)
                (macro-unterminated-process-exception-procedure _exn98146_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp104080
                              (let ()
                                (declare (not safe))
                                (cons _exn98146_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp104080)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn98142_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98142_))
            (let ((_e98144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98142_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e98144_))
            (macro-wrong-number-of-arguments-exception? _exn98142_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn98138_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98138_))
            (let ((_e98140_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98138_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e98140_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e98140_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp104083
                                (let ()
                                  (declare (not safe))
                                  (cons _e98140_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp104083)))))
            (if (macro-wrong-number-of-arguments-exception? _exn98138_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn98138_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp104082
                              (let ()
                                (declare (not safe))
                                (cons _exn98138_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp104082)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn98132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98132_))
            (let ((_e98135_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98132_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e98135_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e98135_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp104085
                                (let ()
                                  (declare (not safe))
                                  (cons _e98135_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp104085)))))
            (if (macro-wrong-number-of-arguments-exception? _exn98132_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn98132_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp104084
                              (let ()
                                (declare (not safe))
                                (cons _exn98132_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp104084)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn98128_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98128_))
            (let ((_e98130_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98128_ 'exception))))
              (macro-wrong-number-of-values-exception? _e98130_))
            (macro-wrong-number-of-values-exception? _exn98128_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn98124_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98124_))
            (let ((_e98126_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98124_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e98126_)
                  (macro-wrong-number-of-values-exception-code _e98126_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp104087
                                (let ()
                                  (declare (not safe))
                                  (cons _e98126_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp104087)))))
            (if (macro-wrong-number-of-values-exception? _exn98124_)
                (macro-wrong-number-of-values-exception-code _exn98124_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp104086
                              (let ()
                                (declare (not safe))
                                (cons _exn98124_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp104086)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn98120_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98120_))
            (let ((_e98122_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98120_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e98122_)
                  (macro-wrong-number-of-values-exception-rte _e98122_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp104089
                                (let ()
                                  (declare (not safe))
                                  (cons _e98122_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp104089)))))
            (if (macro-wrong-number-of-values-exception? _exn98120_)
                (macro-wrong-number-of-values-exception-rte _exn98120_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp104088
                              (let ()
                                (declare (not safe))
                                (cons _exn98120_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp104088)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn98114_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98114_))
            (let ((_e98117_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98114_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e98117_)
                  (macro-wrong-number-of-values-exception-vals _e98117_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp104091
                                (let ()
                                  (declare (not safe))
                                  (cons _e98117_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp104091)))))
            (if (macro-wrong-number-of-values-exception? _exn98114_)
                (macro-wrong-number-of-values-exception-vals _exn98114_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp104090
                              (let ()
                                (declare (not safe))
                                (cons _exn98114_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp104090)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn98108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn98108_))
            (let ((_e98111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn98108_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e98111_))
            (macro-wrong-processor-c-return-exception? _exn98108_))))))
