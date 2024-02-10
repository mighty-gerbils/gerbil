(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707556024)
  (begin
    (define Exception::t
      (let ((__tmp92675 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp92675
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args88452_
        (apply make-class-instance Exception::t _$args88452_)))
    (define StackTrace::t
      (let ((__tmp92676 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp92676
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args88449_
        (apply make-class-instance StackTrace::t _$args88449_)))
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
      (let ((__tmp92677 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp92677
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args88446_ (apply make-class-instance Error::t _$args88446_)))
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
      (let ((__tmp92678 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp92678
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args88443_
        (apply make-class-instance RuntimeException::t _$args88443_)))
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
      (lambda (_exn88438_ _continue88439_)
        (let ((_exn88441_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn88438_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn88441_ _continue88439_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn88434_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn88434_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn88434_ 'continuation))
                '#!void
                (let ((__tmp92679
                       (lambda (_cont88436_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn88434_
                            'continuation
                            _cont88436_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp92679)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn88434_))))
    (define error
      (lambda (_message88431_ . _irritants88432_)
        (raise (let ((__obj92669 (make-object Error::t '5)))
                 (Error:::init!
                  __obj92669
                  _message88431_
                  'irritants:
                  _irritants88432_)
                 __obj92669))))
    (define with-exception-handler
      (lambda (_handler88424_ _thunk88425_)
        (if (let () (declare (not safe)) (procedure? _handler88424_))
            '#!void
            (raise (let ((__obj92670 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92670
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88424_ '())))
                     __obj92670)))
        (if (let () (declare (not safe)) (procedure? _thunk88425_))
            '#!void
            (raise (let ((__obj92671 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92671
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88425_ '())))
                     __obj92671)))
        (let ((__tmp92680
               (lambda (_exn88427_)
                 (let ((_exn88429_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn88427_))))
                   (_handler88424_ _exn88429_)))))
          (declare (not safe))
          (##with-exception-handler __tmp92680 _thunk88425_))))
    (define with-catch
      (lambda (_handler88417_ _thunk88418_)
        (if (let () (declare (not safe)) (procedure? _handler88417_))
            '#!void
            (raise (let ((__obj92672 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92672
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88417_ '())))
                     __obj92672)))
        (if (let () (declare (not safe)) (procedure? _thunk88418_))
            '#!void
            (raise (let ((__obj92673 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92673
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88418_ '())))
                     __obj92673)))
        (let ((__tmp92681
               (lambda (_cont88420_)
                 (with-exception-handler
                  (lambda (_exn88422_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont88420_
                       _handler88417_
                       _exn88422_)))
                  _thunk88418_))))
          (declare (not safe))
          (##continuation-capture __tmp92681))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn88408_)
        (if (or (heap-overflow-exception? _exn88408_)
                (stack-overflow-exception? _exn88408_))
            _exn88408_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn88408_))
                _exn88408_
                (if (macro-exception? _exn88408_)
                    (let ((_rte88413_
                           (let ((__obj92674
                                  (make-object RuntimeException::t '3)))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj92674
                                _exn88408_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj92674)))
                      (let ((__tmp92682
                             (lambda (_cont88415_)
                               (let ((__tmp92683
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont88415_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte88413_
                                  'continuation
                                  __tmp92683)))))
                        (declare (not safe))
                        (##continuation-capture __tmp92682))
                      _rte88413_)
                    _exn88408_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj88403_)
        (let ((_$e88405_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj88403_))))
          (if _$e88405_ _$e88405_ (error-exception? _obj88403_)))))
    (define error-message
      (lambda (_obj88401_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88401_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88401_ 'message))
            (if (error-exception? _obj88401_)
                (error-exception-message _obj88401_)
                '#f))))
    (define error-irritants
      (lambda (_obj88399_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88399_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88399_ 'irritants))
            (if (error-exception? _obj88399_)
                (error-exception-parameters _obj88399_)
                '#f))))
    (define error-trace
      (lambda (_obj88397_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88397_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88397_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e88379_ _port88380_)
        (let ((_$e88382_
               (let ()
                 (declare (not safe))
                 (method-ref _e88379_ 'display-exception))))
          (if _$e88382_
              ((lambda (_f88385_) (_f88385_ _e88379_ _port88380_)) _$e88382_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e88379_ _port88380_))))))
    (define display-exception__0
      (lambda (_e88390_)
        (let ((_port88392_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e88390_ _port88392_))))
    (define display-exception
      (lambda _g92685_
        (let ((_g92684_ (let () (declare (not safe)) (##length _g92685_))))
          (cond ((let () (declare (not safe)) (##fx= _g92684_ 1))
                 (apply (lambda (_e88390_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e88390_)))
                        _g92685_))
                ((let () (declare (not safe)) (##fx= _g92684_ 2))
                 (apply (lambda (_e88394_ _port88395_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e88394_ _port88395_)))
                        _g92685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g92685_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self88368_ _message88369_ . _rest88370_)
        (let ((_message88376_
               (if (let () (declare (not safe)) (string? _message88369_))
                   _message88369_
                   (call-with-output-string
                    '""
                    (lambda (_g8837188373_)
                      (display _message88369_ _g8837188373_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self88368_ 'message _message88376_))
          (apply class-instance-init! _self88368_ _rest88370_))))
    (define Error:::init!::specialize
      (lambda (__t92648)
        (let ((__message92649
               (let ((__tmp92650
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92648 'message))))
                 (if __tmp92650 __tmp92650 (error '"Unknown slot" 'message)))))
          (lambda (_self88368_ _message88369_ . _rest88370_)
            (let ((_message88376_
                   (if (let () (declare (not safe)) (string? _message88369_))
                       _message88369_
                       (call-with-output-string
                        '""
                        (lambda (_g8837188373_)
                          (display _message88369_ _g8837188373_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self88368_
                 _message88376_
                 __message92649
                 __t92648
                 '#f))
              (apply class-instance-init! _self88368_ _rest88370_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self88226_ _port88227_)
        (let ((_tmp-port88229_ (open-output-string))
              (_display-error-newline88230_
               (> (output-port-column _port88227_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88229_))
          (let ((__tmp92686
                 (lambda ()
                   (if _display-error-newline88230_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e88233_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88226_ 'where))))
                     (if _$e88233_ (display _$e88233_) (display '"?")))
                   (let ((__tmp92687
                          (let ((__tmp92688
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self88226_))))
                            (declare (not safe))
                            (##type-name __tmp92688))))
                     (declare (not safe))
                     (display* '" [" __tmp92687 '"]: "))
                   (let ((__tmp92689
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88226_ 'message))))
                     (declare (not safe))
                     (displayln __tmp92689))
                   (let ((_irritants88236_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88226_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants88236_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj88238_)
                              (write _obj88238_)
                              (write-char '#\space))
                            _irritants88236_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self88226_))
                            (dump-stack-trace?))
                       (let ((_cont8823988241_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self88226_
                                 'continuation))))
                         (if _cont8823988241_
                             (let ((_cont88244_ _cont8823988241_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont88244_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp92686
             current-output-port
             _tmp-port88229_))
          (let ((__tmp92690 (get-output-string _tmp-port88229_)))
            (declare (not safe))
            (##write-string __tmp92690 _port88227_)))))
    (define Error::display-exception::specialize
      (lambda (__t92651)
        (let ((__continuation92652
               (let ((__tmp92656
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92651 'continuation))))
                 (if __tmp92656
                     __tmp92656
                     (error '"Unknown slot" 'continuation))))
              (__irritants92653
               (let ((__tmp92657
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92651 'irritants))))
                 (if __tmp92657
                     __tmp92657
                     (error '"Unknown slot" 'irritants))))
              (__where92654
               (let ((__tmp92658
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92651 'where))))
                 (if __tmp92658 __tmp92658 (error '"Unknown slot" 'where))))
              (__message92655
               (let ((__tmp92659
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92651 'message))))
                 (if __tmp92659 __tmp92659 (error '"Unknown slot" 'message)))))
          (lambda (_self88226_ _port88227_)
            (let ((_tmp-port88229_ (open-output-string))
                  (_display-error-newline88230_
                   (> (output-port-column _port88227_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88229_))
              (let ((__tmp92691
                     (lambda ()
                       (if _display-error-newline88230_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e88233_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88226_
                                 __where92654
                                 __t92651
                                 '#f))))
                         (if _$e88233_ (display _$e88233_) (display '"?")))
                       (let ((__tmp92692
                              (let ((__tmp92693
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self88226_))))
                                (declare (not safe))
                                (##type-name __tmp92693))))
                         (declare (not safe))
                         (display* '" [" __tmp92692 '"]: "))
                       (let ((__tmp92694
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88226_
                                 __message92655
                                 __t92651
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp92694))
                       (let ((_irritants88236_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88226_
                                 __irritants92653
                                 __t92651
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants88236_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj88238_)
                                  (write _obj88238_)
                                  (write-char '#\space))
                                _irritants88236_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self88226_))
                                (dump-stack-trace?))
                           (let ((_cont8823988241_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self88226_
                                     __continuation92652
                                     __t92651
                                     '#f))))
                             (if _cont8823988241_
                                 (let ((_cont88244_ _cont8823988241_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont88244_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp92691
                 current-output-port
                 _tmp-port88229_))
              (let ((__tmp92695 (get-output-string _tmp-port88229_)))
                (declare (not safe))
                (##write-string __tmp92695 _port88227_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self88093_ _port88094_)
        (let ((_tmp-port88096_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88096_))
          (let ((__tmp92696
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self88093_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp92696 _tmp-port88096_))
          (if (dump-stack-trace?)
              (let ((_cont8809788099_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self88093_ 'continuation))))
                (if _cont8809788099_
                    (let ((_cont88102_ _cont8809788099_))
                      (display '"--- continuation backtrace:" _tmp-port88096_)
                      (newline _tmp-port88096_)
                      (display-continuation-backtrace
                       _cont88102_
                       _tmp-port88096_))
                    '#f))
              '#!void)
          (let ((__tmp92697 (get-output-string _tmp-port88096_)))
            (declare (not safe))
            (##write-string __tmp92697 _port88094_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t92660)
        (let ((__continuation92661
               (let ((__tmp92663
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92660 'continuation))))
                 (if __tmp92663
                     __tmp92663
                     (error '"Unknown slot" 'continuation))))
              (__exception92662
               (let ((__tmp92664
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92660 'exception))))
                 (if __tmp92664
                     __tmp92664
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self88093_ _port88094_)
            (let ((_tmp-port88096_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88096_))
              (let ((__tmp92698
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self88093_
                        __exception92662
                        __t92660
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp92698 _tmp-port88096_))
              (if (dump-stack-trace?)
                  (let ((_cont8809788099_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self88093_
                            __continuation92661
                            __t92660
                            '#f))))
                    (if _cont8809788099_
                        (let ((_cont88102_ _cont8809788099_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port88096_)
                          (newline _tmp-port88096_)
                          (display-continuation-backtrace
                           _cont88102_
                           _tmp-port88096_))
                        '#f))
                  '#!void)
              (let ((__tmp92699 (get-output-string _tmp-port88096_)))
                (declare (not safe))
                (##write-string __tmp92699 _port88094_)))))))
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
      (lambda (_port87965_)
        (if (macro-character-port? _port87965_)
            (let ((_old-width87967_
                   (macro-character-port-output-width _port87965_)))
              (macro-character-port-output-width-set!
               _port87965_
               (lambda (_port87969_) '256))
              _old-width87967_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port87962_ _old-width87963_)
        (if (macro-character-port? _port87962_)
            (macro-character-port-output-width-set!
             _port87962_
             _old-width87963_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e87960_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e87960_))))
    (define abandoned-mutex-exception?
      (lambda (_exn87954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87954_))
            (let ((_e87957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87954_ 'exception))))
              (macro-abandoned-mutex-exception? _e87957_))
            (macro-abandoned-mutex-exception? _exn87954_))))
    (define cfun-conversion-exception?
      (lambda (_exn87950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87950_))
            (let ((_e87952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87950_ 'exception))))
              (macro-cfun-conversion-exception? _e87952_))
            (macro-cfun-conversion-exception? _exn87950_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn87946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87946_))
            (let ((_e87948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87946_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87948_)
                  (macro-cfun-conversion-exception-arguments _e87948_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92701
                                (let ()
                                  (declare (not safe))
                                  (cons _e87948_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp92701)))))
            (if (macro-cfun-conversion-exception? _exn87946_)
                (macro-cfun-conversion-exception-arguments _exn87946_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92700
                              (let ()
                                (declare (not safe))
                                (cons _exn87946_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp92700)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn87942_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87942_))
            (let ((_e87944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87942_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87944_)
                  (macro-cfun-conversion-exception-code _e87944_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92703
                                (let ()
                                  (declare (not safe))
                                  (cons _e87944_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp92703)))))
            (if (macro-cfun-conversion-exception? _exn87942_)
                (macro-cfun-conversion-exception-code _exn87942_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92702
                              (let ()
                                (declare (not safe))
                                (cons _exn87942_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp92702)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn87938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87938_))
            (let ((_e87940_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87938_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87940_)
                  (macro-cfun-conversion-exception-message _e87940_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92705
                                (let ()
                                  (declare (not safe))
                                  (cons _e87940_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp92705)))))
            (if (macro-cfun-conversion-exception? _exn87938_)
                (macro-cfun-conversion-exception-message _exn87938_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92704
                              (let ()
                                (declare (not safe))
                                (cons _exn87938_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp92704)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn87932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87932_))
            (let ((_e87935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87932_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87935_)
                  (macro-cfun-conversion-exception-procedure _e87935_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92707
                                (let ()
                                  (declare (not safe))
                                  (cons _e87935_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp92707)))))
            (if (macro-cfun-conversion-exception? _exn87932_)
                (macro-cfun-conversion-exception-procedure _exn87932_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92706
                              (let ()
                                (declare (not safe))
                                (cons _exn87932_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp92706)))))))
    (define datum-parsing-exception?
      (lambda (_exn87928_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87928_))
            (let ((_e87930_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87928_ 'exception))))
              (macro-datum-parsing-exception? _e87930_))
            (macro-datum-parsing-exception? _exn87928_))))
    (define datum-parsing-exception-kind
      (lambda (_exn87924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87924_))
            (let ((_e87926_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87924_ 'exception))))
              (if (macro-datum-parsing-exception? _e87926_)
                  (macro-datum-parsing-exception-kind _e87926_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92709
                                (let ()
                                  (declare (not safe))
                                  (cons _e87926_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp92709)))))
            (if (macro-datum-parsing-exception? _exn87924_)
                (macro-datum-parsing-exception-kind _exn87924_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92708
                              (let ()
                                (declare (not safe))
                                (cons _exn87924_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp92708)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn87920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87920_))
            (let ((_e87922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87920_ 'exception))))
              (if (macro-datum-parsing-exception? _e87922_)
                  (macro-datum-parsing-exception-parameters _e87922_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92711
                                (let ()
                                  (declare (not safe))
                                  (cons _e87922_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp92711)))))
            (if (macro-datum-parsing-exception? _exn87920_)
                (macro-datum-parsing-exception-parameters _exn87920_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92710
                              (let ()
                                (declare (not safe))
                                (cons _exn87920_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp92710)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn87914_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87914_))
            (let ((_e87917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87914_ 'exception))))
              (if (macro-datum-parsing-exception? _e87917_)
                  (macro-datum-parsing-exception-readenv _e87917_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92713
                                (let ()
                                  (declare (not safe))
                                  (cons _e87917_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp92713)))))
            (if (macro-datum-parsing-exception? _exn87914_)
                (macro-datum-parsing-exception-readenv _exn87914_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92712
                              (let ()
                                (declare (not safe))
                                (cons _exn87914_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp92712)))))))
    (define deadlock-exception?
      (lambda (_exn87908_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87908_))
            (let ((_e87911_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87908_ 'exception))))
              (macro-deadlock-exception? _e87911_))
            (macro-deadlock-exception? _exn87908_))))
    (define divide-by-zero-exception?
      (lambda (_exn87904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87904_))
            (let ((_e87906_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87904_ 'exception))))
              (macro-divide-by-zero-exception? _e87906_))
            (macro-divide-by-zero-exception? _exn87904_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn87900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87900_))
            (let ((_e87902_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87900_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87902_)
                  (macro-divide-by-zero-exception-arguments _e87902_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92715
                                (let ()
                                  (declare (not safe))
                                  (cons _e87902_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp92715)))))
            (if (macro-divide-by-zero-exception? _exn87900_)
                (macro-divide-by-zero-exception-arguments _exn87900_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92714
                              (let ()
                                (declare (not safe))
                                (cons _exn87900_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp92714)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn87894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87894_))
            (let ((_e87897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87894_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87897_)
                  (macro-divide-by-zero-exception-procedure _e87897_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92717
                                (let ()
                                  (declare (not safe))
                                  (cons _e87897_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp92717)))))
            (if (macro-divide-by-zero-exception? _exn87894_)
                (macro-divide-by-zero-exception-procedure _exn87894_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92716
                              (let ()
                                (declare (not safe))
                                (cons _exn87894_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp92716)))))))
    (define error-exception?
      (lambda (_exn87890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87890_))
            (let ((_e87892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87890_ 'exception))))
              (macro-error-exception? _e87892_))
            (macro-error-exception? _exn87890_))))
    (define error-exception-message
      (lambda (_exn87886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87886_))
            (let ((_e87888_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87886_ 'exception))))
              (if (macro-error-exception? _e87888_)
                  (macro-error-exception-message _e87888_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92719
                                (let ()
                                  (declare (not safe))
                                  (cons _e87888_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp92719)))))
            (if (macro-error-exception? _exn87886_)
                (macro-error-exception-message _exn87886_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92718
                              (let ()
                                (declare (not safe))
                                (cons _exn87886_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp92718)))))))
    (define error-exception-parameters
      (lambda (_exn87880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87880_))
            (let ((_e87883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87880_ 'exception))))
              (if (macro-error-exception? _e87883_)
                  (macro-error-exception-parameters _e87883_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92721
                                (let ()
                                  (declare (not safe))
                                  (cons _e87883_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp92721)))))
            (if (macro-error-exception? _exn87880_)
                (macro-error-exception-parameters _exn87880_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92720
                              (let ()
                                (declare (not safe))
                                (cons _exn87880_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp92720)))))))
    (define expression-parsing-exception?
      (lambda (_exn87876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87876_))
            (let ((_e87878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87876_ 'exception))))
              (macro-expression-parsing-exception? _e87878_))
            (macro-expression-parsing-exception? _exn87876_))))
    (define expression-parsing-exception-kind
      (lambda (_exn87872_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87872_))
            (let ((_e87874_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87872_ 'exception))))
              (if (macro-expression-parsing-exception? _e87874_)
                  (macro-expression-parsing-exception-kind _e87874_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92723
                                (let ()
                                  (declare (not safe))
                                  (cons _e87874_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp92723)))))
            (if (macro-expression-parsing-exception? _exn87872_)
                (macro-expression-parsing-exception-kind _exn87872_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92722
                              (let ()
                                (declare (not safe))
                                (cons _exn87872_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp92722)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn87868_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87868_))
            (let ((_e87870_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87868_ 'exception))))
              (if (macro-expression-parsing-exception? _e87870_)
                  (macro-expression-parsing-exception-parameters _e87870_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92725
                                (let ()
                                  (declare (not safe))
                                  (cons _e87870_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp92725)))))
            (if (macro-expression-parsing-exception? _exn87868_)
                (macro-expression-parsing-exception-parameters _exn87868_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92724
                              (let ()
                                (declare (not safe))
                                (cons _exn87868_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp92724)))))))
    (define expression-parsing-exception-source
      (lambda (_exn87862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87862_))
            (let ((_e87865_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87862_ 'exception))))
              (if (macro-expression-parsing-exception? _e87865_)
                  (macro-expression-parsing-exception-source _e87865_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92727
                                (let ()
                                  (declare (not safe))
                                  (cons _e87865_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp92727)))))
            (if (macro-expression-parsing-exception? _exn87862_)
                (macro-expression-parsing-exception-source _exn87862_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92726
                              (let ()
                                (declare (not safe))
                                (cons _exn87862_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp92726)))))))
    (define file-exists-exception?
      (lambda (_exn87858_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87858_))
            (let ((_e87860_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87858_ 'exception))))
              (macro-file-exists-exception? _e87860_))
            (macro-file-exists-exception? _exn87858_))))
    (define file-exists-exception-arguments
      (lambda (_exn87854_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87854_))
            (let ((_e87856_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87854_ 'exception))))
              (if (macro-file-exists-exception? _e87856_)
                  (macro-file-exists-exception-arguments _e87856_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92729
                                (let ()
                                  (declare (not safe))
                                  (cons _e87856_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp92729)))))
            (if (macro-file-exists-exception? _exn87854_)
                (macro-file-exists-exception-arguments _exn87854_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92728
                              (let ()
                                (declare (not safe))
                                (cons _exn87854_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp92728)))))))
    (define file-exists-exception-procedure
      (lambda (_exn87848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87848_))
            (let ((_e87851_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87848_ 'exception))))
              (if (macro-file-exists-exception? _e87851_)
                  (macro-file-exists-exception-procedure _e87851_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92731
                                (let ()
                                  (declare (not safe))
                                  (cons _e87851_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp92731)))))
            (if (macro-file-exists-exception? _exn87848_)
                (macro-file-exists-exception-procedure _exn87848_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92730
                              (let ()
                                (declare (not safe))
                                (cons _exn87848_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp92730)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn87844_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87844_))
            (let ((_e87846_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87844_ 'exception))))
              (macro-fixnum-overflow-exception? _e87846_))
            (macro-fixnum-overflow-exception? _exn87844_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn87840_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87840_))
            (let ((_e87842_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87840_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87842_)
                  (macro-fixnum-overflow-exception-arguments _e87842_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92733
                                (let ()
                                  (declare (not safe))
                                  (cons _e87842_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp92733)))))
            (if (macro-fixnum-overflow-exception? _exn87840_)
                (macro-fixnum-overflow-exception-arguments _exn87840_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92732
                              (let ()
                                (declare (not safe))
                                (cons _exn87840_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp92732)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn87834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87834_))
            (let ((_e87837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87834_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87837_)
                  (macro-fixnum-overflow-exception-procedure _e87837_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92735
                                (let ()
                                  (declare (not safe))
                                  (cons _e87837_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp92735)))))
            (if (macro-fixnum-overflow-exception? _exn87834_)
                (macro-fixnum-overflow-exception-procedure _exn87834_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92734
                              (let ()
                                (declare (not safe))
                                (cons _exn87834_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp92734)))))))
    (define heap-overflow-exception?
      (lambda (_exn87828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87828_))
            (let ((_e87831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87828_ 'exception))))
              (macro-heap-overflow-exception? _e87831_))
            (macro-heap-overflow-exception? _exn87828_))))
    (define inactive-thread-exception?
      (lambda (_exn87824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87824_))
            (let ((_e87826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87824_ 'exception))))
              (macro-inactive-thread-exception? _e87826_))
            (macro-inactive-thread-exception? _exn87824_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn87820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87820_))
            (let ((_e87822_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87820_ 'exception))))
              (if (macro-inactive-thread-exception? _e87822_)
                  (macro-inactive-thread-exception-arguments _e87822_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92737
                                (let ()
                                  (declare (not safe))
                                  (cons _e87822_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp92737)))))
            (if (macro-inactive-thread-exception? _exn87820_)
                (macro-inactive-thread-exception-arguments _exn87820_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92736
                              (let ()
                                (declare (not safe))
                                (cons _exn87820_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp92736)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn87814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87814_))
            (let ((_e87817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87814_ 'exception))))
              (if (macro-inactive-thread-exception? _e87817_)
                  (macro-inactive-thread-exception-procedure _e87817_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92739
                                (let ()
                                  (declare (not safe))
                                  (cons _e87817_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp92739)))))
            (if (macro-inactive-thread-exception? _exn87814_)
                (macro-inactive-thread-exception-procedure _exn87814_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92738
                              (let ()
                                (declare (not safe))
                                (cons _exn87814_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp92738)))))))
    (define initialized-thread-exception?
      (lambda (_exn87810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87810_))
            (let ((_e87812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87810_ 'exception))))
              (macro-initialized-thread-exception? _e87812_))
            (macro-initialized-thread-exception? _exn87810_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn87806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87806_))
            (let ((_e87808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87806_ 'exception))))
              (if (macro-initialized-thread-exception? _e87808_)
                  (macro-initialized-thread-exception-arguments _e87808_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92741
                                (let ()
                                  (declare (not safe))
                                  (cons _e87808_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp92741)))))
            (if (macro-initialized-thread-exception? _exn87806_)
                (macro-initialized-thread-exception-arguments _exn87806_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92740
                              (let ()
                                (declare (not safe))
                                (cons _exn87806_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp92740)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn87800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87800_))
            (let ((_e87803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87800_ 'exception))))
              (if (macro-initialized-thread-exception? _e87803_)
                  (macro-initialized-thread-exception-procedure _e87803_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92743
                                (let ()
                                  (declare (not safe))
                                  (cons _e87803_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp92743)))))
            (if (macro-initialized-thread-exception? _exn87800_)
                (macro-initialized-thread-exception-procedure _exn87800_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92742
                              (let ()
                                (declare (not safe))
                                (cons _exn87800_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp92742)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn87796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87796_))
            (let ((_e87798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87796_ 'exception))))
              (macro-invalid-hash-number-exception? _e87798_))
            (macro-invalid-hash-number-exception? _exn87796_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn87792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87792_))
            (let ((_e87794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87792_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87794_)
                  (macro-invalid-hash-number-exception-arguments _e87794_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92745
                                (let ()
                                  (declare (not safe))
                                  (cons _e87794_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp92745)))))
            (if (macro-invalid-hash-number-exception? _exn87792_)
                (macro-invalid-hash-number-exception-arguments _exn87792_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92744
                              (let ()
                                (declare (not safe))
                                (cons _exn87792_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp92744)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn87786_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87786_))
            (let ((_e87789_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87786_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87789_)
                  (macro-invalid-hash-number-exception-procedure _e87789_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92747
                                (let ()
                                  (declare (not safe))
                                  (cons _e87789_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp92747)))))
            (if (macro-invalid-hash-number-exception? _exn87786_)
                (macro-invalid-hash-number-exception-procedure _exn87786_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92746
                              (let ()
                                (declare (not safe))
                                (cons _exn87786_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp92746)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn87782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87782_))
            (let ((_e87784_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87782_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e87784_))
            (macro-invalid-utf8-encoding-exception? _exn87782_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn87778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87778_))
            (let ((_e87780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87778_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87780_)
                  (macro-invalid-utf8-encoding-exception-arguments _e87780_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92749
                                (let ()
                                  (declare (not safe))
                                  (cons _e87780_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp92749)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87778_)
                (macro-invalid-utf8-encoding-exception-arguments _exn87778_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92748
                              (let ()
                                (declare (not safe))
                                (cons _exn87778_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp92748)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn87772_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87772_))
            (let ((_e87775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87772_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87775_)
                  (macro-invalid-utf8-encoding-exception-procedure _e87775_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92751
                                (let ()
                                  (declare (not safe))
                                  (cons _e87775_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp92751)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87772_)
                (macro-invalid-utf8-encoding-exception-procedure _exn87772_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92750
                              (let ()
                                (declare (not safe))
                                (cons _exn87772_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp92750)))))))
    (define join-timeout-exception?
      (lambda (_exn87768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87768_))
            (let ((_e87770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87768_ 'exception))))
              (macro-join-timeout-exception? _e87770_))
            (macro-join-timeout-exception? _exn87768_))))
    (define join-timeout-exception-arguments
      (lambda (_exn87764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87764_))
            (let ((_e87766_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87764_ 'exception))))
              (if (macro-join-timeout-exception? _e87766_)
                  (macro-join-timeout-exception-arguments _e87766_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92753
                                (let ()
                                  (declare (not safe))
                                  (cons _e87766_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp92753)))))
            (if (macro-join-timeout-exception? _exn87764_)
                (macro-join-timeout-exception-arguments _exn87764_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92752
                              (let ()
                                (declare (not safe))
                                (cons _exn87764_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp92752)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn87758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87758_))
            (let ((_e87761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87758_ 'exception))))
              (if (macro-join-timeout-exception? _e87761_)
                  (macro-join-timeout-exception-procedure _e87761_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92755
                                (let ()
                                  (declare (not safe))
                                  (cons _e87761_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp92755)))))
            (if (macro-join-timeout-exception? _exn87758_)
                (macro-join-timeout-exception-procedure _exn87758_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92754
                              (let ()
                                (declare (not safe))
                                (cons _exn87758_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp92754)))))))
    (define keyword-expected-exception?
      (lambda (_exn87754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87754_))
            (let ((_e87756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87754_ 'exception))))
              (macro-keyword-expected-exception? _e87756_))
            (macro-keyword-expected-exception? _exn87754_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn87750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87750_))
            (let ((_e87752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87750_ 'exception))))
              (if (macro-keyword-expected-exception? _e87752_)
                  (macro-keyword-expected-exception-arguments _e87752_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92757
                                (let ()
                                  (declare (not safe))
                                  (cons _e87752_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp92757)))))
            (if (macro-keyword-expected-exception? _exn87750_)
                (macro-keyword-expected-exception-arguments _exn87750_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92756
                              (let ()
                                (declare (not safe))
                                (cons _exn87750_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp92756)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn87744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87744_))
            (let ((_e87747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87744_ 'exception))))
              (if (macro-keyword-expected-exception? _e87747_)
                  (macro-keyword-expected-exception-procedure _e87747_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92759
                                (let ()
                                  (declare (not safe))
                                  (cons _e87747_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp92759)))))
            (if (macro-keyword-expected-exception? _exn87744_)
                (macro-keyword-expected-exception-procedure _exn87744_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92758
                              (let ()
                                (declare (not safe))
                                (cons _exn87744_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp92758)))))))
    (define length-mismatch-exception?
      (lambda (_exn87740_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87740_))
            (let ((_e87742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87740_ 'exception))))
              (macro-length-mismatch-exception? _e87742_))
            (macro-length-mismatch-exception? _exn87740_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn87736_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87736_))
            (let ((_e87738_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87736_ 'exception))))
              (if (macro-length-mismatch-exception? _e87738_)
                  (macro-length-mismatch-exception-arg-id _e87738_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92761
                                (let ()
                                  (declare (not safe))
                                  (cons _e87738_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp92761)))))
            (if (macro-length-mismatch-exception? _exn87736_)
                (macro-length-mismatch-exception-arg-id _exn87736_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92760
                              (let ()
                                (declare (not safe))
                                (cons _exn87736_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp92760)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn87732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87732_))
            (let ((_e87734_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87732_ 'exception))))
              (if (macro-length-mismatch-exception? _e87734_)
                  (macro-length-mismatch-exception-arguments _e87734_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92763
                                (let ()
                                  (declare (not safe))
                                  (cons _e87734_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp92763)))))
            (if (macro-length-mismatch-exception? _exn87732_)
                (macro-length-mismatch-exception-arguments _exn87732_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92762
                              (let ()
                                (declare (not safe))
                                (cons _exn87732_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp92762)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn87726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87726_))
            (let ((_e87729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87726_ 'exception))))
              (if (macro-length-mismatch-exception? _e87729_)
                  (macro-length-mismatch-exception-procedure _e87729_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92765
                                (let ()
                                  (declare (not safe))
                                  (cons _e87729_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp92765)))))
            (if (macro-length-mismatch-exception? _exn87726_)
                (macro-length-mismatch-exception-procedure _exn87726_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92764
                              (let ()
                                (declare (not safe))
                                (cons _exn87726_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp92764)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn87722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87722_))
            (let ((_e87724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87722_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e87724_))
            (macro-mailbox-receive-timeout-exception? _exn87722_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn87718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87718_))
            (let ((_e87720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87718_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87720_)
                  (macro-mailbox-receive-timeout-exception-arguments _e87720_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92767
                                (let ()
                                  (declare (not safe))
                                  (cons _e87720_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp92767)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87718_)
                (macro-mailbox-receive-timeout-exception-arguments _exn87718_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92766
                              (let ()
                                (declare (not safe))
                                (cons _exn87718_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp92766)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn87712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87712_))
            (let ((_e87715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87712_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87715_)
                  (macro-mailbox-receive-timeout-exception-procedure _e87715_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92769
                                (let ()
                                  (declare (not safe))
                                  (cons _e87715_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp92769)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87712_)
                (macro-mailbox-receive-timeout-exception-procedure _exn87712_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92768
                              (let ()
                                (declare (not safe))
                                (cons _exn87712_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp92768)))))))
    (define module-not-found-exception?
      (lambda (_exn87708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87708_))
            (let ((_e87710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87708_ 'exception))))
              (macro-module-not-found-exception? _e87710_))
            (macro-module-not-found-exception? _exn87708_))))
    (define module-not-found-exception-arguments
      (lambda (_exn87704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87704_))
            (let ((_e87706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87704_ 'exception))))
              (if (macro-module-not-found-exception? _e87706_)
                  (macro-module-not-found-exception-arguments _e87706_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92771
                                (let ()
                                  (declare (not safe))
                                  (cons _e87706_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp92771)))))
            (if (macro-module-not-found-exception? _exn87704_)
                (macro-module-not-found-exception-arguments _exn87704_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92770
                              (let ()
                                (declare (not safe))
                                (cons _exn87704_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp92770)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn87698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87698_))
            (let ((_e87701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87698_ 'exception))))
              (if (macro-module-not-found-exception? _e87701_)
                  (macro-module-not-found-exception-procedure _e87701_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92773
                                (let ()
                                  (declare (not safe))
                                  (cons _e87701_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp92773)))))
            (if (macro-module-not-found-exception? _exn87698_)
                (macro-module-not-found-exception-procedure _exn87698_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92772
                              (let ()
                                (declare (not safe))
                                (cons _exn87698_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp92772)))))))
    (define multiple-c-return-exception?
      (lambda (_exn87692_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87692_))
            (let ((_e87695_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87692_ 'exception))))
              (macro-multiple-c-return-exception? _e87695_))
            (macro-multiple-c-return-exception? _exn87692_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn87688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87688_))
            (let ((_e87690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87688_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e87690_))
            (macro-no-such-file-or-directory-exception? _exn87688_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn87684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87684_))
            (let ((_e87686_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87684_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87686_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e87686_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92775
                                (let ()
                                  (declare (not safe))
                                  (cons _e87686_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp92775)))))
            (if (macro-no-such-file-or-directory-exception? _exn87684_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn87684_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92774
                              (let ()
                                (declare (not safe))
                                (cons _exn87684_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp92774)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn87678_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87678_))
            (let ((_e87681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87678_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87681_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e87681_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92777
                                (let ()
                                  (declare (not safe))
                                  (cons _e87681_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp92777)))))
            (if (macro-no-such-file-or-directory-exception? _exn87678_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn87678_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92776
                              (let ()
                                (declare (not safe))
                                (cons _exn87678_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp92776)))))))
    (define noncontinuable-exception?
      (lambda (_exn87674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87674_))
            (let ((_e87676_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87674_ 'exception))))
              (macro-noncontinuable-exception? _e87676_))
            (macro-noncontinuable-exception? _exn87674_))))
    (define noncontinuable-exception-reason
      (lambda (_exn87668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87668_))
            (let ((_e87671_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87668_ 'exception))))
              (if (macro-noncontinuable-exception? _e87671_)
                  (macro-noncontinuable-exception-reason _e87671_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp92779
                                (let ()
                                  (declare (not safe))
                                  (cons _e87671_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp92779)))))
            (if (macro-noncontinuable-exception? _exn87668_)
                (macro-noncontinuable-exception-reason _exn87668_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp92778
                              (let ()
                                (declare (not safe))
                                (cons _exn87668_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp92778)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn87664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87664_))
            (let ((_e87666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87664_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e87666_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn87664_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn87660_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87660_))
            (let ((_e87662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87660_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87662_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e87662_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92781
                                (let ()
                                  (declare (not safe))
                                  (cons _e87662_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp92781)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87660_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn87660_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92780
                              (let ()
                                (declare (not safe))
                                (cons _exn87660_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp92780)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn87654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87654_))
            (let ((_e87657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87654_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87657_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e87657_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92783
                                (let ()
                                  (declare (not safe))
                                  (cons _e87657_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp92783)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87654_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn87654_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92782
                              (let ()
                                (declare (not safe))
                                (cons _exn87654_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp92782)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn87650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87650_))
            (let ((_e87652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87650_ 'exception))))
              (macro-nonprocedure-operator-exception? _e87652_))
            (macro-nonprocedure-operator-exception? _exn87650_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn87646_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87646_))
            (let ((_e87648_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87646_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87648_)
                  (macro-nonprocedure-operator-exception-arguments _e87648_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92785
                                (let ()
                                  (declare (not safe))
                                  (cons _e87648_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp92785)))))
            (if (macro-nonprocedure-operator-exception? _exn87646_)
                (macro-nonprocedure-operator-exception-arguments _exn87646_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92784
                              (let ()
                                (declare (not safe))
                                (cons _exn87646_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp92784)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn87642_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87642_))
            (let ((_e87644_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87642_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87644_)
                  (macro-nonprocedure-operator-exception-code _e87644_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92787
                                (let ()
                                  (declare (not safe))
                                  (cons _e87644_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp92787)))))
            (if (macro-nonprocedure-operator-exception? _exn87642_)
                (macro-nonprocedure-operator-exception-code _exn87642_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92786
                              (let ()
                                (declare (not safe))
                                (cons _exn87642_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp92786)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn87638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87638_))
            (let ((_e87640_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87638_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87640_)
                  (macro-nonprocedure-operator-exception-operator _e87640_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92789
                                (let ()
                                  (declare (not safe))
                                  (cons _e87640_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp92789)))))
            (if (macro-nonprocedure-operator-exception? _exn87638_)
                (macro-nonprocedure-operator-exception-operator _exn87638_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92788
                              (let ()
                                (declare (not safe))
                                (cons _exn87638_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp92788)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn87632_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87632_))
            (let ((_e87635_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87632_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87635_)
                  (macro-nonprocedure-operator-exception-rte _e87635_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92791
                                (let ()
                                  (declare (not safe))
                                  (cons _e87635_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp92791)))))
            (if (macro-nonprocedure-operator-exception? _exn87632_)
                (macro-nonprocedure-operator-exception-rte _exn87632_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92790
                              (let ()
                                (declare (not safe))
                                (cons _exn87632_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp92790)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn87628_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87628_))
            (let ((_e87630_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87628_ 'exception))))
              (macro-not-in-compilation-context-exception? _e87630_))
            (macro-not-in-compilation-context-exception? _exn87628_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn87624_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87624_))
            (let ((_e87626_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87624_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87626_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e87626_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92793
                                (let ()
                                  (declare (not safe))
                                  (cons _e87626_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp92793)))))
            (if (macro-not-in-compilation-context-exception? _exn87624_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn87624_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92792
                              (let ()
                                (declare (not safe))
                                (cons _exn87624_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp92792)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn87618_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87618_))
            (let ((_e87621_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87618_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87621_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e87621_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92795
                                (let ()
                                  (declare (not safe))
                                  (cons _e87621_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp92795)))))
            (if (macro-not-in-compilation-context-exception? _exn87618_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn87618_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92794
                              (let ()
                                (declare (not safe))
                                (cons _exn87618_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp92794)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn87614_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87614_))
            (let ((_e87616_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87614_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e87616_))
            (macro-number-of-arguments-limit-exception? _exn87614_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn87610_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87610_))
            (let ((_e87612_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87610_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87612_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e87612_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92797
                                (let ()
                                  (declare (not safe))
                                  (cons _e87612_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp92797)))))
            (if (macro-number-of-arguments-limit-exception? _exn87610_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn87610_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92796
                              (let ()
                                (declare (not safe))
                                (cons _exn87610_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp92796)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn87604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87604_))
            (let ((_e87607_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87604_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87607_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e87607_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92799
                                (let ()
                                  (declare (not safe))
                                  (cons _e87607_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp92799)))))
            (if (macro-number-of-arguments-limit-exception? _exn87604_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn87604_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92798
                              (let ()
                                (declare (not safe))
                                (cons _exn87604_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp92798)))))))
    (define os-exception?
      (lambda (_exn87600_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87600_))
            (let ((_e87602_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87600_ 'exception))))
              (macro-os-exception? _e87602_))
            (macro-os-exception? _exn87600_))))
    (define os-exception-arguments
      (lambda (_exn87596_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87596_))
            (let ((_e87598_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87596_ 'exception))))
              (if (macro-os-exception? _e87598_)
                  (macro-os-exception-arguments _e87598_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92801
                                (let ()
                                  (declare (not safe))
                                  (cons _e87598_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp92801)))))
            (if (macro-os-exception? _exn87596_)
                (macro-os-exception-arguments _exn87596_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92800
                              (let ()
                                (declare (not safe))
                                (cons _exn87596_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp92800)))))))
    (define os-exception-code
      (lambda (_exn87592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87592_))
            (let ((_e87594_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87592_ 'exception))))
              (if (macro-os-exception? _e87594_)
                  (macro-os-exception-code _e87594_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92803
                                (let ()
                                  (declare (not safe))
                                  (cons _e87594_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp92803)))))
            (if (macro-os-exception? _exn87592_)
                (macro-os-exception-code _exn87592_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92802
                              (let ()
                                (declare (not safe))
                                (cons _exn87592_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp92802)))))))
    (define os-exception-message
      (lambda (_exn87588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87588_))
            (let ((_e87590_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87588_ 'exception))))
              (if (macro-os-exception? _e87590_)
                  (macro-os-exception-message _e87590_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92805
                                (let ()
                                  (declare (not safe))
                                  (cons _e87590_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp92805)))))
            (if (macro-os-exception? _exn87588_)
                (macro-os-exception-message _exn87588_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92804
                              (let ()
                                (declare (not safe))
                                (cons _exn87588_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp92804)))))))
    (define os-exception-procedure
      (lambda (_exn87582_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87582_))
            (let ((_e87585_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87582_ 'exception))))
              (if (macro-os-exception? _e87585_)
                  (macro-os-exception-procedure _e87585_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92807
                                (let ()
                                  (declare (not safe))
                                  (cons _e87585_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp92807)))))
            (if (macro-os-exception? _exn87582_)
                (macro-os-exception-procedure _exn87582_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92806
                              (let ()
                                (declare (not safe))
                                (cons _exn87582_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp92806)))))))
    (define permission-denied-exception?
      (lambda (_exn87578_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87578_))
            (let ((_e87580_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87578_ 'exception))))
              (macro-permission-denied-exception? _e87580_))
            (macro-permission-denied-exception? _exn87578_))))
    (define permission-denied-exception-arguments
      (lambda (_exn87574_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87574_))
            (let ((_e87576_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87574_ 'exception))))
              (if (macro-permission-denied-exception? _e87576_)
                  (macro-permission-denied-exception-arguments _e87576_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92809
                                (let ()
                                  (declare (not safe))
                                  (cons _e87576_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp92809)))))
            (if (macro-permission-denied-exception? _exn87574_)
                (macro-permission-denied-exception-arguments _exn87574_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92808
                              (let ()
                                (declare (not safe))
                                (cons _exn87574_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp92808)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn87568_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87568_))
            (let ((_e87571_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87568_ 'exception))))
              (if (macro-permission-denied-exception? _e87571_)
                  (macro-permission-denied-exception-procedure _e87571_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92811
                                (let ()
                                  (declare (not safe))
                                  (cons _e87571_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp92811)))))
            (if (macro-permission-denied-exception? _exn87568_)
                (macro-permission-denied-exception-procedure _exn87568_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92810
                              (let ()
                                (declare (not safe))
                                (cons _exn87568_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp92810)))))))
    (define range-exception?
      (lambda (_exn87564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87564_))
            (let ((_e87566_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87564_ 'exception))))
              (macro-range-exception? _e87566_))
            (macro-range-exception? _exn87564_))))
    (define range-exception-arg-id
      (lambda (_exn87560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87560_))
            (let ((_e87562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87560_ 'exception))))
              (if (macro-range-exception? _e87562_)
                  (macro-range-exception-arg-id _e87562_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92813
                                (let ()
                                  (declare (not safe))
                                  (cons _e87562_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp92813)))))
            (if (macro-range-exception? _exn87560_)
                (macro-range-exception-arg-id _exn87560_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92812
                              (let ()
                                (declare (not safe))
                                (cons _exn87560_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp92812)))))))
    (define range-exception-arguments
      (lambda (_exn87556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87556_))
            (let ((_e87558_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87556_ 'exception))))
              (if (macro-range-exception? _e87558_)
                  (macro-range-exception-arguments _e87558_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92815
                                (let ()
                                  (declare (not safe))
                                  (cons _e87558_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp92815)))))
            (if (macro-range-exception? _exn87556_)
                (macro-range-exception-arguments _exn87556_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92814
                              (let ()
                                (declare (not safe))
                                (cons _exn87556_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp92814)))))))
    (define range-exception-procedure
      (lambda (_exn87550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87550_))
            (let ((_e87553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87550_ 'exception))))
              (if (macro-range-exception? _e87553_)
                  (macro-range-exception-procedure _e87553_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92817
                                (let ()
                                  (declare (not safe))
                                  (cons _e87553_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp92817)))))
            (if (macro-range-exception? _exn87550_)
                (macro-range-exception-procedure _exn87550_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92816
                              (let ()
                                (declare (not safe))
                                (cons _exn87550_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp92816)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn87546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87546_))
            (let ((_e87548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87546_ 'exception))))
              (macro-rpc-remote-error-exception? _e87548_))
            (macro-rpc-remote-error-exception? _exn87546_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn87542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87542_))
            (let ((_e87544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87542_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87544_)
                  (macro-rpc-remote-error-exception-arguments _e87544_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92819
                                (let ()
                                  (declare (not safe))
                                  (cons _e87544_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp92819)))))
            (if (macro-rpc-remote-error-exception? _exn87542_)
                (macro-rpc-remote-error-exception-arguments _exn87542_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92818
                              (let ()
                                (declare (not safe))
                                (cons _exn87542_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp92818)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn87538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87538_))
            (let ((_e87540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87538_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87540_)
                  (macro-rpc-remote-error-exception-message _e87540_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92821
                                (let ()
                                  (declare (not safe))
                                  (cons _e87540_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp92821)))))
            (if (macro-rpc-remote-error-exception? _exn87538_)
                (macro-rpc-remote-error-exception-message _exn87538_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92820
                              (let ()
                                (declare (not safe))
                                (cons _exn87538_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp92820)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn87532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87532_))
            (let ((_e87535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87532_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87535_)
                  (macro-rpc-remote-error-exception-procedure _e87535_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92823
                                (let ()
                                  (declare (not safe))
                                  (cons _e87535_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp92823)))))
            (if (macro-rpc-remote-error-exception? _exn87532_)
                (macro-rpc-remote-error-exception-procedure _exn87532_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92822
                              (let ()
                                (declare (not safe))
                                (cons _exn87532_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp92822)))))))
    (define scheduler-exception?
      (lambda (_exn87528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87528_))
            (let ((_e87530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87528_ 'exception))))
              (macro-scheduler-exception? _e87530_))
            (macro-scheduler-exception? _exn87528_))))
    (define scheduler-exception-reason
      (lambda (_exn87522_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87522_))
            (let ((_e87525_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87522_ 'exception))))
              (if (macro-scheduler-exception? _e87525_)
                  (macro-scheduler-exception-reason _e87525_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp92825
                                (let ()
                                  (declare (not safe))
                                  (cons _e87525_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp92825)))))
            (if (macro-scheduler-exception? _exn87522_)
                (macro-scheduler-exception-reason _exn87522_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp92824
                              (let ()
                                (declare (not safe))
                                (cons _exn87522_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp92824)))))))
    (define sfun-conversion-exception?
      (lambda (_exn87518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87518_))
            (let ((_e87520_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87518_ 'exception))))
              (macro-sfun-conversion-exception? _e87520_))
            (macro-sfun-conversion-exception? _exn87518_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn87514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87514_))
            (let ((_e87516_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87514_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87516_)
                  (macro-sfun-conversion-exception-arguments _e87516_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92827
                                (let ()
                                  (declare (not safe))
                                  (cons _e87516_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp92827)))))
            (if (macro-sfun-conversion-exception? _exn87514_)
                (macro-sfun-conversion-exception-arguments _exn87514_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92826
                              (let ()
                                (declare (not safe))
                                (cons _exn87514_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp92826)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn87510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87510_))
            (let ((_e87512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87510_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87512_)
                  (macro-sfun-conversion-exception-code _e87512_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92829
                                (let ()
                                  (declare (not safe))
                                  (cons _e87512_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp92829)))))
            (if (macro-sfun-conversion-exception? _exn87510_)
                (macro-sfun-conversion-exception-code _exn87510_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92828
                              (let ()
                                (declare (not safe))
                                (cons _exn87510_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp92828)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn87506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87506_))
            (let ((_e87508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87506_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87508_)
                  (macro-sfun-conversion-exception-message _e87508_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92831
                                (let ()
                                  (declare (not safe))
                                  (cons _e87508_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp92831)))))
            (if (macro-sfun-conversion-exception? _exn87506_)
                (macro-sfun-conversion-exception-message _exn87506_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92830
                              (let ()
                                (declare (not safe))
                                (cons _exn87506_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp92830)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn87500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87500_))
            (let ((_e87503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87500_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87503_)
                  (macro-sfun-conversion-exception-procedure _e87503_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92833
                                (let ()
                                  (declare (not safe))
                                  (cons _e87503_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp92833)))))
            (if (macro-sfun-conversion-exception? _exn87500_)
                (macro-sfun-conversion-exception-procedure _exn87500_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92832
                              (let ()
                                (declare (not safe))
                                (cons _exn87500_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp92832)))))))
    (define stack-overflow-exception?
      (lambda (_exn87494_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87494_))
            (let ((_e87497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87494_ 'exception))))
              (macro-stack-overflow-exception? _e87497_))
            (macro-stack-overflow-exception? _exn87494_))))
    (define started-thread-exception?
      (lambda (_exn87490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87490_))
            (let ((_e87492_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87490_ 'exception))))
              (macro-started-thread-exception? _e87492_))
            (macro-started-thread-exception? _exn87490_))))
    (define started-thread-exception-arguments
      (lambda (_exn87486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87486_))
            (let ((_e87488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87486_ 'exception))))
              (if (macro-started-thread-exception? _e87488_)
                  (macro-started-thread-exception-arguments _e87488_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92835
                                (let ()
                                  (declare (not safe))
                                  (cons _e87488_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp92835)))))
            (if (macro-started-thread-exception? _exn87486_)
                (macro-started-thread-exception-arguments _exn87486_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92834
                              (let ()
                                (declare (not safe))
                                (cons _exn87486_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp92834)))))))
    (define started-thread-exception-procedure
      (lambda (_exn87480_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87480_))
            (let ((_e87483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87480_ 'exception))))
              (if (macro-started-thread-exception? _e87483_)
                  (macro-started-thread-exception-procedure _e87483_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92837
                                (let ()
                                  (declare (not safe))
                                  (cons _e87483_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp92837)))))
            (if (macro-started-thread-exception? _exn87480_)
                (macro-started-thread-exception-procedure _exn87480_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92836
                              (let ()
                                (declare (not safe))
                                (cons _exn87480_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp92836)))))))
    (define terminated-thread-exception?
      (lambda (_exn87476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87476_))
            (let ((_e87478_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87476_ 'exception))))
              (macro-terminated-thread-exception? _e87478_))
            (macro-terminated-thread-exception? _exn87476_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn87472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87472_))
            (let ((_e87474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87472_ 'exception))))
              (if (macro-terminated-thread-exception? _e87474_)
                  (macro-terminated-thread-exception-arguments _e87474_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92839
                                (let ()
                                  (declare (not safe))
                                  (cons _e87474_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp92839)))))
            (if (macro-terminated-thread-exception? _exn87472_)
                (macro-terminated-thread-exception-arguments _exn87472_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92838
                              (let ()
                                (declare (not safe))
                                (cons _exn87472_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp92838)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn87466_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87466_))
            (let ((_e87469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87466_ 'exception))))
              (if (macro-terminated-thread-exception? _e87469_)
                  (macro-terminated-thread-exception-procedure _e87469_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92841
                                (let ()
                                  (declare (not safe))
                                  (cons _e87469_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp92841)))))
            (if (macro-terminated-thread-exception? _exn87466_)
                (macro-terminated-thread-exception-procedure _exn87466_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92840
                              (let ()
                                (declare (not safe))
                                (cons _exn87466_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp92840)))))))
    (define type-exception?
      (lambda (_exn87462_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87462_))
            (let ((_e87464_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87462_ 'exception))))
              (macro-type-exception? _e87464_))
            (macro-type-exception? _exn87462_))))
    (define type-exception-arg-id
      (lambda (_exn87458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87458_))
            (let ((_e87460_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87458_ 'exception))))
              (if (macro-type-exception? _e87460_)
                  (macro-type-exception-arg-id _e87460_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92843
                                (let ()
                                  (declare (not safe))
                                  (cons _e87460_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp92843)))))
            (if (macro-type-exception? _exn87458_)
                (macro-type-exception-arg-id _exn87458_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92842
                              (let ()
                                (declare (not safe))
                                (cons _exn87458_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp92842)))))))
    (define type-exception-arguments
      (lambda (_exn87454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87454_))
            (let ((_e87456_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87454_ 'exception))))
              (if (macro-type-exception? _e87456_)
                  (macro-type-exception-arguments _e87456_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92845
                                (let ()
                                  (declare (not safe))
                                  (cons _e87456_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp92845)))))
            (if (macro-type-exception? _exn87454_)
                (macro-type-exception-arguments _exn87454_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92844
                              (let ()
                                (declare (not safe))
                                (cons _exn87454_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp92844)))))))
    (define type-exception-procedure
      (lambda (_exn87450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87450_))
            (let ((_e87452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87450_ 'exception))))
              (if (macro-type-exception? _e87452_)
                  (macro-type-exception-procedure _e87452_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92847
                                (let ()
                                  (declare (not safe))
                                  (cons _e87452_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp92847)))))
            (if (macro-type-exception? _exn87450_)
                (macro-type-exception-procedure _exn87450_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92846
                              (let ()
                                (declare (not safe))
                                (cons _exn87450_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp92846)))))))
    (define type-exception-type-id
      (lambda (_exn87444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87444_))
            (let ((_e87447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87444_ 'exception))))
              (if (macro-type-exception? _e87447_)
                  (macro-type-exception-type-id _e87447_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92849
                                (let ()
                                  (declare (not safe))
                                  (cons _e87447_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp92849)))))
            (if (macro-type-exception? _exn87444_)
                (macro-type-exception-type-id _exn87444_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92848
                              (let ()
                                (declare (not safe))
                                (cons _exn87444_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp92848)))))))
    (define unbound-global-exception?
      (lambda (_exn87440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87440_))
            (let ((_e87442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87440_ 'exception))))
              (macro-unbound-global-exception? _e87442_))
            (macro-unbound-global-exception? _exn87440_))))
    (define unbound-global-exception-code
      (lambda (_exn87436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87436_))
            (let ((_e87438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87436_ 'exception))))
              (if (macro-unbound-global-exception? _e87438_)
                  (macro-unbound-global-exception-code _e87438_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92851
                                (let ()
                                  (declare (not safe))
                                  (cons _e87438_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp92851)))))
            (if (macro-unbound-global-exception? _exn87436_)
                (macro-unbound-global-exception-code _exn87436_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92850
                              (let ()
                                (declare (not safe))
                                (cons _exn87436_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp92850)))))))
    (define unbound-global-exception-rte
      (lambda (_exn87432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87432_))
            (let ((_e87434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87432_ 'exception))))
              (if (macro-unbound-global-exception? _e87434_)
                  (macro-unbound-global-exception-rte _e87434_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92853
                                (let ()
                                  (declare (not safe))
                                  (cons _e87434_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp92853)))))
            (if (macro-unbound-global-exception? _exn87432_)
                (macro-unbound-global-exception-rte _exn87432_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92852
                              (let ()
                                (declare (not safe))
                                (cons _exn87432_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp92852)))))))
    (define unbound-global-exception-variable
      (lambda (_exn87426_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87426_))
            (let ((_e87429_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87426_ 'exception))))
              (if (macro-unbound-global-exception? _e87429_)
                  (macro-unbound-global-exception-variable _e87429_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92855
                                (let ()
                                  (declare (not safe))
                                  (cons _e87429_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp92855)))))
            (if (macro-unbound-global-exception? _exn87426_)
                (macro-unbound-global-exception-variable _exn87426_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92854
                              (let ()
                                (declare (not safe))
                                (cons _exn87426_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp92854)))))))
    (define unbound-key-exception?
      (lambda (_exn87422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87422_))
            (let ((_e87424_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87422_ 'exception))))
              (macro-unbound-key-exception? _e87424_))
            (macro-unbound-key-exception? _exn87422_))))
    (define unbound-key-exception-arguments
      (lambda (_exn87418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87418_))
            (let ((_e87420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87418_ 'exception))))
              (if (macro-unbound-key-exception? _e87420_)
                  (macro-unbound-key-exception-arguments _e87420_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92857
                                (let ()
                                  (declare (not safe))
                                  (cons _e87420_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp92857)))))
            (if (macro-unbound-key-exception? _exn87418_)
                (macro-unbound-key-exception-arguments _exn87418_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92856
                              (let ()
                                (declare (not safe))
                                (cons _exn87418_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp92856)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn87412_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87412_))
            (let ((_e87415_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87412_ 'exception))))
              (if (macro-unbound-key-exception? _e87415_)
                  (macro-unbound-key-exception-procedure _e87415_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92859
                                (let ()
                                  (declare (not safe))
                                  (cons _e87415_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp92859)))))
            (if (macro-unbound-key-exception? _exn87412_)
                (macro-unbound-key-exception-procedure _exn87412_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92858
                              (let ()
                                (declare (not safe))
                                (cons _exn87412_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp92858)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn87408_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87408_))
            (let ((_e87410_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87408_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e87410_))
            (macro-unbound-os-environment-variable-exception? _exn87408_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn87404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87404_))
            (let ((_e87406_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87404_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87406_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e87406_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92861
                                (let ()
                                  (declare (not safe))
                                  (cons _e87406_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp92861)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87404_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn87404_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92860
                              (let ()
                                (declare (not safe))
                                (cons _exn87404_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp92860)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn87398_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87398_))
            (let ((_e87401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87398_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87401_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e87401_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92863
                                (let ()
                                  (declare (not safe))
                                  (cons _e87401_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp92863)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87398_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn87398_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92862
                              (let ()
                                (declare (not safe))
                                (cons _exn87398_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp92862)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn87394_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87394_))
            (let ((_e87396_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87394_ 'exception))))
              (macro-unbound-serial-number-exception? _e87396_))
            (macro-unbound-serial-number-exception? _exn87394_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn87390_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87390_))
            (let ((_e87392_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87390_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87392_)
                  (macro-unbound-serial-number-exception-arguments _e87392_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92865
                                (let ()
                                  (declare (not safe))
                                  (cons _e87392_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp92865)))))
            (if (macro-unbound-serial-number-exception? _exn87390_)
                (macro-unbound-serial-number-exception-arguments _exn87390_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92864
                              (let ()
                                (declare (not safe))
                                (cons _exn87390_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp92864)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn87384_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87384_))
            (let ((_e87387_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87384_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87387_)
                  (macro-unbound-serial-number-exception-procedure _e87387_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92867
                                (let ()
                                  (declare (not safe))
                                  (cons _e87387_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp92867)))))
            (if (macro-unbound-serial-number-exception? _exn87384_)
                (macro-unbound-serial-number-exception-procedure _exn87384_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92866
                              (let ()
                                (declare (not safe))
                                (cons _exn87384_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp92866)))))))
    (define uncaught-exception?
      (lambda (_exn87380_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87380_))
            (let ((_e87382_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87380_ 'exception))))
              (macro-uncaught-exception? _e87382_))
            (macro-uncaught-exception? _exn87380_))))
    (define uncaught-exception-arguments
      (lambda (_exn87376_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87376_))
            (let ((_e87378_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87376_ 'exception))))
              (if (macro-uncaught-exception? _e87378_)
                  (macro-uncaught-exception-arguments _e87378_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92869
                                (let ()
                                  (declare (not safe))
                                  (cons _e87378_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp92869)))))
            (if (macro-uncaught-exception? _exn87376_)
                (macro-uncaught-exception-arguments _exn87376_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92868
                              (let ()
                                (declare (not safe))
                                (cons _exn87376_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp92868)))))))
    (define uncaught-exception-procedure
      (lambda (_exn87372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87372_))
            (let ((_e87374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87372_ 'exception))))
              (if (macro-uncaught-exception? _e87374_)
                  (macro-uncaught-exception-procedure _e87374_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92871
                                (let ()
                                  (declare (not safe))
                                  (cons _e87374_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp92871)))))
            (if (macro-uncaught-exception? _exn87372_)
                (macro-uncaught-exception-procedure _exn87372_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92870
                              (let ()
                                (declare (not safe))
                                (cons _exn87372_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp92870)))))))
    (define uncaught-exception-reason
      (lambda (_exn87366_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87366_))
            (let ((_e87369_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87366_ 'exception))))
              (if (macro-uncaught-exception? _e87369_)
                  (macro-uncaught-exception-reason _e87369_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92873
                                (let ()
                                  (declare (not safe))
                                  (cons _e87369_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp92873)))))
            (if (macro-uncaught-exception? _exn87366_)
                (macro-uncaught-exception-reason _exn87366_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92872
                              (let ()
                                (declare (not safe))
                                (cons _exn87366_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp92872)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn87362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87362_))
            (let ((_e87364_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87362_ 'exception))))
              (macro-uninitialized-thread-exception? _e87364_))
            (macro-uninitialized-thread-exception? _exn87362_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn87358_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87358_))
            (let ((_e87360_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87358_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87360_)
                  (macro-uninitialized-thread-exception-arguments _e87360_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92875
                                (let ()
                                  (declare (not safe))
                                  (cons _e87360_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp92875)))))
            (if (macro-uninitialized-thread-exception? _exn87358_)
                (macro-uninitialized-thread-exception-arguments _exn87358_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92874
                              (let ()
                                (declare (not safe))
                                (cons _exn87358_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp92874)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn87352_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87352_))
            (let ((_e87355_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87352_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87355_)
                  (macro-uninitialized-thread-exception-procedure _e87355_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92877
                                (let ()
                                  (declare (not safe))
                                  (cons _e87355_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp92877)))))
            (if (macro-uninitialized-thread-exception? _exn87352_)
                (macro-uninitialized-thread-exception-procedure _exn87352_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92876
                              (let ()
                                (declare (not safe))
                                (cons _exn87352_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp92876)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn87348_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87348_))
            (let ((_e87350_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87348_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e87350_))
            (macro-unknown-keyword-argument-exception? _exn87348_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn87344_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87344_))
            (let ((_e87346_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87344_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87346_)
                  (macro-unknown-keyword-argument-exception-arguments _e87346_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92879
                                (let ()
                                  (declare (not safe))
                                  (cons _e87346_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp92879)))))
            (if (macro-unknown-keyword-argument-exception? _exn87344_)
                (macro-unknown-keyword-argument-exception-arguments _exn87344_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92878
                              (let ()
                                (declare (not safe))
                                (cons _exn87344_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp92878)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn87338_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87338_))
            (let ((_e87341_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87338_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87341_)
                  (macro-unknown-keyword-argument-exception-procedure _e87341_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92881
                                (let ()
                                  (declare (not safe))
                                  (cons _e87341_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp92881)))))
            (if (macro-unknown-keyword-argument-exception? _exn87338_)
                (macro-unknown-keyword-argument-exception-procedure _exn87338_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92880
                              (let ()
                                (declare (not safe))
                                (cons _exn87338_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp92880)))))))
    (define unterminated-process-exception?
      (lambda (_exn87334_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87334_))
            (let ((_e87336_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87334_ 'exception))))
              (macro-unterminated-process-exception? _e87336_))
            (macro-unterminated-process-exception? _exn87334_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn87330_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87330_))
            (let ((_e87332_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87330_ 'exception))))
              (if (macro-unterminated-process-exception? _e87332_)
                  (macro-unterminated-process-exception-arguments _e87332_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92883
                                (let ()
                                  (declare (not safe))
                                  (cons _e87332_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp92883)))))
            (if (macro-unterminated-process-exception? _exn87330_)
                (macro-unterminated-process-exception-arguments _exn87330_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92882
                              (let ()
                                (declare (not safe))
                                (cons _exn87330_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp92882)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn87324_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87324_))
            (let ((_e87327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87324_ 'exception))))
              (if (macro-unterminated-process-exception? _e87327_)
                  (macro-unterminated-process-exception-procedure _e87327_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92885
                                (let ()
                                  (declare (not safe))
                                  (cons _e87327_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp92885)))))
            (if (macro-unterminated-process-exception? _exn87324_)
                (macro-unterminated-process-exception-procedure _exn87324_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92884
                              (let ()
                                (declare (not safe))
                                (cons _exn87324_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp92884)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn87320_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87320_))
            (let ((_e87322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87320_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e87322_))
            (macro-wrong-number-of-arguments-exception? _exn87320_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn87316_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87316_))
            (let ((_e87318_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87316_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87318_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e87318_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92887
                                (let ()
                                  (declare (not safe))
                                  (cons _e87318_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp92887)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87316_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn87316_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92886
                              (let ()
                                (declare (not safe))
                                (cons _exn87316_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp92886)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn87310_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87310_))
            (let ((_e87313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87310_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87313_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e87313_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92889
                                (let ()
                                  (declare (not safe))
                                  (cons _e87313_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp92889)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87310_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn87310_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92888
                              (let ()
                                (declare (not safe))
                                (cons _exn87310_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp92888)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn87306_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87306_))
            (let ((_e87308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87306_ 'exception))))
              (macro-wrong-number-of-values-exception? _e87308_))
            (macro-wrong-number-of-values-exception? _exn87306_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn87302_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87302_))
            (let ((_e87304_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87302_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87304_)
                  (macro-wrong-number-of-values-exception-code _e87304_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92891
                                (let ()
                                  (declare (not safe))
                                  (cons _e87304_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp92891)))))
            (if (macro-wrong-number-of-values-exception? _exn87302_)
                (macro-wrong-number-of-values-exception-code _exn87302_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92890
                              (let ()
                                (declare (not safe))
                                (cons _exn87302_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp92890)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn87298_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87298_))
            (let ((_e87300_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87298_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87300_)
                  (macro-wrong-number-of-values-exception-rte _e87300_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92893
                                (let ()
                                  (declare (not safe))
                                  (cons _e87300_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp92893)))))
            (if (macro-wrong-number-of-values-exception? _exn87298_)
                (macro-wrong-number-of-values-exception-rte _exn87298_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92892
                              (let ()
                                (declare (not safe))
                                (cons _exn87298_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp92892)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn87292_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87292_))
            (let ((_e87295_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87292_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87295_)
                  (macro-wrong-number-of-values-exception-vals _e87295_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92895
                                (let ()
                                  (declare (not safe))
                                  (cons _e87295_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp92895)))))
            (if (macro-wrong-number-of-values-exception? _exn87292_)
                (macro-wrong-number-of-values-exception-vals _exn87292_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92894
                              (let ()
                                (declare (not safe))
                                (cons _exn87292_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp92894)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn87286_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87286_))
            (let ((_e87289_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87286_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e87289_))
            (macro-wrong-processor-c-return-exception? _exn87286_))))))
