(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1695206877)
  (begin
    (define Exception::t
      (make-class-type
       'gerbil/runtime/error#Exception::t
       '()
       '()
       'Exception
       '()
       '#f))
    (define Exception? (make-class-predicate Exception::t))
    (define make-Exception
      (lambda _$args11459_
        (apply make-class-instance Exception::t _$args11459_)))
    (define StackTrace::t
      (make-class-type
       'gerbil/runtime/error#StackTrace::t
       '()
       '(continuation)
       'StackTrace
       '()
       '#f))
    (define StackTrace? (make-class-predicate StackTrace::t))
    (define make-StackTrace
      (lambda _$args11456_
        (apply make-class-instance StackTrace::t _$args11456_)))
    (define StackTrace-continuation
      (make-class-slot-accessor StackTrace::t 'continuation))
    (define StackTrace-continuation-set!
      (make-class-slot-mutator StackTrace::t 'continuation))
    (define &StackTrace-continuation
      (make-class-slot-unchecked-accessor StackTrace::t 'continuation))
    (define &StackTrace-continuation-set!
      (make-class-slot-unchecked-mutator StackTrace::t 'continuation))
    (define Error::t
      (make-class-type
       'gerbil/runtime/error#Error::t
       (cons StackTrace::t (cons Exception::t '()))
       '(message irritants where)
       'Error
       '((transparent: . #t))
       ':init!))
    (define Error? (make-class-predicate Error::t))
    (define make-Error
      (lambda _$args11453_ (apply make-class-instance Error::t _$args11453_)))
    (define Error-message (make-class-slot-accessor Error::t 'message))
    (define Error-irritants (make-class-slot-accessor Error::t 'irritants))
    (define Error-where (make-class-slot-accessor Error::t 'where))
    (define Error-message-set! (make-class-slot-mutator Error::t 'message))
    (define Error-irritants-set! (make-class-slot-mutator Error::t 'irritants))
    (define Error-where-set! (make-class-slot-mutator Error::t 'where))
    (define &Error-message
      (make-class-slot-unchecked-accessor Error::t 'message))
    (define &Error-irritants
      (make-class-slot-unchecked-accessor Error::t 'irritants))
    (define &Error-where (make-class-slot-unchecked-accessor Error::t 'where))
    (define &Error-message-set!
      (make-class-slot-unchecked-mutator Error::t 'message))
    (define &Error-irritants-set!
      (make-class-slot-unchecked-mutator Error::t 'irritants))
    (define &Error-where-set!
      (make-class-slot-unchecked-mutator Error::t 'where))
    (define RuntimeException::t
      (make-class-type
       'gerbil/runtime/error#RuntimeException::t
       (cons StackTrace::t (cons Exception::t '()))
       '(exception)
       'RuntimeException
       '((transparent: . #t))
       '#f))
    (define RuntimeException? (make-class-predicate RuntimeException::t))
    (define make-RuntimeException
      (lambda _$args11450_
        (apply make-class-instance RuntimeException::t _$args11450_)))
    (define RuntimeException-exception
      (make-class-slot-accessor RuntimeException::t 'exception))
    (define RuntimeException-exception-set!
      (make-class-slot-mutator RuntimeException::t 'exception))
    (define &RuntimeException-exception
      (make-class-slot-unchecked-accessor RuntimeException::t 'exception))
    (define &RuntimeException-exception-set!
      (make-class-slot-unchecked-mutator RuntimeException::t 'exception))
    (define gerbil-exception-handler-hook
      (lambda (_exn11445_ _continue11446_)
        (let ((_exn11448_ (wrap-runtime-exception _exn11445_)))
          (declare (not safe))
          (##repl-exception-handler-hook _exn11448_ _continue11446_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn11441_)
        (if (class-instance? StackTrace::t _exn11441_)
            (if (slot-ref _exn11441_ 'continuation)
                '#!void
                (let ((__tmp11479
                       (lambda (_cont11443_)
                         (unchecked-slot-set!
                          _exn11441_
                          'continuation
                          _cont11443_))))
                  (declare (not safe))
                  (##continuation-capture __tmp11479)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn11441_))))
    (define error
      (lambda (_message11438_ . _irritants11439_)
        (raise (make-class-instance
                Error::t
                _message11438_
                'irritants:
                _irritants11439_))))
    (define with-exception-handler
      (lambda (_handler11431_ _thunk11432_)
        (if (procedure? _handler11431_)
            '#!void
            (raise (make-class-instance
                    Error::t
                    '"expected procedure"
                    'where:
                    'with-exception-handler
                    'irritants:
                    (cons _handler11431_ '()))))
        (if (procedure? _thunk11432_)
            '#!void
            (raise (make-class-instance
                    Error::t
                    '"expected procedure"
                    'where:
                    'with-exception-hander
                    'irritants:
                    (cons _thunk11432_ '()))))
        (let ((__tmp11480
               (lambda (_exn11434_)
                 (let ((_exn11436_ (wrap-runtime-exception _exn11434_)))
                   (_handler11431_ _exn11436_)))))
          (declare (not safe))
          (##with-exception-handler __tmp11480 _thunk11432_))))
    (define with-catch
      (lambda (_handler11424_ _thunk11425_)
        (if (procedure? _handler11424_)
            '#!void
            (raise (make-class-instance
                    Error::t
                    '"expected procedure"
                    'where:
                    'with-exception-handler
                    'irritants:
                    (cons _handler11424_ '()))))
        (if (procedure? _thunk11425_)
            '#!void
            (raise (make-class-instance
                    Error::t
                    '"expected procedure"
                    'where:
                    'with-exception-hander
                    'irritants:
                    (cons _thunk11425_ '()))))
        (let ((__tmp11481
               (lambda (_cont11427_)
                 (with-exception-handler
                  (lambda (_exn11429_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont11427_
                       _handler11424_
                       _exn11429_)))
                  _thunk11425_))))
          (declare (not safe))
          (##continuation-capture __tmp11481))))
    (define wrap-runtime-exception
      (lambda (_exn11415_)
        (if (or (heap-overflow-exception? _exn11415_)
                (stack-overflow-exception? _exn11415_))
            _exn11415_
            (if (class-instance? Exception::t _exn11415_)
                _exn11415_
                (if (macro-exception? _exn11415_)
                    (let ((_rte11420_
                           (make-class-instance
                            RuntimeException::t
                            'exception:
                            _exn11415_)))
                      (let ((__tmp11482
                             (lambda (_cont11422_)
                               (unchecked-slot-set!
                                _rte11420_
                                'continuation
                                (let ()
                                  (declare (not safe))
                                  (##continuation-next _cont11422_))))))
                        (declare (not safe))
                        (##continuation-capture __tmp11482))
                      _rte11420_)
                    _exn11415_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj11410_)
        (let ((_$e11412_ (class-instance? Error::t _obj11410_)))
          (if _$e11412_ _$e11412_ (error-exception? _obj11410_)))))
    (define error-message
      (lambda (_obj11408_)
        (if (class-instance? Error::t _obj11408_)
            (slot-ref _obj11408_ 'message)
            (if (error-exception? _obj11408_)
                (error-exception-message _obj11408_)
                '#f))))
    (define error-irritants
      (lambda (_obj11406_)
        (if (class-instance? Error::t _obj11406_)
            (slot-ref _obj11406_ 'irritants)
            (if (error-exception? _obj11406_)
                (error-exception-parameters _obj11406_)
                '#f))))
    (define error-trace
      (lambda (_obj11404_)
        (if (class-instance? Error::t _obj11404_)
            (slot-ref _obj11404_ 'where)
            '#f)))
    (define display-exception__%
      (lambda (_e11386_ _port11387_)
        (let ((_$e11389_ (method-ref _e11386_ 'display-exception)))
          (if _$e11389_
              ((lambda (_f11392_) (_f11392_ _e11386_ _port11387_)) _$e11389_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e11386_ _port11387_))))))
    (define display-exception__0
      (lambda (_e11397_)
        (let ((_port11399_ (current-error-port)))
          (display-exception__% _e11397_ _port11399_))))
    (define display-exception
      (lambda _g11484_
        (let ((_g11483_ (let () (declare (not safe)) (##length _g11484_))))
          (cond ((let () (declare (not safe)) (##fx= _g11483_ 1))
                 (apply display-exception__0 _g11484_))
                ((let () (declare (not safe)) (##fx= _g11483_ 2))
                 (apply display-exception__% _g11484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g11484_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self11381_ _message11382_ . _rest11383_)
        (unchecked-slot-set! _self11381_ 'message _message11382_)
        (apply class-instance-init! _self11381_ _rest11383_)))
    (define Error:::init!::specialize
      (lambda (__t11461)
        (let ((__message11462
               (let ((__tmp11463 (class-slot-offset __t11461 'message)))
                 (if __tmp11463
                     (let () (declare (not safe)) (##fx+ __tmp11463 '1))
                     (error '"Unknown slot" 'message)))))
          (lambda (_self11381_ _message11382_ . _rest11383_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self11381_
               _message11382_
               __message11462
               __t11461
               '#f))
            (apply class-instance-init! _self11381_ _rest11383_)))))
    (bind-specializer! Error:::init! Error:::init!::specialize)
    (bind-method! Error::t ':init! Error:::init! '#f)
    (define Error::display-exception
      (lambda (_self11240_ _port11241_)
        (let ((_tmp-port11243_ (open-output-string)))
          (fix-port-width! _tmp-port11243_)
          (call-with-parameters
           (lambda ()
             (display '"*** ERROR IN ")
             (let ((_$e11246_ (slot-ref _self11240_ 'where)))
               (if _$e11246_ (display _$e11246_) (display '"?")))
             (display*
              '" ["
              (let ((__tmp11485 (object-type _self11240_)))
                (declare (not safe))
                (##type-name __tmp11485))
              '"]: ")
             (displayln (slot-ref _self11240_ 'message))
             (let ((_irritants11249_ (slot-ref _self11240_ 'irritants)))
               (if (null? _irritants11249_)
                   '#!void
                   (begin
                     (display '"--- irritants: ")
                     (for-each
                      (lambda (_obj11251_) (display* _obj11251_ '" "))
                      _irritants11249_)
                     (newline))))
             (if (class-instance? StackTrace::t _self11240_)
                 (let ((_cont1125211254_ (slot-ref _self11240_ 'continuation)))
                   (if _cont1125211254_
                       (let ((_cont11257_ _cont1125211254_))
                         (displayln '"--- continuation backtrace:")
                         (display-continuation-backtrace _cont11257_))
                       '#f))
                 '#!void))
           current-output-port
           _tmp-port11243_)
          (let ((__tmp11486 (get-output-string _tmp-port11243_)))
            (declare (not safe))
            (##write-string __tmp11486 _port11241_)))))
    (define Error::display-exception::specialize
      (lambda (__t11464)
        (let ((__where11465
               (let ((__tmp11469 (class-slot-offset __t11464 'where)))
                 (if __tmp11469
                     (let () (declare (not safe)) (##fx+ __tmp11469 '1))
                     (error '"Unknown slot" 'where))))
              (__continuation11466
               (let ((__tmp11470 (class-slot-offset __t11464 'continuation)))
                 (if __tmp11470
                     (let () (declare (not safe)) (##fx+ __tmp11470 '1))
                     (error '"Unknown slot" 'continuation))))
              (__message11467
               (let ((__tmp11471 (class-slot-offset __t11464 'message)))
                 (if __tmp11471
                     (let () (declare (not safe)) (##fx+ __tmp11471 '1))
                     (error '"Unknown slot" 'message))))
              (__irritants11468
               (let ((__tmp11472 (class-slot-offset __t11464 'irritants)))
                 (if __tmp11472
                     (let () (declare (not safe)) (##fx+ __tmp11472 '1))
                     (error '"Unknown slot" 'irritants))))
              (__class11473 (class-subtype? StackTrace::t __t11464)))
          (lambda (_self11240_ _port11241_)
            (let ((_tmp-port11243_ (open-output-string)))
              (fix-port-width! _tmp-port11243_)
              (call-with-parameters
               (lambda ()
                 (display '"*** ERROR IN ")
                 (let ((_$e11246_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self11240_
                           __where11465
                           __t11464
                           '#f))))
                   (if _$e11246_ (display _$e11246_) (display '"?")))
                 (display*
                  '" ["
                  (let ((__tmp11487 (object-type _self11240_)))
                    (declare (not safe))
                    (##type-name __tmp11487))
                  '"]: ")
                 (displayln
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref
                     _self11240_
                     __message11467
                     __t11464
                     '#f)))
                 (let ((_irritants11249_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self11240_
                           __irritants11468
                           __t11464
                           '#f))))
                   (if (null? _irritants11249_)
                       '#!void
                       (begin
                         (display '"--- irritants: ")
                         (for-each
                          (lambda (_obj11251_) (display* _obj11251_ '" "))
                          _irritants11249_)
                         (newline))))
                 (if __class11473
                     (let ((_cont1125211254_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _self11240_
                               __continuation11466
                               __t11464
                               '#f))))
                       (if _cont1125211254_
                           (let ((_cont11257_ _cont1125211254_))
                             (displayln '"--- continuation backtrace:")
                             (display-continuation-backtrace _cont11257_))
                           '#f))
                     '#!void))
               current-output-port
               _tmp-port11243_)
              (let ((__tmp11488 (get-output-string _tmp-port11243_)))
                (declare (not safe))
                (##write-string __tmp11488 _port11241_)))))))
    (bind-specializer!
     Error::display-exception
     Error::display-exception::specialize)
    (bind-method! Error::t 'display-exception Error::display-exception '#t)
    (define RuntimeException::display-exception
      (lambda (_self11107_ _port11108_)
        (let ((_tmp-port11110_ (open-output-string)))
          (fix-port-width! _tmp-port11110_)
          (let ((__tmp11489 (slot-ref _self11107_ 'exception)))
            (declare (not safe))
            (##default-display-exception __tmp11489 _tmp-port11110_))
          (let ((_cont1111111113_ (slot-ref _self11107_ 'continuation)))
            (if _cont1111111113_
                (let ((_cont11116_ _cont1111111113_))
                  (display '"--- continuation backtrace:" _tmp-port11110_)
                  (newline _tmp-port11110_)
                  (display-continuation-backtrace _cont11116_ _tmp-port11110_))
                '#f))
          (let ((__tmp11490 (get-output-string _tmp-port11110_)))
            (declare (not safe))
            (##write-string __tmp11490 _port11108_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t11474)
        (let ((__continuation11475
               (let ((__tmp11477 (class-slot-offset __t11474 'continuation)))
                 (if __tmp11477
                     (let () (declare (not safe)) (##fx+ __tmp11477 '1))
                     (error '"Unknown slot" 'continuation))))
              (__exception11476
               (let ((__tmp11478 (class-slot-offset __t11474 'exception)))
                 (if __tmp11478
                     (let () (declare (not safe)) (##fx+ __tmp11478 '1))
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self11107_ _port11108_)
            (let ((_tmp-port11110_ (open-output-string)))
              (fix-port-width! _tmp-port11110_)
              (let ((__tmp11491
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self11107_
                        __exception11476
                        __t11474
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp11491 _tmp-port11110_))
              (let ((_cont1111111113_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self11107_
                        __continuation11475
                        __t11474
                        '#f))))
                (if _cont1111111113_
                    (let ((_cont11116_ _cont1111111113_))
                      (display '"--- continuation backtrace:" _tmp-port11110_)
                      (newline _tmp-port11110_)
                      (display-continuation-backtrace
                       _cont11116_
                       _tmp-port11110_))
                    '#f))
              (let ((__tmp11492 (get-output-string _tmp-port11110_)))
                (declare (not safe))
                (##write-string __tmp11492 _port11108_)))))))
    (bind-specializer!
     RuntimeException::display-exception
     RuntimeException::display-exception::specialize)
    (bind-method!
     RuntimeException::t
     'display-exception
     RuntimeException::display-exception
     '#f)
    (define fix-port-width!
      (lambda (_port10979_)
        (if (macro-character-port? _port10979_)
            (let ((_old-width10981_
                   (macro-character-port-output-width _port10979_)))
              (macro-character-port-output-width-set!
               _port10979_
               (lambda (_port10983_) '256))
              _old-width10981_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port10976_ _old-width10977_)
        (if (macro-character-port? _port10976_)
            (macro-character-port-output-width-set!
             _port10976_
             _old-width10977_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e10974_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e10974_))))
    (define abandoned-mutex-exception?
      (lambda (_exn10968_)
        (if (class-instance? RuntimeException::t _exn10968_)
            (let ((_e10971_ (slot-ref _exn10968_ 'exception)))
              (macro-abandoned-mutex-exception? _e10971_))
            (macro-abandoned-mutex-exception? _exn10968_))))
    (define cfun-conversion-exception?
      (lambda (_exn10964_)
        (if (class-instance? RuntimeException::t _exn10964_)
            (let ((_e10966_ (slot-ref _exn10964_ 'exception)))
              (macro-cfun-conversion-exception? _e10966_))
            (macro-cfun-conversion-exception? _exn10964_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn10960_)
        (if (class-instance? RuntimeException::t _exn10960_)
            (let ((_e10962_ (slot-ref _exn10960_ 'exception)))
              (if (macro-cfun-conversion-exception? _e10962_)
                  (macro-cfun-conversion-exception-arguments _e10962_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _e10962_ '())))))
            (if (macro-cfun-conversion-exception? _exn10960_)
                (macro-cfun-conversion-exception-arguments _exn10960_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _exn10960_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_exn10956_)
        (if (class-instance? RuntimeException::t _exn10956_)
            (let ((_e10958_ (slot-ref _exn10956_ 'exception)))
              (if (macro-cfun-conversion-exception? _e10958_)
                  (macro-cfun-conversion-exception-code _e10958_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _e10958_ '())))))
            (if (macro-cfun-conversion-exception? _exn10956_)
                (macro-cfun-conversion-exception-code _exn10956_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _exn10956_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_exn10952_)
        (if (class-instance? RuntimeException::t _exn10952_)
            (let ((_e10954_ (slot-ref _exn10952_ 'exception)))
              (if (macro-cfun-conversion-exception? _e10954_)
                  (macro-cfun-conversion-exception-message _e10954_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _e10954_ '())))))
            (if (macro-cfun-conversion-exception? _exn10952_)
                (macro-cfun-conversion-exception-message _exn10952_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _exn10952_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn10946_)
        (if (class-instance? RuntimeException::t _exn10946_)
            (let ((_e10949_ (slot-ref _exn10946_ 'exception)))
              (if (macro-cfun-conversion-exception? _e10949_)
                  (macro-cfun-conversion-exception-procedure _e10949_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _e10949_ '())))))
            (if (macro-cfun-conversion-exception? _exn10946_)
                (macro-cfun-conversion-exception-procedure _exn10946_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _exn10946_ '())))))))
    (define datum-parsing-exception?
      (lambda (_exn10942_)
        (if (class-instance? RuntimeException::t _exn10942_)
            (let ((_e10944_ (slot-ref _exn10942_ 'exception)))
              (macro-datum-parsing-exception? _e10944_))
            (macro-datum-parsing-exception? _exn10942_))))
    (define datum-parsing-exception-kind
      (lambda (_exn10938_)
        (if (class-instance? RuntimeException::t _exn10938_)
            (let ((_e10940_ (slot-ref _exn10938_ 'exception)))
              (if (macro-datum-parsing-exception? _e10940_)
                  (macro-datum-parsing-exception-kind _e10940_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _e10940_ '())))))
            (if (macro-datum-parsing-exception? _exn10938_)
                (macro-datum-parsing-exception-kind _exn10938_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _exn10938_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn10934_)
        (if (class-instance? RuntimeException::t _exn10934_)
            (let ((_e10936_ (slot-ref _exn10934_ 'exception)))
              (if (macro-datum-parsing-exception? _e10936_)
                  (macro-datum-parsing-exception-parameters _e10936_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _e10936_ '())))))
            (if (macro-datum-parsing-exception? _exn10934_)
                (macro-datum-parsing-exception-parameters _exn10934_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _exn10934_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn10928_)
        (if (class-instance? RuntimeException::t _exn10928_)
            (let ((_e10931_ (slot-ref _exn10928_ 'exception)))
              (if (macro-datum-parsing-exception? _e10931_)
                  (macro-datum-parsing-exception-readenv _e10931_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _e10931_ '())))))
            (if (macro-datum-parsing-exception? _exn10928_)
                (macro-datum-parsing-exception-readenv _exn10928_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _exn10928_ '())))))))
    (define deadlock-exception?
      (lambda (_exn10922_)
        (if (class-instance? RuntimeException::t _exn10922_)
            (let ((_e10925_ (slot-ref _exn10922_ 'exception)))
              (macro-deadlock-exception? _e10925_))
            (macro-deadlock-exception? _exn10922_))))
    (define divide-by-zero-exception?
      (lambda (_exn10918_)
        (if (class-instance? RuntimeException::t _exn10918_)
            (let ((_e10920_ (slot-ref _exn10918_ 'exception)))
              (macro-divide-by-zero-exception? _e10920_))
            (macro-divide-by-zero-exception? _exn10918_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn10914_)
        (if (class-instance? RuntimeException::t _exn10914_)
            (let ((_e10916_ (slot-ref _exn10914_ 'exception)))
              (if (macro-divide-by-zero-exception? _e10916_)
                  (macro-divide-by-zero-exception-arguments _e10916_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _e10916_ '())))))
            (if (macro-divide-by-zero-exception? _exn10914_)
                (macro-divide-by-zero-exception-arguments _exn10914_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _exn10914_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn10908_)
        (if (class-instance? RuntimeException::t _exn10908_)
            (let ((_e10911_ (slot-ref _exn10908_ 'exception)))
              (if (macro-divide-by-zero-exception? _e10911_)
                  (macro-divide-by-zero-exception-procedure _e10911_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _e10911_ '())))))
            (if (macro-divide-by-zero-exception? _exn10908_)
                (macro-divide-by-zero-exception-procedure _exn10908_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _exn10908_ '())))))))
    (define error-exception?
      (lambda (_exn10904_)
        (if (class-instance? RuntimeException::t _exn10904_)
            (let ((_e10906_ (slot-ref _exn10904_ 'exception)))
              (macro-error-exception? _e10906_))
            (macro-error-exception? _exn10904_))))
    (define error-exception-message
      (lambda (_exn10900_)
        (if (class-instance? RuntimeException::t _exn10900_)
            (let ((_e10902_ (slot-ref _exn10900_ 'exception)))
              (if (macro-error-exception? _e10902_)
                  (macro-error-exception-message _e10902_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message (cons _e10902_ '())))))
            (if (macro-error-exception? _exn10900_)
                (macro-error-exception-message _exn10900_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _exn10900_ '())))))))
    (define error-exception-parameters
      (lambda (_exn10894_)
        (if (class-instance? RuntimeException::t _exn10894_)
            (let ((_e10897_ (slot-ref _exn10894_ 'exception)))
              (if (macro-error-exception? _e10897_)
                  (macro-error-exception-parameters _e10897_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _e10897_ '())))))
            (if (macro-error-exception? _exn10894_)
                (macro-error-exception-parameters _exn10894_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _exn10894_ '())))))))
    (define expression-parsing-exception?
      (lambda (_exn10890_)
        (if (class-instance? RuntimeException::t _exn10890_)
            (let ((_e10892_ (slot-ref _exn10890_ 'exception)))
              (macro-expression-parsing-exception? _e10892_))
            (macro-expression-parsing-exception? _exn10890_))))
    (define expression-parsing-exception-kind
      (lambda (_exn10886_)
        (if (class-instance? RuntimeException::t _exn10886_)
            (let ((_e10888_ (slot-ref _exn10886_ 'exception)))
              (if (macro-expression-parsing-exception? _e10888_)
                  (macro-expression-parsing-exception-kind _e10888_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _e10888_ '())))))
            (if (macro-expression-parsing-exception? _exn10886_)
                (macro-expression-parsing-exception-kind _exn10886_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _exn10886_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn10882_)
        (if (class-instance? RuntimeException::t _exn10882_)
            (let ((_e10884_ (slot-ref _exn10882_ 'exception)))
              (if (macro-expression-parsing-exception? _e10884_)
                  (macro-expression-parsing-exception-parameters _e10884_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _e10884_ '())))))
            (if (macro-expression-parsing-exception? _exn10882_)
                (macro-expression-parsing-exception-parameters _exn10882_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _exn10882_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_exn10876_)
        (if (class-instance? RuntimeException::t _exn10876_)
            (let ((_e10879_ (slot-ref _exn10876_ 'exception)))
              (if (macro-expression-parsing-exception? _e10879_)
                  (macro-expression-parsing-exception-source _e10879_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _e10879_ '())))))
            (if (macro-expression-parsing-exception? _exn10876_)
                (macro-expression-parsing-exception-source _exn10876_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _exn10876_ '())))))))
    (define file-exists-exception?
      (lambda (_exn10872_)
        (if (class-instance? RuntimeException::t _exn10872_)
            (let ((_e10874_ (slot-ref _exn10872_ 'exception)))
              (macro-file-exists-exception? _e10874_))
            (macro-file-exists-exception? _exn10872_))))
    (define file-exists-exception-arguments
      (lambda (_exn10868_)
        (if (class-instance? RuntimeException::t _exn10868_)
            (let ((_e10870_ (slot-ref _exn10868_ 'exception)))
              (if (macro-file-exists-exception? _e10870_)
                  (macro-file-exists-exception-arguments _e10870_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _e10870_ '())))))
            (if (macro-file-exists-exception? _exn10868_)
                (macro-file-exists-exception-arguments _exn10868_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _exn10868_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_exn10862_)
        (if (class-instance? RuntimeException::t _exn10862_)
            (let ((_e10865_ (slot-ref _exn10862_ 'exception)))
              (if (macro-file-exists-exception? _e10865_)
                  (macro-file-exists-exception-procedure _e10865_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _e10865_ '())))))
            (if (macro-file-exists-exception? _exn10862_)
                (macro-file-exists-exception-procedure _exn10862_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _exn10862_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_exn10858_)
        (if (class-instance? RuntimeException::t _exn10858_)
            (let ((_e10860_ (slot-ref _exn10858_ 'exception)))
              (macro-fixnum-overflow-exception? _e10860_))
            (macro-fixnum-overflow-exception? _exn10858_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn10854_)
        (if (class-instance? RuntimeException::t _exn10854_)
            (let ((_e10856_ (slot-ref _exn10854_ 'exception)))
              (if (macro-fixnum-overflow-exception? _e10856_)
                  (macro-fixnum-overflow-exception-arguments _e10856_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _e10856_ '())))))
            (if (macro-fixnum-overflow-exception? _exn10854_)
                (macro-fixnum-overflow-exception-arguments _exn10854_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _exn10854_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn10848_)
        (if (class-instance? RuntimeException::t _exn10848_)
            (let ((_e10851_ (slot-ref _exn10848_ 'exception)))
              (if (macro-fixnum-overflow-exception? _e10851_)
                  (macro-fixnum-overflow-exception-procedure _e10851_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _e10851_ '())))))
            (if (macro-fixnum-overflow-exception? _exn10848_)
                (macro-fixnum-overflow-exception-procedure _exn10848_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _exn10848_ '())))))))
    (define heap-overflow-exception?
      (lambda (_exn10842_)
        (if (class-instance? RuntimeException::t _exn10842_)
            (let ((_e10845_ (slot-ref _exn10842_ 'exception)))
              (macro-heap-overflow-exception? _e10845_))
            (macro-heap-overflow-exception? _exn10842_))))
    (define inactive-thread-exception?
      (lambda (_exn10838_)
        (if (class-instance? RuntimeException::t _exn10838_)
            (let ((_e10840_ (slot-ref _exn10838_ 'exception)))
              (macro-inactive-thread-exception? _e10840_))
            (macro-inactive-thread-exception? _exn10838_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn10834_)
        (if (class-instance? RuntimeException::t _exn10834_)
            (let ((_e10836_ (slot-ref _exn10834_ 'exception)))
              (if (macro-inactive-thread-exception? _e10836_)
                  (macro-inactive-thread-exception-arguments _e10836_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _e10836_ '())))))
            (if (macro-inactive-thread-exception? _exn10834_)
                (macro-inactive-thread-exception-arguments _exn10834_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _exn10834_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn10828_)
        (if (class-instance? RuntimeException::t _exn10828_)
            (let ((_e10831_ (slot-ref _exn10828_ 'exception)))
              (if (macro-inactive-thread-exception? _e10831_)
                  (macro-inactive-thread-exception-procedure _e10831_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _e10831_ '())))))
            (if (macro-inactive-thread-exception? _exn10828_)
                (macro-inactive-thread-exception-procedure _exn10828_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _exn10828_ '())))))))
    (define initialized-thread-exception?
      (lambda (_exn10824_)
        (if (class-instance? RuntimeException::t _exn10824_)
            (let ((_e10826_ (slot-ref _exn10824_ 'exception)))
              (macro-initialized-thread-exception? _e10826_))
            (macro-initialized-thread-exception? _exn10824_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn10820_)
        (if (class-instance? RuntimeException::t _exn10820_)
            (let ((_e10822_ (slot-ref _exn10820_ 'exception)))
              (if (macro-initialized-thread-exception? _e10822_)
                  (macro-initialized-thread-exception-arguments _e10822_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _e10822_ '())))))
            (if (macro-initialized-thread-exception? _exn10820_)
                (macro-initialized-thread-exception-arguments _exn10820_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _exn10820_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn10814_)
        (if (class-instance? RuntimeException::t _exn10814_)
            (let ((_e10817_ (slot-ref _exn10814_ 'exception)))
              (if (macro-initialized-thread-exception? _e10817_)
                  (macro-initialized-thread-exception-procedure _e10817_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _e10817_ '())))))
            (if (macro-initialized-thread-exception? _exn10814_)
                (macro-initialized-thread-exception-procedure _exn10814_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _exn10814_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_exn10810_)
        (if (class-instance? RuntimeException::t _exn10810_)
            (let ((_e10812_ (slot-ref _exn10810_ 'exception)))
              (macro-invalid-hash-number-exception? _e10812_))
            (macro-invalid-hash-number-exception? _exn10810_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn10806_)
        (if (class-instance? RuntimeException::t _exn10806_)
            (let ((_e10808_ (slot-ref _exn10806_ 'exception)))
              (if (macro-invalid-hash-number-exception? _e10808_)
                  (macro-invalid-hash-number-exception-arguments _e10808_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _e10808_ '())))))
            (if (macro-invalid-hash-number-exception? _exn10806_)
                (macro-invalid-hash-number-exception-arguments _exn10806_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _exn10806_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn10800_)
        (if (class-instance? RuntimeException::t _exn10800_)
            (let ((_e10803_ (slot-ref _exn10800_ 'exception)))
              (if (macro-invalid-hash-number-exception? _e10803_)
                  (macro-invalid-hash-number-exception-procedure _e10803_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _e10803_ '())))))
            (if (macro-invalid-hash-number-exception? _exn10800_)
                (macro-invalid-hash-number-exception-procedure _exn10800_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _exn10800_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn10796_)
        (if (class-instance? RuntimeException::t _exn10796_)
            (let ((_e10798_ (slot-ref _exn10796_ 'exception)))
              (macro-invalid-utf8-encoding-exception? _e10798_))
            (macro-invalid-utf8-encoding-exception? _exn10796_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn10792_)
        (if (class-instance? RuntimeException::t _exn10792_)
            (let ((_e10794_ (slot-ref _exn10792_ 'exception)))
              (if (macro-invalid-utf8-encoding-exception? _e10794_)
                  (macro-invalid-utf8-encoding-exception-arguments _e10794_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _e10794_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _exn10792_)
                (macro-invalid-utf8-encoding-exception-arguments _exn10792_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _exn10792_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn10786_)
        (if (class-instance? RuntimeException::t _exn10786_)
            (let ((_e10789_ (slot-ref _exn10786_ 'exception)))
              (if (macro-invalid-utf8-encoding-exception? _e10789_)
                  (macro-invalid-utf8-encoding-exception-procedure _e10789_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _e10789_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _exn10786_)
                (macro-invalid-utf8-encoding-exception-procedure _exn10786_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _exn10786_ '())))))))
    (define join-timeout-exception?
      (lambda (_exn10782_)
        (if (class-instance? RuntimeException::t _exn10782_)
            (let ((_e10784_ (slot-ref _exn10782_ 'exception)))
              (macro-join-timeout-exception? _e10784_))
            (macro-join-timeout-exception? _exn10782_))))
    (define join-timeout-exception-arguments
      (lambda (_exn10778_)
        (if (class-instance? RuntimeException::t _exn10778_)
            (let ((_e10780_ (slot-ref _exn10778_ 'exception)))
              (if (macro-join-timeout-exception? _e10780_)
                  (macro-join-timeout-exception-arguments _e10780_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _e10780_ '())))))
            (if (macro-join-timeout-exception? _exn10778_)
                (macro-join-timeout-exception-arguments _exn10778_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _exn10778_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_exn10772_)
        (if (class-instance? RuntimeException::t _exn10772_)
            (let ((_e10775_ (slot-ref _exn10772_ 'exception)))
              (if (macro-join-timeout-exception? _e10775_)
                  (macro-join-timeout-exception-procedure _e10775_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _e10775_ '())))))
            (if (macro-join-timeout-exception? _exn10772_)
                (macro-join-timeout-exception-procedure _exn10772_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _exn10772_ '())))))))
    (define keyword-expected-exception?
      (lambda (_exn10768_)
        (if (class-instance? RuntimeException::t _exn10768_)
            (let ((_e10770_ (slot-ref _exn10768_ 'exception)))
              (macro-keyword-expected-exception? _e10770_))
            (macro-keyword-expected-exception? _exn10768_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn10764_)
        (if (class-instance? RuntimeException::t _exn10764_)
            (let ((_e10766_ (slot-ref _exn10764_ 'exception)))
              (if (macro-keyword-expected-exception? _e10766_)
                  (macro-keyword-expected-exception-arguments _e10766_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _e10766_ '())))))
            (if (macro-keyword-expected-exception? _exn10764_)
                (macro-keyword-expected-exception-arguments _exn10764_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _exn10764_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn10758_)
        (if (class-instance? RuntimeException::t _exn10758_)
            (let ((_e10761_ (slot-ref _exn10758_ 'exception)))
              (if (macro-keyword-expected-exception? _e10761_)
                  (macro-keyword-expected-exception-procedure _e10761_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _e10761_ '())))))
            (if (macro-keyword-expected-exception? _exn10758_)
                (macro-keyword-expected-exception-procedure _exn10758_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _exn10758_ '())))))))
    (define length-mismatch-exception?
      (lambda (_exn10754_)
        (if (class-instance? RuntimeException::t _exn10754_)
            (let ((_e10756_ (slot-ref _exn10754_ 'exception)))
              (macro-length-mismatch-exception? _e10756_))
            (macro-length-mismatch-exception? _exn10754_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn10750_)
        (if (class-instance? RuntimeException::t _exn10750_)
            (let ((_e10752_ (slot-ref _exn10750_ 'exception)))
              (if (macro-length-mismatch-exception? _e10752_)
                  (macro-length-mismatch-exception-arg-id _e10752_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _e10752_ '())))))
            (if (macro-length-mismatch-exception? _exn10750_)
                (macro-length-mismatch-exception-arg-id _exn10750_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _exn10750_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn10746_)
        (if (class-instance? RuntimeException::t _exn10746_)
            (let ((_e10748_ (slot-ref _exn10746_ 'exception)))
              (if (macro-length-mismatch-exception? _e10748_)
                  (macro-length-mismatch-exception-arguments _e10748_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _e10748_ '())))))
            (if (macro-length-mismatch-exception? _exn10746_)
                (macro-length-mismatch-exception-arguments _exn10746_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _exn10746_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn10740_)
        (if (class-instance? RuntimeException::t _exn10740_)
            (let ((_e10743_ (slot-ref _exn10740_ 'exception)))
              (if (macro-length-mismatch-exception? _e10743_)
                  (macro-length-mismatch-exception-procedure _e10743_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _e10743_ '())))))
            (if (macro-length-mismatch-exception? _exn10740_)
                (macro-length-mismatch-exception-procedure _exn10740_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _exn10740_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn10736_)
        (if (class-instance? RuntimeException::t _exn10736_)
            (let ((_e10738_ (slot-ref _exn10736_ 'exception)))
              (macro-mailbox-receive-timeout-exception? _e10738_))
            (macro-mailbox-receive-timeout-exception? _exn10736_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn10732_)
        (if (class-instance? RuntimeException::t _exn10732_)
            (let ((_e10734_ (slot-ref _exn10732_ 'exception)))
              (if (macro-mailbox-receive-timeout-exception? _e10734_)
                  (macro-mailbox-receive-timeout-exception-arguments _e10734_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _e10734_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _exn10732_)
                (macro-mailbox-receive-timeout-exception-arguments _exn10732_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _exn10732_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn10726_)
        (if (class-instance? RuntimeException::t _exn10726_)
            (let ((_e10729_ (slot-ref _exn10726_ 'exception)))
              (if (macro-mailbox-receive-timeout-exception? _e10729_)
                  (macro-mailbox-receive-timeout-exception-procedure _e10729_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _e10729_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _exn10726_)
                (macro-mailbox-receive-timeout-exception-procedure _exn10726_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _exn10726_ '())))))))
    (define module-not-found-exception?
      (lambda (_exn10722_)
        (if (class-instance? RuntimeException::t _exn10722_)
            (let ((_e10724_ (slot-ref _exn10722_ 'exception)))
              (macro-module-not-found-exception? _e10724_))
            (macro-module-not-found-exception? _exn10722_))))
    (define module-not-found-exception-arguments
      (lambda (_exn10718_)
        (if (class-instance? RuntimeException::t _exn10718_)
            (let ((_e10720_ (slot-ref _exn10718_ 'exception)))
              (if (macro-module-not-found-exception? _e10720_)
                  (macro-module-not-found-exception-arguments _e10720_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _e10720_ '())))))
            (if (macro-module-not-found-exception? _exn10718_)
                (macro-module-not-found-exception-arguments _exn10718_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _exn10718_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_exn10712_)
        (if (class-instance? RuntimeException::t _exn10712_)
            (let ((_e10715_ (slot-ref _exn10712_ 'exception)))
              (if (macro-module-not-found-exception? _e10715_)
                  (macro-module-not-found-exception-procedure _e10715_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _e10715_ '())))))
            (if (macro-module-not-found-exception? _exn10712_)
                (macro-module-not-found-exception-procedure _exn10712_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _exn10712_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_exn10706_)
        (if (class-instance? RuntimeException::t _exn10706_)
            (let ((_e10709_ (slot-ref _exn10706_ 'exception)))
              (macro-multiple-c-return-exception? _e10709_))
            (macro-multiple-c-return-exception? _exn10706_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn10702_)
        (if (class-instance? RuntimeException::t _exn10702_)
            (let ((_e10704_ (slot-ref _exn10702_ 'exception)))
              (macro-no-such-file-or-directory-exception? _e10704_))
            (macro-no-such-file-or-directory-exception? _exn10702_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn10698_)
        (if (class-instance? RuntimeException::t _exn10698_)
            (let ((_e10700_ (slot-ref _exn10698_ 'exception)))
              (if (macro-no-such-file-or-directory-exception? _e10700_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e10700_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _e10700_ '())))))
            (if (macro-no-such-file-or-directory-exception? _exn10698_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn10698_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _exn10698_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn10692_)
        (if (class-instance? RuntimeException::t _exn10692_)
            (let ((_e10695_ (slot-ref _exn10692_ 'exception)))
              (if (macro-no-such-file-or-directory-exception? _e10695_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e10695_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _e10695_ '())))))
            (if (macro-no-such-file-or-directory-exception? _exn10692_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn10692_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _exn10692_ '())))))))
    (define noncontinuable-exception?
      (lambda (_exn10688_)
        (if (class-instance? RuntimeException::t _exn10688_)
            (let ((_e10690_ (slot-ref _exn10688_ 'exception)))
              (macro-noncontinuable-exception? _e10690_))
            (macro-noncontinuable-exception? _exn10688_))))
    (define noncontinuable-exception-reason
      (lambda (_exn10682_)
        (if (class-instance? RuntimeException::t _exn10682_)
            (let ((_e10685_ (slot-ref _exn10682_ 'exception)))
              (if (macro-noncontinuable-exception? _e10685_)
                  (macro-noncontinuable-exception-reason _e10685_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _e10685_ '())))))
            (if (macro-noncontinuable-exception? _exn10682_)
                (macro-noncontinuable-exception-reason _exn10682_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _exn10682_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn10678_)
        (if (class-instance? RuntimeException::t _exn10678_)
            (let ((_e10680_ (slot-ref _exn10678_ 'exception)))
              (macro-nonempty-input-port-character-buffer-exception? _e10680_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn10678_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn10674_)
        (if (class-instance? RuntimeException::t _exn10674_)
            (let ((_e10676_ (slot-ref _exn10674_ 'exception)))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e10676_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e10676_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _e10676_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn10674_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn10674_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _exn10674_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn10668_)
        (if (class-instance? RuntimeException::t _exn10668_)
            (let ((_e10671_ (slot-ref _exn10668_ 'exception)))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e10671_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e10671_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _e10671_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn10668_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn10668_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _exn10668_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn10664_)
        (if (class-instance? RuntimeException::t _exn10664_)
            (let ((_e10666_ (slot-ref _exn10664_ 'exception)))
              (macro-nonprocedure-operator-exception? _e10666_))
            (macro-nonprocedure-operator-exception? _exn10664_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn10660_)
        (if (class-instance? RuntimeException::t _exn10660_)
            (let ((_e10662_ (slot-ref _exn10660_ 'exception)))
              (if (macro-nonprocedure-operator-exception? _e10662_)
                  (macro-nonprocedure-operator-exception-arguments _e10662_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _e10662_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn10660_)
                (macro-nonprocedure-operator-exception-arguments _exn10660_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _exn10660_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn10656_)
        (if (class-instance? RuntimeException::t _exn10656_)
            (let ((_e10658_ (slot-ref _exn10656_ 'exception)))
              (if (macro-nonprocedure-operator-exception? _e10658_)
                  (macro-nonprocedure-operator-exception-code _e10658_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _e10658_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn10656_)
                (macro-nonprocedure-operator-exception-code _exn10656_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _exn10656_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn10652_)
        (if (class-instance? RuntimeException::t _exn10652_)
            (let ((_e10654_ (slot-ref _exn10652_ 'exception)))
              (if (macro-nonprocedure-operator-exception? _e10654_)
                  (macro-nonprocedure-operator-exception-operator _e10654_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _e10654_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn10652_)
                (macro-nonprocedure-operator-exception-operator _exn10652_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _exn10652_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn10646_)
        (if (class-instance? RuntimeException::t _exn10646_)
            (let ((_e10649_ (slot-ref _exn10646_ 'exception)))
              (if (macro-nonprocedure-operator-exception? _e10649_)
                  (macro-nonprocedure-operator-exception-rte _e10649_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _e10649_ '())))))
            (if (macro-nonprocedure-operator-exception? _exn10646_)
                (macro-nonprocedure-operator-exception-rte _exn10646_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _exn10646_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn10642_)
        (if (class-instance? RuntimeException::t _exn10642_)
            (let ((_e10644_ (slot-ref _exn10642_ 'exception)))
              (macro-not-in-compilation-context-exception? _e10644_))
            (macro-not-in-compilation-context-exception? _exn10642_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn10638_)
        (if (class-instance? RuntimeException::t _exn10638_)
            (let ((_e10640_ (slot-ref _exn10638_ 'exception)))
              (if (macro-not-in-compilation-context-exception? _e10640_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e10640_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _e10640_ '())))))
            (if (macro-not-in-compilation-context-exception? _exn10638_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn10638_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _exn10638_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn10632_)
        (if (class-instance? RuntimeException::t _exn10632_)
            (let ((_e10635_ (slot-ref _exn10632_ 'exception)))
              (if (macro-not-in-compilation-context-exception? _e10635_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e10635_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _e10635_ '())))))
            (if (macro-not-in-compilation-context-exception? _exn10632_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn10632_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _exn10632_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn10628_)
        (if (class-instance? RuntimeException::t _exn10628_)
            (let ((_e10630_ (slot-ref _exn10628_ 'exception)))
              (macro-number-of-arguments-limit-exception? _e10630_))
            (macro-number-of-arguments-limit-exception? _exn10628_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn10624_)
        (if (class-instance? RuntimeException::t _exn10624_)
            (let ((_e10626_ (slot-ref _exn10624_ 'exception)))
              (if (macro-number-of-arguments-limit-exception? _e10626_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e10626_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _e10626_ '())))))
            (if (macro-number-of-arguments-limit-exception? _exn10624_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn10624_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _exn10624_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn10618_)
        (if (class-instance? RuntimeException::t _exn10618_)
            (let ((_e10621_ (slot-ref _exn10618_ 'exception)))
              (if (macro-number-of-arguments-limit-exception? _e10621_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e10621_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _e10621_ '())))))
            (if (macro-number-of-arguments-limit-exception? _exn10618_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn10618_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _exn10618_ '())))))))
    (define os-exception?
      (lambda (_exn10614_)
        (if (class-instance? RuntimeException::t _exn10614_)
            (let ((_e10616_ (slot-ref _exn10614_ 'exception)))
              (macro-os-exception? _e10616_))
            (macro-os-exception? _exn10614_))))
    (define os-exception-arguments
      (lambda (_exn10610_)
        (if (class-instance? RuntimeException::t _exn10610_)
            (let ((_e10612_ (slot-ref _exn10610_ 'exception)))
              (if (macro-os-exception? _e10612_)
                  (macro-os-exception-arguments _e10612_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments (cons _e10612_ '())))))
            (if (macro-os-exception? _exn10610_)
                (macro-os-exception-arguments _exn10610_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _exn10610_ '())))))))
    (define os-exception-code
      (lambda (_exn10606_)
        (if (class-instance? RuntimeException::t _exn10606_)
            (let ((_e10608_ (slot-ref _exn10606_ 'exception)))
              (if (macro-os-exception? _e10608_)
                  (macro-os-exception-code _e10608_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _e10608_ '())))))
            (if (macro-os-exception? _exn10606_)
                (macro-os-exception-code _exn10606_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _exn10606_ '())))))))
    (define os-exception-message
      (lambda (_exn10602_)
        (if (class-instance? RuntimeException::t _exn10602_)
            (let ((_e10604_ (slot-ref _exn10602_ 'exception)))
              (if (macro-os-exception? _e10604_)
                  (macro-os-exception-message _e10604_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _e10604_ '())))))
            (if (macro-os-exception? _exn10602_)
                (macro-os-exception-message _exn10602_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message (cons _exn10602_ '())))))))
    (define os-exception-procedure
      (lambda (_exn10596_)
        (if (class-instance? RuntimeException::t _exn10596_)
            (let ((_e10599_ (slot-ref _exn10596_ 'exception)))
              (if (macro-os-exception? _e10599_)
                  (macro-os-exception-procedure _e10599_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure (cons _e10599_ '())))))
            (if (macro-os-exception? _exn10596_)
                (macro-os-exception-procedure _exn10596_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _exn10596_ '())))))))
    (define permission-denied-exception?
      (lambda (_exn10592_)
        (if (class-instance? RuntimeException::t _exn10592_)
            (let ((_e10594_ (slot-ref _exn10592_ 'exception)))
              (macro-permission-denied-exception? _e10594_))
            (macro-permission-denied-exception? _exn10592_))))
    (define permission-denied-exception-arguments
      (lambda (_exn10588_)
        (if (class-instance? RuntimeException::t _exn10588_)
            (let ((_e10590_ (slot-ref _exn10588_ 'exception)))
              (if (macro-permission-denied-exception? _e10590_)
                  (macro-permission-denied-exception-arguments _e10590_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _e10590_ '())))))
            (if (macro-permission-denied-exception? _exn10588_)
                (macro-permission-denied-exception-arguments _exn10588_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _exn10588_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_exn10582_)
        (if (class-instance? RuntimeException::t _exn10582_)
            (let ((_e10585_ (slot-ref _exn10582_ 'exception)))
              (if (macro-permission-denied-exception? _e10585_)
                  (macro-permission-denied-exception-procedure _e10585_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _e10585_ '())))))
            (if (macro-permission-denied-exception? _exn10582_)
                (macro-permission-denied-exception-procedure _exn10582_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _exn10582_ '())))))))
    (define range-exception?
      (lambda (_exn10578_)
        (if (class-instance? RuntimeException::t _exn10578_)
            (let ((_e10580_ (slot-ref _exn10578_ 'exception)))
              (macro-range-exception? _e10580_))
            (macro-range-exception? _exn10578_))))
    (define range-exception-arg-id
      (lambda (_exn10574_)
        (if (class-instance? RuntimeException::t _exn10574_)
            (let ((_e10576_ (slot-ref _exn10574_ 'exception)))
              (if (macro-range-exception? _e10576_)
                  (macro-range-exception-arg-id _e10576_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id (cons _e10576_ '())))))
            (if (macro-range-exception? _exn10574_)
                (macro-range-exception-arg-id _exn10574_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _exn10574_ '())))))))
    (define range-exception-arguments
      (lambda (_exn10570_)
        (if (class-instance? RuntimeException::t _exn10570_)
            (let ((_e10572_ (slot-ref _exn10570_ 'exception)))
              (if (macro-range-exception? _e10572_)
                  (macro-range-exception-arguments _e10572_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _e10572_ '())))))
            (if (macro-range-exception? _exn10570_)
                (macro-range-exception-arguments _exn10570_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _exn10570_ '())))))))
    (define range-exception-procedure
      (lambda (_exn10564_)
        (if (class-instance? RuntimeException::t _exn10564_)
            (let ((_e10567_ (slot-ref _exn10564_ 'exception)))
              (if (macro-range-exception? _e10567_)
                  (macro-range-exception-procedure _e10567_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _e10567_ '())))))
            (if (macro-range-exception? _exn10564_)
                (macro-range-exception-procedure _exn10564_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _exn10564_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_exn10560_)
        (if (class-instance? RuntimeException::t _exn10560_)
            (let ((_e10562_ (slot-ref _exn10560_ 'exception)))
              (macro-rpc-remote-error-exception? _e10562_))
            (macro-rpc-remote-error-exception? _exn10560_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn10556_)
        (if (class-instance? RuntimeException::t _exn10556_)
            (let ((_e10558_ (slot-ref _exn10556_ 'exception)))
              (if (macro-rpc-remote-error-exception? _e10558_)
                  (macro-rpc-remote-error-exception-arguments _e10558_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _e10558_ '())))))
            (if (macro-rpc-remote-error-exception? _exn10556_)
                (macro-rpc-remote-error-exception-arguments _exn10556_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _exn10556_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn10552_)
        (if (class-instance? RuntimeException::t _exn10552_)
            (let ((_e10554_ (slot-ref _exn10552_ 'exception)))
              (if (macro-rpc-remote-error-exception? _e10554_)
                  (macro-rpc-remote-error-exception-message _e10554_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _e10554_ '())))))
            (if (macro-rpc-remote-error-exception? _exn10552_)
                (macro-rpc-remote-error-exception-message _exn10552_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _exn10552_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn10546_)
        (if (class-instance? RuntimeException::t _exn10546_)
            (let ((_e10549_ (slot-ref _exn10546_ 'exception)))
              (if (macro-rpc-remote-error-exception? _e10549_)
                  (macro-rpc-remote-error-exception-procedure _e10549_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _e10549_ '())))))
            (if (macro-rpc-remote-error-exception? _exn10546_)
                (macro-rpc-remote-error-exception-procedure _exn10546_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _exn10546_ '())))))))
    (define scheduler-exception?
      (lambda (_exn10542_)
        (if (class-instance? RuntimeException::t _exn10542_)
            (let ((_e10544_ (slot-ref _exn10542_ 'exception)))
              (macro-scheduler-exception? _e10544_))
            (macro-scheduler-exception? _exn10542_))))
    (define scheduler-exception-reason
      (lambda (_exn10536_)
        (if (class-instance? RuntimeException::t _exn10536_)
            (let ((_e10539_ (slot-ref _exn10536_ 'exception)))
              (if (macro-scheduler-exception? _e10539_)
                  (macro-scheduler-exception-reason _e10539_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _e10539_ '())))))
            (if (macro-scheduler-exception? _exn10536_)
                (macro-scheduler-exception-reason _exn10536_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _exn10536_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_exn10532_)
        (if (class-instance? RuntimeException::t _exn10532_)
            (let ((_e10534_ (slot-ref _exn10532_ 'exception)))
              (macro-sfun-conversion-exception? _e10534_))
            (macro-sfun-conversion-exception? _exn10532_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn10528_)
        (if (class-instance? RuntimeException::t _exn10528_)
            (let ((_e10530_ (slot-ref _exn10528_ 'exception)))
              (if (macro-sfun-conversion-exception? _e10530_)
                  (macro-sfun-conversion-exception-arguments _e10530_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _e10530_ '())))))
            (if (macro-sfun-conversion-exception? _exn10528_)
                (macro-sfun-conversion-exception-arguments _exn10528_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _exn10528_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_exn10524_)
        (if (class-instance? RuntimeException::t _exn10524_)
            (let ((_e10526_ (slot-ref _exn10524_ 'exception)))
              (if (macro-sfun-conversion-exception? _e10526_)
                  (macro-sfun-conversion-exception-code _e10526_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _e10526_ '())))))
            (if (macro-sfun-conversion-exception? _exn10524_)
                (macro-sfun-conversion-exception-code _exn10524_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _exn10524_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_exn10520_)
        (if (class-instance? RuntimeException::t _exn10520_)
            (let ((_e10522_ (slot-ref _exn10520_ 'exception)))
              (if (macro-sfun-conversion-exception? _e10522_)
                  (macro-sfun-conversion-exception-message _e10522_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _e10522_ '())))))
            (if (macro-sfun-conversion-exception? _exn10520_)
                (macro-sfun-conversion-exception-message _exn10520_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _exn10520_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn10514_)
        (if (class-instance? RuntimeException::t _exn10514_)
            (let ((_e10517_ (slot-ref _exn10514_ 'exception)))
              (if (macro-sfun-conversion-exception? _e10517_)
                  (macro-sfun-conversion-exception-procedure _e10517_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _e10517_ '())))))
            (if (macro-sfun-conversion-exception? _exn10514_)
                (macro-sfun-conversion-exception-procedure _exn10514_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _exn10514_ '())))))))
    (define stack-overflow-exception?
      (lambda (_exn10508_)
        (if (class-instance? RuntimeException::t _exn10508_)
            (let ((_e10511_ (slot-ref _exn10508_ 'exception)))
              (macro-stack-overflow-exception? _e10511_))
            (macro-stack-overflow-exception? _exn10508_))))
    (define started-thread-exception?
      (lambda (_exn10504_)
        (if (class-instance? RuntimeException::t _exn10504_)
            (let ((_e10506_ (slot-ref _exn10504_ 'exception)))
              (macro-started-thread-exception? _e10506_))
            (macro-started-thread-exception? _exn10504_))))
    (define started-thread-exception-arguments
      (lambda (_exn10500_)
        (if (class-instance? RuntimeException::t _exn10500_)
            (let ((_e10502_ (slot-ref _exn10500_ 'exception)))
              (if (macro-started-thread-exception? _e10502_)
                  (macro-started-thread-exception-arguments _e10502_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _e10502_ '())))))
            (if (macro-started-thread-exception? _exn10500_)
                (macro-started-thread-exception-arguments _exn10500_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _exn10500_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_exn10494_)
        (if (class-instance? RuntimeException::t _exn10494_)
            (let ((_e10497_ (slot-ref _exn10494_ 'exception)))
              (if (macro-started-thread-exception? _e10497_)
                  (macro-started-thread-exception-procedure _e10497_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _e10497_ '())))))
            (if (macro-started-thread-exception? _exn10494_)
                (macro-started-thread-exception-procedure _exn10494_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _exn10494_ '())))))))
    (define terminated-thread-exception?
      (lambda (_exn10490_)
        (if (class-instance? RuntimeException::t _exn10490_)
            (let ((_e10492_ (slot-ref _exn10490_ 'exception)))
              (macro-terminated-thread-exception? _e10492_))
            (macro-terminated-thread-exception? _exn10490_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn10486_)
        (if (class-instance? RuntimeException::t _exn10486_)
            (let ((_e10488_ (slot-ref _exn10486_ 'exception)))
              (if (macro-terminated-thread-exception? _e10488_)
                  (macro-terminated-thread-exception-arguments _e10488_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _e10488_ '())))))
            (if (macro-terminated-thread-exception? _exn10486_)
                (macro-terminated-thread-exception-arguments _exn10486_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _exn10486_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn10480_)
        (if (class-instance? RuntimeException::t _exn10480_)
            (let ((_e10483_ (slot-ref _exn10480_ 'exception)))
              (if (macro-terminated-thread-exception? _e10483_)
                  (macro-terminated-thread-exception-procedure _e10483_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _e10483_ '())))))
            (if (macro-terminated-thread-exception? _exn10480_)
                (macro-terminated-thread-exception-procedure _exn10480_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _exn10480_ '())))))))
    (define type-exception?
      (lambda (_exn10476_)
        (if (class-instance? RuntimeException::t _exn10476_)
            (let ((_e10478_ (slot-ref _exn10476_ 'exception)))
              (macro-type-exception? _e10478_))
            (macro-type-exception? _exn10476_))))
    (define type-exception-arg-id
      (lambda (_exn10472_)
        (if (class-instance? RuntimeException::t _exn10472_)
            (let ((_e10474_ (slot-ref _exn10472_ 'exception)))
              (if (macro-type-exception? _e10474_)
                  (macro-type-exception-arg-id _e10474_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id (cons _e10474_ '())))))
            (if (macro-type-exception? _exn10472_)
                (macro-type-exception-arg-id _exn10472_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id (cons _exn10472_ '())))))))
    (define type-exception-arguments
      (lambda (_exn10468_)
        (if (class-instance? RuntimeException::t _exn10468_)
            (let ((_e10470_ (slot-ref _exn10468_ 'exception)))
              (if (macro-type-exception? _e10470_)
                  (macro-type-exception-arguments _e10470_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _e10470_ '())))))
            (if (macro-type-exception? _exn10468_)
                (macro-type-exception-arguments _exn10468_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _exn10468_ '())))))))
    (define type-exception-procedure
      (lambda (_exn10464_)
        (if (class-instance? RuntimeException::t _exn10464_)
            (let ((_e10466_ (slot-ref _exn10464_ 'exception)))
              (if (macro-type-exception? _e10466_)
                  (macro-type-exception-procedure _e10466_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _e10466_ '())))))
            (if (macro-type-exception? _exn10464_)
                (macro-type-exception-procedure _exn10464_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _exn10464_ '())))))))
    (define type-exception-type-id
      (lambda (_exn10458_)
        (if (class-instance? RuntimeException::t _exn10458_)
            (let ((_e10461_ (slot-ref _exn10458_ 'exception)))
              (if (macro-type-exception? _e10461_)
                  (macro-type-exception-type-id _e10461_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id (cons _e10461_ '())))))
            (if (macro-type-exception? _exn10458_)
                (macro-type-exception-type-id _exn10458_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _exn10458_ '())))))))
    (define unbound-global-exception?
      (lambda (_exn10454_)
        (if (class-instance? RuntimeException::t _exn10454_)
            (let ((_e10456_ (slot-ref _exn10454_ 'exception)))
              (macro-unbound-global-exception? _e10456_))
            (macro-unbound-global-exception? _exn10454_))))
    (define unbound-global-exception-code
      (lambda (_exn10450_)
        (if (class-instance? RuntimeException::t _exn10450_)
            (let ((_e10452_ (slot-ref _exn10450_ 'exception)))
              (if (macro-unbound-global-exception? _e10452_)
                  (macro-unbound-global-exception-code _e10452_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _e10452_ '())))))
            (if (macro-unbound-global-exception? _exn10450_)
                (macro-unbound-global-exception-code _exn10450_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _exn10450_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_exn10446_)
        (if (class-instance? RuntimeException::t _exn10446_)
            (let ((_e10448_ (slot-ref _exn10446_ 'exception)))
              (if (macro-unbound-global-exception? _e10448_)
                  (macro-unbound-global-exception-rte _e10448_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _e10448_ '())))))
            (if (macro-unbound-global-exception? _exn10446_)
                (macro-unbound-global-exception-rte _exn10446_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _exn10446_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_exn10440_)
        (if (class-instance? RuntimeException::t _exn10440_)
            (let ((_e10443_ (slot-ref _exn10440_ 'exception)))
              (if (macro-unbound-global-exception? _e10443_)
                  (macro-unbound-global-exception-variable _e10443_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _e10443_ '())))))
            (if (macro-unbound-global-exception? _exn10440_)
                (macro-unbound-global-exception-variable _exn10440_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _exn10440_ '())))))))
    (define unbound-key-exception?
      (lambda (_exn10436_)
        (if (class-instance? RuntimeException::t _exn10436_)
            (let ((_e10438_ (slot-ref _exn10436_ 'exception)))
              (macro-unbound-key-exception? _e10438_))
            (macro-unbound-key-exception? _exn10436_))))
    (define unbound-key-exception-arguments
      (lambda (_exn10432_)
        (if (class-instance? RuntimeException::t _exn10432_)
            (let ((_e10434_ (slot-ref _exn10432_ 'exception)))
              (if (macro-unbound-key-exception? _e10434_)
                  (macro-unbound-key-exception-arguments _e10434_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _e10434_ '())))))
            (if (macro-unbound-key-exception? _exn10432_)
                (macro-unbound-key-exception-arguments _exn10432_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _exn10432_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_exn10426_)
        (if (class-instance? RuntimeException::t _exn10426_)
            (let ((_e10429_ (slot-ref _exn10426_ 'exception)))
              (if (macro-unbound-key-exception? _e10429_)
                  (macro-unbound-key-exception-procedure _e10429_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _e10429_ '())))))
            (if (macro-unbound-key-exception? _exn10426_)
                (macro-unbound-key-exception-procedure _exn10426_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _exn10426_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn10422_)
        (if (class-instance? RuntimeException::t _exn10422_)
            (let ((_e10424_ (slot-ref _exn10422_ 'exception)))
              (macro-unbound-os-environment-variable-exception? _e10424_))
            (macro-unbound-os-environment-variable-exception? _exn10422_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn10418_)
        (if (class-instance? RuntimeException::t _exn10418_)
            (let ((_e10420_ (slot-ref _exn10418_ 'exception)))
              (if (macro-unbound-os-environment-variable-exception? _e10420_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e10420_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _e10420_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _exn10418_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn10418_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _exn10418_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn10412_)
        (if (class-instance? RuntimeException::t _exn10412_)
            (let ((_e10415_ (slot-ref _exn10412_ 'exception)))
              (if (macro-unbound-os-environment-variable-exception? _e10415_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e10415_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _e10415_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _exn10412_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn10412_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _exn10412_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_exn10408_)
        (if (class-instance? RuntimeException::t _exn10408_)
            (let ((_e10410_ (slot-ref _exn10408_ 'exception)))
              (macro-unbound-serial-number-exception? _e10410_))
            (macro-unbound-serial-number-exception? _exn10408_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn10404_)
        (if (class-instance? RuntimeException::t _exn10404_)
            (let ((_e10406_ (slot-ref _exn10404_ 'exception)))
              (if (macro-unbound-serial-number-exception? _e10406_)
                  (macro-unbound-serial-number-exception-arguments _e10406_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _e10406_ '())))))
            (if (macro-unbound-serial-number-exception? _exn10404_)
                (macro-unbound-serial-number-exception-arguments _exn10404_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _exn10404_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn10398_)
        (if (class-instance? RuntimeException::t _exn10398_)
            (let ((_e10401_ (slot-ref _exn10398_ 'exception)))
              (if (macro-unbound-serial-number-exception? _e10401_)
                  (macro-unbound-serial-number-exception-procedure _e10401_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _e10401_ '())))))
            (if (macro-unbound-serial-number-exception? _exn10398_)
                (macro-unbound-serial-number-exception-procedure _exn10398_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _exn10398_ '())))))))
    (define uncaught-exception?
      (lambda (_exn10394_)
        (if (class-instance? RuntimeException::t _exn10394_)
            (let ((_e10396_ (slot-ref _exn10394_ 'exception)))
              (macro-uncaught-exception? _e10396_))
            (macro-uncaught-exception? _exn10394_))))
    (define uncaught-exception-arguments
      (lambda (_exn10390_)
        (if (class-instance? RuntimeException::t _exn10390_)
            (let ((_e10392_ (slot-ref _exn10390_ 'exception)))
              (if (macro-uncaught-exception? _e10392_)
                  (macro-uncaught-exception-arguments _e10392_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _e10392_ '())))))
            (if (macro-uncaught-exception? _exn10390_)
                (macro-uncaught-exception-arguments _exn10390_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _exn10390_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_exn10386_)
        (if (class-instance? RuntimeException::t _exn10386_)
            (let ((_e10388_ (slot-ref _exn10386_ 'exception)))
              (if (macro-uncaught-exception? _e10388_)
                  (macro-uncaught-exception-procedure _e10388_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _e10388_ '())))))
            (if (macro-uncaught-exception? _exn10386_)
                (macro-uncaught-exception-procedure _exn10386_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _exn10386_ '())))))))
    (define uncaught-exception-reason
      (lambda (_exn10380_)
        (if (class-instance? RuntimeException::t _exn10380_)
            (let ((_e10383_ (slot-ref _exn10380_ 'exception)))
              (if (macro-uncaught-exception? _e10383_)
                  (macro-uncaught-exception-reason _e10383_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _e10383_ '())))))
            (if (macro-uncaught-exception? _exn10380_)
                (macro-uncaught-exception-reason _exn10380_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _exn10380_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_exn10376_)
        (if (class-instance? RuntimeException::t _exn10376_)
            (let ((_e10378_ (slot-ref _exn10376_ 'exception)))
              (macro-uninitialized-thread-exception? _e10378_))
            (macro-uninitialized-thread-exception? _exn10376_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn10372_)
        (if (class-instance? RuntimeException::t _exn10372_)
            (let ((_e10374_ (slot-ref _exn10372_ 'exception)))
              (if (macro-uninitialized-thread-exception? _e10374_)
                  (macro-uninitialized-thread-exception-arguments _e10374_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _e10374_ '())))))
            (if (macro-uninitialized-thread-exception? _exn10372_)
                (macro-uninitialized-thread-exception-arguments _exn10372_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _exn10372_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn10366_)
        (if (class-instance? RuntimeException::t _exn10366_)
            (let ((_e10369_ (slot-ref _exn10366_ 'exception)))
              (if (macro-uninitialized-thread-exception? _e10369_)
                  (macro-uninitialized-thread-exception-procedure _e10369_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _e10369_ '())))))
            (if (macro-uninitialized-thread-exception? _exn10366_)
                (macro-uninitialized-thread-exception-procedure _exn10366_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _exn10366_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn10362_)
        (if (class-instance? RuntimeException::t _exn10362_)
            (let ((_e10364_ (slot-ref _exn10362_ 'exception)))
              (macro-unknown-keyword-argument-exception? _e10364_))
            (macro-unknown-keyword-argument-exception? _exn10362_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn10358_)
        (if (class-instance? RuntimeException::t _exn10358_)
            (let ((_e10360_ (slot-ref _exn10358_ 'exception)))
              (if (macro-unknown-keyword-argument-exception? _e10360_)
                  (macro-unknown-keyword-argument-exception-arguments _e10360_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _e10360_ '())))))
            (if (macro-unknown-keyword-argument-exception? _exn10358_)
                (macro-unknown-keyword-argument-exception-arguments _exn10358_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _exn10358_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn10352_)
        (if (class-instance? RuntimeException::t _exn10352_)
            (let ((_e10355_ (slot-ref _exn10352_ 'exception)))
              (if (macro-unknown-keyword-argument-exception? _e10355_)
                  (macro-unknown-keyword-argument-exception-procedure _e10355_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _e10355_ '())))))
            (if (macro-unknown-keyword-argument-exception? _exn10352_)
                (macro-unknown-keyword-argument-exception-procedure _exn10352_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _exn10352_ '())))))))
    (define unterminated-process-exception?
      (lambda (_exn10348_)
        (if (class-instance? RuntimeException::t _exn10348_)
            (let ((_e10350_ (slot-ref _exn10348_ 'exception)))
              (macro-unterminated-process-exception? _e10350_))
            (macro-unterminated-process-exception? _exn10348_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn10344_)
        (if (class-instance? RuntimeException::t _exn10344_)
            (let ((_e10346_ (slot-ref _exn10344_ 'exception)))
              (if (macro-unterminated-process-exception? _e10346_)
                  (macro-unterminated-process-exception-arguments _e10346_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _e10346_ '())))))
            (if (macro-unterminated-process-exception? _exn10344_)
                (macro-unterminated-process-exception-arguments _exn10344_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _exn10344_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn10338_)
        (if (class-instance? RuntimeException::t _exn10338_)
            (let ((_e10341_ (slot-ref _exn10338_ 'exception)))
              (if (macro-unterminated-process-exception? _e10341_)
                  (macro-unterminated-process-exception-procedure _e10341_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _e10341_ '())))))
            (if (macro-unterminated-process-exception? _exn10338_)
                (macro-unterminated-process-exception-procedure _exn10338_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _exn10338_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn10334_)
        (if (class-instance? RuntimeException::t _exn10334_)
            (let ((_e10336_ (slot-ref _exn10334_ 'exception)))
              (macro-wrong-number-of-arguments-exception? _e10336_))
            (macro-wrong-number-of-arguments-exception? _exn10334_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn10330_)
        (if (class-instance? RuntimeException::t _exn10330_)
            (let ((_e10332_ (slot-ref _exn10330_ 'exception)))
              (if (macro-wrong-number-of-arguments-exception? _e10332_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e10332_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _e10332_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _exn10330_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn10330_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _exn10330_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn10324_)
        (if (class-instance? RuntimeException::t _exn10324_)
            (let ((_e10327_ (slot-ref _exn10324_ 'exception)))
              (if (macro-wrong-number-of-arguments-exception? _e10327_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e10327_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _e10327_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _exn10324_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn10324_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _exn10324_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn10320_)
        (if (class-instance? RuntimeException::t _exn10320_)
            (let ((_e10322_ (slot-ref _exn10320_ 'exception)))
              (macro-wrong-number-of-values-exception? _e10322_))
            (macro-wrong-number-of-values-exception? _exn10320_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn10316_)
        (if (class-instance? RuntimeException::t _exn10316_)
            (let ((_e10318_ (slot-ref _exn10316_ 'exception)))
              (if (macro-wrong-number-of-values-exception? _e10318_)
                  (macro-wrong-number-of-values-exception-code _e10318_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _e10318_ '())))))
            (if (macro-wrong-number-of-values-exception? _exn10316_)
                (macro-wrong-number-of-values-exception-code _exn10316_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _exn10316_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn10312_)
        (if (class-instance? RuntimeException::t _exn10312_)
            (let ((_e10314_ (slot-ref _exn10312_ 'exception)))
              (if (macro-wrong-number-of-values-exception? _e10314_)
                  (macro-wrong-number-of-values-exception-rte _e10314_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _e10314_ '())))))
            (if (macro-wrong-number-of-values-exception? _exn10312_)
                (macro-wrong-number-of-values-exception-rte _exn10312_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _exn10312_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn10306_)
        (if (class-instance? RuntimeException::t _exn10306_)
            (let ((_e10309_ (slot-ref _exn10306_ 'exception)))
              (if (macro-wrong-number-of-values-exception? _e10309_)
                  (macro-wrong-number-of-values-exception-vals _e10309_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _e10309_ '())))))
            (if (macro-wrong-number-of-values-exception? _exn10306_)
                (macro-wrong-number-of-values-exception-vals _exn10306_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _exn10306_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn10300_)
        (if (class-instance? RuntimeException::t _exn10300_)
            (let ((_e10303_ (slot-ref _exn10300_ 'exception)))
              (macro-wrong-processor-c-return-exception? _e10303_))
            (macro-wrong-processor-c-return-exception? _exn10300_))))))
