(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707840753)
  (begin
    (define Exception::t
      (let ((__tmp97281 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp97281
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args92684_ (apply make-instance Exception::t _$args92684_)))
    (define StackTrace::t
      (let ((__tmp97282 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp97282
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args92681_ (apply make-instance StackTrace::t _$args92681_)))
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
      (let ((__tmp97283 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp97283
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args92678_ (apply make-instance Error::t _$args92678_)))
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
      (let ((__tmp97284 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp97284
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args92675_
        (apply make-instance RuntimeException::t _$args92675_)))
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
      (lambda (_exn92670_ _continue92671_)
        (let ((_exn92673_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn92670_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn92673_ _continue92671_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn92666_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn92666_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn92666_ 'continuation))
                '#!void
                (let ((__tmp97285
                       (lambda (_cont92668_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn92666_
                            'continuation
                            _cont92668_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp97285)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn92666_))))
    (define error
      (lambda (_message92663_ . _irritants92664_)
        (raise (let ((__obj97275
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj97275
                  _message92663_
                  'irritants:
                  _irritants92664_)
                 __obj97275))))
    (define with-exception-handler
      (lambda (_handler92656_ _thunk92657_)
        (if (let () (declare (not safe)) (procedure? _handler92656_))
            '#!void
            (raise (let ((__obj97276
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97276
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92656_ '())))
                     __obj97276)))
        (if (let () (declare (not safe)) (procedure? _thunk92657_))
            '#!void
            (raise (let ((__obj97277
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97277
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92657_ '())))
                     __obj97277)))
        (let ((__tmp97286
               (lambda (_exn92659_)
                 (let ((_exn92661_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn92659_))))
                   (_handler92656_ _exn92661_)))))
          (declare (not safe))
          (##with-exception-handler __tmp97286 _thunk92657_))))
    (define with-catch
      (lambda (_handler92649_ _thunk92650_)
        (if (let () (declare (not safe)) (procedure? _handler92649_))
            '#!void
            (raise (let ((__obj97278
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97278
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler92649_ '())))
                     __obj97278)))
        (if (let () (declare (not safe)) (procedure? _thunk92650_))
            '#!void
            (raise (let ((__obj97279
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj97279
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk92650_ '())))
                     __obj97279)))
        (let ((__tmp97287
               (lambda (_cont92652_)
                 (with-exception-handler
                  (lambda (_exn92654_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont92652_
                       _handler92649_
                       _exn92654_)))
                  _thunk92650_))))
          (declare (not safe))
          (##continuation-capture __tmp97287))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn92640_)
        (if (or (heap-overflow-exception? _exn92640_)
                (stack-overflow-exception? _exn92640_))
            _exn92640_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn92640_))
                _exn92640_
                (if (macro-exception? _exn92640_)
                    (let ((_rte92645_
                           (let ((__obj97280
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj97280
                                _exn92640_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj97280)))
                      (let ((__tmp97288
                             (lambda (_cont92647_)
                               (let ((__tmp97289
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont92647_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte92645_
                                  'continuation
                                  __tmp97289)))))
                        (declare (not safe))
                        (##continuation-capture __tmp97288))
                      _rte92645_)
                    _exn92640_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj92635_)
        (let ((_$e92637_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj92635_))))
          (if _$e92637_ _$e92637_ (error-exception? _obj92635_)))))
    (define error-message
      (lambda (_obj92633_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92633_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92633_ 'message))
            (if (error-exception? _obj92633_)
                (error-exception-message _obj92633_)
                '#f))))
    (define error-irritants
      (lambda (_obj92631_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92631_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92631_ 'irritants))
            (if (error-exception? _obj92631_)
                (error-exception-parameters _obj92631_)
                '#f))))
    (define error-trace
      (lambda (_obj92629_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj92629_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj92629_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e92611_ _port92612_)
        (let ((_$e92614_
               (let ()
                 (declare (not safe))
                 (method-ref _e92611_ 'display-exception))))
          (if _$e92614_
              ((lambda (_f92617_) (_f92617_ _e92611_ _port92612_)) _$e92614_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e92611_ _port92612_))))))
    (define display-exception__0
      (lambda (_e92622_)
        (let ((_port92624_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e92622_ _port92624_))))
    (define display-exception
      (lambda _g97291_
        (let ((_g97290_ (let () (declare (not safe)) (##length _g97291_))))
          (cond ((let () (declare (not safe)) (##fx= _g97290_ 1))
                 (apply (lambda (_e92622_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e92622_)))
                        _g97291_))
                ((let () (declare (not safe)) (##fx= _g97290_ 2))
                 (apply (lambda (_e92626_ _port92627_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e92626_ _port92627_)))
                        _g97291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g97291_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self92600_ _message92601_ . _rest92602_)
        (let ((_message92608_
               (if (let () (declare (not safe)) (string? _message92601_))
                   _message92601_
                   (call-with-output-string
                    '""
                    (lambda (_g9260392605_)
                      (display _message92601_ _g9260392605_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self92600_ 'message _message92608_))
          (apply class-instance-init! _self92600_ _rest92602_))))
    (define Error:::init!::specialize
      (lambda (__t97254)
        (let ((__message97255
               (let ((__tmp97256
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97254 'message))))
                 (if __tmp97256 __tmp97256 (error '"Unknown slot" 'message)))))
          (lambda (_self92600_ _message92601_ . _rest92602_)
            (let ((_message92608_
                   (if (let () (declare (not safe)) (string? _message92601_))
                       _message92601_
                       (call-with-output-string
                        '""
                        (lambda (_g9260392605_)
                          (display _message92601_ _g9260392605_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self92600_
                 _message92608_
                 __message97255
                 __t97254
                 '#f))
              (apply class-instance-init! _self92600_ _rest92602_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self92458_ _port92459_)
        (let ((_tmp-port92461_ (open-output-string))
              (_display-error-newline92462_
               (> (output-port-column _port92459_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92461_))
          (let ((__tmp97292
                 (lambda ()
                   (if _display-error-newline92462_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e92465_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92458_ 'where))))
                     (if _$e92465_ (display _$e92465_) (display '"?")))
                   (let ((__tmp97293
                          (let ((__tmp97294
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self92458_))))
                            (declare (not safe))
                            (##type-name __tmp97294))))
                     (declare (not safe))
                     (display* '" [" __tmp97293 '"]: "))
                   (let ((__tmp97295
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92458_ 'message))))
                     (declare (not safe))
                     (displayln __tmp97295))
                   (let ((_irritants92468_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self92458_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants92468_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj92470_)
                              (write _obj92470_)
                              (write-char '#\space))
                            _irritants92468_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self92458_))
                            (dump-stack-trace?))
                       (let ((_cont9247192473_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self92458_
                                 'continuation))))
                         (if _cont9247192473_
                             (let ((_cont92476_ _cont9247192473_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont92476_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp97292
             current-output-port
             _tmp-port92461_))
          (let ((__tmp97296 (get-output-string _tmp-port92461_)))
            (declare (not safe))
            (##write-string __tmp97296 _port92459_)))))
    (define Error::display-exception::specialize
      (lambda (__t97257)
        (let ((__message97258
               (let ((__tmp97262
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97257 'message))))
                 (if __tmp97262 __tmp97262 (error '"Unknown slot" 'message))))
              (__irritants97259
               (let ((__tmp97263
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97257 'irritants))))
                 (if __tmp97263
                     __tmp97263
                     (error '"Unknown slot" 'irritants))))
              (__continuation97260
               (let ((__tmp97264
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97257 'continuation))))
                 (if __tmp97264
                     __tmp97264
                     (error '"Unknown slot" 'continuation))))
              (__where97261
               (let ((__tmp97265
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97257 'where))))
                 (if __tmp97265 __tmp97265 (error '"Unknown slot" 'where)))))
          (lambda (_self92458_ _port92459_)
            (let ((_tmp-port92461_ (open-output-string))
                  (_display-error-newline92462_
                   (> (output-port-column _port92459_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92461_))
              (let ((__tmp97297
                     (lambda ()
                       (if _display-error-newline92462_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e92465_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92458_
                                 __where97261
                                 __t97257
                                 '#f))))
                         (if _$e92465_ (display _$e92465_) (display '"?")))
                       (let ((__tmp97298
                              (let ((__tmp97299
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self92458_))))
                                (declare (not safe))
                                (##type-name __tmp97299))))
                         (declare (not safe))
                         (display* '" [" __tmp97298 '"]: "))
                       (let ((__tmp97300
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92458_
                                 __message97258
                                 __t97257
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp97300))
                       (let ((_irritants92468_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self92458_
                                 __irritants97259
                                 __t97257
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants92468_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj92470_)
                                  (write _obj92470_)
                                  (write-char '#\space))
                                _irritants92468_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self92458_))
                                (dump-stack-trace?))
                           (let ((_cont9247192473_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self92458_
                                     __continuation97260
                                     __t97257
                                     '#f))))
                             (if _cont9247192473_
                                 (let ((_cont92476_ _cont9247192473_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont92476_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp97297
                 current-output-port
                 _tmp-port92461_))
              (let ((__tmp97301 (get-output-string _tmp-port92461_)))
                (declare (not safe))
                (##write-string __tmp97301 _port92459_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self92325_ _port92326_)
        (let ((_tmp-port92328_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port92328_))
          (let ((__tmp97302
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self92325_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp97302 _tmp-port92328_))
          (if (dump-stack-trace?)
              (let ((_cont9232992331_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self92325_ 'continuation))))
                (if _cont9232992331_
                    (let ((_cont92334_ _cont9232992331_))
                      (display '"--- continuation backtrace:" _tmp-port92328_)
                      (newline _tmp-port92328_)
                      (display-continuation-backtrace
                       _cont92334_
                       _tmp-port92328_))
                    '#f))
              '#!void)
          (let ((__tmp97303 (get-output-string _tmp-port92328_)))
            (declare (not safe))
            (##write-string __tmp97303 _port92326_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t97266)
        (let ((__exception97267
               (let ((__tmp97269
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97266 'exception))))
                 (if __tmp97269
                     __tmp97269
                     (error '"Unknown slot" 'exception))))
              (__continuation97268
               (let ((__tmp97270
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t97266 'continuation))))
                 (if __tmp97270
                     __tmp97270
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self92325_ _port92326_)
            (let ((_tmp-port92328_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port92328_))
              (let ((__tmp97304
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self92325_
                        __exception97267
                        __t97266
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp97304 _tmp-port92328_))
              (if (dump-stack-trace?)
                  (let ((_cont9232992331_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self92325_
                            __continuation97268
                            __t97266
                            '#f))))
                    (if _cont9232992331_
                        (let ((_cont92334_ _cont9232992331_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port92328_)
                          (newline _tmp-port92328_)
                          (display-continuation-backtrace
                           _cont92334_
                           _tmp-port92328_))
                        '#f))
                  '#!void)
              (let ((__tmp97305 (get-output-string _tmp-port92328_)))
                (declare (not safe))
                (##write-string __tmp97305 _port92326_)))))))
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
      (lambda (_port92197_)
        (if (macro-character-port? _port92197_)
            (let ((_old-width92199_
                   (macro-character-port-output-width _port92197_)))
              (macro-character-port-output-width-set!
               _port92197_
               (lambda (_port92201_) '256))
              _old-width92199_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port92194_ _old-width92195_)
        (if (macro-character-port? _port92194_)
            (macro-character-port-output-width-set!
             _port92194_
             _old-width92195_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e92192_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e92192_))))
    (define abandoned-mutex-exception?
      (lambda (_exn92186_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92186_))
            (let ((_e92189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92186_ 'exception))))
              (macro-abandoned-mutex-exception? _e92189_))
            (macro-abandoned-mutex-exception? _exn92186_))))
    (define cfun-conversion-exception?
      (lambda (_exn92182_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92182_))
            (let ((_e92184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92182_ 'exception))))
              (macro-cfun-conversion-exception? _e92184_))
            (macro-cfun-conversion-exception? _exn92182_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn92178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92178_))
            (let ((_e92180_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92178_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92180_)
                  (macro-cfun-conversion-exception-arguments _e92180_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97307
                                (let ()
                                  (declare (not safe))
                                  (cons _e92180_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp97307)))))
            (if (macro-cfun-conversion-exception? _exn92178_)
                (macro-cfun-conversion-exception-arguments _exn92178_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97306
                              (let ()
                                (declare (not safe))
                                (cons _exn92178_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp97306)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn92174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92174_))
            (let ((_e92176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92174_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92176_)
                  (macro-cfun-conversion-exception-code _e92176_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97309
                                (let ()
                                  (declare (not safe))
                                  (cons _e92176_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp97309)))))
            (if (macro-cfun-conversion-exception? _exn92174_)
                (macro-cfun-conversion-exception-code _exn92174_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97308
                              (let ()
                                (declare (not safe))
                                (cons _exn92174_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp97308)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn92170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92170_))
            (let ((_e92172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92170_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92172_)
                  (macro-cfun-conversion-exception-message _e92172_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97311
                                (let ()
                                  (declare (not safe))
                                  (cons _e92172_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp97311)))))
            (if (macro-cfun-conversion-exception? _exn92170_)
                (macro-cfun-conversion-exception-message _exn92170_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97310
                              (let ()
                                (declare (not safe))
                                (cons _exn92170_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp97310)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn92164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92164_))
            (let ((_e92167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92164_ 'exception))))
              (if (macro-cfun-conversion-exception? _e92167_)
                  (macro-cfun-conversion-exception-procedure _e92167_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp97313
                                (let ()
                                  (declare (not safe))
                                  (cons _e92167_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp97313)))))
            (if (macro-cfun-conversion-exception? _exn92164_)
                (macro-cfun-conversion-exception-procedure _exn92164_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp97312
                              (let ()
                                (declare (not safe))
                                (cons _exn92164_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp97312)))))))
    (define datum-parsing-exception?
      (lambda (_exn92160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92160_))
            (let ((_e92162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92160_ 'exception))))
              (macro-datum-parsing-exception? _e92162_))
            (macro-datum-parsing-exception? _exn92160_))))
    (define datum-parsing-exception-kind
      (lambda (_exn92156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92156_))
            (let ((_e92158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92156_ 'exception))))
              (if (macro-datum-parsing-exception? _e92158_)
                  (macro-datum-parsing-exception-kind _e92158_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97315
                                (let ()
                                  (declare (not safe))
                                  (cons _e92158_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp97315)))))
            (if (macro-datum-parsing-exception? _exn92156_)
                (macro-datum-parsing-exception-kind _exn92156_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97314
                              (let ()
                                (declare (not safe))
                                (cons _exn92156_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp97314)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn92152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92152_))
            (let ((_e92154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92152_ 'exception))))
              (if (macro-datum-parsing-exception? _e92154_)
                  (macro-datum-parsing-exception-parameters _e92154_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97317
                                (let ()
                                  (declare (not safe))
                                  (cons _e92154_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp97317)))))
            (if (macro-datum-parsing-exception? _exn92152_)
                (macro-datum-parsing-exception-parameters _exn92152_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97316
                              (let ()
                                (declare (not safe))
                                (cons _exn92152_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp97316)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn92146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92146_))
            (let ((_e92149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92146_ 'exception))))
              (if (macro-datum-parsing-exception? _e92149_)
                  (macro-datum-parsing-exception-readenv _e92149_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp97319
                                (let ()
                                  (declare (not safe))
                                  (cons _e92149_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp97319)))))
            (if (macro-datum-parsing-exception? _exn92146_)
                (macro-datum-parsing-exception-readenv _exn92146_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp97318
                              (let ()
                                (declare (not safe))
                                (cons _exn92146_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp97318)))))))
    (define deadlock-exception?
      (lambda (_exn92140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92140_))
            (let ((_e92143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92140_ 'exception))))
              (macro-deadlock-exception? _e92143_))
            (macro-deadlock-exception? _exn92140_))))
    (define divide-by-zero-exception?
      (lambda (_exn92136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92136_))
            (let ((_e92138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92136_ 'exception))))
              (macro-divide-by-zero-exception? _e92138_))
            (macro-divide-by-zero-exception? _exn92136_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn92132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92132_))
            (let ((_e92134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92132_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92134_)
                  (macro-divide-by-zero-exception-arguments _e92134_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97321
                                (let ()
                                  (declare (not safe))
                                  (cons _e92134_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp97321)))))
            (if (macro-divide-by-zero-exception? _exn92132_)
                (macro-divide-by-zero-exception-arguments _exn92132_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97320
                              (let ()
                                (declare (not safe))
                                (cons _exn92132_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp97320)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn92126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92126_))
            (let ((_e92129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92126_ 'exception))))
              (if (macro-divide-by-zero-exception? _e92129_)
                  (macro-divide-by-zero-exception-procedure _e92129_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp97323
                                (let ()
                                  (declare (not safe))
                                  (cons _e92129_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp97323)))))
            (if (macro-divide-by-zero-exception? _exn92126_)
                (macro-divide-by-zero-exception-procedure _exn92126_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp97322
                              (let ()
                                (declare (not safe))
                                (cons _exn92126_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp97322)))))))
    (define error-exception?
      (lambda (_exn92122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92122_))
            (let ((_e92124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92122_ 'exception))))
              (macro-error-exception? _e92124_))
            (macro-error-exception? _exn92122_))))
    (define error-exception-message
      (lambda (_exn92118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92118_))
            (let ((_e92120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92118_ 'exception))))
              (if (macro-error-exception? _e92120_)
                  (macro-error-exception-message _e92120_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97325
                                (let ()
                                  (declare (not safe))
                                  (cons _e92120_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp97325)))))
            (if (macro-error-exception? _exn92118_)
                (macro-error-exception-message _exn92118_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97324
                              (let ()
                                (declare (not safe))
                                (cons _exn92118_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp97324)))))))
    (define error-exception-parameters
      (lambda (_exn92112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92112_))
            (let ((_e92115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92112_ 'exception))))
              (if (macro-error-exception? _e92115_)
                  (macro-error-exception-parameters _e92115_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp97327
                                (let ()
                                  (declare (not safe))
                                  (cons _e92115_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp97327)))))
            (if (macro-error-exception? _exn92112_)
                (macro-error-exception-parameters _exn92112_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp97326
                              (let ()
                                (declare (not safe))
                                (cons _exn92112_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp97326)))))))
    (define expression-parsing-exception?
      (lambda (_exn92108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92108_))
            (let ((_e92110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92108_ 'exception))))
              (macro-expression-parsing-exception? _e92110_))
            (macro-expression-parsing-exception? _exn92108_))))
    (define expression-parsing-exception-kind
      (lambda (_exn92104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92104_))
            (let ((_e92106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92104_ 'exception))))
              (if (macro-expression-parsing-exception? _e92106_)
                  (macro-expression-parsing-exception-kind _e92106_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97329
                                (let ()
                                  (declare (not safe))
                                  (cons _e92106_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp97329)))))
            (if (macro-expression-parsing-exception? _exn92104_)
                (macro-expression-parsing-exception-kind _exn92104_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97328
                              (let ()
                                (declare (not safe))
                                (cons _exn92104_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp97328)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn92100_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92100_))
            (let ((_e92102_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92100_ 'exception))))
              (if (macro-expression-parsing-exception? _e92102_)
                  (macro-expression-parsing-exception-parameters _e92102_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97331
                                (let ()
                                  (declare (not safe))
                                  (cons _e92102_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp97331)))))
            (if (macro-expression-parsing-exception? _exn92100_)
                (macro-expression-parsing-exception-parameters _exn92100_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97330
                              (let ()
                                (declare (not safe))
                                (cons _exn92100_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp97330)))))))
    (define expression-parsing-exception-source
      (lambda (_exn92094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92094_))
            (let ((_e92097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92094_ 'exception))))
              (if (macro-expression-parsing-exception? _e92097_)
                  (macro-expression-parsing-exception-source _e92097_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp97333
                                (let ()
                                  (declare (not safe))
                                  (cons _e92097_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp97333)))))
            (if (macro-expression-parsing-exception? _exn92094_)
                (macro-expression-parsing-exception-source _exn92094_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp97332
                              (let ()
                                (declare (not safe))
                                (cons _exn92094_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp97332)))))))
    (define file-exists-exception?
      (lambda (_exn92090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92090_))
            (let ((_e92092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92090_ 'exception))))
              (macro-file-exists-exception? _e92092_))
            (macro-file-exists-exception? _exn92090_))))
    (define file-exists-exception-arguments
      (lambda (_exn92086_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92086_))
            (let ((_e92088_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92086_ 'exception))))
              (if (macro-file-exists-exception? _e92088_)
                  (macro-file-exists-exception-arguments _e92088_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97335
                                (let ()
                                  (declare (not safe))
                                  (cons _e92088_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp97335)))))
            (if (macro-file-exists-exception? _exn92086_)
                (macro-file-exists-exception-arguments _exn92086_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97334
                              (let ()
                                (declare (not safe))
                                (cons _exn92086_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp97334)))))))
    (define file-exists-exception-procedure
      (lambda (_exn92080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92080_))
            (let ((_e92083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92080_ 'exception))))
              (if (macro-file-exists-exception? _e92083_)
                  (macro-file-exists-exception-procedure _e92083_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp97337
                                (let ()
                                  (declare (not safe))
                                  (cons _e92083_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp97337)))))
            (if (macro-file-exists-exception? _exn92080_)
                (macro-file-exists-exception-procedure _exn92080_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp97336
                              (let ()
                                (declare (not safe))
                                (cons _exn92080_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp97336)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn92076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92076_))
            (let ((_e92078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92076_ 'exception))))
              (macro-fixnum-overflow-exception? _e92078_))
            (macro-fixnum-overflow-exception? _exn92076_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn92072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92072_))
            (let ((_e92074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92072_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e92074_)
                  (macro-fixnum-overflow-exception-arguments _e92074_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97339
                                (let ()
                                  (declare (not safe))
                                  (cons _e92074_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp97339)))))
            (if (macro-fixnum-overflow-exception? _exn92072_)
                (macro-fixnum-overflow-exception-arguments _exn92072_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97338
                              (let ()
                                (declare (not safe))
                                (cons _exn92072_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp97338)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn92066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92066_))
            (let ((_e92069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92066_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e92069_)
                  (macro-fixnum-overflow-exception-procedure _e92069_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp97341
                                (let ()
                                  (declare (not safe))
                                  (cons _e92069_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp97341)))))
            (if (macro-fixnum-overflow-exception? _exn92066_)
                (macro-fixnum-overflow-exception-procedure _exn92066_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp97340
                              (let ()
                                (declare (not safe))
                                (cons _exn92066_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp97340)))))))
    (define heap-overflow-exception?
      (lambda (_exn92060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92060_))
            (let ((_e92063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92060_ 'exception))))
              (macro-heap-overflow-exception? _e92063_))
            (macro-heap-overflow-exception? _exn92060_))))
    (define inactive-thread-exception?
      (lambda (_exn92056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92056_))
            (let ((_e92058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92056_ 'exception))))
              (macro-inactive-thread-exception? _e92058_))
            (macro-inactive-thread-exception? _exn92056_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn92052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92052_))
            (let ((_e92054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92052_ 'exception))))
              (if (macro-inactive-thread-exception? _e92054_)
                  (macro-inactive-thread-exception-arguments _e92054_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97343
                                (let ()
                                  (declare (not safe))
                                  (cons _e92054_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp97343)))))
            (if (macro-inactive-thread-exception? _exn92052_)
                (macro-inactive-thread-exception-arguments _exn92052_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97342
                              (let ()
                                (declare (not safe))
                                (cons _exn92052_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp97342)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn92046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92046_))
            (let ((_e92049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92046_ 'exception))))
              (if (macro-inactive-thread-exception? _e92049_)
                  (macro-inactive-thread-exception-procedure _e92049_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp97345
                                (let ()
                                  (declare (not safe))
                                  (cons _e92049_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp97345)))))
            (if (macro-inactive-thread-exception? _exn92046_)
                (macro-inactive-thread-exception-procedure _exn92046_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp97344
                              (let ()
                                (declare (not safe))
                                (cons _exn92046_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp97344)))))))
    (define initialized-thread-exception?
      (lambda (_exn92042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92042_))
            (let ((_e92044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92042_ 'exception))))
              (macro-initialized-thread-exception? _e92044_))
            (macro-initialized-thread-exception? _exn92042_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn92038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92038_))
            (let ((_e92040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92038_ 'exception))))
              (if (macro-initialized-thread-exception? _e92040_)
                  (macro-initialized-thread-exception-arguments _e92040_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97347
                                (let ()
                                  (declare (not safe))
                                  (cons _e92040_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp97347)))))
            (if (macro-initialized-thread-exception? _exn92038_)
                (macro-initialized-thread-exception-arguments _exn92038_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97346
                              (let ()
                                (declare (not safe))
                                (cons _exn92038_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp97346)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn92032_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92032_))
            (let ((_e92035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92032_ 'exception))))
              (if (macro-initialized-thread-exception? _e92035_)
                  (macro-initialized-thread-exception-procedure _e92035_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp97349
                                (let ()
                                  (declare (not safe))
                                  (cons _e92035_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp97349)))))
            (if (macro-initialized-thread-exception? _exn92032_)
                (macro-initialized-thread-exception-procedure _exn92032_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp97348
                              (let ()
                                (declare (not safe))
                                (cons _exn92032_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp97348)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn92028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92028_))
            (let ((_e92030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92028_ 'exception))))
              (macro-invalid-hash-number-exception? _e92030_))
            (macro-invalid-hash-number-exception? _exn92028_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn92024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92024_))
            (let ((_e92026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92024_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e92026_)
                  (macro-invalid-hash-number-exception-arguments _e92026_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97351
                                (let ()
                                  (declare (not safe))
                                  (cons _e92026_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp97351)))))
            (if (macro-invalid-hash-number-exception? _exn92024_)
                (macro-invalid-hash-number-exception-arguments _exn92024_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97350
                              (let ()
                                (declare (not safe))
                                (cons _exn92024_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp97350)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn92018_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92018_))
            (let ((_e92021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92018_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e92021_)
                  (macro-invalid-hash-number-exception-procedure _e92021_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp97353
                                (let ()
                                  (declare (not safe))
                                  (cons _e92021_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp97353)))))
            (if (macro-invalid-hash-number-exception? _exn92018_)
                (macro-invalid-hash-number-exception-procedure _exn92018_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp97352
                              (let ()
                                (declare (not safe))
                                (cons _exn92018_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp97352)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn92014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92014_))
            (let ((_e92016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92014_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e92016_))
            (macro-invalid-utf8-encoding-exception? _exn92014_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn92010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92010_))
            (let ((_e92012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92010_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e92012_)
                  (macro-invalid-utf8-encoding-exception-arguments _e92012_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97355
                                (let ()
                                  (declare (not safe))
                                  (cons _e92012_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp97355)))))
            (if (macro-invalid-utf8-encoding-exception? _exn92010_)
                (macro-invalid-utf8-encoding-exception-arguments _exn92010_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97354
                              (let ()
                                (declare (not safe))
                                (cons _exn92010_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp97354)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn92004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92004_))
            (let ((_e92007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92004_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e92007_)
                  (macro-invalid-utf8-encoding-exception-procedure _e92007_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp97357
                                (let ()
                                  (declare (not safe))
                                  (cons _e92007_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp97357)))))
            (if (macro-invalid-utf8-encoding-exception? _exn92004_)
                (macro-invalid-utf8-encoding-exception-procedure _exn92004_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp97356
                              (let ()
                                (declare (not safe))
                                (cons _exn92004_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp97356)))))))
    (define join-timeout-exception?
      (lambda (_exn92000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn92000_))
            (let ((_e92002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn92000_ 'exception))))
              (macro-join-timeout-exception? _e92002_))
            (macro-join-timeout-exception? _exn92000_))))
    (define join-timeout-exception-arguments
      (lambda (_exn91996_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91996_))
            (let ((_e91998_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91996_ 'exception))))
              (if (macro-join-timeout-exception? _e91998_)
                  (macro-join-timeout-exception-arguments _e91998_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97359
                                (let ()
                                  (declare (not safe))
                                  (cons _e91998_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp97359)))))
            (if (macro-join-timeout-exception? _exn91996_)
                (macro-join-timeout-exception-arguments _exn91996_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97358
                              (let ()
                                (declare (not safe))
                                (cons _exn91996_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp97358)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn91990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91990_))
            (let ((_e91993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91990_ 'exception))))
              (if (macro-join-timeout-exception? _e91993_)
                  (macro-join-timeout-exception-procedure _e91993_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp97361
                                (let ()
                                  (declare (not safe))
                                  (cons _e91993_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp97361)))))
            (if (macro-join-timeout-exception? _exn91990_)
                (macro-join-timeout-exception-procedure _exn91990_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp97360
                              (let ()
                                (declare (not safe))
                                (cons _exn91990_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp97360)))))))
    (define keyword-expected-exception?
      (lambda (_exn91986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91986_))
            (let ((_e91988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91986_ 'exception))))
              (macro-keyword-expected-exception? _e91988_))
            (macro-keyword-expected-exception? _exn91986_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn91982_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91982_))
            (let ((_e91984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91982_ 'exception))))
              (if (macro-keyword-expected-exception? _e91984_)
                  (macro-keyword-expected-exception-arguments _e91984_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97363
                                (let ()
                                  (declare (not safe))
                                  (cons _e91984_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp97363)))))
            (if (macro-keyword-expected-exception? _exn91982_)
                (macro-keyword-expected-exception-arguments _exn91982_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97362
                              (let ()
                                (declare (not safe))
                                (cons _exn91982_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp97362)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn91976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91976_))
            (let ((_e91979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91976_ 'exception))))
              (if (macro-keyword-expected-exception? _e91979_)
                  (macro-keyword-expected-exception-procedure _e91979_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp97365
                                (let ()
                                  (declare (not safe))
                                  (cons _e91979_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp97365)))))
            (if (macro-keyword-expected-exception? _exn91976_)
                (macro-keyword-expected-exception-procedure _exn91976_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp97364
                              (let ()
                                (declare (not safe))
                                (cons _exn91976_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp97364)))))))
    (define length-mismatch-exception?
      (lambda (_exn91972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91972_))
            (let ((_e91974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91972_ 'exception))))
              (macro-length-mismatch-exception? _e91974_))
            (macro-length-mismatch-exception? _exn91972_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn91968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91968_))
            (let ((_e91970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91968_ 'exception))))
              (if (macro-length-mismatch-exception? _e91970_)
                  (macro-length-mismatch-exception-arg-id _e91970_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97367
                                (let ()
                                  (declare (not safe))
                                  (cons _e91970_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp97367)))))
            (if (macro-length-mismatch-exception? _exn91968_)
                (macro-length-mismatch-exception-arg-id _exn91968_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97366
                              (let ()
                                (declare (not safe))
                                (cons _exn91968_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp97366)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn91964_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91964_))
            (let ((_e91966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91964_ 'exception))))
              (if (macro-length-mismatch-exception? _e91966_)
                  (macro-length-mismatch-exception-arguments _e91966_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97369
                                (let ()
                                  (declare (not safe))
                                  (cons _e91966_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp97369)))))
            (if (macro-length-mismatch-exception? _exn91964_)
                (macro-length-mismatch-exception-arguments _exn91964_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97368
                              (let ()
                                (declare (not safe))
                                (cons _exn91964_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp97368)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn91958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91958_))
            (let ((_e91961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91958_ 'exception))))
              (if (macro-length-mismatch-exception? _e91961_)
                  (macro-length-mismatch-exception-procedure _e91961_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp97371
                                (let ()
                                  (declare (not safe))
                                  (cons _e91961_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp97371)))))
            (if (macro-length-mismatch-exception? _exn91958_)
                (macro-length-mismatch-exception-procedure _exn91958_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp97370
                              (let ()
                                (declare (not safe))
                                (cons _exn91958_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp97370)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn91954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91954_))
            (let ((_e91956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91954_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e91956_))
            (macro-mailbox-receive-timeout-exception? _exn91954_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn91950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91950_))
            (let ((_e91952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91950_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91952_)
                  (macro-mailbox-receive-timeout-exception-arguments _e91952_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97373
                                (let ()
                                  (declare (not safe))
                                  (cons _e91952_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp97373)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91950_)
                (macro-mailbox-receive-timeout-exception-arguments _exn91950_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97372
                              (let ()
                                (declare (not safe))
                                (cons _exn91950_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp97372)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn91944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91944_))
            (let ((_e91947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91944_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e91947_)
                  (macro-mailbox-receive-timeout-exception-procedure _e91947_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp97375
                                (let ()
                                  (declare (not safe))
                                  (cons _e91947_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp97375)))))
            (if (macro-mailbox-receive-timeout-exception? _exn91944_)
                (macro-mailbox-receive-timeout-exception-procedure _exn91944_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp97374
                              (let ()
                                (declare (not safe))
                                (cons _exn91944_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp97374)))))))
    (define module-not-found-exception?
      (lambda (_exn91940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91940_))
            (let ((_e91942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91940_ 'exception))))
              (macro-module-not-found-exception? _e91942_))
            (macro-module-not-found-exception? _exn91940_))))
    (define module-not-found-exception-arguments
      (lambda (_exn91936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91936_))
            (let ((_e91938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91936_ 'exception))))
              (if (macro-module-not-found-exception? _e91938_)
                  (macro-module-not-found-exception-arguments _e91938_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97377
                                (let ()
                                  (declare (not safe))
                                  (cons _e91938_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp97377)))))
            (if (macro-module-not-found-exception? _exn91936_)
                (macro-module-not-found-exception-arguments _exn91936_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97376
                              (let ()
                                (declare (not safe))
                                (cons _exn91936_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp97376)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn91930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91930_))
            (let ((_e91933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91930_ 'exception))))
              (if (macro-module-not-found-exception? _e91933_)
                  (macro-module-not-found-exception-procedure _e91933_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp97379
                                (let ()
                                  (declare (not safe))
                                  (cons _e91933_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp97379)))))
            (if (macro-module-not-found-exception? _exn91930_)
                (macro-module-not-found-exception-procedure _exn91930_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp97378
                              (let ()
                                (declare (not safe))
                                (cons _exn91930_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp97378)))))))
    (define multiple-c-return-exception?
      (lambda (_exn91924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91924_))
            (let ((_e91927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91924_ 'exception))))
              (macro-multiple-c-return-exception? _e91927_))
            (macro-multiple-c-return-exception? _exn91924_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn91920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91920_))
            (let ((_e91922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91920_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e91922_))
            (macro-no-such-file-or-directory-exception? _exn91920_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn91916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91916_))
            (let ((_e91918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91916_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91918_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e91918_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97381
                                (let ()
                                  (declare (not safe))
                                  (cons _e91918_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp97381)))))
            (if (macro-no-such-file-or-directory-exception? _exn91916_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn91916_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97380
                              (let ()
                                (declare (not safe))
                                (cons _exn91916_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp97380)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn91910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91910_))
            (let ((_e91913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91910_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e91913_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e91913_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp97383
                                (let ()
                                  (declare (not safe))
                                  (cons _e91913_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp97383)))))
            (if (macro-no-such-file-or-directory-exception? _exn91910_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn91910_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp97382
                              (let ()
                                (declare (not safe))
                                (cons _exn91910_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp97382)))))))
    (define noncontinuable-exception?
      (lambda (_exn91906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91906_))
            (let ((_e91908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91906_ 'exception))))
              (macro-noncontinuable-exception? _e91908_))
            (macro-noncontinuable-exception? _exn91906_))))
    (define noncontinuable-exception-reason
      (lambda (_exn91900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91900_))
            (let ((_e91903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91900_ 'exception))))
              (if (macro-noncontinuable-exception? _e91903_)
                  (macro-noncontinuable-exception-reason _e91903_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp97385
                                (let ()
                                  (declare (not safe))
                                  (cons _e91903_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp97385)))))
            (if (macro-noncontinuable-exception? _exn91900_)
                (macro-noncontinuable-exception-reason _exn91900_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp97384
                              (let ()
                                (declare (not safe))
                                (cons _exn91900_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp97384)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn91896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91896_))
            (let ((_e91898_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91896_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e91898_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn91896_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn91892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91892_))
            (let ((_e91894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91892_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91894_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e91894_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97387
                                (let ()
                                  (declare (not safe))
                                  (cons _e91894_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp97387)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91892_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn91892_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97386
                              (let ()
                                (declare (not safe))
                                (cons _exn91892_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp97386)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn91886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91886_))
            (let ((_e91889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91886_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e91889_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e91889_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp97389
                                (let ()
                                  (declare (not safe))
                                  (cons _e91889_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp97389)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn91886_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn91886_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp97388
                              (let ()
                                (declare (not safe))
                                (cons _exn91886_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp97388)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn91882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91882_))
            (let ((_e91884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91882_ 'exception))))
              (macro-nonprocedure-operator-exception? _e91884_))
            (macro-nonprocedure-operator-exception? _exn91882_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn91878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91878_))
            (let ((_e91880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91878_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91880_)
                  (macro-nonprocedure-operator-exception-arguments _e91880_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97391
                                (let ()
                                  (declare (not safe))
                                  (cons _e91880_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp97391)))))
            (if (macro-nonprocedure-operator-exception? _exn91878_)
                (macro-nonprocedure-operator-exception-arguments _exn91878_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97390
                              (let ()
                                (declare (not safe))
                                (cons _exn91878_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp97390)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn91874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91874_))
            (let ((_e91876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91874_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91876_)
                  (macro-nonprocedure-operator-exception-code _e91876_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97393
                                (let ()
                                  (declare (not safe))
                                  (cons _e91876_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp97393)))))
            (if (macro-nonprocedure-operator-exception? _exn91874_)
                (macro-nonprocedure-operator-exception-code _exn91874_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97392
                              (let ()
                                (declare (not safe))
                                (cons _exn91874_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp97392)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn91870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91870_))
            (let ((_e91872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91870_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91872_)
                  (macro-nonprocedure-operator-exception-operator _e91872_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97395
                                (let ()
                                  (declare (not safe))
                                  (cons _e91872_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp97395)))))
            (if (macro-nonprocedure-operator-exception? _exn91870_)
                (macro-nonprocedure-operator-exception-operator _exn91870_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97394
                              (let ()
                                (declare (not safe))
                                (cons _exn91870_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp97394)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn91864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91864_))
            (let ((_e91867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91864_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e91867_)
                  (macro-nonprocedure-operator-exception-rte _e91867_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp97397
                                (let ()
                                  (declare (not safe))
                                  (cons _e91867_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp97397)))))
            (if (macro-nonprocedure-operator-exception? _exn91864_)
                (macro-nonprocedure-operator-exception-rte _exn91864_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp97396
                              (let ()
                                (declare (not safe))
                                (cons _exn91864_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp97396)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn91860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91860_))
            (let ((_e91862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91860_ 'exception))))
              (macro-not-in-compilation-context-exception? _e91862_))
            (macro-not-in-compilation-context-exception? _exn91860_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn91856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91856_))
            (let ((_e91858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91856_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91858_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e91858_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97399
                                (let ()
                                  (declare (not safe))
                                  (cons _e91858_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp97399)))))
            (if (macro-not-in-compilation-context-exception? _exn91856_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn91856_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97398
                              (let ()
                                (declare (not safe))
                                (cons _exn91856_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp97398)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn91850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91850_))
            (let ((_e91853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91850_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e91853_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e91853_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp97401
                                (let ()
                                  (declare (not safe))
                                  (cons _e91853_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp97401)))))
            (if (macro-not-in-compilation-context-exception? _exn91850_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn91850_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp97400
                              (let ()
                                (declare (not safe))
                                (cons _exn91850_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp97400)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn91846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91846_))
            (let ((_e91848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91846_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e91848_))
            (macro-number-of-arguments-limit-exception? _exn91846_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn91842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91842_))
            (let ((_e91844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91842_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91844_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e91844_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97403
                                (let ()
                                  (declare (not safe))
                                  (cons _e91844_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp97403)))))
            (if (macro-number-of-arguments-limit-exception? _exn91842_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn91842_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97402
                              (let ()
                                (declare (not safe))
                                (cons _exn91842_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp97402)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn91836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91836_))
            (let ((_e91839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91836_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e91839_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e91839_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp97405
                                (let ()
                                  (declare (not safe))
                                  (cons _e91839_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp97405)))))
            (if (macro-number-of-arguments-limit-exception? _exn91836_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn91836_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp97404
                              (let ()
                                (declare (not safe))
                                (cons _exn91836_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp97404)))))))
    (define os-exception?
      (lambda (_exn91832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91832_))
            (let ((_e91834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91832_ 'exception))))
              (macro-os-exception? _e91834_))
            (macro-os-exception? _exn91832_))))
    (define os-exception-arguments
      (lambda (_exn91828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91828_))
            (let ((_e91830_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91828_ 'exception))))
              (if (macro-os-exception? _e91830_)
                  (macro-os-exception-arguments _e91830_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97407
                                (let ()
                                  (declare (not safe))
                                  (cons _e91830_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp97407)))))
            (if (macro-os-exception? _exn91828_)
                (macro-os-exception-arguments _exn91828_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97406
                              (let ()
                                (declare (not safe))
                                (cons _exn91828_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp97406)))))))
    (define os-exception-code
      (lambda (_exn91824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91824_))
            (let ((_e91826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91824_ 'exception))))
              (if (macro-os-exception? _e91826_)
                  (macro-os-exception-code _e91826_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97409
                                (let ()
                                  (declare (not safe))
                                  (cons _e91826_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp97409)))))
            (if (macro-os-exception? _exn91824_)
                (macro-os-exception-code _exn91824_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97408
                              (let ()
                                (declare (not safe))
                                (cons _exn91824_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp97408)))))))
    (define os-exception-message
      (lambda (_exn91820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91820_))
            (let ((_e91822_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91820_ 'exception))))
              (if (macro-os-exception? _e91822_)
                  (macro-os-exception-message _e91822_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97411
                                (let ()
                                  (declare (not safe))
                                  (cons _e91822_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp97411)))))
            (if (macro-os-exception? _exn91820_)
                (macro-os-exception-message _exn91820_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97410
                              (let ()
                                (declare (not safe))
                                (cons _exn91820_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp97410)))))))
    (define os-exception-procedure
      (lambda (_exn91814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91814_))
            (let ((_e91817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91814_ 'exception))))
              (if (macro-os-exception? _e91817_)
                  (macro-os-exception-procedure _e91817_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp97413
                                (let ()
                                  (declare (not safe))
                                  (cons _e91817_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp97413)))))
            (if (macro-os-exception? _exn91814_)
                (macro-os-exception-procedure _exn91814_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp97412
                              (let ()
                                (declare (not safe))
                                (cons _exn91814_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp97412)))))))
    (define permission-denied-exception?
      (lambda (_exn91810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91810_))
            (let ((_e91812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91810_ 'exception))))
              (macro-permission-denied-exception? _e91812_))
            (macro-permission-denied-exception? _exn91810_))))
    (define permission-denied-exception-arguments
      (lambda (_exn91806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91806_))
            (let ((_e91808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91806_ 'exception))))
              (if (macro-permission-denied-exception? _e91808_)
                  (macro-permission-denied-exception-arguments _e91808_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97415
                                (let ()
                                  (declare (not safe))
                                  (cons _e91808_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp97415)))))
            (if (macro-permission-denied-exception? _exn91806_)
                (macro-permission-denied-exception-arguments _exn91806_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97414
                              (let ()
                                (declare (not safe))
                                (cons _exn91806_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp97414)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn91800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91800_))
            (let ((_e91803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91800_ 'exception))))
              (if (macro-permission-denied-exception? _e91803_)
                  (macro-permission-denied-exception-procedure _e91803_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp97417
                                (let ()
                                  (declare (not safe))
                                  (cons _e91803_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp97417)))))
            (if (macro-permission-denied-exception? _exn91800_)
                (macro-permission-denied-exception-procedure _exn91800_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp97416
                              (let ()
                                (declare (not safe))
                                (cons _exn91800_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp97416)))))))
    (define range-exception?
      (lambda (_exn91796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91796_))
            (let ((_e91798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91796_ 'exception))))
              (macro-range-exception? _e91798_))
            (macro-range-exception? _exn91796_))))
    (define range-exception-arg-id
      (lambda (_exn91792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91792_))
            (let ((_e91794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91792_ 'exception))))
              (if (macro-range-exception? _e91794_)
                  (macro-range-exception-arg-id _e91794_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97419
                                (let ()
                                  (declare (not safe))
                                  (cons _e91794_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp97419)))))
            (if (macro-range-exception? _exn91792_)
                (macro-range-exception-arg-id _exn91792_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97418
                              (let ()
                                (declare (not safe))
                                (cons _exn91792_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp97418)))))))
    (define range-exception-arguments
      (lambda (_exn91788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91788_))
            (let ((_e91790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91788_ 'exception))))
              (if (macro-range-exception? _e91790_)
                  (macro-range-exception-arguments _e91790_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97421
                                (let ()
                                  (declare (not safe))
                                  (cons _e91790_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp97421)))))
            (if (macro-range-exception? _exn91788_)
                (macro-range-exception-arguments _exn91788_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97420
                              (let ()
                                (declare (not safe))
                                (cons _exn91788_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp97420)))))))
    (define range-exception-procedure
      (lambda (_exn91782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91782_))
            (let ((_e91785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91782_ 'exception))))
              (if (macro-range-exception? _e91785_)
                  (macro-range-exception-procedure _e91785_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp97423
                                (let ()
                                  (declare (not safe))
                                  (cons _e91785_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp97423)))))
            (if (macro-range-exception? _exn91782_)
                (macro-range-exception-procedure _exn91782_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp97422
                              (let ()
                                (declare (not safe))
                                (cons _exn91782_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp97422)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn91778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91778_))
            (let ((_e91780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91778_ 'exception))))
              (macro-rpc-remote-error-exception? _e91780_))
            (macro-rpc-remote-error-exception? _exn91778_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn91774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91774_))
            (let ((_e91776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91774_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91776_)
                  (macro-rpc-remote-error-exception-arguments _e91776_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97425
                                (let ()
                                  (declare (not safe))
                                  (cons _e91776_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp97425)))))
            (if (macro-rpc-remote-error-exception? _exn91774_)
                (macro-rpc-remote-error-exception-arguments _exn91774_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97424
                              (let ()
                                (declare (not safe))
                                (cons _exn91774_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp97424)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn91770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91770_))
            (let ((_e91772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91770_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91772_)
                  (macro-rpc-remote-error-exception-message _e91772_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97427
                                (let ()
                                  (declare (not safe))
                                  (cons _e91772_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp97427)))))
            (if (macro-rpc-remote-error-exception? _exn91770_)
                (macro-rpc-remote-error-exception-message _exn91770_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97426
                              (let ()
                                (declare (not safe))
                                (cons _exn91770_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp97426)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn91764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91764_))
            (let ((_e91767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91764_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e91767_)
                  (macro-rpc-remote-error-exception-procedure _e91767_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp97429
                                (let ()
                                  (declare (not safe))
                                  (cons _e91767_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp97429)))))
            (if (macro-rpc-remote-error-exception? _exn91764_)
                (macro-rpc-remote-error-exception-procedure _exn91764_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp97428
                              (let ()
                                (declare (not safe))
                                (cons _exn91764_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp97428)))))))
    (define scheduler-exception?
      (lambda (_exn91760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91760_))
            (let ((_e91762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91760_ 'exception))))
              (macro-scheduler-exception? _e91762_))
            (macro-scheduler-exception? _exn91760_))))
    (define scheduler-exception-reason
      (lambda (_exn91754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91754_))
            (let ((_e91757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91754_ 'exception))))
              (if (macro-scheduler-exception? _e91757_)
                  (macro-scheduler-exception-reason _e91757_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp97431
                                (let ()
                                  (declare (not safe))
                                  (cons _e91757_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp97431)))))
            (if (macro-scheduler-exception? _exn91754_)
                (macro-scheduler-exception-reason _exn91754_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp97430
                              (let ()
                                (declare (not safe))
                                (cons _exn91754_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp97430)))))))
    (define sfun-conversion-exception?
      (lambda (_exn91750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91750_))
            (let ((_e91752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91750_ 'exception))))
              (macro-sfun-conversion-exception? _e91752_))
            (macro-sfun-conversion-exception? _exn91750_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn91746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91746_))
            (let ((_e91748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91746_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91748_)
                  (macro-sfun-conversion-exception-arguments _e91748_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97433
                                (let ()
                                  (declare (not safe))
                                  (cons _e91748_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp97433)))))
            (if (macro-sfun-conversion-exception? _exn91746_)
                (macro-sfun-conversion-exception-arguments _exn91746_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97432
                              (let ()
                                (declare (not safe))
                                (cons _exn91746_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp97432)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn91742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91742_))
            (let ((_e91744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91742_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91744_)
                  (macro-sfun-conversion-exception-code _e91744_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97435
                                (let ()
                                  (declare (not safe))
                                  (cons _e91744_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp97435)))))
            (if (macro-sfun-conversion-exception? _exn91742_)
                (macro-sfun-conversion-exception-code _exn91742_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97434
                              (let ()
                                (declare (not safe))
                                (cons _exn91742_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp97434)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn91738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91738_))
            (let ((_e91740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91738_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91740_)
                  (macro-sfun-conversion-exception-message _e91740_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97437
                                (let ()
                                  (declare (not safe))
                                  (cons _e91740_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp97437)))))
            (if (macro-sfun-conversion-exception? _exn91738_)
                (macro-sfun-conversion-exception-message _exn91738_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97436
                              (let ()
                                (declare (not safe))
                                (cons _exn91738_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp97436)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn91732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91732_))
            (let ((_e91735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91732_ 'exception))))
              (if (macro-sfun-conversion-exception? _e91735_)
                  (macro-sfun-conversion-exception-procedure _e91735_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp97439
                                (let ()
                                  (declare (not safe))
                                  (cons _e91735_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp97439)))))
            (if (macro-sfun-conversion-exception? _exn91732_)
                (macro-sfun-conversion-exception-procedure _exn91732_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp97438
                              (let ()
                                (declare (not safe))
                                (cons _exn91732_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp97438)))))))
    (define stack-overflow-exception?
      (lambda (_exn91726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91726_))
            (let ((_e91729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91726_ 'exception))))
              (macro-stack-overflow-exception? _e91729_))
            (macro-stack-overflow-exception? _exn91726_))))
    (define started-thread-exception?
      (lambda (_exn91722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91722_))
            (let ((_e91724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91722_ 'exception))))
              (macro-started-thread-exception? _e91724_))
            (macro-started-thread-exception? _exn91722_))))
    (define started-thread-exception-arguments
      (lambda (_exn91718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91718_))
            (let ((_e91720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91718_ 'exception))))
              (if (macro-started-thread-exception? _e91720_)
                  (macro-started-thread-exception-arguments _e91720_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97441
                                (let ()
                                  (declare (not safe))
                                  (cons _e91720_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp97441)))))
            (if (macro-started-thread-exception? _exn91718_)
                (macro-started-thread-exception-arguments _exn91718_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97440
                              (let ()
                                (declare (not safe))
                                (cons _exn91718_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp97440)))))))
    (define started-thread-exception-procedure
      (lambda (_exn91712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91712_))
            (let ((_e91715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91712_ 'exception))))
              (if (macro-started-thread-exception? _e91715_)
                  (macro-started-thread-exception-procedure _e91715_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp97443
                                (let ()
                                  (declare (not safe))
                                  (cons _e91715_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp97443)))))
            (if (macro-started-thread-exception? _exn91712_)
                (macro-started-thread-exception-procedure _exn91712_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp97442
                              (let ()
                                (declare (not safe))
                                (cons _exn91712_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp97442)))))))
    (define terminated-thread-exception?
      (lambda (_exn91708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91708_))
            (let ((_e91710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91708_ 'exception))))
              (macro-terminated-thread-exception? _e91710_))
            (macro-terminated-thread-exception? _exn91708_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn91704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91704_))
            (let ((_e91706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91704_ 'exception))))
              (if (macro-terminated-thread-exception? _e91706_)
                  (macro-terminated-thread-exception-arguments _e91706_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97445
                                (let ()
                                  (declare (not safe))
                                  (cons _e91706_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp97445)))))
            (if (macro-terminated-thread-exception? _exn91704_)
                (macro-terminated-thread-exception-arguments _exn91704_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97444
                              (let ()
                                (declare (not safe))
                                (cons _exn91704_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp97444)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn91698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91698_))
            (let ((_e91701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91698_ 'exception))))
              (if (macro-terminated-thread-exception? _e91701_)
                  (macro-terminated-thread-exception-procedure _e91701_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp97447
                                (let ()
                                  (declare (not safe))
                                  (cons _e91701_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp97447)))))
            (if (macro-terminated-thread-exception? _exn91698_)
                (macro-terminated-thread-exception-procedure _exn91698_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp97446
                              (let ()
                                (declare (not safe))
                                (cons _exn91698_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp97446)))))))
    (define type-exception?
      (lambda (_exn91694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91694_))
            (let ((_e91696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91694_ 'exception))))
              (macro-type-exception? _e91696_))
            (macro-type-exception? _exn91694_))))
    (define type-exception-arg-id
      (lambda (_exn91690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91690_))
            (let ((_e91692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91690_ 'exception))))
              (if (macro-type-exception? _e91692_)
                  (macro-type-exception-arg-id _e91692_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97449
                                (let ()
                                  (declare (not safe))
                                  (cons _e91692_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp97449)))))
            (if (macro-type-exception? _exn91690_)
                (macro-type-exception-arg-id _exn91690_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97448
                              (let ()
                                (declare (not safe))
                                (cons _exn91690_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp97448)))))))
    (define type-exception-arguments
      (lambda (_exn91686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91686_))
            (let ((_e91688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91686_ 'exception))))
              (if (macro-type-exception? _e91688_)
                  (macro-type-exception-arguments _e91688_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97451
                                (let ()
                                  (declare (not safe))
                                  (cons _e91688_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp97451)))))
            (if (macro-type-exception? _exn91686_)
                (macro-type-exception-arguments _exn91686_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97450
                              (let ()
                                (declare (not safe))
                                (cons _exn91686_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp97450)))))))
    (define type-exception-procedure
      (lambda (_exn91682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91682_))
            (let ((_e91684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91682_ 'exception))))
              (if (macro-type-exception? _e91684_)
                  (macro-type-exception-procedure _e91684_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97453
                                (let ()
                                  (declare (not safe))
                                  (cons _e91684_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp97453)))))
            (if (macro-type-exception? _exn91682_)
                (macro-type-exception-procedure _exn91682_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97452
                              (let ()
                                (declare (not safe))
                                (cons _exn91682_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp97452)))))))
    (define type-exception-type-id
      (lambda (_exn91676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91676_))
            (let ((_e91679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91676_ 'exception))))
              (if (macro-type-exception? _e91679_)
                  (macro-type-exception-type-id _e91679_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp97455
                                (let ()
                                  (declare (not safe))
                                  (cons _e91679_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp97455)))))
            (if (macro-type-exception? _exn91676_)
                (macro-type-exception-type-id _exn91676_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp97454
                              (let ()
                                (declare (not safe))
                                (cons _exn91676_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp97454)))))))
    (define unbound-global-exception?
      (lambda (_exn91672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91672_))
            (let ((_e91674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91672_ 'exception))))
              (macro-unbound-global-exception? _e91674_))
            (macro-unbound-global-exception? _exn91672_))))
    (define unbound-global-exception-code
      (lambda (_exn91668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91668_))
            (let ((_e91670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91668_ 'exception))))
              (if (macro-unbound-global-exception? _e91670_)
                  (macro-unbound-global-exception-code _e91670_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97457
                                (let ()
                                  (declare (not safe))
                                  (cons _e91670_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp97457)))))
            (if (macro-unbound-global-exception? _exn91668_)
                (macro-unbound-global-exception-code _exn91668_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97456
                              (let ()
                                (declare (not safe))
                                (cons _exn91668_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp97456)))))))
    (define unbound-global-exception-rte
      (lambda (_exn91664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91664_))
            (let ((_e91666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91664_ 'exception))))
              (if (macro-unbound-global-exception? _e91666_)
                  (macro-unbound-global-exception-rte _e91666_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97459
                                (let ()
                                  (declare (not safe))
                                  (cons _e91666_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp97459)))))
            (if (macro-unbound-global-exception? _exn91664_)
                (macro-unbound-global-exception-rte _exn91664_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97458
                              (let ()
                                (declare (not safe))
                                (cons _exn91664_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp97458)))))))
    (define unbound-global-exception-variable
      (lambda (_exn91658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91658_))
            (let ((_e91661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91658_ 'exception))))
              (if (macro-unbound-global-exception? _e91661_)
                  (macro-unbound-global-exception-variable _e91661_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp97461
                                (let ()
                                  (declare (not safe))
                                  (cons _e91661_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp97461)))))
            (if (macro-unbound-global-exception? _exn91658_)
                (macro-unbound-global-exception-variable _exn91658_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp97460
                              (let ()
                                (declare (not safe))
                                (cons _exn91658_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp97460)))))))
    (define unbound-key-exception?
      (lambda (_exn91654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91654_))
            (let ((_e91656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91654_ 'exception))))
              (macro-unbound-key-exception? _e91656_))
            (macro-unbound-key-exception? _exn91654_))))
    (define unbound-key-exception-arguments
      (lambda (_exn91650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91650_))
            (let ((_e91652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91650_ 'exception))))
              (if (macro-unbound-key-exception? _e91652_)
                  (macro-unbound-key-exception-arguments _e91652_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97463
                                (let ()
                                  (declare (not safe))
                                  (cons _e91652_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp97463)))))
            (if (macro-unbound-key-exception? _exn91650_)
                (macro-unbound-key-exception-arguments _exn91650_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97462
                              (let ()
                                (declare (not safe))
                                (cons _exn91650_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp97462)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn91644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91644_))
            (let ((_e91647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91644_ 'exception))))
              (if (macro-unbound-key-exception? _e91647_)
                  (macro-unbound-key-exception-procedure _e91647_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp97465
                                (let ()
                                  (declare (not safe))
                                  (cons _e91647_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp97465)))))
            (if (macro-unbound-key-exception? _exn91644_)
                (macro-unbound-key-exception-procedure _exn91644_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp97464
                              (let ()
                                (declare (not safe))
                                (cons _exn91644_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp97464)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn91640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91640_))
            (let ((_e91642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91640_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e91642_))
            (macro-unbound-os-environment-variable-exception? _exn91640_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn91636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91636_))
            (let ((_e91638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91636_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91638_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e91638_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97467
                                (let ()
                                  (declare (not safe))
                                  (cons _e91638_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp97467)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91636_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn91636_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97466
                              (let ()
                                (declare (not safe))
                                (cons _exn91636_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp97466)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn91630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91630_))
            (let ((_e91633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91630_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e91633_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e91633_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp97469
                                (let ()
                                  (declare (not safe))
                                  (cons _e91633_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp97469)))))
            (if (macro-unbound-os-environment-variable-exception? _exn91630_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn91630_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp97468
                              (let ()
                                (declare (not safe))
                                (cons _exn91630_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp97468)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn91626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91626_))
            (let ((_e91628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91626_ 'exception))))
              (macro-unbound-serial-number-exception? _e91628_))
            (macro-unbound-serial-number-exception? _exn91626_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn91622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91622_))
            (let ((_e91624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91622_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91624_)
                  (macro-unbound-serial-number-exception-arguments _e91624_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97471
                                (let ()
                                  (declare (not safe))
                                  (cons _e91624_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp97471)))))
            (if (macro-unbound-serial-number-exception? _exn91622_)
                (macro-unbound-serial-number-exception-arguments _exn91622_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97470
                              (let ()
                                (declare (not safe))
                                (cons _exn91622_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp97470)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn91616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91616_))
            (let ((_e91619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91616_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e91619_)
                  (macro-unbound-serial-number-exception-procedure _e91619_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp97473
                                (let ()
                                  (declare (not safe))
                                  (cons _e91619_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp97473)))))
            (if (macro-unbound-serial-number-exception? _exn91616_)
                (macro-unbound-serial-number-exception-procedure _exn91616_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp97472
                              (let ()
                                (declare (not safe))
                                (cons _exn91616_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp97472)))))))
    (define uncaught-exception?
      (lambda (_exn91612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91612_))
            (let ((_e91614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91612_ 'exception))))
              (macro-uncaught-exception? _e91614_))
            (macro-uncaught-exception? _exn91612_))))
    (define uncaught-exception-arguments
      (lambda (_exn91608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91608_))
            (let ((_e91610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91608_ 'exception))))
              (if (macro-uncaught-exception? _e91610_)
                  (macro-uncaught-exception-arguments _e91610_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97475
                                (let ()
                                  (declare (not safe))
                                  (cons _e91610_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp97475)))))
            (if (macro-uncaught-exception? _exn91608_)
                (macro-uncaught-exception-arguments _exn91608_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97474
                              (let ()
                                (declare (not safe))
                                (cons _exn91608_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp97474)))))))
    (define uncaught-exception-procedure
      (lambda (_exn91604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91604_))
            (let ((_e91606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91604_ 'exception))))
              (if (macro-uncaught-exception? _e91606_)
                  (macro-uncaught-exception-procedure _e91606_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97477
                                (let ()
                                  (declare (not safe))
                                  (cons _e91606_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp97477)))))
            (if (macro-uncaught-exception? _exn91604_)
                (macro-uncaught-exception-procedure _exn91604_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97476
                              (let ()
                                (declare (not safe))
                                (cons _exn91604_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp97476)))))))
    (define uncaught-exception-reason
      (lambda (_exn91598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91598_))
            (let ((_e91601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91598_ 'exception))))
              (if (macro-uncaught-exception? _e91601_)
                  (macro-uncaught-exception-reason _e91601_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp97479
                                (let ()
                                  (declare (not safe))
                                  (cons _e91601_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp97479)))))
            (if (macro-uncaught-exception? _exn91598_)
                (macro-uncaught-exception-reason _exn91598_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp97478
                              (let ()
                                (declare (not safe))
                                (cons _exn91598_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp97478)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn91594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91594_))
            (let ((_e91596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91594_ 'exception))))
              (macro-uninitialized-thread-exception? _e91596_))
            (macro-uninitialized-thread-exception? _exn91594_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn91590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91590_))
            (let ((_e91592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91590_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91592_)
                  (macro-uninitialized-thread-exception-arguments _e91592_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97481
                                (let ()
                                  (declare (not safe))
                                  (cons _e91592_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp97481)))))
            (if (macro-uninitialized-thread-exception? _exn91590_)
                (macro-uninitialized-thread-exception-arguments _exn91590_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97480
                              (let ()
                                (declare (not safe))
                                (cons _exn91590_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp97480)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn91584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91584_))
            (let ((_e91587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91584_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e91587_)
                  (macro-uninitialized-thread-exception-procedure _e91587_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp97483
                                (let ()
                                  (declare (not safe))
                                  (cons _e91587_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp97483)))))
            (if (macro-uninitialized-thread-exception? _exn91584_)
                (macro-uninitialized-thread-exception-procedure _exn91584_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp97482
                              (let ()
                                (declare (not safe))
                                (cons _exn91584_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp97482)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn91580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91580_))
            (let ((_e91582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91580_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e91582_))
            (macro-unknown-keyword-argument-exception? _exn91580_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn91576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91576_))
            (let ((_e91578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91576_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91578_)
                  (macro-unknown-keyword-argument-exception-arguments _e91578_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97485
                                (let ()
                                  (declare (not safe))
                                  (cons _e91578_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp97485)))))
            (if (macro-unknown-keyword-argument-exception? _exn91576_)
                (macro-unknown-keyword-argument-exception-arguments _exn91576_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97484
                              (let ()
                                (declare (not safe))
                                (cons _exn91576_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp97484)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn91570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91570_))
            (let ((_e91573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91570_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e91573_)
                  (macro-unknown-keyword-argument-exception-procedure _e91573_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp97487
                                (let ()
                                  (declare (not safe))
                                  (cons _e91573_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp97487)))))
            (if (macro-unknown-keyword-argument-exception? _exn91570_)
                (macro-unknown-keyword-argument-exception-procedure _exn91570_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp97486
                              (let ()
                                (declare (not safe))
                                (cons _exn91570_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp97486)))))))
    (define unterminated-process-exception?
      (lambda (_exn91566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91566_))
            (let ((_e91568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91566_ 'exception))))
              (macro-unterminated-process-exception? _e91568_))
            (macro-unterminated-process-exception? _exn91566_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn91562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91562_))
            (let ((_e91564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91562_ 'exception))))
              (if (macro-unterminated-process-exception? _e91564_)
                  (macro-unterminated-process-exception-arguments _e91564_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97489
                                (let ()
                                  (declare (not safe))
                                  (cons _e91564_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp97489)))))
            (if (macro-unterminated-process-exception? _exn91562_)
                (macro-unterminated-process-exception-arguments _exn91562_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97488
                              (let ()
                                (declare (not safe))
                                (cons _exn91562_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp97488)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn91556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91556_))
            (let ((_e91559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91556_ 'exception))))
              (if (macro-unterminated-process-exception? _e91559_)
                  (macro-unterminated-process-exception-procedure _e91559_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp97491
                                (let ()
                                  (declare (not safe))
                                  (cons _e91559_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp97491)))))
            (if (macro-unterminated-process-exception? _exn91556_)
                (macro-unterminated-process-exception-procedure _exn91556_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp97490
                              (let ()
                                (declare (not safe))
                                (cons _exn91556_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp97490)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn91552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91552_))
            (let ((_e91554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91552_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e91554_))
            (macro-wrong-number-of-arguments-exception? _exn91552_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn91548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91548_))
            (let ((_e91550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91548_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91550_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e91550_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97493
                                (let ()
                                  (declare (not safe))
                                  (cons _e91550_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp97493)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91548_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn91548_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97492
                              (let ()
                                (declare (not safe))
                                (cons _exn91548_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp97492)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn91542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91542_))
            (let ((_e91545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91542_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e91545_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e91545_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp97495
                                (let ()
                                  (declare (not safe))
                                  (cons _e91545_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp97495)))))
            (if (macro-wrong-number-of-arguments-exception? _exn91542_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn91542_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp97494
                              (let ()
                                (declare (not safe))
                                (cons _exn91542_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp97494)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn91538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91538_))
            (let ((_e91540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91538_ 'exception))))
              (macro-wrong-number-of-values-exception? _e91540_))
            (macro-wrong-number-of-values-exception? _exn91538_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn91534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91534_))
            (let ((_e91536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91534_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91536_)
                  (macro-wrong-number-of-values-exception-code _e91536_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97497
                                (let ()
                                  (declare (not safe))
                                  (cons _e91536_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp97497)))))
            (if (macro-wrong-number-of-values-exception? _exn91534_)
                (macro-wrong-number-of-values-exception-code _exn91534_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97496
                              (let ()
                                (declare (not safe))
                                (cons _exn91534_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp97496)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn91530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91530_))
            (let ((_e91532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91530_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91532_)
                  (macro-wrong-number-of-values-exception-rte _e91532_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97499
                                (let ()
                                  (declare (not safe))
                                  (cons _e91532_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp97499)))))
            (if (macro-wrong-number-of-values-exception? _exn91530_)
                (macro-wrong-number-of-values-exception-rte _exn91530_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97498
                              (let ()
                                (declare (not safe))
                                (cons _exn91530_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp97498)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn91524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91524_))
            (let ((_e91527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91524_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e91527_)
                  (macro-wrong-number-of-values-exception-vals _e91527_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp97501
                                (let ()
                                  (declare (not safe))
                                  (cons _e91527_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp97501)))))
            (if (macro-wrong-number-of-values-exception? _exn91524_)
                (macro-wrong-number-of-values-exception-vals _exn91524_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp97500
                              (let ()
                                (declare (not safe))
                                (cons _exn91524_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp97500)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn91518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91518_))
            (let ((_e91521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91518_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e91521_))
            (macro-wrong-processor-c-return-exception? _exn91518_))))))
