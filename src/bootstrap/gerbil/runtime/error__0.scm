(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707831893)
  (begin
    (define Exception::t
      (let ((__tmp96528 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp96528
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91931_ (apply make-instance Exception::t _$args91931_)))
    (define StackTrace::t
      (let ((__tmp96529 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp96529
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91928_ (apply make-instance StackTrace::t _$args91928_)))
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
      (let ((__tmp96530 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp96530
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91925_ (apply make-instance Error::t _$args91925_)))
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
      (let ((__tmp96531 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp96531
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91922_
        (apply make-instance RuntimeException::t _$args91922_)))
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
      (lambda (_exn91917_ _continue91918_)
        (let ((_exn91920_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91917_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91920_ _continue91918_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91913_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91913_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91913_ 'continuation))
                '#!void
                (let ((__tmp96532
                       (lambda (_cont91915_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91913_
                            'continuation
                            _cont91915_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp96532)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91913_))))
    (define error
      (lambda (_message91910_ . _irritants91911_)
        (raise (let ((__obj96522
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj96522
                  _message91910_
                  'irritants:
                  _irritants91911_)
                 __obj96522))))
    (define with-exception-handler
      (lambda (_handler91903_ _thunk91904_)
        (if (let () (declare (not safe)) (procedure? _handler91903_))
            '#!void
            (raise (let ((__obj96523
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96523
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91903_ '())))
                     __obj96523)))
        (if (let () (declare (not safe)) (procedure? _thunk91904_))
            '#!void
            (raise (let ((__obj96524
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96524
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91904_ '())))
                     __obj96524)))
        (let ((__tmp96533
               (lambda (_exn91906_)
                 (let ((_exn91908_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91906_))))
                   (_handler91903_ _exn91908_)))))
          (declare (not safe))
          (##with-exception-handler __tmp96533 _thunk91904_))))
    (define with-catch
      (lambda (_handler91896_ _thunk91897_)
        (if (let () (declare (not safe)) (procedure? _handler91896_))
            '#!void
            (raise (let ((__obj96525
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96525
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91896_ '())))
                     __obj96525)))
        (if (let () (declare (not safe)) (procedure? _thunk91897_))
            '#!void
            (raise (let ((__obj96526
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj96526
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91897_ '())))
                     __obj96526)))
        (let ((__tmp96534
               (lambda (_cont91899_)
                 (with-exception-handler
                  (lambda (_exn91901_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91899_
                       _handler91896_
                       _exn91901_)))
                  _thunk91897_))))
          (declare (not safe))
          (##continuation-capture __tmp96534))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91887_)
        (if (or (heap-overflow-exception? _exn91887_)
                (stack-overflow-exception? _exn91887_))
            _exn91887_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91887_))
                _exn91887_
                (if (macro-exception? _exn91887_)
                    (let ((_rte91892_
                           (let ((__obj96527
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj96527
                                _exn91887_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj96527)))
                      (let ((__tmp96535
                             (lambda (_cont91894_)
                               (let ((__tmp96536
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91894_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91892_
                                  'continuation
                                  __tmp96536)))))
                        (declare (not safe))
                        (##continuation-capture __tmp96535))
                      _rte91892_)
                    _exn91887_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91882_)
        (let ((_$e91884_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91882_))))
          (if _$e91884_ _$e91884_ (error-exception? _obj91882_)))))
    (define error-message
      (lambda (_obj91880_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91880_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91880_ 'message))
            (if (error-exception? _obj91880_)
                (error-exception-message _obj91880_)
                '#f))))
    (define error-irritants
      (lambda (_obj91878_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91878_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91878_ 'irritants))
            (if (error-exception? _obj91878_)
                (error-exception-parameters _obj91878_)
                '#f))))
    (define error-trace
      (lambda (_obj91876_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91876_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91876_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91858_ _port91859_)
        (let ((_$e91861_
               (let ()
                 (declare (not safe))
                 (method-ref _e91858_ 'display-exception))))
          (if _$e91861_
              ((lambda (_f91864_) (_f91864_ _e91858_ _port91859_)) _$e91861_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91858_ _port91859_))))))
    (define display-exception__0
      (lambda (_e91869_)
        (let ((_port91871_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91869_ _port91871_))))
    (define display-exception
      (lambda _g96538_
        (let ((_g96537_ (let () (declare (not safe)) (##length _g96538_))))
          (cond ((let () (declare (not safe)) (##fx= _g96537_ 1))
                 (apply (lambda (_e91869_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91869_)))
                        _g96538_))
                ((let () (declare (not safe)) (##fx= _g96537_ 2))
                 (apply (lambda (_e91873_ _port91874_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91873_ _port91874_)))
                        _g96538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g96538_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91847_ _message91848_ . _rest91849_)
        (let ((_message91855_
               (if (let () (declare (not safe)) (string? _message91848_))
                   _message91848_
                   (call-with-output-string
                    '""
                    (lambda (_g9185091852_)
                      (display _message91848_ _g9185091852_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91847_ 'message _message91855_))
          (apply class-instance-init! _self91847_ _rest91849_))))
    (define Error:::init!::specialize
      (lambda (__t96501)
        (let ((__message96502
               (let ((__tmp96503
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96501 'message))))
                 (if __tmp96503 __tmp96503 (error '"Unknown slot" 'message)))))
          (lambda (_self91847_ _message91848_ . _rest91849_)
            (let ((_message91855_
                   (if (let () (declare (not safe)) (string? _message91848_))
                       _message91848_
                       (call-with-output-string
                        '""
                        (lambda (_g9185091852_)
                          (display _message91848_ _g9185091852_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91847_
                 _message91855_
                 __message96502
                 __t96501
                 '#f))
              (apply class-instance-init! _self91847_ _rest91849_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self91705_ _port91706_)
        (let ((_tmp-port91708_ (open-output-string))
              (_display-error-newline91709_
               (> (output-port-column _port91706_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91708_))
          (let ((__tmp96539
                 (lambda ()
                   (if _display-error-newline91709_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e91712_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91705_ 'where))))
                     (if _$e91712_ (display _$e91712_) (display '"?")))
                   (let ((__tmp96540
                          (let ((__tmp96541
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self91705_))))
                            (declare (not safe))
                            (##type-name __tmp96541))))
                     (declare (not safe))
                     (display* '" [" __tmp96540 '"]: "))
                   (let ((__tmp96542
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91705_ 'message))))
                     (declare (not safe))
                     (displayln __tmp96542))
                   (let ((_irritants91715_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91705_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants91715_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj91717_)
                              (write _obj91717_)
                              (write-char '#\space))
                            _irritants91715_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self91705_))
                            (dump-stack-trace?))
                       (let ((_cont9171891720_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self91705_
                                 'continuation))))
                         (if _cont9171891720_
                             (let ((_cont91723_ _cont9171891720_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont91723_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp96539
             current-output-port
             _tmp-port91708_))
          (let ((__tmp96543 (get-output-string _tmp-port91708_)))
            (declare (not safe))
            (##write-string __tmp96543 _port91706_)))))
    (define Error::display-exception::specialize
      (lambda (__t96504)
        (let ((__continuation96505
               (let ((__tmp96509
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96504 'continuation))))
                 (if __tmp96509
                     __tmp96509
                     (error '"Unknown slot" 'continuation))))
              (__irritants96506
               (let ((__tmp96510
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96504 'irritants))))
                 (if __tmp96510
                     __tmp96510
                     (error '"Unknown slot" 'irritants))))
              (__message96507
               (let ((__tmp96511
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96504 'message))))
                 (if __tmp96511 __tmp96511 (error '"Unknown slot" 'message))))
              (__where96508
               (let ((__tmp96512
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96504 'where))))
                 (if __tmp96512 __tmp96512 (error '"Unknown slot" 'where)))))
          (lambda (_self91705_ _port91706_)
            (let ((_tmp-port91708_ (open-output-string))
                  (_display-error-newline91709_
                   (> (output-port-column _port91706_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91708_))
              (let ((__tmp96544
                     (lambda ()
                       (if _display-error-newline91709_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e91712_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91705_
                                 __where96508
                                 __t96504
                                 '#f))))
                         (if _$e91712_ (display _$e91712_) (display '"?")))
                       (let ((__tmp96545
                              (let ((__tmp96546
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self91705_))))
                                (declare (not safe))
                                (##type-name __tmp96546))))
                         (declare (not safe))
                         (display* '" [" __tmp96545 '"]: "))
                       (let ((__tmp96547
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91705_
                                 __message96507
                                 __t96504
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp96547))
                       (let ((_irritants91715_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91705_
                                 __irritants96506
                                 __t96504
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants91715_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj91717_)
                                  (write _obj91717_)
                                  (write-char '#\space))
                                _irritants91715_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self91705_))
                                (dump-stack-trace?))
                           (let ((_cont9171891720_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self91705_
                                     __continuation96505
                                     __t96504
                                     '#f))))
                             (if _cont9171891720_
                                 (let ((_cont91723_ _cont9171891720_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont91723_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp96544
                 current-output-port
                 _tmp-port91708_))
              (let ((__tmp96548 (get-output-string _tmp-port91708_)))
                (declare (not safe))
                (##write-string __tmp96548 _port91706_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self91572_ _port91573_)
        (let ((_tmp-port91575_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91575_))
          (let ((__tmp96549
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self91572_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp96549 _tmp-port91575_))
          (if (dump-stack-trace?)
              (let ((_cont9157691578_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self91572_ 'continuation))))
                (if _cont9157691578_
                    (let ((_cont91581_ _cont9157691578_))
                      (display '"--- continuation backtrace:" _tmp-port91575_)
                      (newline _tmp-port91575_)
                      (display-continuation-backtrace
                       _cont91581_
                       _tmp-port91575_))
                    '#f))
              '#!void)
          (let ((__tmp96550 (get-output-string _tmp-port91575_)))
            (declare (not safe))
            (##write-string __tmp96550 _port91573_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t96513)
        (let ((__continuation96514
               (let ((__tmp96516
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96513 'continuation))))
                 (if __tmp96516
                     __tmp96516
                     (error '"Unknown slot" 'continuation))))
              (__exception96515
               (let ((__tmp96517
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t96513 'exception))))
                 (if __tmp96517
                     __tmp96517
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self91572_ _port91573_)
            (let ((_tmp-port91575_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91575_))
              (let ((__tmp96551
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self91572_
                        __exception96515
                        __t96513
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp96551 _tmp-port91575_))
              (if (dump-stack-trace?)
                  (let ((_cont9157691578_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self91572_
                            __continuation96514
                            __t96513
                            '#f))))
                    (if _cont9157691578_
                        (let ((_cont91581_ _cont9157691578_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port91575_)
                          (newline _tmp-port91575_)
                          (display-continuation-backtrace
                           _cont91581_
                           _tmp-port91575_))
                        '#f))
                  '#!void)
              (let ((__tmp96552 (get-output-string _tmp-port91575_)))
                (declare (not safe))
                (##write-string __tmp96552 _port91573_)))))))
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
      (lambda (_port91444_)
        (if (macro-character-port? _port91444_)
            (let ((_old-width91446_
                   (macro-character-port-output-width _port91444_)))
              (macro-character-port-output-width-set!
               _port91444_
               (lambda (_port91448_) '256))
              _old-width91446_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port91441_ _old-width91442_)
        (if (macro-character-port? _port91441_)
            (macro-character-port-output-width-set!
             _port91441_
             _old-width91442_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e91439_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e91439_))))
    (define abandoned-mutex-exception?
      (lambda (_exn91433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91433_))
            (let ((_e91436_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91433_ 'exception))))
              (macro-abandoned-mutex-exception? _e91436_))
            (macro-abandoned-mutex-exception? _exn91433_))))
    (define cfun-conversion-exception?
      (lambda (_exn91429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91429_))
            (let ((_e91431_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91429_ 'exception))))
              (macro-cfun-conversion-exception? _e91431_))
            (macro-cfun-conversion-exception? _exn91429_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn91425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91425_))
            (let ((_e91427_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91425_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91427_)
                  (macro-cfun-conversion-exception-arguments _e91427_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96553
                                (let ()
                                  (declare (not safe))
                                  (cons _e91427_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp96553)))))
            (if (macro-cfun-conversion-exception? _exn91425_)
                (macro-cfun-conversion-exception-arguments _exn91425_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96554
                              (let ()
                                (declare (not safe))
                                (cons _exn91425_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp96554)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn91421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91421_))
            (let ((_e91423_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91421_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91423_)
                  (macro-cfun-conversion-exception-code _e91423_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96555
                                (let ()
                                  (declare (not safe))
                                  (cons _e91423_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp96555)))))
            (if (macro-cfun-conversion-exception? _exn91421_)
                (macro-cfun-conversion-exception-code _exn91421_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96556
                              (let ()
                                (declare (not safe))
                                (cons _exn91421_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp96556)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn91417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91417_))
            (let ((_e91419_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91417_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91419_)
                  (macro-cfun-conversion-exception-message _e91419_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96557
                                (let ()
                                  (declare (not safe))
                                  (cons _e91419_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp96557)))))
            (if (macro-cfun-conversion-exception? _exn91417_)
                (macro-cfun-conversion-exception-message _exn91417_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96558
                              (let ()
                                (declare (not safe))
                                (cons _exn91417_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp96558)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn91411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91411_))
            (let ((_e91414_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91411_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91414_)
                  (macro-cfun-conversion-exception-procedure _e91414_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp96559
                                (let ()
                                  (declare (not safe))
                                  (cons _e91414_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp96559)))))
            (if (macro-cfun-conversion-exception? _exn91411_)
                (macro-cfun-conversion-exception-procedure _exn91411_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp96560
                              (let ()
                                (declare (not safe))
                                (cons _exn91411_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp96560)))))))
    (define datum-parsing-exception?
      (lambda (_exn91407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91407_))
            (let ((_e91409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91407_ 'exception))))
              (macro-datum-parsing-exception? _e91409_))
            (macro-datum-parsing-exception? _exn91407_))))
    (define datum-parsing-exception-kind
      (lambda (_exn91403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91403_))
            (let ((_e91405_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91403_ 'exception))))
              (if (macro-datum-parsing-exception? _e91405_)
                  (macro-datum-parsing-exception-kind _e91405_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp96561
                                (let ()
                                  (declare (not safe))
                                  (cons _e91405_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp96561)))))
            (if (macro-datum-parsing-exception? _exn91403_)
                (macro-datum-parsing-exception-kind _exn91403_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp96562
                              (let ()
                                (declare (not safe))
                                (cons _exn91403_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp96562)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn91399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91399_))
            (let ((_e91401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91399_ 'exception))))
              (if (macro-datum-parsing-exception? _e91401_)
                  (macro-datum-parsing-exception-parameters _e91401_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp96563
                                (let ()
                                  (declare (not safe))
                                  (cons _e91401_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp96563)))))
            (if (macro-datum-parsing-exception? _exn91399_)
                (macro-datum-parsing-exception-parameters _exn91399_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp96564
                              (let ()
                                (declare (not safe))
                                (cons _exn91399_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp96564)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn91393_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91393_))
            (let ((_e91396_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91393_ 'exception))))
              (if (macro-datum-parsing-exception? _e91396_)
                  (macro-datum-parsing-exception-readenv _e91396_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp96565
                                (let ()
                                  (declare (not safe))
                                  (cons _e91396_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp96565)))))
            (if (macro-datum-parsing-exception? _exn91393_)
                (macro-datum-parsing-exception-readenv _exn91393_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp96566
                              (let ()
                                (declare (not safe))
                                (cons _exn91393_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp96566)))))))
    (define deadlock-exception?
      (lambda (_exn91387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91387_))
            (let ((_e91390_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91387_ 'exception))))
              (macro-deadlock-exception? _e91390_))
            (macro-deadlock-exception? _exn91387_))))
    (define divide-by-zero-exception?
      (lambda (_exn91383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91383_))
            (let ((_e91385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91383_ 'exception))))
              (macro-divide-by-zero-exception? _e91385_))
            (macro-divide-by-zero-exception? _exn91383_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn91379_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91379_))
            (let ((_e91381_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91379_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91381_)
                  (macro-divide-by-zero-exception-arguments _e91381_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp96567
                                (let ()
                                  (declare (not safe))
                                  (cons _e91381_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp96567)))))
            (if (macro-divide-by-zero-exception? _exn91379_)
                (macro-divide-by-zero-exception-arguments _exn91379_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp96568
                              (let ()
                                (declare (not safe))
                                (cons _exn91379_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp96568)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn91373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91373_))
            (let ((_e91376_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91373_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91376_)
                  (macro-divide-by-zero-exception-procedure _e91376_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp96569
                                (let ()
                                  (declare (not safe))
                                  (cons _e91376_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp96569)))))
            (if (macro-divide-by-zero-exception? _exn91373_)
                (macro-divide-by-zero-exception-procedure _exn91373_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp96570
                              (let ()
                                (declare (not safe))
                                (cons _exn91373_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp96570)))))))
    (define error-exception?
      (lambda (_exn91369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91369_))
            (let ((_e91371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91369_ 'exception))))
              (macro-error-exception? _e91371_))
            (macro-error-exception? _exn91369_))))
    (define error-exception-message
      (lambda (_exn91365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91365_))
            (let ((_e91367_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91365_ 'exception))))
              (if (macro-error-exception? _e91367_)
                  (macro-error-exception-message _e91367_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp96571
                                (let ()
                                  (declare (not safe))
                                  (cons _e91367_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp96571)))))
            (if (macro-error-exception? _exn91365_)
                (macro-error-exception-message _exn91365_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp96572
                              (let ()
                                (declare (not safe))
                                (cons _exn91365_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp96572)))))))
    (define error-exception-parameters
      (lambda (_exn91359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91359_))
            (let ((_e91362_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91359_ 'exception))))
              (if (macro-error-exception? _e91362_)
                  (macro-error-exception-parameters _e91362_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp96573
                                (let ()
                                  (declare (not safe))
                                  (cons _e91362_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp96573)))))
            (if (macro-error-exception? _exn91359_)
                (macro-error-exception-parameters _exn91359_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp96574
                              (let ()
                                (declare (not safe))
                                (cons _exn91359_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp96574)))))))
    (define expression-parsing-exception?
      (lambda (_exn91355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91355_))
            (let ((_e91357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91355_ 'exception))))
              (macro-expression-parsing-exception? _e91357_))
            (macro-expression-parsing-exception? _exn91355_))))
    (define expression-parsing-exception-kind
      (lambda (_exn91351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91351_))
            (let ((_e91353_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91351_ 'exception))))
              (if (macro-expression-parsing-exception? _e91353_)
                  (macro-expression-parsing-exception-kind _e91353_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp96575
                                (let ()
                                  (declare (not safe))
                                  (cons _e91353_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp96575)))))
            (if (macro-expression-parsing-exception? _exn91351_)
                (macro-expression-parsing-exception-kind _exn91351_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp96576
                              (let ()
                                (declare (not safe))
                                (cons _exn91351_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp96576)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn91347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91347_))
            (let ((_e91349_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91347_ 'exception))))
              (if (macro-expression-parsing-exception? _e91349_)
                  (macro-expression-parsing-exception-parameters _e91349_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp96577
                                (let ()
                                  (declare (not safe))
                                  (cons _e91349_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp96577)))))
            (if (macro-expression-parsing-exception? _exn91347_)
                (macro-expression-parsing-exception-parameters _exn91347_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp96578
                              (let ()
                                (declare (not safe))
                                (cons _exn91347_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp96578)))))))
    (define expression-parsing-exception-source
      (lambda (_exn91341_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91341_))
            (let ((_e91344_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91341_ 'exception))))
              (if (macro-expression-parsing-exception? _e91344_)
                  (macro-expression-parsing-exception-source _e91344_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp96579
                                (let ()
                                  (declare (not safe))
                                  (cons _e91344_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp96579)))))
            (if (macro-expression-parsing-exception? _exn91341_)
                (macro-expression-parsing-exception-source _exn91341_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp96580
                              (let ()
                                (declare (not safe))
                                (cons _exn91341_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp96580)))))))
    (define file-exists-exception?
      (lambda (_exn91337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91337_))
            (let ((_e91339_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91337_ 'exception))))
              (macro-file-exists-exception? _e91339_))
            (macro-file-exists-exception? _exn91337_))))
    (define file-exists-exception-arguments
      (lambda (_exn91333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91333_))
            (let ((_e91335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91333_ 'exception))))
              (if (macro-file-exists-exception? _e91335_)
                  (macro-file-exists-exception-arguments _e91335_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp96581
                                (let ()
                                  (declare (not safe))
                                  (cons _e91335_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp96581)))))
            (if (macro-file-exists-exception? _exn91333_)
                (macro-file-exists-exception-arguments _exn91333_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp96582
                              (let ()
                                (declare (not safe))
                                (cons _exn91333_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp96582)))))))
    (define file-exists-exception-procedure
      (lambda (_exn91327_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91327_))
            (let ((_e91330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91327_ 'exception))))
              (if (macro-file-exists-exception? _e91330_)
                  (macro-file-exists-exception-procedure _e91330_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp96583
                                (let ()
                                  (declare (not safe))
                                  (cons _e91330_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp96583)))))
            (if (macro-file-exists-exception? _exn91327_)
                (macro-file-exists-exception-procedure _exn91327_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp96584
                              (let ()
                                (declare (not safe))
                                (cons _exn91327_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp96584)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn91323_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91323_))
            (let ((_e91325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91323_ 'exception))))
              (macro-fixnum-overflow-exception? _e91325_))
            (macro-fixnum-overflow-exception? _exn91323_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn91319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91319_))
            (let ((_e91321_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91319_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91321_)
                  (macro-fixnum-overflow-exception-arguments _e91321_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp96585
                                (let ()
                                  (declare (not safe))
                                  (cons _e91321_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp96585)))))
            (if (macro-fixnum-overflow-exception? _exn91319_)
                (macro-fixnum-overflow-exception-arguments _exn91319_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp96586
                              (let ()
                                (declare (not safe))
                                (cons _exn91319_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp96586)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn91313_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91313_))
            (let ((_e91316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91313_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e91316_)
                  (macro-fixnum-overflow-exception-procedure _e91316_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp96587
                                (let ()
                                  (declare (not safe))
                                  (cons _e91316_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp96587)))))
            (if (macro-fixnum-overflow-exception? _exn91313_)
                (macro-fixnum-overflow-exception-procedure _exn91313_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp96588
                              (let ()
                                (declare (not safe))
                                (cons _exn91313_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp96588)))))))
    (define heap-overflow-exception?
      (lambda (_exn91307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91307_))
            (let ((_e91310_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91307_ 'exception))))
              (macro-heap-overflow-exception? _e91310_))
            (macro-heap-overflow-exception? _exn91307_))))
    (define inactive-thread-exception?
      (lambda (_exn91303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91303_))
            (let ((_e91305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91303_ 'exception))))
              (macro-inactive-thread-exception? _e91305_))
            (macro-inactive-thread-exception? _exn91303_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn91299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91299_))
            (let ((_e91301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91299_ 'exception))))
              (if (macro-inactive-thread-exception? _e91301_)
                  (macro-inactive-thread-exception-arguments _e91301_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp96589
                                (let ()
                                  (declare (not safe))
                                  (cons _e91301_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp96589)))))
            (if (macro-inactive-thread-exception? _exn91299_)
                (macro-inactive-thread-exception-arguments _exn91299_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp96590
                              (let ()
                                (declare (not safe))
                                (cons _exn91299_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp96590)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn91293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91293_))
            (let ((_e91296_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91293_ 'exception))))
              (if (macro-inactive-thread-exception? _e91296_)
                  (macro-inactive-thread-exception-procedure _e91296_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp96591
                                (let ()
                                  (declare (not safe))
                                  (cons _e91296_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp96591)))))
            (if (macro-inactive-thread-exception? _exn91293_)
                (macro-inactive-thread-exception-procedure _exn91293_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp96592
                              (let ()
                                (declare (not safe))
                                (cons _exn91293_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp96592)))))))
    (define initialized-thread-exception?
      (lambda (_exn91289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91289_))
            (let ((_e91291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91289_ 'exception))))
              (macro-initialized-thread-exception? _e91291_))
            (macro-initialized-thread-exception? _exn91289_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn91285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91285_))
            (let ((_e91287_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91285_ 'exception))))
              (if (macro-initialized-thread-exception? _e91287_)
                  (macro-initialized-thread-exception-arguments _e91287_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp96593
                                (let ()
                                  (declare (not safe))
                                  (cons _e91287_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp96593)))))
            (if (macro-initialized-thread-exception? _exn91285_)
                (macro-initialized-thread-exception-arguments _exn91285_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp96594
                              (let ()
                                (declare (not safe))
                                (cons _exn91285_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp96594)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn91279_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91279_))
            (let ((_e91282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91279_ 'exception))))
              (if (macro-initialized-thread-exception? _e91282_)
                  (macro-initialized-thread-exception-procedure _e91282_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp96595
                                (let ()
                                  (declare (not safe))
                                  (cons _e91282_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp96595)))))
            (if (macro-initialized-thread-exception? _exn91279_)
                (macro-initialized-thread-exception-procedure _exn91279_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp96596
                              (let ()
                                (declare (not safe))
                                (cons _exn91279_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp96596)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn91275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91275_))
            (let ((_e91277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91275_ 'exception))))
              (macro-invalid-hash-number-exception? _e91277_))
            (macro-invalid-hash-number-exception? _exn91275_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn91271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91271_))
            (let ((_e91273_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91271_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91273_)
                  (macro-invalid-hash-number-exception-arguments _e91273_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp96597
                                (let ()
                                  (declare (not safe))
                                  (cons _e91273_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp96597)))))
            (if (macro-invalid-hash-number-exception? _exn91271_)
                (macro-invalid-hash-number-exception-arguments _exn91271_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp96598
                              (let ()
                                (declare (not safe))
                                (cons _exn91271_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp96598)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn91265_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91265_))
            (let ((_e91268_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91265_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e91268_)
                  (macro-invalid-hash-number-exception-procedure _e91268_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp96599
                                (let ()
                                  (declare (not safe))
                                  (cons _e91268_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp96599)))))
            (if (macro-invalid-hash-number-exception? _exn91265_)
                (macro-invalid-hash-number-exception-procedure _exn91265_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp96600
                              (let ()
                                (declare (not safe))
                                (cons _exn91265_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp96600)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn91261_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91261_))
            (let ((_e91263_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91261_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e91263_))
            (macro-invalid-utf8-encoding-exception? _exn91261_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn91257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91257_))
            (let ((_e91259_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91257_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91259_)
                  (macro-invalid-utf8-encoding-exception-arguments _e91259_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp96601
                                (let ()
                                  (declare (not safe))
                                  (cons _e91259_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp96601)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91257_)
                (macro-invalid-utf8-encoding-exception-arguments _exn91257_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp96602
                              (let ()
                                (declare (not safe))
                                (cons _exn91257_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp96602)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn91251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91251_))
            (let ((_e91254_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91251_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e91254_)
                  (macro-invalid-utf8-encoding-exception-procedure _e91254_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp96603
                                (let ()
                                  (declare (not safe))
                                  (cons _e91254_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp96603)))))
            (if (macro-invalid-utf8-encoding-exception? _exn91251_)
                (macro-invalid-utf8-encoding-exception-procedure _exn91251_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp96604
                              (let ()
                                (declare (not safe))
                                (cons _exn91251_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp96604)))))))
    (define join-timeout-exception?
      (lambda (_exn91247_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91247_))
            (let ((_e91249_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91247_ 'exception))))
              (macro-join-timeout-exception? _e91249_))
            (macro-join-timeout-exception? _exn91247_))))
    (define join-timeout-exception-arguments
      (lambda (_exn91243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91243_))
            (let ((_e91245_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91243_ 'exception))))
              (if (macro-join-timeout-exception? _e91245_)
                  (macro-join-timeout-exception-arguments _e91245_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp96605
                                (let ()
                                  (declare (not safe))
                                  (cons _e91245_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp96605)))))
            (if (macro-join-timeout-exception? _exn91243_)
                (macro-join-timeout-exception-arguments _exn91243_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp96606
                              (let ()
                                (declare (not safe))
                                (cons _exn91243_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp96606)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn91237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91237_))
            (let ((_e91240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91237_ 'exception))))
              (if (macro-join-timeout-exception? _e91240_)
                  (macro-join-timeout-exception-procedure _e91240_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp96607
                                (let ()
                                  (declare (not safe))
                                  (cons _e91240_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp96607)))))
            (if (macro-join-timeout-exception? _exn91237_)
                (macro-join-timeout-exception-procedure _exn91237_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp96608
                              (let ()
                                (declare (not safe))
                                (cons _exn91237_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp96608)))))))
    (define keyword-expected-exception?
      (lambda (_exn91233_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91233_))
            (let ((_e91235_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91233_ 'exception))))
              (macro-keyword-expected-exception? _e91235_))
            (macro-keyword-expected-exception? _exn91233_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn91229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91229_))
            (let ((_e91231_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91229_ 'exception))))
              (if (macro-keyword-expected-exception? _e91231_)
                  (macro-keyword-expected-exception-arguments _e91231_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp96609
                                (let ()
                                  (declare (not safe))
                                  (cons _e91231_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp96609)))))
            (if (macro-keyword-expected-exception? _exn91229_)
                (macro-keyword-expected-exception-arguments _exn91229_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp96610
                              (let ()
                                (declare (not safe))
                                (cons _exn91229_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp96610)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn91223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91223_))
            (let ((_e91226_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91223_ 'exception))))
              (if (macro-keyword-expected-exception? _e91226_)
                  (macro-keyword-expected-exception-procedure _e91226_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp96611
                                (let ()
                                  (declare (not safe))
                                  (cons _e91226_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp96611)))))
            (if (macro-keyword-expected-exception? _exn91223_)
                (macro-keyword-expected-exception-procedure _exn91223_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp96612
                              (let ()
                                (declare (not safe))
                                (cons _exn91223_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp96612)))))))
    (define length-mismatch-exception?
      (lambda (_exn91219_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91219_))
            (let ((_e91221_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91219_ 'exception))))
              (macro-length-mismatch-exception? _e91221_))
            (macro-length-mismatch-exception? _exn91219_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn91215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91215_))
            (let ((_e91217_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91215_ 'exception))))
              (if (macro-length-mismatch-exception? _e91217_)
                  (macro-length-mismatch-exception-arg-id _e91217_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp96613
                                (let ()
                                  (declare (not safe))
                                  (cons _e91217_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp96613)))))
            (if (macro-length-mismatch-exception? _exn91215_)
                (macro-length-mismatch-exception-arg-id _exn91215_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp96614
                              (let ()
                                (declare (not safe))
                                (cons _exn91215_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp96614)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn91211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91211_))
            (let ((_e91213_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91211_ 'exception))))
              (if (macro-length-mismatch-exception? _e91213_)
                  (macro-length-mismatch-exception-arguments _e91213_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp96615
                                (let ()
                                  (declare (not safe))
                                  (cons _e91213_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp96615)))))
            (if (macro-length-mismatch-exception? _exn91211_)
                (macro-length-mismatch-exception-arguments _exn91211_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp96616
                              (let ()
                                (declare (not safe))
                                (cons _exn91211_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp96616)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn91205_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91205_))
            (let ((_e91208_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91205_ 'exception))))
              (if (macro-length-mismatch-exception? _e91208_)
                  (macro-length-mismatch-exception-procedure _e91208_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp96617
                                (let ()
                                  (declare (not safe))
                                  (cons _e91208_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp96617)))))
            (if (macro-length-mismatch-exception? _exn91205_)
                (macro-length-mismatch-exception-procedure _exn91205_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp96618
                              (let ()
                                (declare (not safe))
                                (cons _exn91205_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp96618)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn91201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91201_))
            (let ((_e91203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91201_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e91203_))
            (macro-mailbox-receive-timeout-exception? _exn91201_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn91197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91197_))
            (let ((_e91199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91197_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91199_)
                  (macro-mailbox-receive-timeout-exception-arguments _e91199_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp96619
                                (let ()
                                  (declare (not safe))
                                  (cons _e91199_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp96619)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91197_)
                (macro-mailbox-receive-timeout-exception-arguments _exn91197_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp96620
                              (let ()
                                (declare (not safe))
                                (cons _exn91197_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp96620)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn91191_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91191_))
            (let ((_e91194_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91191_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91194_)
                  (macro-mailbox-receive-timeout-exception-procedure _e91194_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp96621
                                (let ()
                                  (declare (not safe))
                                  (cons _e91194_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp96621)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91191_)
                (macro-mailbox-receive-timeout-exception-procedure _exn91191_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp96622
                              (let ()
                                (declare (not safe))
                                (cons _exn91191_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp96622)))))))
    (define module-not-found-exception?
      (lambda (_exn91187_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91187_))
            (let ((_e91189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91187_ 'exception))))
              (macro-module-not-found-exception? _e91189_))
            (macro-module-not-found-exception? _exn91187_))))
    (define module-not-found-exception-arguments
      (lambda (_exn91183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91183_))
            (let ((_e91185_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91183_ 'exception))))
              (if (macro-module-not-found-exception? _e91185_)
                  (macro-module-not-found-exception-arguments _e91185_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp96623
                                (let ()
                                  (declare (not safe))
                                  (cons _e91185_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp96623)))))
            (if (macro-module-not-found-exception? _exn91183_)
                (macro-module-not-found-exception-arguments _exn91183_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp96624
                              (let ()
                                (declare (not safe))
                                (cons _exn91183_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp96624)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn91177_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91177_))
            (let ((_e91180_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91177_ 'exception))))
              (if (macro-module-not-found-exception? _e91180_)
                  (macro-module-not-found-exception-procedure _e91180_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp96625
                                (let ()
                                  (declare (not safe))
                                  (cons _e91180_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp96625)))))
            (if (macro-module-not-found-exception? _exn91177_)
                (macro-module-not-found-exception-procedure _exn91177_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp96626
                              (let ()
                                (declare (not safe))
                                (cons _exn91177_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp96626)))))))
    (define multiple-c-return-exception?
      (lambda (_exn91171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91171_))
            (let ((_e91174_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91171_ 'exception))))
              (macro-multiple-c-return-exception? _e91174_))
            (macro-multiple-c-return-exception? _exn91171_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn91167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91167_))
            (let ((_e91169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91167_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e91169_))
            (macro-no-such-file-or-directory-exception? _exn91167_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn91163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91163_))
            (let ((_e91165_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91163_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91165_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e91165_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp96627
                                (let ()
                                  (declare (not safe))
                                  (cons _e91165_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp96627)))))
            (if (macro-no-such-file-or-directory-exception? _exn91163_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn91163_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp96628
                              (let ()
                                (declare (not safe))
                                (cons _exn91163_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp96628)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn91157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91157_))
            (let ((_e91160_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91157_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91160_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e91160_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp96629
                                (let ()
                                  (declare (not safe))
                                  (cons _e91160_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp96629)))))
            (if (macro-no-such-file-or-directory-exception? _exn91157_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn91157_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp96630
                              (let ()
                                (declare (not safe))
                                (cons _exn91157_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp96630)))))))
    (define noncontinuable-exception?
      (lambda (_exn91153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91153_))
            (let ((_e91155_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91153_ 'exception))))
              (macro-noncontinuable-exception? _e91155_))
            (macro-noncontinuable-exception? _exn91153_))))
    (define noncontinuable-exception-reason
      (lambda (_exn91147_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91147_))
            (let ((_e91150_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91147_ 'exception))))
              (if (macro-noncontinuable-exception? _e91150_)
                  (macro-noncontinuable-exception-reason _e91150_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp96631
                                (let ()
                                  (declare (not safe))
                                  (cons _e91150_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp96631)))))
            (if (macro-noncontinuable-exception? _exn91147_)
                (macro-noncontinuable-exception-reason _exn91147_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp96632
                              (let ()
                                (declare (not safe))
                                (cons _exn91147_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp96632)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn91143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91143_))
            (let ((_e91145_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91143_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e91145_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn91143_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn91139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91139_))
            (let ((_e91141_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91139_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91141_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e91141_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp96633
                                (let ()
                                  (declare (not safe))
                                  (cons _e91141_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp96633)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91139_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn91139_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp96634
                              (let ()
                                (declare (not safe))
                                (cons _exn91139_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp96634)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn91133_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91133_))
            (let ((_e91136_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91133_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91136_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e91136_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp96635
                                (let ()
                                  (declare (not safe))
                                  (cons _e91136_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp96635)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91133_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn91133_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp96636
                              (let ()
                                (declare (not safe))
                                (cons _exn91133_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp96636)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn91129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91129_))
            (let ((_e91131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91129_ 'exception))))
              (macro-nonprocedure-operator-exception? _e91131_))
            (macro-nonprocedure-operator-exception? _exn91129_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn91125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91125_))
            (let ((_e91127_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91125_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91127_)
                  (macro-nonprocedure-operator-exception-arguments _e91127_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96637
                                (let ()
                                  (declare (not safe))
                                  (cons _e91127_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp96637)))))
            (if (macro-nonprocedure-operator-exception? _exn91125_)
                (macro-nonprocedure-operator-exception-arguments _exn91125_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96638
                              (let ()
                                (declare (not safe))
                                (cons _exn91125_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp96638)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn91121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91121_))
            (let ((_e91123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91121_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91123_)
                  (macro-nonprocedure-operator-exception-code _e91123_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96639
                                (let ()
                                  (declare (not safe))
                                  (cons _e91123_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp96639)))))
            (if (macro-nonprocedure-operator-exception? _exn91121_)
                (macro-nonprocedure-operator-exception-code _exn91121_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96640
                              (let ()
                                (declare (not safe))
                                (cons _exn91121_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp96640)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn91117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91117_))
            (let ((_e91119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91117_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91119_)
                  (macro-nonprocedure-operator-exception-operator _e91119_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96641
                                (let ()
                                  (declare (not safe))
                                  (cons _e91119_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp96641)))))
            (if (macro-nonprocedure-operator-exception? _exn91117_)
                (macro-nonprocedure-operator-exception-operator _exn91117_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96642
                              (let ()
                                (declare (not safe))
                                (cons _exn91117_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp96642)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn91111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91111_))
            (let ((_e91114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91111_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91114_)
                  (macro-nonprocedure-operator-exception-rte _e91114_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp96643
                                (let ()
                                  (declare (not safe))
                                  (cons _e91114_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp96643)))))
            (if (macro-nonprocedure-operator-exception? _exn91111_)
                (macro-nonprocedure-operator-exception-rte _exn91111_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp96644
                              (let ()
                                (declare (not safe))
                                (cons _exn91111_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp96644)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn91107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91107_))
            (let ((_e91109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91107_ 'exception))))
              (macro-not-in-compilation-context-exception? _e91109_))
            (macro-not-in-compilation-context-exception? _exn91107_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn91103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91103_))
            (let ((_e91105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91103_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91105_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e91105_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp96645
                                (let ()
                                  (declare (not safe))
                                  (cons _e91105_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp96645)))))
            (if (macro-not-in-compilation-context-exception? _exn91103_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn91103_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp96646
                              (let ()
                                (declare (not safe))
                                (cons _exn91103_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp96646)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn91097_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91097_))
            (let ((_e91100_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91097_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91100_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e91100_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp96647
                                (let ()
                                  (declare (not safe))
                                  (cons _e91100_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp96647)))))
            (if (macro-not-in-compilation-context-exception? _exn91097_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn91097_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp96648
                              (let ()
                                (declare (not safe))
                                (cons _exn91097_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp96648)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn91093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91093_))
            (let ((_e91095_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91093_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e91095_))
            (macro-number-of-arguments-limit-exception? _exn91093_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn91089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91089_))
            (let ((_e91091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91089_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91091_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e91091_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp96649
                                (let ()
                                  (declare (not safe))
                                  (cons _e91091_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp96649)))))
            (if (macro-number-of-arguments-limit-exception? _exn91089_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn91089_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp96650
                              (let ()
                                (declare (not safe))
                                (cons _exn91089_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp96650)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn91083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91083_))
            (let ((_e91086_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91083_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91086_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e91086_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp96651
                                (let ()
                                  (declare (not safe))
                                  (cons _e91086_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp96651)))))
            (if (macro-number-of-arguments-limit-exception? _exn91083_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn91083_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp96652
                              (let ()
                                (declare (not safe))
                                (cons _exn91083_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp96652)))))))
    (define os-exception?
      (lambda (_exn91079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91079_))
            (let ((_e91081_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91079_ 'exception))))
              (macro-os-exception? _e91081_))
            (macro-os-exception? _exn91079_))))
    (define os-exception-arguments
      (lambda (_exn91075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91075_))
            (let ((_e91077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91075_ 'exception))))
              (if (macro-os-exception? _e91077_)
                  (macro-os-exception-arguments _e91077_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96653
                                (let ()
                                  (declare (not safe))
                                  (cons _e91077_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp96653)))))
            (if (macro-os-exception? _exn91075_)
                (macro-os-exception-arguments _exn91075_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96654
                              (let ()
                                (declare (not safe))
                                (cons _exn91075_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp96654)))))))
    (define os-exception-code
      (lambda (_exn91071_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91071_))
            (let ((_e91073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91071_ 'exception))))
              (if (macro-os-exception? _e91073_)
                  (macro-os-exception-code _e91073_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96655
                                (let ()
                                  (declare (not safe))
                                  (cons _e91073_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp96655)))))
            (if (macro-os-exception? _exn91071_)
                (macro-os-exception-code _exn91071_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96656
                              (let ()
                                (declare (not safe))
                                (cons _exn91071_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp96656)))))))
    (define os-exception-message
      (lambda (_exn91067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91067_))
            (let ((_e91069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91067_ 'exception))))
              (if (macro-os-exception? _e91069_)
                  (macro-os-exception-message _e91069_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96657
                                (let ()
                                  (declare (not safe))
                                  (cons _e91069_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp96657)))))
            (if (macro-os-exception? _exn91067_)
                (macro-os-exception-message _exn91067_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96658
                              (let ()
                                (declare (not safe))
                                (cons _exn91067_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp96658)))))))
    (define os-exception-procedure
      (lambda (_exn91061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91061_))
            (let ((_e91064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91061_ 'exception))))
              (if (macro-os-exception? _e91064_)
                  (macro-os-exception-procedure _e91064_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp96659
                                (let ()
                                  (declare (not safe))
                                  (cons _e91064_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp96659)))))
            (if (macro-os-exception? _exn91061_)
                (macro-os-exception-procedure _exn91061_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp96660
                              (let ()
                                (declare (not safe))
                                (cons _exn91061_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp96660)))))))
    (define permission-denied-exception?
      (lambda (_exn91057_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91057_))
            (let ((_e91059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91057_ 'exception))))
              (macro-permission-denied-exception? _e91059_))
            (macro-permission-denied-exception? _exn91057_))))
    (define permission-denied-exception-arguments
      (lambda (_exn91053_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91053_))
            (let ((_e91055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91053_ 'exception))))
              (if (macro-permission-denied-exception? _e91055_)
                  (macro-permission-denied-exception-arguments _e91055_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp96661
                                (let ()
                                  (declare (not safe))
                                  (cons _e91055_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp96661)))))
            (if (macro-permission-denied-exception? _exn91053_)
                (macro-permission-denied-exception-arguments _exn91053_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp96662
                              (let ()
                                (declare (not safe))
                                (cons _exn91053_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp96662)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn91047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91047_))
            (let ((_e91050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91047_ 'exception))))
              (if (macro-permission-denied-exception? _e91050_)
                  (macro-permission-denied-exception-procedure _e91050_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp96663
                                (let ()
                                  (declare (not safe))
                                  (cons _e91050_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp96663)))))
            (if (macro-permission-denied-exception? _exn91047_)
                (macro-permission-denied-exception-procedure _exn91047_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp96664
                              (let ()
                                (declare (not safe))
                                (cons _exn91047_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp96664)))))))
    (define range-exception?
      (lambda (_exn91043_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91043_))
            (let ((_e91045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91043_ 'exception))))
              (macro-range-exception? _e91045_))
            (macro-range-exception? _exn91043_))))
    (define range-exception-arg-id
      (lambda (_exn91039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91039_))
            (let ((_e91041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91039_ 'exception))))
              (if (macro-range-exception? _e91041_)
                  (macro-range-exception-arg-id _e91041_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp96665
                                (let ()
                                  (declare (not safe))
                                  (cons _e91041_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp96665)))))
            (if (macro-range-exception? _exn91039_)
                (macro-range-exception-arg-id _exn91039_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp96666
                              (let ()
                                (declare (not safe))
                                (cons _exn91039_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp96666)))))))
    (define range-exception-arguments
      (lambda (_exn91035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91035_))
            (let ((_e91037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91035_ 'exception))))
              (if (macro-range-exception? _e91037_)
                  (macro-range-exception-arguments _e91037_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp96667
                                (let ()
                                  (declare (not safe))
                                  (cons _e91037_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp96667)))))
            (if (macro-range-exception? _exn91035_)
                (macro-range-exception-arguments _exn91035_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp96668
                              (let ()
                                (declare (not safe))
                                (cons _exn91035_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp96668)))))))
    (define range-exception-procedure
      (lambda (_exn91029_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91029_))
            (let ((_e91032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91029_ 'exception))))
              (if (macro-range-exception? _e91032_)
                  (macro-range-exception-procedure _e91032_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp96669
                                (let ()
                                  (declare (not safe))
                                  (cons _e91032_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp96669)))))
            (if (macro-range-exception? _exn91029_)
                (macro-range-exception-procedure _exn91029_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp96670
                              (let ()
                                (declare (not safe))
                                (cons _exn91029_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp96670)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn91025_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91025_))
            (let ((_e91027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91025_ 'exception))))
              (macro-rpc-remote-error-exception? _e91027_))
            (macro-rpc-remote-error-exception? _exn91025_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn91021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91021_))
            (let ((_e91023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91021_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91023_)
                  (macro-rpc-remote-error-exception-arguments _e91023_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp96671
                                (let ()
                                  (declare (not safe))
                                  (cons _e91023_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp96671)))))
            (if (macro-rpc-remote-error-exception? _exn91021_)
                (macro-rpc-remote-error-exception-arguments _exn91021_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp96672
                              (let ()
                                (declare (not safe))
                                (cons _exn91021_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp96672)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn91017_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91017_))
            (let ((_e91019_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91017_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91019_)
                  (macro-rpc-remote-error-exception-message _e91019_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp96673
                                (let ()
                                  (declare (not safe))
                                  (cons _e91019_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp96673)))))
            (if (macro-rpc-remote-error-exception? _exn91017_)
                (macro-rpc-remote-error-exception-message _exn91017_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp96674
                              (let ()
                                (declare (not safe))
                                (cons _exn91017_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp96674)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn91011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91011_))
            (let ((_e91014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91011_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91014_)
                  (macro-rpc-remote-error-exception-procedure _e91014_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp96675
                                (let ()
                                  (declare (not safe))
                                  (cons _e91014_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp96675)))))
            (if (macro-rpc-remote-error-exception? _exn91011_)
                (macro-rpc-remote-error-exception-procedure _exn91011_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp96676
                              (let ()
                                (declare (not safe))
                                (cons _exn91011_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp96676)))))))
    (define scheduler-exception?
      (lambda (_exn91007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91007_))
            (let ((_e91009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91007_ 'exception))))
              (macro-scheduler-exception? _e91009_))
            (macro-scheduler-exception? _exn91007_))))
    (define scheduler-exception-reason
      (lambda (_exn91001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91001_))
            (let ((_e91004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91001_ 'exception))))
              (if (macro-scheduler-exception? _e91004_)
                  (macro-scheduler-exception-reason _e91004_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp96677
                                (let ()
                                  (declare (not safe))
                                  (cons _e91004_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp96677)))))
            (if (macro-scheduler-exception? _exn91001_)
                (macro-scheduler-exception-reason _exn91001_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp96678
                              (let ()
                                (declare (not safe))
                                (cons _exn91001_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp96678)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90997_))
            (let ((_e90999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90997_ 'exception))))
              (macro-sfun-conversion-exception? _e90999_))
            (macro-sfun-conversion-exception? _exn90997_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90993_))
            (let ((_e90995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90993_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90995_)
                  (macro-sfun-conversion-exception-arguments _e90995_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96679
                                (let ()
                                  (declare (not safe))
                                  (cons _e90995_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp96679)))))
            (if (macro-sfun-conversion-exception? _exn90993_)
                (macro-sfun-conversion-exception-arguments _exn90993_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96680
                              (let ()
                                (declare (not safe))
                                (cons _exn90993_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp96680)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90989_))
            (let ((_e90991_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90989_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90991_)
                  (macro-sfun-conversion-exception-code _e90991_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96681
                                (let ()
                                  (declare (not safe))
                                  (cons _e90991_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp96681)))))
            (if (macro-sfun-conversion-exception? _exn90989_)
                (macro-sfun-conversion-exception-code _exn90989_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96682
                              (let ()
                                (declare (not safe))
                                (cons _exn90989_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp96682)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90985_))
            (let ((_e90987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90985_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90987_)
                  (macro-sfun-conversion-exception-message _e90987_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96683
                                (let ()
                                  (declare (not safe))
                                  (cons _e90987_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp96683)))))
            (if (macro-sfun-conversion-exception? _exn90985_)
                (macro-sfun-conversion-exception-message _exn90985_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96684
                              (let ()
                                (declare (not safe))
                                (cons _exn90985_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp96684)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90979_))
            (let ((_e90982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90979_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90982_)
                  (macro-sfun-conversion-exception-procedure _e90982_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp96685
                                (let ()
                                  (declare (not safe))
                                  (cons _e90982_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp96685)))))
            (if (macro-sfun-conversion-exception? _exn90979_)
                (macro-sfun-conversion-exception-procedure _exn90979_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp96686
                              (let ()
                                (declare (not safe))
                                (cons _exn90979_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp96686)))))))
    (define stack-overflow-exception?
      (lambda (_exn90973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90973_))
            (let ((_e90976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90973_ 'exception))))
              (macro-stack-overflow-exception? _e90976_))
            (macro-stack-overflow-exception? _exn90973_))))
    (define started-thread-exception?
      (lambda (_exn90969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90969_))
            (let ((_e90971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90969_ 'exception))))
              (macro-started-thread-exception? _e90971_))
            (macro-started-thread-exception? _exn90969_))))
    (define started-thread-exception-arguments
      (lambda (_exn90965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90965_))
            (let ((_e90967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90965_ 'exception))))
              (if (macro-started-thread-exception? _e90967_)
                  (macro-started-thread-exception-arguments _e90967_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp96687
                                (let ()
                                  (declare (not safe))
                                  (cons _e90967_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp96687)))))
            (if (macro-started-thread-exception? _exn90965_)
                (macro-started-thread-exception-arguments _exn90965_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp96688
                              (let ()
                                (declare (not safe))
                                (cons _exn90965_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp96688)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90959_))
            (let ((_e90962_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90959_ 'exception))))
              (if (macro-started-thread-exception? _e90962_)
                  (macro-started-thread-exception-procedure _e90962_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp96689
                                (let ()
                                  (declare (not safe))
                                  (cons _e90962_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp96689)))))
            (if (macro-started-thread-exception? _exn90959_)
                (macro-started-thread-exception-procedure _exn90959_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp96690
                              (let ()
                                (declare (not safe))
                                (cons _exn90959_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp96690)))))))
    (define terminated-thread-exception?
      (lambda (_exn90955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90955_))
            (let ((_e90957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90955_ 'exception))))
              (macro-terminated-thread-exception? _e90957_))
            (macro-terminated-thread-exception? _exn90955_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90951_))
            (let ((_e90953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90951_ 'exception))))
              (if (macro-terminated-thread-exception? _e90953_)
                  (macro-terminated-thread-exception-arguments _e90953_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp96691
                                (let ()
                                  (declare (not safe))
                                  (cons _e90953_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp96691)))))
            (if (macro-terminated-thread-exception? _exn90951_)
                (macro-terminated-thread-exception-arguments _exn90951_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp96692
                              (let ()
                                (declare (not safe))
                                (cons _exn90951_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp96692)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90945_))
            (let ((_e90948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90945_ 'exception))))
              (if (macro-terminated-thread-exception? _e90948_)
                  (macro-terminated-thread-exception-procedure _e90948_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp96693
                                (let ()
                                  (declare (not safe))
                                  (cons _e90948_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp96693)))))
            (if (macro-terminated-thread-exception? _exn90945_)
                (macro-terminated-thread-exception-procedure _exn90945_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp96694
                              (let ()
                                (declare (not safe))
                                (cons _exn90945_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp96694)))))))
    (define type-exception?
      (lambda (_exn90941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90941_))
            (let ((_e90943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90941_ 'exception))))
              (macro-type-exception? _e90943_))
            (macro-type-exception? _exn90941_))))
    (define type-exception-arg-id
      (lambda (_exn90937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90937_))
            (let ((_e90939_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90937_ 'exception))))
              (if (macro-type-exception? _e90939_)
                  (macro-type-exception-arg-id _e90939_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96695
                                (let ()
                                  (declare (not safe))
                                  (cons _e90939_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp96695)))))
            (if (macro-type-exception? _exn90937_)
                (macro-type-exception-arg-id _exn90937_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96696
                              (let ()
                                (declare (not safe))
                                (cons _exn90937_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp96696)))))))
    (define type-exception-arguments
      (lambda (_exn90933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90933_))
            (let ((_e90935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90933_ 'exception))))
              (if (macro-type-exception? _e90935_)
                  (macro-type-exception-arguments _e90935_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96697
                                (let ()
                                  (declare (not safe))
                                  (cons _e90935_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp96697)))))
            (if (macro-type-exception? _exn90933_)
                (macro-type-exception-arguments _exn90933_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96698
                              (let ()
                                (declare (not safe))
                                (cons _exn90933_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp96698)))))))
    (define type-exception-procedure
      (lambda (_exn90929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90929_))
            (let ((_e90931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90929_ 'exception))))
              (if (macro-type-exception? _e90931_)
                  (macro-type-exception-procedure _e90931_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96699
                                (let ()
                                  (declare (not safe))
                                  (cons _e90931_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp96699)))))
            (if (macro-type-exception? _exn90929_)
                (macro-type-exception-procedure _exn90929_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96700
                              (let ()
                                (declare (not safe))
                                (cons _exn90929_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp96700)))))))
    (define type-exception-type-id
      (lambda (_exn90923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90923_))
            (let ((_e90926_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90923_ 'exception))))
              (if (macro-type-exception? _e90926_)
                  (macro-type-exception-type-id _e90926_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp96701
                                (let ()
                                  (declare (not safe))
                                  (cons _e90926_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp96701)))))
            (if (macro-type-exception? _exn90923_)
                (macro-type-exception-type-id _exn90923_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp96702
                              (let ()
                                (declare (not safe))
                                (cons _exn90923_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp96702)))))))
    (define unbound-global-exception?
      (lambda (_exn90919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90919_))
            (let ((_e90921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90919_ 'exception))))
              (macro-unbound-global-exception? _e90921_))
            (macro-unbound-global-exception? _exn90919_))))
    (define unbound-global-exception-code
      (lambda (_exn90915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90915_))
            (let ((_e90917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90915_ 'exception))))
              (if (macro-unbound-global-exception? _e90917_)
                  (macro-unbound-global-exception-code _e90917_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96703
                                (let ()
                                  (declare (not safe))
                                  (cons _e90917_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp96703)))))
            (if (macro-unbound-global-exception? _exn90915_)
                (macro-unbound-global-exception-code _exn90915_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96704
                              (let ()
                                (declare (not safe))
                                (cons _exn90915_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp96704)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90911_))
            (let ((_e90913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90911_ 'exception))))
              (if (macro-unbound-global-exception? _e90913_)
                  (macro-unbound-global-exception-rte _e90913_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96705
                                (let ()
                                  (declare (not safe))
                                  (cons _e90913_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp96705)))))
            (if (macro-unbound-global-exception? _exn90911_)
                (macro-unbound-global-exception-rte _exn90911_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96706
                              (let ()
                                (declare (not safe))
                                (cons _exn90911_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp96706)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90905_))
            (let ((_e90908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90905_ 'exception))))
              (if (macro-unbound-global-exception? _e90908_)
                  (macro-unbound-global-exception-variable _e90908_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp96707
                                (let ()
                                  (declare (not safe))
                                  (cons _e90908_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp96707)))))
            (if (macro-unbound-global-exception? _exn90905_)
                (macro-unbound-global-exception-variable _exn90905_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp96708
                              (let ()
                                (declare (not safe))
                                (cons _exn90905_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp96708)))))))
    (define unbound-key-exception?
      (lambda (_exn90901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90901_))
            (let ((_e90903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90901_ 'exception))))
              (macro-unbound-key-exception? _e90903_))
            (macro-unbound-key-exception? _exn90901_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90897_))
            (let ((_e90899_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90897_ 'exception))))
              (if (macro-unbound-key-exception? _e90899_)
                  (macro-unbound-key-exception-arguments _e90899_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp96709
                                (let ()
                                  (declare (not safe))
                                  (cons _e90899_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp96709)))))
            (if (macro-unbound-key-exception? _exn90897_)
                (macro-unbound-key-exception-arguments _exn90897_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp96710
                              (let ()
                                (declare (not safe))
                                (cons _exn90897_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp96710)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90891_))
            (let ((_e90894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90891_ 'exception))))
              (if (macro-unbound-key-exception? _e90894_)
                  (macro-unbound-key-exception-procedure _e90894_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp96711
                                (let ()
                                  (declare (not safe))
                                  (cons _e90894_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp96711)))))
            (if (macro-unbound-key-exception? _exn90891_)
                (macro-unbound-key-exception-procedure _exn90891_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp96712
                              (let ()
                                (declare (not safe))
                                (cons _exn90891_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp96712)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90887_))
            (let ((_e90889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90887_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90889_))
            (macro-unbound-os-environment-variable-exception? _exn90887_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90883_))
            (let ((_e90885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90883_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90885_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90885_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp96713
                                (let ()
                                  (declare (not safe))
                                  (cons _e90885_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp96713)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90883_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90883_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp96714
                              (let ()
                                (declare (not safe))
                                (cons _exn90883_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp96714)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90877_))
            (let ((_e90880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90877_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90880_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90880_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp96715
                                (let ()
                                  (declare (not safe))
                                  (cons _e90880_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp96715)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90877_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90877_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp96716
                              (let ()
                                (declare (not safe))
                                (cons _exn90877_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp96716)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90873_))
            (let ((_e90875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90873_ 'exception))))
              (macro-unbound-serial-number-exception? _e90875_))
            (macro-unbound-serial-number-exception? _exn90873_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90869_))
            (let ((_e90871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90869_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90871_)
                  (macro-unbound-serial-number-exception-arguments _e90871_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp96717
                                (let ()
                                  (declare (not safe))
                                  (cons _e90871_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp96717)))))
            (if (macro-unbound-serial-number-exception? _exn90869_)
                (macro-unbound-serial-number-exception-arguments _exn90869_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp96718
                              (let ()
                                (declare (not safe))
                                (cons _exn90869_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp96718)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90863_))
            (let ((_e90866_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90863_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90866_)
                  (macro-unbound-serial-number-exception-procedure _e90866_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp96719
                                (let ()
                                  (declare (not safe))
                                  (cons _e90866_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp96719)))))
            (if (macro-unbound-serial-number-exception? _exn90863_)
                (macro-unbound-serial-number-exception-procedure _exn90863_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp96720
                              (let ()
                                (declare (not safe))
                                (cons _exn90863_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp96720)))))))
    (define uncaught-exception?
      (lambda (_exn90859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90859_))
            (let ((_e90861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90859_ 'exception))))
              (macro-uncaught-exception? _e90861_))
            (macro-uncaught-exception? _exn90859_))))
    (define uncaught-exception-arguments
      (lambda (_exn90855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90855_))
            (let ((_e90857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90855_ 'exception))))
              (if (macro-uncaught-exception? _e90857_)
                  (macro-uncaught-exception-arguments _e90857_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96721
                                (let ()
                                  (declare (not safe))
                                  (cons _e90857_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp96721)))))
            (if (macro-uncaught-exception? _exn90855_)
                (macro-uncaught-exception-arguments _exn90855_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96722
                              (let ()
                                (declare (not safe))
                                (cons _exn90855_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp96722)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90851_))
            (let ((_e90853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90851_ 'exception))))
              (if (macro-uncaught-exception? _e90853_)
                  (macro-uncaught-exception-procedure _e90853_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96723
                                (let ()
                                  (declare (not safe))
                                  (cons _e90853_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp96723)))))
            (if (macro-uncaught-exception? _exn90851_)
                (macro-uncaught-exception-procedure _exn90851_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96724
                              (let ()
                                (declare (not safe))
                                (cons _exn90851_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp96724)))))))
    (define uncaught-exception-reason
      (lambda (_exn90845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90845_))
            (let ((_e90848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90845_ 'exception))))
              (if (macro-uncaught-exception? _e90848_)
                  (macro-uncaught-exception-reason _e90848_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp96725
                                (let ()
                                  (declare (not safe))
                                  (cons _e90848_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp96725)))))
            (if (macro-uncaught-exception? _exn90845_)
                (macro-uncaught-exception-reason _exn90845_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp96726
                              (let ()
                                (declare (not safe))
                                (cons _exn90845_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp96726)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90841_))
            (let ((_e90843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90841_ 'exception))))
              (macro-uninitialized-thread-exception? _e90843_))
            (macro-uninitialized-thread-exception? _exn90841_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90837_))
            (let ((_e90839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90837_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90839_)
                  (macro-uninitialized-thread-exception-arguments _e90839_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp96727
                                (let ()
                                  (declare (not safe))
                                  (cons _e90839_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp96727)))))
            (if (macro-uninitialized-thread-exception? _exn90837_)
                (macro-uninitialized-thread-exception-arguments _exn90837_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp96728
                              (let ()
                                (declare (not safe))
                                (cons _exn90837_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp96728)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90831_))
            (let ((_e90834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90831_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90834_)
                  (macro-uninitialized-thread-exception-procedure _e90834_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp96729
                                (let ()
                                  (declare (not safe))
                                  (cons _e90834_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp96729)))))
            (if (macro-uninitialized-thread-exception? _exn90831_)
                (macro-uninitialized-thread-exception-procedure _exn90831_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp96730
                              (let ()
                                (declare (not safe))
                                (cons _exn90831_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp96730)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90827_))
            (let ((_e90829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90827_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90829_))
            (macro-unknown-keyword-argument-exception? _exn90827_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90823_))
            (let ((_e90825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90823_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90825_)
                  (macro-unknown-keyword-argument-exception-arguments _e90825_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96731
                                (let ()
                                  (declare (not safe))
                                  (cons _e90825_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp96731)))))
            (if (macro-unknown-keyword-argument-exception? _exn90823_)
                (macro-unknown-keyword-argument-exception-arguments _exn90823_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96732
                              (let ()
                                (declare (not safe))
                                (cons _exn90823_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp96732)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90817_))
            (let ((_e90820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90817_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90820_)
                  (macro-unknown-keyword-argument-exception-procedure _e90820_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp96733
                                (let ()
                                  (declare (not safe))
                                  (cons _e90820_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp96733)))))
            (if (macro-unknown-keyword-argument-exception? _exn90817_)
                (macro-unknown-keyword-argument-exception-procedure _exn90817_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp96734
                              (let ()
                                (declare (not safe))
                                (cons _exn90817_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp96734)))))))
    (define unterminated-process-exception?
      (lambda (_exn90813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90813_))
            (let ((_e90815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90813_ 'exception))))
              (macro-unterminated-process-exception? _e90815_))
            (macro-unterminated-process-exception? _exn90813_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90809_))
            (let ((_e90811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90809_ 'exception))))
              (if (macro-unterminated-process-exception? _e90811_)
                  (macro-unterminated-process-exception-arguments _e90811_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96735
                                (let ()
                                  (declare (not safe))
                                  (cons _e90811_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp96735)))))
            (if (macro-unterminated-process-exception? _exn90809_)
                (macro-unterminated-process-exception-arguments _exn90809_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96736
                              (let ()
                                (declare (not safe))
                                (cons _exn90809_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp96736)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90803_))
            (let ((_e90806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90803_ 'exception))))
              (if (macro-unterminated-process-exception? _e90806_)
                  (macro-unterminated-process-exception-procedure _e90806_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp96737
                                (let ()
                                  (declare (not safe))
                                  (cons _e90806_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp96737)))))
            (if (macro-unterminated-process-exception? _exn90803_)
                (macro-unterminated-process-exception-procedure _exn90803_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp96738
                              (let ()
                                (declare (not safe))
                                (cons _exn90803_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp96738)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90799_))
            (let ((_e90801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90799_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90801_))
            (macro-wrong-number-of-arguments-exception? _exn90799_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90795_))
            (let ((_e90797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90795_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90797_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90797_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96739
                                (let ()
                                  (declare (not safe))
                                  (cons _e90797_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp96739)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90795_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90795_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96740
                              (let ()
                                (declare (not safe))
                                (cons _exn90795_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp96740)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90789_))
            (let ((_e90792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90789_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90792_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90792_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp96741
                                (let ()
                                  (declare (not safe))
                                  (cons _e90792_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp96741)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90789_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90789_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp96742
                              (let ()
                                (declare (not safe))
                                (cons _exn90789_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp96742)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90785_))
            (let ((_e90787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90785_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90787_))
            (macro-wrong-number-of-values-exception? _exn90785_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90781_))
            (let ((_e90783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90781_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90783_)
                  (macro-wrong-number-of-values-exception-code _e90783_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96743
                                (let ()
                                  (declare (not safe))
                                  (cons _e90783_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp96743)))))
            (if (macro-wrong-number-of-values-exception? _exn90781_)
                (macro-wrong-number-of-values-exception-code _exn90781_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96744
                              (let ()
                                (declare (not safe))
                                (cons _exn90781_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp96744)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90777_))
            (let ((_e90779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90777_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90779_)
                  (macro-wrong-number-of-values-exception-rte _e90779_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96745
                                (let ()
                                  (declare (not safe))
                                  (cons _e90779_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp96745)))))
            (if (macro-wrong-number-of-values-exception? _exn90777_)
                (macro-wrong-number-of-values-exception-rte _exn90777_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96746
                              (let ()
                                (declare (not safe))
                                (cons _exn90777_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp96746)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90771_))
            (let ((_e90774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90771_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90774_)
                  (macro-wrong-number-of-values-exception-vals _e90774_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp96747
                                (let ()
                                  (declare (not safe))
                                  (cons _e90774_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp96747)))))
            (if (macro-wrong-number-of-values-exception? _exn90771_)
                (macro-wrong-number-of-values-exception-vals _exn90771_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp96748
                              (let ()
                                (declare (not safe))
                                (cons _exn90771_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp96748)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90765_))
            (let ((_e90768_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90765_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90768_))
            (macro-wrong-processor-c-return-exception? _exn90765_))))))
