(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1701931848)
  (begin
    (define Exception::t
      (let ()
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         '()
         '()
         'Exception
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args12482_
        (apply make-class-instance Exception::t _$args12482_)))
    (define StackTrace::t
      (let ()
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         '()
         '(continuation)
         'StackTrace
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args12479_
        (apply make-class-instance StackTrace::t _$args12479_)))
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
      (let ((__tmp12502
             (let ((__tmp12503
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12503))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp12502
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args12476_ (apply make-class-instance Error::t _$args12476_)))
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
    (define RuntimeException::t
      (let ((__tmp12504
             (let ((__tmp12505
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp12505))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp12504
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args12473_
        (apply make-class-instance RuntimeException::t _$args12473_)))
    (define RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-accessor RuntimeException::t 'exception)))
    (define RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator RuntimeException::t 'exception)))
    (define &RuntimeException-exception
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor RuntimeException::t 'exception)))
    (define &RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator RuntimeException::t 'exception)))
    (define gerbil-exception-handler-hook
      (lambda (_exn12468_ _continue12469_)
        (let ((_exn12471_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn12468_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn12471_ _continue12469_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn12464_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn12464_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn12464_ 'continuation))
                '#!void
                (let ((__tmp12506
                       (lambda (_cont12466_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn12464_
                            'continuation
                            _cont12466_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp12506)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn12464_))))
    (define error
      (lambda (_message12461_ . _irritants12462_)
        (raise (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message12461_
                  'irritants:
                  _irritants12462_)))))
    (define with-exception-handler
      (lambda (_handler12454_ _thunk12455_)
        (if (let () (declare (not safe)) (procedure? _handler12454_))
            '#!void
            (raise (let ((__tmp12507
                          (let ()
                            (declare (not safe))
                            (cons _handler12454_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12507))))
        (if (let () (declare (not safe)) (procedure? _thunk12455_))
            '#!void
            (raise (let ((__tmp12508
                          (let ()
                            (declare (not safe))
                            (cons _thunk12455_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12508))))
        (let ((__tmp12509
               (lambda (_exn12457_)
                 (let ((_exn12459_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn12457_))))
                   (_handler12454_ _exn12459_)))))
          (declare (not safe))
          (##with-exception-handler __tmp12509 _thunk12455_))))
    (define with-catch
      (lambda (_handler12447_ _thunk12448_)
        (if (let () (declare (not safe)) (procedure? _handler12447_))
            '#!void
            (raise (let ((__tmp12510
                          (let ()
                            (declare (not safe))
                            (cons _handler12447_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp12510))))
        (if (let () (declare (not safe)) (procedure? _thunk12448_))
            '#!void
            (raise (let ((__tmp12511
                          (let ()
                            (declare (not safe))
                            (cons _thunk12448_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp12511))))
        (let ((__tmp12512
               (lambda (_cont12450_)
                 (with-exception-handler
                  (lambda (_exn12452_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont12450_
                       _handler12447_
                       _exn12452_)))
                  _thunk12448_))))
          (declare (not safe))
          (##continuation-capture __tmp12512))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn12438_)
        (if (or (heap-overflow-exception? _exn12438_)
                (stack-overflow-exception? _exn12438_))
            _exn12438_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn12438_))
                _exn12438_
                (if (macro-exception? _exn12438_)
                    (let ((_rte12443_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn12438_))))
                      (let ((__tmp12513
                             (lambda (_cont12445_)
                               (let ((__tmp12514
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont12445_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte12443_
                                  'continuation
                                  __tmp12514)))))
                        (declare (not safe))
                        (##continuation-capture __tmp12513))
                      _rte12443_)
                    _exn12438_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj12433_)
        (let ((_$e12435_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj12433_))))
          (if _$e12435_ _$e12435_ (error-exception? _obj12433_)))))
    (define error-message
      (lambda (_obj12431_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12431_))
            (let () (declare (not safe)) (slot-ref _obj12431_ 'message))
            (if (error-exception? _obj12431_)
                (error-exception-message _obj12431_)
                '#f))))
    (define error-irritants
      (lambda (_obj12429_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12429_))
            (let () (declare (not safe)) (slot-ref _obj12429_ 'irritants))
            (if (error-exception? _obj12429_)
                (error-exception-parameters _obj12429_)
                '#f))))
    (define error-trace
      (lambda (_obj12427_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj12427_))
            (let () (declare (not safe)) (slot-ref _obj12427_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e12409_ _port12410_)
        (let ((_$e12412_
               (let ()
                 (declare (not safe))
                 (method-ref _e12409_ 'display-exception))))
          (if _$e12412_
              ((lambda (_f12415_) (_f12415_ _e12409_ _port12410_)) _$e12412_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e12409_ _port12410_))))))
    (define display-exception__0
      (lambda (_e12420_)
        (let ((_port12422_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e12420_ _port12422_))))
    (define display-exception
      (lambda _g12516_
        (let ((_g12515_ (let () (declare (not safe)) (##length _g12516_))))
          (cond ((let () (declare (not safe)) (##fx= _g12515_ 1))
                 (apply (lambda (_e12420_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e12420_)))
                        _g12516_))
                ((let () (declare (not safe)) (##fx= _g12515_ 2))
                 (apply (lambda (_e12424_ _port12425_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e12424_ _port12425_)))
                        _g12516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g12516_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self12398_ _message12399_ . _rest12400_)
        (let ((_message12406_
               (if (let () (declare (not safe)) (string? _message12399_))
                   _message12399_
                   (call-with-output-string
                    '""
                    (lambda (_g1240112403_)
                      (display _message12399_ _g1240112403_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self12398_ 'message _message12406_))
          (apply class-instance-init! _self12398_ _rest12400_))))
    (define Error:::init!::specialize
      (lambda (__t12484)
        (let ((__message12485
               (let ((__tmp12486
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12484 'message))))
                 (if __tmp12486
                     (let () (declare (not safe)) (##fx+ __tmp12486 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self12398_ _message12399_ . _rest12400_)
            (let ((_message12406_
                   (if (let () (declare (not safe)) (string? _message12399_))
                       _message12399_
                       (call-with-output-string
                        '""
                        (lambda (_g1240112403_)
                          (display _message12399_ _g1240112403_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self12398_
                 _message12406_
                 __message12485
                 __t12484
                 '#f))
              (apply class-instance-init! _self12398_ _rest12400_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self12256_ _port12257_)
        (let ((_tmp-port12259_ (open-output-string))
              (_display-error-newline12260_
               (> (output-port-column _port12257_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12259_))
          (let ((__tmp12517
                 (lambda ()
                   (if _display-error-newline12260_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e12263_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12256_ 'where))))
                     (if _$e12263_ (display _$e12263_) (display '"?")))
                   (let ((__tmp12518
                          (let ((__tmp12519
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self12256_))))
                            (declare (not safe))
                            (##type-name __tmp12519))))
                     (declare (not safe))
                     (display* '" [" __tmp12518 '"]: "))
                   (let ((__tmp12520
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12256_ 'message))))
                     (declare (not safe))
                     (displayln __tmp12520))
                   (let ((_irritants12266_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self12256_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants12266_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj12268_)
                              (write _obj12268_)
                              (write-char '#\space))
                            _irritants12266_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self12256_))
                            (dump-stack-trace?))
                       (let ((_cont1226912271_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self12256_ 'continuation))))
                         (if _cont1226912271_
                             (let ((_cont12274_ _cont1226912271_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont12274_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp12517
             current-output-port
             _tmp-port12259_))
          (let ((__tmp12521 (get-output-string _tmp-port12259_)))
            (declare (not safe))
            (##write-string __tmp12521 _port12257_)))))
    (define Error::display-exception::specialize
      (lambda (__t12487)
        (let ((__continuation12488
               (let ((__tmp12492
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12487 'continuation))))
                 (if __tmp12492
                     (let () (declare (not safe)) (##fx+ __tmp12492 '1))
                     (error '"Unknown slot" 'continuation))))
              (__where12489
               (let ((__tmp12493
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12487 'where))))
                 (if __tmp12493
                     (let () (declare (not safe)) (##fx+ __tmp12493 '1))
                     (error '"Unknown slot" 'where))))
              (__irritants12490
               (let ((__tmp12494
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12487 'irritants))))
                 (if __tmp12494
                     (let () (declare (not safe)) (##fx+ __tmp12494 '1))
                     (error '"Unknown slot" 'irritants))))
              (__message12491
               (let ((__tmp12495
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12487 'message))))
                 (if __tmp12495
                     (let () (declare (not safe)) (##fx+ __tmp12495 '1))
                     (error '"Unknown slot" 'message))))
              (__class12496
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t12487))))
          (lambda (_self12256_ _port12257_)
            (let ((_tmp-port12259_ (open-output-string))
                  (_display-error-newline12260_
                   (> (output-port-column _port12257_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12259_))
              (let ((__tmp12522
                     (lambda ()
                       (if _display-error-newline12260_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e12263_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12256_
                                 __where12489
                                 __t12487
                                 '#f))))
                         (if _$e12263_ (display _$e12263_) (display '"?")))
                       (let ((__tmp12523
                              (let ((__tmp12524
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self12256_))))
                                (declare (not safe))
                                (##type-name __tmp12524))))
                         (declare (not safe))
                         (display* '" [" __tmp12523 '"]: "))
                       (let ((__tmp12525
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12256_
                                 __message12491
                                 __t12487
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp12525))
                       (let ((_irritants12266_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self12256_
                                 __irritants12490
                                 __t12487
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants12266_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj12268_)
                                  (write _obj12268_)
                                  (write-char '#\space))
                                _irritants12266_)
                               (newline))))
                       (if (and __class12496 (dump-stack-trace?))
                           (let ((_cont1226912271_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self12256_
                                     __continuation12488
                                     __t12487
                                     '#f))))
                             (if _cont1226912271_
                                 (let ((_cont12274_ _cont1226912271_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont12274_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp12522
                 current-output-port
                 _tmp-port12259_))
              (let ((__tmp12526 (get-output-string _tmp-port12259_)))
                (declare (not safe))
                (##write-string __tmp12526 _port12257_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self12123_ _port12124_)
        (let ((_tmp-port12126_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port12126_))
          (let ((__tmp12527
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12123_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp12527 _tmp-port12126_))
          (let ((_cont1212712129_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self12123_ 'continuation))))
            (if _cont1212712129_
                (let ((_cont12132_ _cont1212712129_))
                  (display '"--- continuation backtrace:" _tmp-port12126_)
                  (newline _tmp-port12126_)
                  (display-continuation-backtrace _cont12132_ _tmp-port12126_))
                '#f))
          (let ((__tmp12528 (get-output-string _tmp-port12126_)))
            (declare (not safe))
            (##write-string __tmp12528 _port12124_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t12497)
        (let ((__exception12498
               (let ((__tmp12500
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12497 'exception))))
                 (if __tmp12500
                     (let () (declare (not safe)) (##fx+ __tmp12500 '1))
                     (error '"Unknown slot" 'exception))))
              (__continuation12499
               (let ((__tmp12501
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t12497 'continuation))))
                 (if __tmp12501
                     (let () (declare (not safe)) (##fx+ __tmp12501 '1))
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self12123_ _port12124_)
            (let ((_tmp-port12126_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port12126_))
              (let ((__tmp12529
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12123_
                        __exception12498
                        __t12497
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp12529 _tmp-port12126_))
              (let ((_cont1212712129_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self12123_
                        __continuation12499
                        __t12497
                        '#f))))
                (if _cont1212712129_
                    (let ((_cont12132_ _cont1212712129_))
                      (display '"--- continuation backtrace:" _tmp-port12126_)
                      (newline _tmp-port12126_)
                      (display-continuation-backtrace
                       _cont12132_
                       _tmp-port12126_))
                    '#f))
              (let ((__tmp12530 (get-output-string _tmp-port12126_)))
                (declare (not safe))
                (##write-string __tmp12530 _port12124_)))))))
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
      (lambda (_port11995_)
        (if (macro-character-port? _port11995_)
            (let ((_old-width11997_
                   (macro-character-port-output-width _port11995_)))
              (macro-character-port-output-width-set!
               _port11995_
               (lambda (_port11999_) '256))
              _old-width11997_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11992_ _old-width11993_)
        (if (macro-character-port? _port11992_)
            (macro-character-port-output-width-set!
             _port11992_
             _old-width11993_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11990_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e11990_))))
    (define abandoned-mutex-exception?
      (lambda (_exn11984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11984_))
            (let ((_e11987_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11984_ 'exception))))
              (macro-abandoned-mutex-exception? _e11987_))
            (macro-abandoned-mutex-exception? _exn11984_))))
    (define cfun-conversion-exception?
      (lambda (_exn11980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11980_))
            (let ((_e11982_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11980_ 'exception))))
              (macro-cfun-conversion-exception? _e11982_))
            (macro-cfun-conversion-exception? _exn11980_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11976_))
            (let ((_e11978_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11976_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11978_)
                  (macro-cfun-conversion-exception-arguments _e11978_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12532
                                (let ()
                                  (declare (not safe))
                                  (cons _e11978_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp12532)))))
            (if (macro-cfun-conversion-exception? _exn11976_)
                (macro-cfun-conversion-exception-arguments _exn11976_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12531
                              (let ()
                                (declare (not safe))
                                (cons _exn11976_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp12531)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11972_))
            (let ((_e11974_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11972_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11974_)
                  (macro-cfun-conversion-exception-code _e11974_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12534
                                (let ()
                                  (declare (not safe))
                                  (cons _e11974_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp12534)))))
            (if (macro-cfun-conversion-exception? _exn11972_)
                (macro-cfun-conversion-exception-code _exn11972_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12533
                              (let ()
                                (declare (not safe))
                                (cons _exn11972_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp12533)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11968_))
            (let ((_e11970_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11968_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11970_)
                  (macro-cfun-conversion-exception-message _e11970_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12536
                                (let ()
                                  (declare (not safe))
                                  (cons _e11970_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp12536)))))
            (if (macro-cfun-conversion-exception? _exn11968_)
                (macro-cfun-conversion-exception-message _exn11968_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12535
                              (let ()
                                (declare (not safe))
                                (cons _exn11968_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp12535)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11962_))
            (let ((_e11965_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11962_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11965_)
                  (macro-cfun-conversion-exception-procedure _e11965_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp12538
                                (let ()
                                  (declare (not safe))
                                  (cons _e11965_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp12538)))))
            (if (macro-cfun-conversion-exception? _exn11962_)
                (macro-cfun-conversion-exception-procedure _exn11962_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp12537
                              (let ()
                                (declare (not safe))
                                (cons _exn11962_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp12537)))))))
    (define datum-parsing-exception?
      (lambda (_exn11958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11958_))
            (let ((_e11960_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11958_ 'exception))))
              (macro-datum-parsing-exception? _e11960_))
            (macro-datum-parsing-exception? _exn11958_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11954_))
            (let ((_e11956_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11954_ 'exception))))
              (if (macro-datum-parsing-exception? _e11956_)
                  (macro-datum-parsing-exception-kind _e11956_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12540
                                (let ()
                                  (declare (not safe))
                                  (cons _e11956_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp12540)))))
            (if (macro-datum-parsing-exception? _exn11954_)
                (macro-datum-parsing-exception-kind _exn11954_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12539
                              (let ()
                                (declare (not safe))
                                (cons _exn11954_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp12539)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11950_))
            (let ((_e11952_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11950_ 'exception))))
              (if (macro-datum-parsing-exception? _e11952_)
                  (macro-datum-parsing-exception-parameters _e11952_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12542
                                (let ()
                                  (declare (not safe))
                                  (cons _e11952_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp12542)))))
            (if (macro-datum-parsing-exception? _exn11950_)
                (macro-datum-parsing-exception-parameters _exn11950_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12541
                              (let ()
                                (declare (not safe))
                                (cons _exn11950_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp12541)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11944_))
            (let ((_e11947_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11944_ 'exception))))
              (if (macro-datum-parsing-exception? _e11947_)
                  (macro-datum-parsing-exception-readenv _e11947_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp12544
                                (let ()
                                  (declare (not safe))
                                  (cons _e11947_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp12544)))))
            (if (macro-datum-parsing-exception? _exn11944_)
                (macro-datum-parsing-exception-readenv _exn11944_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp12543
                              (let ()
                                (declare (not safe))
                                (cons _exn11944_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp12543)))))))
    (define deadlock-exception?
      (lambda (_exn11938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11938_))
            (let ((_e11941_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11938_ 'exception))))
              (macro-deadlock-exception? _e11941_))
            (macro-deadlock-exception? _exn11938_))))
    (define divide-by-zero-exception?
      (lambda (_exn11934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11934_))
            (let ((_e11936_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11934_ 'exception))))
              (macro-divide-by-zero-exception? _e11936_))
            (macro-divide-by-zero-exception? _exn11934_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11930_))
            (let ((_e11932_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11930_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11932_)
                  (macro-divide-by-zero-exception-arguments _e11932_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12546
                                (let ()
                                  (declare (not safe))
                                  (cons _e11932_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp12546)))))
            (if (macro-divide-by-zero-exception? _exn11930_)
                (macro-divide-by-zero-exception-arguments _exn11930_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12545
                              (let ()
                                (declare (not safe))
                                (cons _exn11930_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp12545)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11924_))
            (let ((_e11927_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11924_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11927_)
                  (macro-divide-by-zero-exception-procedure _e11927_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp12548
                                (let ()
                                  (declare (not safe))
                                  (cons _e11927_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp12548)))))
            (if (macro-divide-by-zero-exception? _exn11924_)
                (macro-divide-by-zero-exception-procedure _exn11924_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp12547
                              (let ()
                                (declare (not safe))
                                (cons _exn11924_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp12547)))))))
    (define error-exception?
      (lambda (_exn11920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11920_))
            (let ((_e11922_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11920_ 'exception))))
              (macro-error-exception? _e11922_))
            (macro-error-exception? _exn11920_))))
    (define error-exception-message
      (lambda (_exn11916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11916_))
            (let ((_e11918_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11916_ 'exception))))
              (if (macro-error-exception? _e11918_)
                  (macro-error-exception-message _e11918_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12550
                                (let ()
                                  (declare (not safe))
                                  (cons _e11918_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp12550)))))
            (if (macro-error-exception? _exn11916_)
                (macro-error-exception-message _exn11916_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12549
                              (let ()
                                (declare (not safe))
                                (cons _exn11916_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp12549)))))))
    (define error-exception-parameters
      (lambda (_exn11910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11910_))
            (let ((_e11913_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11910_ 'exception))))
              (if (macro-error-exception? _e11913_)
                  (macro-error-exception-parameters _e11913_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp12552
                                (let ()
                                  (declare (not safe))
                                  (cons _e11913_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp12552)))))
            (if (macro-error-exception? _exn11910_)
                (macro-error-exception-parameters _exn11910_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp12551
                              (let ()
                                (declare (not safe))
                                (cons _exn11910_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp12551)))))))
    (define expression-parsing-exception?
      (lambda (_exn11906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11906_))
            (let ((_e11908_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11906_ 'exception))))
              (macro-expression-parsing-exception? _e11908_))
            (macro-expression-parsing-exception? _exn11906_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11902_))
            (let ((_e11904_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11902_ 'exception))))
              (if (macro-expression-parsing-exception? _e11904_)
                  (macro-expression-parsing-exception-kind _e11904_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12554
                                (let ()
                                  (declare (not safe))
                                  (cons _e11904_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp12554)))))
            (if (macro-expression-parsing-exception? _exn11902_)
                (macro-expression-parsing-exception-kind _exn11902_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12553
                              (let ()
                                (declare (not safe))
                                (cons _exn11902_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp12553)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11898_))
            (let ((_e11900_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11898_ 'exception))))
              (if (macro-expression-parsing-exception? _e11900_)
                  (macro-expression-parsing-exception-parameters _e11900_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12556
                                (let ()
                                  (declare (not safe))
                                  (cons _e11900_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp12556)))))
            (if (macro-expression-parsing-exception? _exn11898_)
                (macro-expression-parsing-exception-parameters _exn11898_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12555
                              (let ()
                                (declare (not safe))
                                (cons _exn11898_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp12555)))))))
    (define expression-parsing-exception-source
      (lambda (_exn11892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11892_))
            (let ((_e11895_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11892_ 'exception))))
              (if (macro-expression-parsing-exception? _e11895_)
                  (macro-expression-parsing-exception-source _e11895_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp12558
                                (let ()
                                  (declare (not safe))
                                  (cons _e11895_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp12558)))))
            (if (macro-expression-parsing-exception? _exn11892_)
                (macro-expression-parsing-exception-source _exn11892_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp12557
                              (let ()
                                (declare (not safe))
                                (cons _exn11892_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp12557)))))))
    (define file-exists-exception?
      (lambda (_exn11888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11888_))
            (let ((_e11890_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11888_ 'exception))))
              (macro-file-exists-exception? _e11890_))
            (macro-file-exists-exception? _exn11888_))))
    (define file-exists-exception-arguments
      (lambda (_exn11884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11884_))
            (let ((_e11886_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11884_ 'exception))))
              (if (macro-file-exists-exception? _e11886_)
                  (macro-file-exists-exception-arguments _e11886_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12560
                                (let ()
                                  (declare (not safe))
                                  (cons _e11886_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp12560)))))
            (if (macro-file-exists-exception? _exn11884_)
                (macro-file-exists-exception-arguments _exn11884_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12559
                              (let ()
                                (declare (not safe))
                                (cons _exn11884_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp12559)))))))
    (define file-exists-exception-procedure
      (lambda (_exn11878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11878_))
            (let ((_e11881_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11878_ 'exception))))
              (if (macro-file-exists-exception? _e11881_)
                  (macro-file-exists-exception-procedure _e11881_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp12562
                                (let ()
                                  (declare (not safe))
                                  (cons _e11881_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp12562)))))
            (if (macro-file-exists-exception? _exn11878_)
                (macro-file-exists-exception-procedure _exn11878_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp12561
                              (let ()
                                (declare (not safe))
                                (cons _exn11878_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp12561)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11874_))
            (let ((_e11876_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11874_ 'exception))))
              (macro-fixnum-overflow-exception? _e11876_))
            (macro-fixnum-overflow-exception? _exn11874_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11870_))
            (let ((_e11872_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11870_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11872_)
                  (macro-fixnum-overflow-exception-arguments _e11872_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12564
                                (let ()
                                  (declare (not safe))
                                  (cons _e11872_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12564)))))
            (if (macro-fixnum-overflow-exception? _exn11870_)
                (macro-fixnum-overflow-exception-arguments _exn11870_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12563
                              (let ()
                                (declare (not safe))
                                (cons _exn11870_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp12563)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11864_))
            (let ((_e11867_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11864_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11867_)
                  (macro-fixnum-overflow-exception-procedure _e11867_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp12566
                                (let ()
                                  (declare (not safe))
                                  (cons _e11867_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12566)))))
            (if (macro-fixnum-overflow-exception? _exn11864_)
                (macro-fixnum-overflow-exception-procedure _exn11864_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp12565
                              (let ()
                                (declare (not safe))
                                (cons _exn11864_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12565)))))))
    (define heap-overflow-exception?
      (lambda (_exn11858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11858_))
            (let ((_e11861_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11858_ 'exception))))
              (macro-heap-overflow-exception? _e11861_))
            (macro-heap-overflow-exception? _exn11858_))))
    (define inactive-thread-exception?
      (lambda (_exn11854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11854_))
            (let ((_e11856_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11854_ 'exception))))
              (macro-inactive-thread-exception? _e11856_))
            (macro-inactive-thread-exception? _exn11854_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11850_))
            (let ((_e11852_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11850_ 'exception))))
              (if (macro-inactive-thread-exception? _e11852_)
                  (macro-inactive-thread-exception-arguments _e11852_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12568
                                (let ()
                                  (declare (not safe))
                                  (cons _e11852_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12568)))))
            (if (macro-inactive-thread-exception? _exn11850_)
                (macro-inactive-thread-exception-arguments _exn11850_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12567
                              (let ()
                                (declare (not safe))
                                (cons _exn11850_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12567)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11844_))
            (let ((_e11847_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11844_ 'exception))))
              (if (macro-inactive-thread-exception? _e11847_)
                  (macro-inactive-thread-exception-procedure _e11847_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp12570
                                (let ()
                                  (declare (not safe))
                                  (cons _e11847_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12570)))))
            (if (macro-inactive-thread-exception? _exn11844_)
                (macro-inactive-thread-exception-procedure _exn11844_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp12569
                              (let ()
                                (declare (not safe))
                                (cons _exn11844_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12569)))))))
    (define initialized-thread-exception?
      (lambda (_exn11840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11840_))
            (let ((_e11842_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11840_ 'exception))))
              (macro-initialized-thread-exception? _e11842_))
            (macro-initialized-thread-exception? _exn11840_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11836_))
            (let ((_e11838_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11836_ 'exception))))
              (if (macro-initialized-thread-exception? _e11838_)
                  (macro-initialized-thread-exception-arguments _e11838_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12572
                                (let ()
                                  (declare (not safe))
                                  (cons _e11838_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12572)))))
            (if (macro-initialized-thread-exception? _exn11836_)
                (macro-initialized-thread-exception-arguments _exn11836_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12571
                              (let ()
                                (declare (not safe))
                                (cons _exn11836_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12571)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11830_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11830_))
            (let ((_e11833_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11830_ 'exception))))
              (if (macro-initialized-thread-exception? _e11833_)
                  (macro-initialized-thread-exception-procedure _e11833_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp12574
                                (let ()
                                  (declare (not safe))
                                  (cons _e11833_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12574)))))
            (if (macro-initialized-thread-exception? _exn11830_)
                (macro-initialized-thread-exception-procedure _exn11830_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp12573
                              (let ()
                                (declare (not safe))
                                (cons _exn11830_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12573)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11826_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11826_))
            (let ((_e11828_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11826_ 'exception))))
              (macro-invalid-hash-number-exception? _e11828_))
            (macro-invalid-hash-number-exception? _exn11826_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11822_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11822_))
            (let ((_e11824_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11822_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11824_)
                  (macro-invalid-hash-number-exception-arguments _e11824_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12576
                                (let ()
                                  (declare (not safe))
                                  (cons _e11824_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12576)))))
            (if (macro-invalid-hash-number-exception? _exn11822_)
                (macro-invalid-hash-number-exception-arguments _exn11822_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12575
                              (let ()
                                (declare (not safe))
                                (cons _exn11822_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12575)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11816_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11816_))
            (let ((_e11819_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11816_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11819_)
                  (macro-invalid-hash-number-exception-procedure _e11819_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp12578
                                (let ()
                                  (declare (not safe))
                                  (cons _e11819_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12578)))))
            (if (macro-invalid-hash-number-exception? _exn11816_)
                (macro-invalid-hash-number-exception-procedure _exn11816_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp12577
                              (let ()
                                (declare (not safe))
                                (cons _exn11816_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12577)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11812_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11812_))
            (let ((_e11814_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11812_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11814_))
            (macro-invalid-utf8-encoding-exception? _exn11812_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11808_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11808_))
            (let ((_e11810_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11808_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11810_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11810_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12580
                                (let ()
                                  (declare (not safe))
                                  (cons _e11810_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12580)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11808_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11808_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12579
                              (let ()
                                (declare (not safe))
                                (cons _exn11808_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12579)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11802_))
            (let ((_e11805_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11802_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11805_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11805_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp12582
                                (let ()
                                  (declare (not safe))
                                  (cons _e11805_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12582)))))
            (if (macro-invalid-utf8-encoding-exception? _exn11802_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11802_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp12581
                              (let ()
                                (declare (not safe))
                                (cons _exn11802_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12581)))))))
    (define join-timeout-exception?
      (lambda (_exn11798_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11798_))
            (let ((_e11800_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11798_ 'exception))))
              (macro-join-timeout-exception? _e11800_))
            (macro-join-timeout-exception? _exn11798_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11794_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11794_))
            (let ((_e11796_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11794_ 'exception))))
              (if (macro-join-timeout-exception? _e11796_)
                  (macro-join-timeout-exception-arguments _e11796_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12584
                                (let ()
                                  (declare (not safe))
                                  (cons _e11796_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12584)))))
            (if (macro-join-timeout-exception? _exn11794_)
                (macro-join-timeout-exception-arguments _exn11794_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12583
                              (let ()
                                (declare (not safe))
                                (cons _exn11794_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp12583)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11788_))
            (let ((_e11791_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11788_ 'exception))))
              (if (macro-join-timeout-exception? _e11791_)
                  (macro-join-timeout-exception-procedure _e11791_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp12586
                                (let ()
                                  (declare (not safe))
                                  (cons _e11791_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12586)))))
            (if (macro-join-timeout-exception? _exn11788_)
                (macro-join-timeout-exception-procedure _exn11788_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp12585
                              (let ()
                                (declare (not safe))
                                (cons _exn11788_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp12585)))))))
    (define keyword-expected-exception?
      (lambda (_exn11784_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11784_))
            (let ((_e11786_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11784_ 'exception))))
              (macro-keyword-expected-exception? _e11786_))
            (macro-keyword-expected-exception? _exn11784_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11780_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11780_))
            (let ((_e11782_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11780_ 'exception))))
              (if (macro-keyword-expected-exception? _e11782_)
                  (macro-keyword-expected-exception-arguments _e11782_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12588
                                (let ()
                                  (declare (not safe))
                                  (cons _e11782_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12588)))))
            (if (macro-keyword-expected-exception? _exn11780_)
                (macro-keyword-expected-exception-arguments _exn11780_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12587
                              (let ()
                                (declare (not safe))
                                (cons _exn11780_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12587)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11774_))
            (let ((_e11777_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11774_ 'exception))))
              (if (macro-keyword-expected-exception? _e11777_)
                  (macro-keyword-expected-exception-procedure _e11777_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp12590
                                (let ()
                                  (declare (not safe))
                                  (cons _e11777_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12590)))))
            (if (macro-keyword-expected-exception? _exn11774_)
                (macro-keyword-expected-exception-procedure _exn11774_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp12589
                              (let ()
                                (declare (not safe))
                                (cons _exn11774_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12589)))))))
    (define length-mismatch-exception?
      (lambda (_exn11770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11770_))
            (let ((_e11772_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11770_ 'exception))))
              (macro-length-mismatch-exception? _e11772_))
            (macro-length-mismatch-exception? _exn11770_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11766_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11766_))
            (let ((_e11768_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11766_ 'exception))))
              (if (macro-length-mismatch-exception? _e11768_)
                  (macro-length-mismatch-exception-arg-id _e11768_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12592
                                (let ()
                                  (declare (not safe))
                                  (cons _e11768_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12592)))))
            (if (macro-length-mismatch-exception? _exn11766_)
                (macro-length-mismatch-exception-arg-id _exn11766_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12591
                              (let ()
                                (declare (not safe))
                                (cons _exn11766_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp12591)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11762_))
            (let ((_e11764_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11762_ 'exception))))
              (if (macro-length-mismatch-exception? _e11764_)
                  (macro-length-mismatch-exception-arguments _e11764_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12594
                                (let ()
                                  (declare (not safe))
                                  (cons _e11764_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12594)))))
            (if (macro-length-mismatch-exception? _exn11762_)
                (macro-length-mismatch-exception-arguments _exn11762_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12593
                              (let ()
                                (declare (not safe))
                                (cons _exn11762_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12593)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11756_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11756_))
            (let ((_e11759_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11756_ 'exception))))
              (if (macro-length-mismatch-exception? _e11759_)
                  (macro-length-mismatch-exception-procedure _e11759_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp12596
                                (let ()
                                  (declare (not safe))
                                  (cons _e11759_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12596)))))
            (if (macro-length-mismatch-exception? _exn11756_)
                (macro-length-mismatch-exception-procedure _exn11756_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp12595
                              (let ()
                                (declare (not safe))
                                (cons _exn11756_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12595)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11752_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11752_))
            (let ((_e11754_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11752_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11754_))
            (macro-mailbox-receive-timeout-exception? _exn11752_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11748_))
            (let ((_e11750_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11748_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11750_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11750_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12598
                                (let ()
                                  (declare (not safe))
                                  (cons _e11750_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12598)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11748_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11748_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12597
                              (let ()
                                (declare (not safe))
                                (cons _exn11748_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12597)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11742_))
            (let ((_e11745_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11742_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11745_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11745_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp12600
                                (let ()
                                  (declare (not safe))
                                  (cons _e11745_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12600)))))
            (if (macro-mailbox-receive-timeout-exception? _exn11742_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11742_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp12599
                              (let ()
                                (declare (not safe))
                                (cons _exn11742_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12599)))))))
    (define module-not-found-exception?
      (lambda (_exn11738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11738_))
            (let ((_e11740_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11738_ 'exception))))
              (macro-module-not-found-exception? _e11740_))
            (macro-module-not-found-exception? _exn11738_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11734_))
            (let ((_e11736_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11734_ 'exception))))
              (if (macro-module-not-found-exception? _e11736_)
                  (macro-module-not-found-exception-arguments _e11736_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12602
                                (let ()
                                  (declare (not safe))
                                  (cons _e11736_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12602)))))
            (if (macro-module-not-found-exception? _exn11734_)
                (macro-module-not-found-exception-arguments _exn11734_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12601
                              (let ()
                                (declare (not safe))
                                (cons _exn11734_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12601)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11728_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11728_))
            (let ((_e11731_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11728_ 'exception))))
              (if (macro-module-not-found-exception? _e11731_)
                  (macro-module-not-found-exception-procedure _e11731_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp12604
                                (let ()
                                  (declare (not safe))
                                  (cons _e11731_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12604)))))
            (if (macro-module-not-found-exception? _exn11728_)
                (macro-module-not-found-exception-procedure _exn11728_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp12603
                              (let ()
                                (declare (not safe))
                                (cons _exn11728_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12603)))))))
    (define multiple-c-return-exception?
      (lambda (_exn11722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11722_))
            (let ((_e11725_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11722_ 'exception))))
              (macro-multiple-c-return-exception? _e11725_))
            (macro-multiple-c-return-exception? _exn11722_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11718_))
            (let ((_e11720_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11718_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11720_))
            (macro-no-such-file-or-directory-exception? _exn11718_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11714_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11714_))
            (let ((_e11716_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11714_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11716_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11716_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12606
                                (let ()
                                  (declare (not safe))
                                  (cons _e11716_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12606)))))
            (if (macro-no-such-file-or-directory-exception? _exn11714_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11714_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12605
                              (let ()
                                (declare (not safe))
                                (cons _exn11714_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12605)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11708_))
            (let ((_e11711_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11708_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11711_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11711_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp12608
                                (let ()
                                  (declare (not safe))
                                  (cons _e11711_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12608)))))
            (if (macro-no-such-file-or-directory-exception? _exn11708_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11708_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp12607
                              (let ()
                                (declare (not safe))
                                (cons _exn11708_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12607)))))))
    (define noncontinuable-exception?
      (lambda (_exn11704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11704_))
            (let ((_e11706_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11704_ 'exception))))
              (macro-noncontinuable-exception? _e11706_))
            (macro-noncontinuable-exception? _exn11704_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11698_))
            (let ((_e11701_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11698_ 'exception))))
              (if (macro-noncontinuable-exception? _e11701_)
                  (macro-noncontinuable-exception-reason _e11701_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp12610
                                (let ()
                                  (declare (not safe))
                                  (cons _e11701_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12610)))))
            (if (macro-noncontinuable-exception? _exn11698_)
                (macro-noncontinuable-exception-reason _exn11698_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp12609
                              (let ()
                                (declare (not safe))
                                (cons _exn11698_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp12609)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11694_))
            (let ((_e11696_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11694_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11696_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11694_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11690_))
            (let ((_e11692_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11690_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11692_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11692_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12612
                                (let ()
                                  (declare (not safe))
                                  (cons _e11692_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12612)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11690_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11690_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12611
                              (let ()
                                (declare (not safe))
                                (cons _exn11690_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12611)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11684_))
            (let ((_e11687_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11684_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11687_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11687_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp12614
                                (let ()
                                  (declare (not safe))
                                  (cons _e11687_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12614)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11684_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11684_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp12613
                              (let ()
                                (declare (not safe))
                                (cons _exn11684_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12613)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11680_))
            (let ((_e11682_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11680_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11682_))
            (macro-nonprocedure-operator-exception? _exn11680_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11676_))
            (let ((_e11678_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11676_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11678_)
                  (macro-nonprocedure-operator-exception-arguments _e11678_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12616
                                (let ()
                                  (declare (not safe))
                                  (cons _e11678_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12616)))))
            (if (macro-nonprocedure-operator-exception? _exn11676_)
                (macro-nonprocedure-operator-exception-arguments _exn11676_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12615
                              (let ()
                                (declare (not safe))
                                (cons _exn11676_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12615)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11672_))
            (let ((_e11674_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11672_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11674_)
                  (macro-nonprocedure-operator-exception-code _e11674_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12618
                                (let ()
                                  (declare (not safe))
                                  (cons _e11674_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12618)))))
            (if (macro-nonprocedure-operator-exception? _exn11672_)
                (macro-nonprocedure-operator-exception-code _exn11672_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12617
                              (let ()
                                (declare (not safe))
                                (cons _exn11672_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12617)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11668_))
            (let ((_e11670_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11668_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11670_)
                  (macro-nonprocedure-operator-exception-operator _e11670_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12620
                                (let ()
                                  (declare (not safe))
                                  (cons _e11670_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12620)))))
            (if (macro-nonprocedure-operator-exception? _exn11668_)
                (macro-nonprocedure-operator-exception-operator _exn11668_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12619
                              (let ()
                                (declare (not safe))
                                (cons _exn11668_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12619)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11662_))
            (let ((_e11665_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11662_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11665_)
                  (macro-nonprocedure-operator-exception-rte _e11665_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp12622
                                (let ()
                                  (declare (not safe))
                                  (cons _e11665_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12622)))))
            (if (macro-nonprocedure-operator-exception? _exn11662_)
                (macro-nonprocedure-operator-exception-rte _exn11662_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp12621
                              (let ()
                                (declare (not safe))
                                (cons _exn11662_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12621)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11658_))
            (let ((_e11660_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11658_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11660_))
            (macro-not-in-compilation-context-exception? _exn11658_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11654_))
            (let ((_e11656_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11654_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11656_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11656_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12624
                                (let ()
                                  (declare (not safe))
                                  (cons _e11656_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12624)))))
            (if (macro-not-in-compilation-context-exception? _exn11654_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11654_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12623
                              (let ()
                                (declare (not safe))
                                (cons _exn11654_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12623)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11648_))
            (let ((_e11651_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11648_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11651_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11651_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp12626
                                (let ()
                                  (declare (not safe))
                                  (cons _e11651_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12626)))))
            (if (macro-not-in-compilation-context-exception? _exn11648_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11648_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp12625
                              (let ()
                                (declare (not safe))
                                (cons _exn11648_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12625)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11644_))
            (let ((_e11646_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11644_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11646_))
            (macro-number-of-arguments-limit-exception? _exn11644_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11640_))
            (let ((_e11642_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11640_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11642_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11642_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12628
                                (let ()
                                  (declare (not safe))
                                  (cons _e11642_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12628)))))
            (if (macro-number-of-arguments-limit-exception? _exn11640_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11640_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12627
                              (let ()
                                (declare (not safe))
                                (cons _exn11640_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12627)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11634_))
            (let ((_e11637_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11634_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11637_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11637_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp12630
                                (let ()
                                  (declare (not safe))
                                  (cons _e11637_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12630)))))
            (if (macro-number-of-arguments-limit-exception? _exn11634_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11634_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp12629
                              (let ()
                                (declare (not safe))
                                (cons _exn11634_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12629)))))))
    (define os-exception?
      (lambda (_exn11630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11630_))
            (let ((_e11632_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11630_ 'exception))))
              (macro-os-exception? _e11632_))
            (macro-os-exception? _exn11630_))))
    (define os-exception-arguments
      (lambda (_exn11626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11626_))
            (let ((_e11628_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11626_ 'exception))))
              (if (macro-os-exception? _e11628_)
                  (macro-os-exception-arguments _e11628_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12632
                                (let ()
                                  (declare (not safe))
                                  (cons _e11628_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12632)))))
            (if (macro-os-exception? _exn11626_)
                (macro-os-exception-arguments _exn11626_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12631
                              (let ()
                                (declare (not safe))
                                (cons _exn11626_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12631)))))))
    (define os-exception-code
      (lambda (_exn11622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11622_))
            (let ((_e11624_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11622_ 'exception))))
              (if (macro-os-exception? _e11624_)
                  (macro-os-exception-code _e11624_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12634
                                (let ()
                                  (declare (not safe))
                                  (cons _e11624_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12634)))))
            (if (macro-os-exception? _exn11622_)
                (macro-os-exception-code _exn11622_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12633
                              (let ()
                                (declare (not safe))
                                (cons _exn11622_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12633)))))))
    (define os-exception-message
      (lambda (_exn11618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11618_))
            (let ((_e11620_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11618_ 'exception))))
              (if (macro-os-exception? _e11620_)
                  (macro-os-exception-message _e11620_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12636
                                (let ()
                                  (declare (not safe))
                                  (cons _e11620_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12636)))))
            (if (macro-os-exception? _exn11618_)
                (macro-os-exception-message _exn11618_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12635
                              (let ()
                                (declare (not safe))
                                (cons _exn11618_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12635)))))))
    (define os-exception-procedure
      (lambda (_exn11612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11612_))
            (let ((_e11615_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11612_ 'exception))))
              (if (macro-os-exception? _e11615_)
                  (macro-os-exception-procedure _e11615_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp12638
                                (let ()
                                  (declare (not safe))
                                  (cons _e11615_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12638)))))
            (if (macro-os-exception? _exn11612_)
                (macro-os-exception-procedure _exn11612_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp12637
                              (let ()
                                (declare (not safe))
                                (cons _exn11612_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12637)))))))
    (define permission-denied-exception?
      (lambda (_exn11608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11608_))
            (let ((_e11610_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11608_ 'exception))))
              (macro-permission-denied-exception? _e11610_))
            (macro-permission-denied-exception? _exn11608_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11604_))
            (let ((_e11606_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11604_ 'exception))))
              (if (macro-permission-denied-exception? _e11606_)
                  (macro-permission-denied-exception-arguments _e11606_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12640
                                (let ()
                                  (declare (not safe))
                                  (cons _e11606_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12640)))))
            (if (macro-permission-denied-exception? _exn11604_)
                (macro-permission-denied-exception-arguments _exn11604_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12639
                              (let ()
                                (declare (not safe))
                                (cons _exn11604_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12639)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn11598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11598_))
            (let ((_e11601_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11598_ 'exception))))
              (if (macro-permission-denied-exception? _e11601_)
                  (macro-permission-denied-exception-procedure _e11601_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp12642
                                (let ()
                                  (declare (not safe))
                                  (cons _e11601_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12642)))))
            (if (macro-permission-denied-exception? _exn11598_)
                (macro-permission-denied-exception-procedure _exn11598_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp12641
                              (let ()
                                (declare (not safe))
                                (cons _exn11598_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12641)))))))
    (define range-exception?
      (lambda (_exn11594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11594_))
            (let ((_e11596_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11594_ 'exception))))
              (macro-range-exception? _e11596_))
            (macro-range-exception? _exn11594_))))
    (define range-exception-arg-id
      (lambda (_exn11590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11590_))
            (let ((_e11592_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11590_ 'exception))))
              (if (macro-range-exception? _e11592_)
                  (macro-range-exception-arg-id _e11592_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12644
                                (let ()
                                  (declare (not safe))
                                  (cons _e11592_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12644)))))
            (if (macro-range-exception? _exn11590_)
                (macro-range-exception-arg-id _exn11590_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12643
                              (let ()
                                (declare (not safe))
                                (cons _exn11590_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12643)))))))
    (define range-exception-arguments
      (lambda (_exn11586_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11586_))
            (let ((_e11588_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11586_ 'exception))))
              (if (macro-range-exception? _e11588_)
                  (macro-range-exception-arguments _e11588_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12646
                                (let ()
                                  (declare (not safe))
                                  (cons _e11588_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12646)))))
            (if (macro-range-exception? _exn11586_)
                (macro-range-exception-arguments _exn11586_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12645
                              (let ()
                                (declare (not safe))
                                (cons _exn11586_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12645)))))))
    (define range-exception-procedure
      (lambda (_exn11580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11580_))
            (let ((_e11583_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11580_ 'exception))))
              (if (macro-range-exception? _e11583_)
                  (macro-range-exception-procedure _e11583_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp12648
                                (let ()
                                  (declare (not safe))
                                  (cons _e11583_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12648)))))
            (if (macro-range-exception? _exn11580_)
                (macro-range-exception-procedure _exn11580_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp12647
                              (let ()
                                (declare (not safe))
                                (cons _exn11580_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12647)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn11576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11576_))
            (let ((_e11578_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11576_ 'exception))))
              (macro-rpc-remote-error-exception? _e11578_))
            (macro-rpc-remote-error-exception? _exn11576_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn11572_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11572_))
            (let ((_e11574_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11572_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11574_)
                  (macro-rpc-remote-error-exception-arguments _e11574_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12650
                                (let ()
                                  (declare (not safe))
                                  (cons _e11574_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12650)))))
            (if (macro-rpc-remote-error-exception? _exn11572_)
                (macro-rpc-remote-error-exception-arguments _exn11572_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12649
                              (let ()
                                (declare (not safe))
                                (cons _exn11572_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12649)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn11568_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11568_))
            (let ((_e11570_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11568_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11570_)
                  (macro-rpc-remote-error-exception-message _e11570_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12652
                                (let ()
                                  (declare (not safe))
                                  (cons _e11570_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12652)))))
            (if (macro-rpc-remote-error-exception? _exn11568_)
                (macro-rpc-remote-error-exception-message _exn11568_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12651
                              (let ()
                                (declare (not safe))
                                (cons _exn11568_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12651)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn11562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11562_))
            (let ((_e11565_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11562_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e11565_)
                  (macro-rpc-remote-error-exception-procedure _e11565_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp12654
                                (let ()
                                  (declare (not safe))
                                  (cons _e11565_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12654)))))
            (if (macro-rpc-remote-error-exception? _exn11562_)
                (macro-rpc-remote-error-exception-procedure _exn11562_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp12653
                              (let ()
                                (declare (not safe))
                                (cons _exn11562_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12653)))))))
    (define scheduler-exception?
      (lambda (_exn11558_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11558_))
            (let ((_e11560_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11558_ 'exception))))
              (macro-scheduler-exception? _e11560_))
            (macro-scheduler-exception? _exn11558_))))
    (define scheduler-exception-reason
      (lambda (_exn11552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11552_))
            (let ((_e11555_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11552_ 'exception))))
              (if (macro-scheduler-exception? _e11555_)
                  (macro-scheduler-exception-reason _e11555_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp12656
                                (let ()
                                  (declare (not safe))
                                  (cons _e11555_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12656)))))
            (if (macro-scheduler-exception? _exn11552_)
                (macro-scheduler-exception-reason _exn11552_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp12655
                              (let ()
                                (declare (not safe))
                                (cons _exn11552_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12655)))))))
    (define sfun-conversion-exception?
      (lambda (_exn11548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11548_))
            (let ((_e11550_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11548_ 'exception))))
              (macro-sfun-conversion-exception? _e11550_))
            (macro-sfun-conversion-exception? _exn11548_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn11544_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11544_))
            (let ((_e11546_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11544_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11546_)
                  (macro-sfun-conversion-exception-arguments _e11546_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12658
                                (let ()
                                  (declare (not safe))
                                  (cons _e11546_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12658)))))
            (if (macro-sfun-conversion-exception? _exn11544_)
                (macro-sfun-conversion-exception-arguments _exn11544_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12657
                              (let ()
                                (declare (not safe))
                                (cons _exn11544_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12657)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn11540_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11540_))
            (let ((_e11542_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11540_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11542_)
                  (macro-sfun-conversion-exception-code _e11542_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12660
                                (let ()
                                  (declare (not safe))
                                  (cons _e11542_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp12660)))))
            (if (macro-sfun-conversion-exception? _exn11540_)
                (macro-sfun-conversion-exception-code _exn11540_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12659
                              (let ()
                                (declare (not safe))
                                (cons _exn11540_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp12659)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn11536_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11536_))
            (let ((_e11538_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11536_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11538_)
                  (macro-sfun-conversion-exception-message _e11538_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12662
                                (let ()
                                  (declare (not safe))
                                  (cons _e11538_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12662)))))
            (if (macro-sfun-conversion-exception? _exn11536_)
                (macro-sfun-conversion-exception-message _exn11536_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12661
                              (let ()
                                (declare (not safe))
                                (cons _exn11536_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12661)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn11530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11530_))
            (let ((_e11533_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11530_ 'exception))))
              (if (macro-sfun-conversion-exception? _e11533_)
                  (macro-sfun-conversion-exception-procedure _e11533_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp12664
                                (let ()
                                  (declare (not safe))
                                  (cons _e11533_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12664)))))
            (if (macro-sfun-conversion-exception? _exn11530_)
                (macro-sfun-conversion-exception-procedure _exn11530_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp12663
                              (let ()
                                (declare (not safe))
                                (cons _exn11530_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12663)))))))
    (define stack-overflow-exception?
      (lambda (_exn11524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11524_))
            (let ((_e11527_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11524_ 'exception))))
              (macro-stack-overflow-exception? _e11527_))
            (macro-stack-overflow-exception? _exn11524_))))
    (define started-thread-exception?
      (lambda (_exn11520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11520_))
            (let ((_e11522_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11520_ 'exception))))
              (macro-started-thread-exception? _e11522_))
            (macro-started-thread-exception? _exn11520_))))
    (define started-thread-exception-arguments
      (lambda (_exn11516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11516_))
            (let ((_e11518_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11516_ 'exception))))
              (if (macro-started-thread-exception? _e11518_)
                  (macro-started-thread-exception-arguments _e11518_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12666
                                (let ()
                                  (declare (not safe))
                                  (cons _e11518_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12666)))))
            (if (macro-started-thread-exception? _exn11516_)
                (macro-started-thread-exception-arguments _exn11516_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12665
                              (let ()
                                (declare (not safe))
                                (cons _exn11516_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12665)))))))
    (define started-thread-exception-procedure
      (lambda (_exn11510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11510_))
            (let ((_e11513_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11510_ 'exception))))
              (if (macro-started-thread-exception? _e11513_)
                  (macro-started-thread-exception-procedure _e11513_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp12668
                                (let ()
                                  (declare (not safe))
                                  (cons _e11513_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12668)))))
            (if (macro-started-thread-exception? _exn11510_)
                (macro-started-thread-exception-procedure _exn11510_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp12667
                              (let ()
                                (declare (not safe))
                                (cons _exn11510_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12667)))))))
    (define terminated-thread-exception?
      (lambda (_exn11506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11506_))
            (let ((_e11508_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11506_ 'exception))))
              (macro-terminated-thread-exception? _e11508_))
            (macro-terminated-thread-exception? _exn11506_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn11502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11502_))
            (let ((_e11504_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11502_ 'exception))))
              (if (macro-terminated-thread-exception? _e11504_)
                  (macro-terminated-thread-exception-arguments _e11504_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12670
                                (let ()
                                  (declare (not safe))
                                  (cons _e11504_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12670)))))
            (if (macro-terminated-thread-exception? _exn11502_)
                (macro-terminated-thread-exception-arguments _exn11502_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12669
                              (let ()
                                (declare (not safe))
                                (cons _exn11502_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12669)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn11496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11496_))
            (let ((_e11499_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11496_ 'exception))))
              (if (macro-terminated-thread-exception? _e11499_)
                  (macro-terminated-thread-exception-procedure _e11499_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp12672
                                (let ()
                                  (declare (not safe))
                                  (cons _e11499_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12672)))))
            (if (macro-terminated-thread-exception? _exn11496_)
                (macro-terminated-thread-exception-procedure _exn11496_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp12671
                              (let ()
                                (declare (not safe))
                                (cons _exn11496_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12671)))))))
    (define type-exception?
      (lambda (_exn11492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11492_))
            (let ((_e11494_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11492_ 'exception))))
              (macro-type-exception? _e11494_))
            (macro-type-exception? _exn11492_))))
    (define type-exception-arg-id
      (lambda (_exn11488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11488_))
            (let ((_e11490_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11488_ 'exception))))
              (if (macro-type-exception? _e11490_)
                  (macro-type-exception-arg-id _e11490_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12674
                                (let ()
                                  (declare (not safe))
                                  (cons _e11490_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12674)))))
            (if (macro-type-exception? _exn11488_)
                (macro-type-exception-arg-id _exn11488_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12673
                              (let ()
                                (declare (not safe))
                                (cons _exn11488_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12673)))))))
    (define type-exception-arguments
      (lambda (_exn11484_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11484_))
            (let ((_e11486_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11484_ 'exception))))
              (if (macro-type-exception? _e11486_)
                  (macro-type-exception-arguments _e11486_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12676
                                (let ()
                                  (declare (not safe))
                                  (cons _e11486_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12676)))))
            (if (macro-type-exception? _exn11484_)
                (macro-type-exception-arguments _exn11484_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12675
                              (let ()
                                (declare (not safe))
                                (cons _exn11484_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12675)))))))
    (define type-exception-procedure
      (lambda (_exn11480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11480_))
            (let ((_e11482_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11480_ 'exception))))
              (if (macro-type-exception? _e11482_)
                  (macro-type-exception-procedure _e11482_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12678
                                (let ()
                                  (declare (not safe))
                                  (cons _e11482_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12678)))))
            (if (macro-type-exception? _exn11480_)
                (macro-type-exception-procedure _exn11480_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12677
                              (let ()
                                (declare (not safe))
                                (cons _exn11480_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12677)))))))
    (define type-exception-type-id
      (lambda (_exn11474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11474_))
            (let ((_e11477_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11474_ 'exception))))
              (if (macro-type-exception? _e11477_)
                  (macro-type-exception-type-id _e11477_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp12680
                                (let ()
                                  (declare (not safe))
                                  (cons _e11477_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12680)))))
            (if (macro-type-exception? _exn11474_)
                (macro-type-exception-type-id _exn11474_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp12679
                              (let ()
                                (declare (not safe))
                                (cons _exn11474_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12679)))))))
    (define unbound-global-exception?
      (lambda (_exn11470_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11470_))
            (let ((_e11472_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11470_ 'exception))))
              (macro-unbound-global-exception? _e11472_))
            (macro-unbound-global-exception? _exn11470_))))
    (define unbound-global-exception-code
      (lambda (_exn11466_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11466_))
            (let ((_e11468_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11466_ 'exception))))
              (if (macro-unbound-global-exception? _e11468_)
                  (macro-unbound-global-exception-code _e11468_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12682
                                (let ()
                                  (declare (not safe))
                                  (cons _e11468_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12682)))))
            (if (macro-unbound-global-exception? _exn11466_)
                (macro-unbound-global-exception-code _exn11466_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12681
                              (let ()
                                (declare (not safe))
                                (cons _exn11466_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12681)))))))
    (define unbound-global-exception-rte
      (lambda (_exn11462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11462_))
            (let ((_e11464_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11462_ 'exception))))
              (if (macro-unbound-global-exception? _e11464_)
                  (macro-unbound-global-exception-rte _e11464_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12684
                                (let ()
                                  (declare (not safe))
                                  (cons _e11464_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12684)))))
            (if (macro-unbound-global-exception? _exn11462_)
                (macro-unbound-global-exception-rte _exn11462_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12683
                              (let ()
                                (declare (not safe))
                                (cons _exn11462_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12683)))))))
    (define unbound-global-exception-variable
      (lambda (_exn11456_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11456_))
            (let ((_e11459_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11456_ 'exception))))
              (if (macro-unbound-global-exception? _e11459_)
                  (macro-unbound-global-exception-variable _e11459_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp12686
                                (let ()
                                  (declare (not safe))
                                  (cons _e11459_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12686)))))
            (if (macro-unbound-global-exception? _exn11456_)
                (macro-unbound-global-exception-variable _exn11456_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp12685
                              (let ()
                                (declare (not safe))
                                (cons _exn11456_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12685)))))))
    (define unbound-key-exception?
      (lambda (_exn11452_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11452_))
            (let ((_e11454_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11452_ 'exception))))
              (macro-unbound-key-exception? _e11454_))
            (macro-unbound-key-exception? _exn11452_))))
    (define unbound-key-exception-arguments
      (lambda (_exn11448_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11448_))
            (let ((_e11450_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11448_ 'exception))))
              (if (macro-unbound-key-exception? _e11450_)
                  (macro-unbound-key-exception-arguments _e11450_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12688
                                (let ()
                                  (declare (not safe))
                                  (cons _e11450_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12688)))))
            (if (macro-unbound-key-exception? _exn11448_)
                (macro-unbound-key-exception-arguments _exn11448_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12687
                              (let ()
                                (declare (not safe))
                                (cons _exn11448_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp12687)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn11442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11442_))
            (let ((_e11445_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11442_ 'exception))))
              (if (macro-unbound-key-exception? _e11445_)
                  (macro-unbound-key-exception-procedure _e11445_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp12690
                                (let ()
                                  (declare (not safe))
                                  (cons _e11445_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12690)))))
            (if (macro-unbound-key-exception? _exn11442_)
                (macro-unbound-key-exception-procedure _exn11442_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp12689
                              (let ()
                                (declare (not safe))
                                (cons _exn11442_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp12689)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn11438_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11438_))
            (let ((_e11440_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11438_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e11440_))
            (macro-unbound-os-environment-variable-exception? _exn11438_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn11434_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11434_))
            (let ((_e11436_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11434_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11436_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e11436_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12692
                                (let ()
                                  (declare (not safe))
                                  (cons _e11436_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12692)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11434_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn11434_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12691
                              (let ()
                                (declare (not safe))
                                (cons _exn11434_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12691)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn11428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11428_))
            (let ((_e11431_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11428_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e11431_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e11431_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp12694
                                (let ()
                                  (declare (not safe))
                                  (cons _e11431_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12694)))))
            (if (macro-unbound-os-environment-variable-exception? _exn11428_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn11428_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp12693
                              (let ()
                                (declare (not safe))
                                (cons _exn11428_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12693)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn11424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11424_))
            (let ((_e11426_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11424_ 'exception))))
              (macro-unbound-serial-number-exception? _e11426_))
            (macro-unbound-serial-number-exception? _exn11424_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn11420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11420_))
            (let ((_e11422_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11420_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11422_)
                  (macro-unbound-serial-number-exception-arguments _e11422_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12696
                                (let ()
                                  (declare (not safe))
                                  (cons _e11422_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12696)))))
            (if (macro-unbound-serial-number-exception? _exn11420_)
                (macro-unbound-serial-number-exception-arguments _exn11420_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12695
                              (let ()
                                (declare (not safe))
                                (cons _exn11420_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12695)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn11414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11414_))
            (let ((_e11417_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11414_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e11417_)
                  (macro-unbound-serial-number-exception-procedure _e11417_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp12698
                                (let ()
                                  (declare (not safe))
                                  (cons _e11417_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12698)))))
            (if (macro-unbound-serial-number-exception? _exn11414_)
                (macro-unbound-serial-number-exception-procedure _exn11414_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp12697
                              (let ()
                                (declare (not safe))
                                (cons _exn11414_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12697)))))))
    (define uncaught-exception?
      (lambda (_exn11410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11410_))
            (let ((_e11412_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11410_ 'exception))))
              (macro-uncaught-exception? _e11412_))
            (macro-uncaught-exception? _exn11410_))))
    (define uncaught-exception-arguments
      (lambda (_exn11406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11406_))
            (let ((_e11408_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11406_ 'exception))))
              (if (macro-uncaught-exception? _e11408_)
                  (macro-uncaught-exception-arguments _e11408_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12700
                                (let ()
                                  (declare (not safe))
                                  (cons _e11408_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12700)))))
            (if (macro-uncaught-exception? _exn11406_)
                (macro-uncaught-exception-arguments _exn11406_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12699
                              (let ()
                                (declare (not safe))
                                (cons _exn11406_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12699)))))))
    (define uncaught-exception-procedure
      (lambda (_exn11402_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11402_))
            (let ((_e11404_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11402_ 'exception))))
              (if (macro-uncaught-exception? _e11404_)
                  (macro-uncaught-exception-procedure _e11404_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12702
                                (let ()
                                  (declare (not safe))
                                  (cons _e11404_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12702)))))
            (if (macro-uncaught-exception? _exn11402_)
                (macro-uncaught-exception-procedure _exn11402_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12701
                              (let ()
                                (declare (not safe))
                                (cons _exn11402_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12701)))))))
    (define uncaught-exception-reason
      (lambda (_exn11396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11396_))
            (let ((_e11399_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11396_ 'exception))))
              (if (macro-uncaught-exception? _e11399_)
                  (macro-uncaught-exception-reason _e11399_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp12704
                                (let ()
                                  (declare (not safe))
                                  (cons _e11399_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12704)))))
            (if (macro-uncaught-exception? _exn11396_)
                (macro-uncaught-exception-reason _exn11396_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp12703
                              (let ()
                                (declare (not safe))
                                (cons _exn11396_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12703)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn11392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11392_))
            (let ((_e11394_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11392_ 'exception))))
              (macro-uninitialized-thread-exception? _e11394_))
            (macro-uninitialized-thread-exception? _exn11392_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn11388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11388_))
            (let ((_e11390_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11388_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11390_)
                  (macro-uninitialized-thread-exception-arguments _e11390_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12706
                                (let ()
                                  (declare (not safe))
                                  (cons _e11390_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12706)))))
            (if (macro-uninitialized-thread-exception? _exn11388_)
                (macro-uninitialized-thread-exception-arguments _exn11388_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12705
                              (let ()
                                (declare (not safe))
                                (cons _exn11388_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12705)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn11382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11382_))
            (let ((_e11385_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11382_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e11385_)
                  (macro-uninitialized-thread-exception-procedure _e11385_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp12708
                                (let ()
                                  (declare (not safe))
                                  (cons _e11385_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12708)))))
            (if (macro-uninitialized-thread-exception? _exn11382_)
                (macro-uninitialized-thread-exception-procedure _exn11382_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp12707
                              (let ()
                                (declare (not safe))
                                (cons _exn11382_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12707)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn11378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11378_))
            (let ((_e11380_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11378_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e11380_))
            (macro-unknown-keyword-argument-exception? _exn11378_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn11374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11374_))
            (let ((_e11376_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11374_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11376_)
                  (macro-unknown-keyword-argument-exception-arguments _e11376_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12710
                                (let ()
                                  (declare (not safe))
                                  (cons _e11376_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12710)))))
            (if (macro-unknown-keyword-argument-exception? _exn11374_)
                (macro-unknown-keyword-argument-exception-arguments _exn11374_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12709
                              (let ()
                                (declare (not safe))
                                (cons _exn11374_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12709)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn11368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11368_))
            (let ((_e11371_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11368_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e11371_)
                  (macro-unknown-keyword-argument-exception-procedure _e11371_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp12712
                                (let ()
                                  (declare (not safe))
                                  (cons _e11371_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12712)))))
            (if (macro-unknown-keyword-argument-exception? _exn11368_)
                (macro-unknown-keyword-argument-exception-procedure _exn11368_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp12711
                              (let ()
                                (declare (not safe))
                                (cons _exn11368_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12711)))))))
    (define unterminated-process-exception?
      (lambda (_exn11364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11364_))
            (let ((_e11366_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11364_ 'exception))))
              (macro-unterminated-process-exception? _e11366_))
            (macro-unterminated-process-exception? _exn11364_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn11360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11360_))
            (let ((_e11362_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11360_ 'exception))))
              (if (macro-unterminated-process-exception? _e11362_)
                  (macro-unterminated-process-exception-arguments _e11362_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12714
                                (let ()
                                  (declare (not safe))
                                  (cons _e11362_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12714)))))
            (if (macro-unterminated-process-exception? _exn11360_)
                (macro-unterminated-process-exception-arguments _exn11360_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12713
                              (let ()
                                (declare (not safe))
                                (cons _exn11360_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12713)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn11354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11354_))
            (let ((_e11357_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11354_ 'exception))))
              (if (macro-unterminated-process-exception? _e11357_)
                  (macro-unterminated-process-exception-procedure _e11357_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp12716
                                (let ()
                                  (declare (not safe))
                                  (cons _e11357_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12716)))))
            (if (macro-unterminated-process-exception? _exn11354_)
                (macro-unterminated-process-exception-procedure _exn11354_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp12715
                              (let ()
                                (declare (not safe))
                                (cons _exn11354_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12715)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn11350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11350_))
            (let ((_e11352_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11350_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e11352_))
            (macro-wrong-number-of-arguments-exception? _exn11350_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn11346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11346_))
            (let ((_e11348_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11346_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11348_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e11348_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12718
                                (let ()
                                  (declare (not safe))
                                  (cons _e11348_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12718)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11346_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn11346_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12717
                              (let ()
                                (declare (not safe))
                                (cons _exn11346_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12717)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn11340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11340_))
            (let ((_e11343_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11340_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e11343_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e11343_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp12720
                                (let ()
                                  (declare (not safe))
                                  (cons _e11343_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12720)))))
            (if (macro-wrong-number-of-arguments-exception? _exn11340_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn11340_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp12719
                              (let ()
                                (declare (not safe))
                                (cons _exn11340_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12719)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn11336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11336_))
            (let ((_e11338_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11336_ 'exception))))
              (macro-wrong-number-of-values-exception? _e11338_))
            (macro-wrong-number-of-values-exception? _exn11336_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn11332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11332_))
            (let ((_e11334_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11332_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11334_)
                  (macro-wrong-number-of-values-exception-code _e11334_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12722
                                (let ()
                                  (declare (not safe))
                                  (cons _e11334_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12722)))))
            (if (macro-wrong-number-of-values-exception? _exn11332_)
                (macro-wrong-number-of-values-exception-code _exn11332_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12721
                              (let ()
                                (declare (not safe))
                                (cons _exn11332_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12721)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn11328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11328_))
            (let ((_e11330_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11328_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11330_)
                  (macro-wrong-number-of-values-exception-rte _e11330_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12724
                                (let ()
                                  (declare (not safe))
                                  (cons _e11330_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12724)))))
            (if (macro-wrong-number-of-values-exception? _exn11328_)
                (macro-wrong-number-of-values-exception-rte _exn11328_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12723
                              (let ()
                                (declare (not safe))
                                (cons _exn11328_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12723)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn11322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11322_))
            (let ((_e11325_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11322_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e11325_)
                  (macro-wrong-number-of-values-exception-vals _e11325_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp12726
                                (let ()
                                  (declare (not safe))
                                  (cons _e11325_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12726)))))
            (if (macro-wrong-number-of-values-exception? _exn11322_)
                (macro-wrong-number-of-values-exception-vals _exn11322_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp12725
                              (let ()
                                (declare (not safe))
                                (cons _exn11322_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12725)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn11316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11316_))
            (let ((_e11319_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11316_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e11319_))
            (macro-wrong-processor-c-return-exception? _exn11316_))))))
