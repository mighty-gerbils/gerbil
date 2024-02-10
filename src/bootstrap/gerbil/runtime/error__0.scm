(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707552285)
  (begin
    (define Exception::t
      (let ((__tmp92676 (list)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp92676
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args88453_
        (apply make-class-instance Exception::t _$args88453_)))
    (define StackTrace::t
      (let ((__tmp92677 (list)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp92677
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args88450_
        (apply make-class-instance StackTrace::t _$args88450_)))
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
      (let ((__tmp92678 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#Error::t
         'Error
         __tmp92678
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args88447_ (apply make-class-instance Error::t _$args88447_)))
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
      (let ((__tmp92679 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp92679
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args88444_
        (apply make-class-instance RuntimeException::t _$args88444_)))
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
      (lambda (_exn88439_ _continue88440_)
        (let ((_exn88442_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn88439_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn88442_ _continue88440_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn88435_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn88435_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn88435_ 'continuation))
                '#!void
                (let ((__tmp92680
                       (lambda (_cont88437_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn88435_
                            'continuation
                            _cont88437_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp92680)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn88435_))))
    (define error
      (lambda (_message88432_ . _irritants88433_)
        (raise (let ((__obj92670 (make-object Error::t '5)))
                 (Error:::init!
                  __obj92670
                  _message88432_
                  'irritants:
                  _irritants88433_)
                 __obj92670))))
    (define with-exception-handler
      (lambda (_handler88425_ _thunk88426_)
        (if (let () (declare (not safe)) (procedure? _handler88425_))
            '#!void
            (raise (let ((__obj92671 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92671
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88425_ '())))
                     __obj92671)))
        (if (let () (declare (not safe)) (procedure? _thunk88426_))
            '#!void
            (raise (let ((__obj92672 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92672
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88426_ '())))
                     __obj92672)))
        (let ((__tmp92681
               (lambda (_exn88428_)
                 (let ((_exn88430_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn88428_))))
                   (_handler88425_ _exn88430_)))))
          (declare (not safe))
          (##with-exception-handler __tmp92681 _thunk88426_))))
    (define with-catch
      (lambda (_handler88418_ _thunk88419_)
        (if (let () (declare (not safe)) (procedure? _handler88418_))
            '#!void
            (raise (let ((__obj92673 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92673
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88418_ '())))
                     __obj92673)))
        (if (let () (declare (not safe)) (procedure? _thunk88419_))
            '#!void
            (raise (let ((__obj92674 (make-object Error::t '5)))
                     (Error:::init!
                      __obj92674
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88419_ '())))
                     __obj92674)))
        (let ((__tmp92682
               (lambda (_cont88421_)
                 (with-exception-handler
                  (lambda (_exn88423_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont88421_
                       _handler88418_
                       _exn88423_)))
                  _thunk88419_))))
          (declare (not safe))
          (##continuation-capture __tmp92682))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn88409_)
        (if (or (heap-overflow-exception? _exn88409_)
                (stack-overflow-exception? _exn88409_))
            _exn88409_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn88409_))
                _exn88409_
                (if (macro-exception? _exn88409_)
                    (let ((_rte88414_
                           (let ((__obj92675
                                  (make-object RuntimeException::t '3)))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj92675
                                _exn88409_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj92675)))
                      (let ((__tmp92683
                             (lambda (_cont88416_)
                               (let ((__tmp92684
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont88416_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte88414_
                                  'continuation
                                  __tmp92684)))))
                        (declare (not safe))
                        (##continuation-capture __tmp92683))
                      _rte88414_)
                    _exn88409_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj88404_)
        (let ((_$e88406_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj88404_))))
          (if _$e88406_ _$e88406_ (error-exception? _obj88404_)))))
    (define error-message
      (lambda (_obj88402_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88402_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88402_ 'message))
            (if (error-exception? _obj88402_)
                (error-exception-message _obj88402_)
                '#f))))
    (define error-irritants
      (lambda (_obj88400_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88400_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88400_ 'irritants))
            (if (error-exception? _obj88400_)
                (error-exception-parameters _obj88400_)
                '#f))))
    (define error-trace
      (lambda (_obj88398_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88398_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88398_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e88380_ _port88381_)
        (let ((_$e88383_
               (let ()
                 (declare (not safe))
                 (method-ref _e88380_ 'display-exception))))
          (if _$e88383_
              ((lambda (_f88386_) (_f88386_ _e88380_ _port88381_)) _$e88383_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e88380_ _port88381_))))))
    (define display-exception__0
      (lambda (_e88391_)
        (let ((_port88393_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e88391_ _port88393_))))
    (define display-exception
      (lambda _g92686_
        (let ((_g92685_ (let () (declare (not safe)) (##length _g92686_))))
          (cond ((let () (declare (not safe)) (##fx= _g92685_ 1))
                 (apply (lambda (_e88391_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e88391_)))
                        _g92686_))
                ((let () (declare (not safe)) (##fx= _g92685_ 2))
                 (apply (lambda (_e88395_ _port88396_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e88395_ _port88396_)))
                        _g92686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g92686_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self88369_ _message88370_ . _rest88371_)
        (let ((_message88377_
               (if (let () (declare (not safe)) (string? _message88370_))
                   _message88370_
                   (call-with-output-string
                    '""
                    (lambda (_g8837288374_)
                      (display _message88370_ _g8837288374_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self88369_ 'message _message88377_))
          (apply class-instance-init! _self88369_ _rest88371_))))
    (define Error:::init!::specialize
      (lambda (__t92649)
        (let ((__message92650
               (let ((__tmp92651
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92649 'message))))
                 (if __tmp92651 __tmp92651 (error '"Unknown slot" 'message)))))
          (lambda (_self88369_ _message88370_ . _rest88371_)
            (let ((_message88377_
                   (if (let () (declare (not safe)) (string? _message88370_))
                       _message88370_
                       (call-with-output-string
                        '""
                        (lambda (_g8837288374_)
                          (display _message88370_ _g8837288374_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self88369_
                 _message88377_
                 __message92650
                 __t92649
                 '#f))
              (apply class-instance-init! _self88369_ _rest88371_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self88227_ _port88228_)
        (let ((_tmp-port88230_ (open-output-string))
              (_display-error-newline88231_
               (> (output-port-column _port88228_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88230_))
          (let ((__tmp92687
                 (lambda ()
                   (if _display-error-newline88231_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e88234_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88227_ 'where))))
                     (if _$e88234_ (display _$e88234_) (display '"?")))
                   (let ((__tmp92688
                          (let ((__tmp92689
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self88227_))))
                            (declare (not safe))
                            (##type-name __tmp92689))))
                     (declare (not safe))
                     (display* '" [" __tmp92688 '"]: "))
                   (let ((__tmp92690
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88227_ 'message))))
                     (declare (not safe))
                     (displayln __tmp92690))
                   (let ((_irritants88237_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88227_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants88237_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj88239_)
                              (write _obj88239_)
                              (write-char '#\space))
                            _irritants88237_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self88227_))
                            (dump-stack-trace?))
                       (let ((_cont8824088242_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self88227_
                                 'continuation))))
                         (if _cont8824088242_
                             (let ((_cont88245_ _cont8824088242_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont88245_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp92687
             current-output-port
             _tmp-port88230_))
          (let ((__tmp92691 (get-output-string _tmp-port88230_)))
            (declare (not safe))
            (##write-string __tmp92691 _port88228_)))))
    (define Error::display-exception::specialize
      (lambda (__t92652)
        (let ((__message92653
               (let ((__tmp92657
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92652 'message))))
                 (if __tmp92657 __tmp92657 (error '"Unknown slot" 'message))))
              (__where92654
               (let ((__tmp92658
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92652 'where))))
                 (if __tmp92658 __tmp92658 (error '"Unknown slot" 'where))))
              (__continuation92655
               (let ((__tmp92659
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92652 'continuation))))
                 (if __tmp92659
                     __tmp92659
                     (error '"Unknown slot" 'continuation))))
              (__irritants92656
               (let ((__tmp92660
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92652 'irritants))))
                 (if __tmp92660
                     __tmp92660
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self88227_ _port88228_)
            (let ((_tmp-port88230_ (open-output-string))
                  (_display-error-newline88231_
                   (> (output-port-column _port88228_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88230_))
              (let ((__tmp92692
                     (lambda ()
                       (if _display-error-newline88231_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e88234_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88227_
                                 __where92654
                                 __t92652
                                 '#f))))
                         (if _$e88234_ (display _$e88234_) (display '"?")))
                       (let ((__tmp92693
                              (let ((__tmp92694
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self88227_))))
                                (declare (not safe))
                                (##type-name __tmp92694))))
                         (declare (not safe))
                         (display* '" [" __tmp92693 '"]: "))
                       (let ((__tmp92695
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88227_
                                 __message92653
                                 __t92652
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp92695))
                       (let ((_irritants88237_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88227_
                                 __irritants92656
                                 __t92652
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants88237_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj88239_)
                                  (write _obj88239_)
                                  (write-char '#\space))
                                _irritants88237_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self88227_))
                                (dump-stack-trace?))
                           (let ((_cont8824088242_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self88227_
                                     __continuation92655
                                     __t92652
                                     '#f))))
                             (if _cont8824088242_
                                 (let ((_cont88245_ _cont8824088242_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont88245_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp92692
                 current-output-port
                 _tmp-port88230_))
              (let ((__tmp92696 (get-output-string _tmp-port88230_)))
                (declare (not safe))
                (##write-string __tmp92696 _port88228_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self88094_ _port88095_)
        (let ((_tmp-port88097_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88097_))
          (let ((__tmp92697
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self88094_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp92697 _tmp-port88097_))
          (if (dump-stack-trace?)
              (let ((_cont8809888100_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self88094_ 'continuation))))
                (if _cont8809888100_
                    (let ((_cont88103_ _cont8809888100_))
                      (display '"--- continuation backtrace:" _tmp-port88097_)
                      (newline _tmp-port88097_)
                      (display-continuation-backtrace
                       _cont88103_
                       _tmp-port88097_))
                    '#f))
              '#!void)
          (let ((__tmp92698 (get-output-string _tmp-port88097_)))
            (declare (not safe))
            (##write-string __tmp92698 _port88095_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t92661)
        (let ((__continuation92662
               (let ((__tmp92664
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92661 'continuation))))
                 (if __tmp92664
                     __tmp92664
                     (error '"Unknown slot" 'continuation))))
              (__exception92663
               (let ((__tmp92665
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t92661 'exception))))
                 (if __tmp92665
                     __tmp92665
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self88094_ _port88095_)
            (let ((_tmp-port88097_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88097_))
              (let ((__tmp92699
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self88094_
                        __exception92663
                        __t92661
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp92699 _tmp-port88097_))
              (if (dump-stack-trace?)
                  (let ((_cont8809888100_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self88094_
                            __continuation92662
                            __t92661
                            '#f))))
                    (if _cont8809888100_
                        (let ((_cont88103_ _cont8809888100_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port88097_)
                          (newline _tmp-port88097_)
                          (display-continuation-backtrace
                           _cont88103_
                           _tmp-port88097_))
                        '#f))
                  '#!void)
              (let ((__tmp92700 (get-output-string _tmp-port88097_)))
                (declare (not safe))
                (##write-string __tmp92700 _port88095_)))))))
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
      (lambda (_port87966_)
        (if (macro-character-port? _port87966_)
            (let ((_old-width87968_
                   (macro-character-port-output-width _port87966_)))
              (macro-character-port-output-width-set!
               _port87966_
               (lambda (_port87970_) '256))
              _old-width87968_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port87963_ _old-width87964_)
        (if (macro-character-port? _port87963_)
            (macro-character-port-output-width-set!
             _port87963_
             _old-width87964_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e87961_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e87961_))))
    (define abandoned-mutex-exception?
      (lambda (_exn87955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87955_))
            (let ((_e87958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87955_ 'exception))))
              (macro-abandoned-mutex-exception? _e87958_))
            (macro-abandoned-mutex-exception? _exn87955_))))
    (define cfun-conversion-exception?
      (lambda (_exn87951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87951_))
            (let ((_e87953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87951_ 'exception))))
              (macro-cfun-conversion-exception? _e87953_))
            (macro-cfun-conversion-exception? _exn87951_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn87947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87947_))
            (let ((_e87949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87947_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87949_)
                  (macro-cfun-conversion-exception-arguments _e87949_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92702
                                (let ()
                                  (declare (not safe))
                                  (cons _e87949_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp92702)))))
            (if (macro-cfun-conversion-exception? _exn87947_)
                (macro-cfun-conversion-exception-arguments _exn87947_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92701
                              (let ()
                                (declare (not safe))
                                (cons _exn87947_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp92701)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn87943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87943_))
            (let ((_e87945_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87943_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87945_)
                  (macro-cfun-conversion-exception-code _e87945_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92704
                                (let ()
                                  (declare (not safe))
                                  (cons _e87945_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp92704)))))
            (if (macro-cfun-conversion-exception? _exn87943_)
                (macro-cfun-conversion-exception-code _exn87943_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92703
                              (let ()
                                (declare (not safe))
                                (cons _exn87943_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp92703)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn87939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87939_))
            (let ((_e87941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87939_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87941_)
                  (macro-cfun-conversion-exception-message _e87941_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92706
                                (let ()
                                  (declare (not safe))
                                  (cons _e87941_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp92706)))))
            (if (macro-cfun-conversion-exception? _exn87939_)
                (macro-cfun-conversion-exception-message _exn87939_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92705
                              (let ()
                                (declare (not safe))
                                (cons _exn87939_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp92705)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn87933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87933_))
            (let ((_e87936_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87933_ 'exception))))
              (if (macro-cfun-conversion-exception? _e87936_)
                  (macro-cfun-conversion-exception-procedure _e87936_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92708
                                (let ()
                                  (declare (not safe))
                                  (cons _e87936_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp92708)))))
            (if (macro-cfun-conversion-exception? _exn87933_)
                (macro-cfun-conversion-exception-procedure _exn87933_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92707
                              (let ()
                                (declare (not safe))
                                (cons _exn87933_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp92707)))))))
    (define datum-parsing-exception?
      (lambda (_exn87929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87929_))
            (let ((_e87931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87929_ 'exception))))
              (macro-datum-parsing-exception? _e87931_))
            (macro-datum-parsing-exception? _exn87929_))))
    (define datum-parsing-exception-kind
      (lambda (_exn87925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87925_))
            (let ((_e87927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87925_ 'exception))))
              (if (macro-datum-parsing-exception? _e87927_)
                  (macro-datum-parsing-exception-kind _e87927_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92710
                                (let ()
                                  (declare (not safe))
                                  (cons _e87927_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp92710)))))
            (if (macro-datum-parsing-exception? _exn87925_)
                (macro-datum-parsing-exception-kind _exn87925_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92709
                              (let ()
                                (declare (not safe))
                                (cons _exn87925_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp92709)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn87921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87921_))
            (let ((_e87923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87921_ 'exception))))
              (if (macro-datum-parsing-exception? _e87923_)
                  (macro-datum-parsing-exception-parameters _e87923_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92712
                                (let ()
                                  (declare (not safe))
                                  (cons _e87923_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp92712)))))
            (if (macro-datum-parsing-exception? _exn87921_)
                (macro-datum-parsing-exception-parameters _exn87921_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92711
                              (let ()
                                (declare (not safe))
                                (cons _exn87921_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp92711)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn87915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87915_))
            (let ((_e87918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87915_ 'exception))))
              (if (macro-datum-parsing-exception? _e87918_)
                  (macro-datum-parsing-exception-readenv _e87918_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92714
                                (let ()
                                  (declare (not safe))
                                  (cons _e87918_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp92714)))))
            (if (macro-datum-parsing-exception? _exn87915_)
                (macro-datum-parsing-exception-readenv _exn87915_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92713
                              (let ()
                                (declare (not safe))
                                (cons _exn87915_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp92713)))))))
    (define deadlock-exception?
      (lambda (_exn87909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87909_))
            (let ((_e87912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87909_ 'exception))))
              (macro-deadlock-exception? _e87912_))
            (macro-deadlock-exception? _exn87909_))))
    (define divide-by-zero-exception?
      (lambda (_exn87905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87905_))
            (let ((_e87907_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87905_ 'exception))))
              (macro-divide-by-zero-exception? _e87907_))
            (macro-divide-by-zero-exception? _exn87905_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn87901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87901_))
            (let ((_e87903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87901_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87903_)
                  (macro-divide-by-zero-exception-arguments _e87903_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92716
                                (let ()
                                  (declare (not safe))
                                  (cons _e87903_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp92716)))))
            (if (macro-divide-by-zero-exception? _exn87901_)
                (macro-divide-by-zero-exception-arguments _exn87901_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92715
                              (let ()
                                (declare (not safe))
                                (cons _exn87901_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp92715)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn87895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87895_))
            (let ((_e87898_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87895_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87898_)
                  (macro-divide-by-zero-exception-procedure _e87898_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92718
                                (let ()
                                  (declare (not safe))
                                  (cons _e87898_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp92718)))))
            (if (macro-divide-by-zero-exception? _exn87895_)
                (macro-divide-by-zero-exception-procedure _exn87895_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92717
                              (let ()
                                (declare (not safe))
                                (cons _exn87895_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp92717)))))))
    (define error-exception?
      (lambda (_exn87891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87891_))
            (let ((_e87893_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87891_ 'exception))))
              (macro-error-exception? _e87893_))
            (macro-error-exception? _exn87891_))))
    (define error-exception-message
      (lambda (_exn87887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87887_))
            (let ((_e87889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87887_ 'exception))))
              (if (macro-error-exception? _e87889_)
                  (macro-error-exception-message _e87889_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92720
                                (let ()
                                  (declare (not safe))
                                  (cons _e87889_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp92720)))))
            (if (macro-error-exception? _exn87887_)
                (macro-error-exception-message _exn87887_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92719
                              (let ()
                                (declare (not safe))
                                (cons _exn87887_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp92719)))))))
    (define error-exception-parameters
      (lambda (_exn87881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87881_))
            (let ((_e87884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87881_ 'exception))))
              (if (macro-error-exception? _e87884_)
                  (macro-error-exception-parameters _e87884_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92722
                                (let ()
                                  (declare (not safe))
                                  (cons _e87884_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp92722)))))
            (if (macro-error-exception? _exn87881_)
                (macro-error-exception-parameters _exn87881_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92721
                              (let ()
                                (declare (not safe))
                                (cons _exn87881_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp92721)))))))
    (define expression-parsing-exception?
      (lambda (_exn87877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87877_))
            (let ((_e87879_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87877_ 'exception))))
              (macro-expression-parsing-exception? _e87879_))
            (macro-expression-parsing-exception? _exn87877_))))
    (define expression-parsing-exception-kind
      (lambda (_exn87873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87873_))
            (let ((_e87875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87873_ 'exception))))
              (if (macro-expression-parsing-exception? _e87875_)
                  (macro-expression-parsing-exception-kind _e87875_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92724
                                (let ()
                                  (declare (not safe))
                                  (cons _e87875_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp92724)))))
            (if (macro-expression-parsing-exception? _exn87873_)
                (macro-expression-parsing-exception-kind _exn87873_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92723
                              (let ()
                                (declare (not safe))
                                (cons _exn87873_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp92723)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn87869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87869_))
            (let ((_e87871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87869_ 'exception))))
              (if (macro-expression-parsing-exception? _e87871_)
                  (macro-expression-parsing-exception-parameters _e87871_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92726
                                (let ()
                                  (declare (not safe))
                                  (cons _e87871_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp92726)))))
            (if (macro-expression-parsing-exception? _exn87869_)
                (macro-expression-parsing-exception-parameters _exn87869_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92725
                              (let ()
                                (declare (not safe))
                                (cons _exn87869_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp92725)))))))
    (define expression-parsing-exception-source
      (lambda (_exn87863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87863_))
            (let ((_e87866_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87863_ 'exception))))
              (if (macro-expression-parsing-exception? _e87866_)
                  (macro-expression-parsing-exception-source _e87866_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92728
                                (let ()
                                  (declare (not safe))
                                  (cons _e87866_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp92728)))))
            (if (macro-expression-parsing-exception? _exn87863_)
                (macro-expression-parsing-exception-source _exn87863_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92727
                              (let ()
                                (declare (not safe))
                                (cons _exn87863_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp92727)))))))
    (define file-exists-exception?
      (lambda (_exn87859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87859_))
            (let ((_e87861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87859_ 'exception))))
              (macro-file-exists-exception? _e87861_))
            (macro-file-exists-exception? _exn87859_))))
    (define file-exists-exception-arguments
      (lambda (_exn87855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87855_))
            (let ((_e87857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87855_ 'exception))))
              (if (macro-file-exists-exception? _e87857_)
                  (macro-file-exists-exception-arguments _e87857_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92730
                                (let ()
                                  (declare (not safe))
                                  (cons _e87857_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp92730)))))
            (if (macro-file-exists-exception? _exn87855_)
                (macro-file-exists-exception-arguments _exn87855_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92729
                              (let ()
                                (declare (not safe))
                                (cons _exn87855_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp92729)))))))
    (define file-exists-exception-procedure
      (lambda (_exn87849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87849_))
            (let ((_e87852_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87849_ 'exception))))
              (if (macro-file-exists-exception? _e87852_)
                  (macro-file-exists-exception-procedure _e87852_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92732
                                (let ()
                                  (declare (not safe))
                                  (cons _e87852_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp92732)))))
            (if (macro-file-exists-exception? _exn87849_)
                (macro-file-exists-exception-procedure _exn87849_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92731
                              (let ()
                                (declare (not safe))
                                (cons _exn87849_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp92731)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn87845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87845_))
            (let ((_e87847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87845_ 'exception))))
              (macro-fixnum-overflow-exception? _e87847_))
            (macro-fixnum-overflow-exception? _exn87845_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn87841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87841_))
            (let ((_e87843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87841_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87843_)
                  (macro-fixnum-overflow-exception-arguments _e87843_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92734
                                (let ()
                                  (declare (not safe))
                                  (cons _e87843_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp92734)))))
            (if (macro-fixnum-overflow-exception? _exn87841_)
                (macro-fixnum-overflow-exception-arguments _exn87841_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92733
                              (let ()
                                (declare (not safe))
                                (cons _exn87841_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp92733)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn87835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87835_))
            (let ((_e87838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87835_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87838_)
                  (macro-fixnum-overflow-exception-procedure _e87838_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92736
                                (let ()
                                  (declare (not safe))
                                  (cons _e87838_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp92736)))))
            (if (macro-fixnum-overflow-exception? _exn87835_)
                (macro-fixnum-overflow-exception-procedure _exn87835_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92735
                              (let ()
                                (declare (not safe))
                                (cons _exn87835_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp92735)))))))
    (define heap-overflow-exception?
      (lambda (_exn87829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87829_))
            (let ((_e87832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87829_ 'exception))))
              (macro-heap-overflow-exception? _e87832_))
            (macro-heap-overflow-exception? _exn87829_))))
    (define inactive-thread-exception?
      (lambda (_exn87825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87825_))
            (let ((_e87827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87825_ 'exception))))
              (macro-inactive-thread-exception? _e87827_))
            (macro-inactive-thread-exception? _exn87825_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn87821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87821_))
            (let ((_e87823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87821_ 'exception))))
              (if (macro-inactive-thread-exception? _e87823_)
                  (macro-inactive-thread-exception-arguments _e87823_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92738
                                (let ()
                                  (declare (not safe))
                                  (cons _e87823_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp92738)))))
            (if (macro-inactive-thread-exception? _exn87821_)
                (macro-inactive-thread-exception-arguments _exn87821_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92737
                              (let ()
                                (declare (not safe))
                                (cons _exn87821_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp92737)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn87815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87815_))
            (let ((_e87818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87815_ 'exception))))
              (if (macro-inactive-thread-exception? _e87818_)
                  (macro-inactive-thread-exception-procedure _e87818_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92740
                                (let ()
                                  (declare (not safe))
                                  (cons _e87818_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp92740)))))
            (if (macro-inactive-thread-exception? _exn87815_)
                (macro-inactive-thread-exception-procedure _exn87815_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92739
                              (let ()
                                (declare (not safe))
                                (cons _exn87815_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp92739)))))))
    (define initialized-thread-exception?
      (lambda (_exn87811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87811_))
            (let ((_e87813_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87811_ 'exception))))
              (macro-initialized-thread-exception? _e87813_))
            (macro-initialized-thread-exception? _exn87811_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn87807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87807_))
            (let ((_e87809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87807_ 'exception))))
              (if (macro-initialized-thread-exception? _e87809_)
                  (macro-initialized-thread-exception-arguments _e87809_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92742
                                (let ()
                                  (declare (not safe))
                                  (cons _e87809_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp92742)))))
            (if (macro-initialized-thread-exception? _exn87807_)
                (macro-initialized-thread-exception-arguments _exn87807_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92741
                              (let ()
                                (declare (not safe))
                                (cons _exn87807_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp92741)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn87801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87801_))
            (let ((_e87804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87801_ 'exception))))
              (if (macro-initialized-thread-exception? _e87804_)
                  (macro-initialized-thread-exception-procedure _e87804_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92744
                                (let ()
                                  (declare (not safe))
                                  (cons _e87804_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp92744)))))
            (if (macro-initialized-thread-exception? _exn87801_)
                (macro-initialized-thread-exception-procedure _exn87801_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92743
                              (let ()
                                (declare (not safe))
                                (cons _exn87801_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp92743)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn87797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87797_))
            (let ((_e87799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87797_ 'exception))))
              (macro-invalid-hash-number-exception? _e87799_))
            (macro-invalid-hash-number-exception? _exn87797_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn87793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87793_))
            (let ((_e87795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87793_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87795_)
                  (macro-invalid-hash-number-exception-arguments _e87795_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92746
                                (let ()
                                  (declare (not safe))
                                  (cons _e87795_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp92746)))))
            (if (macro-invalid-hash-number-exception? _exn87793_)
                (macro-invalid-hash-number-exception-arguments _exn87793_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92745
                              (let ()
                                (declare (not safe))
                                (cons _exn87793_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp92745)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn87787_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87787_))
            (let ((_e87790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87787_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87790_)
                  (macro-invalid-hash-number-exception-procedure _e87790_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92748
                                (let ()
                                  (declare (not safe))
                                  (cons _e87790_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp92748)))))
            (if (macro-invalid-hash-number-exception? _exn87787_)
                (macro-invalid-hash-number-exception-procedure _exn87787_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92747
                              (let ()
                                (declare (not safe))
                                (cons _exn87787_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp92747)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn87783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87783_))
            (let ((_e87785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87783_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e87785_))
            (macro-invalid-utf8-encoding-exception? _exn87783_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn87779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87779_))
            (let ((_e87781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87779_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87781_)
                  (macro-invalid-utf8-encoding-exception-arguments _e87781_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92750
                                (let ()
                                  (declare (not safe))
                                  (cons _e87781_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp92750)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87779_)
                (macro-invalid-utf8-encoding-exception-arguments _exn87779_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92749
                              (let ()
                                (declare (not safe))
                                (cons _exn87779_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp92749)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn87773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87773_))
            (let ((_e87776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87773_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87776_)
                  (macro-invalid-utf8-encoding-exception-procedure _e87776_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92752
                                (let ()
                                  (declare (not safe))
                                  (cons _e87776_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp92752)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87773_)
                (macro-invalid-utf8-encoding-exception-procedure _exn87773_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92751
                              (let ()
                                (declare (not safe))
                                (cons _exn87773_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp92751)))))))
    (define join-timeout-exception?
      (lambda (_exn87769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87769_))
            (let ((_e87771_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87769_ 'exception))))
              (macro-join-timeout-exception? _e87771_))
            (macro-join-timeout-exception? _exn87769_))))
    (define join-timeout-exception-arguments
      (lambda (_exn87765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87765_))
            (let ((_e87767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87765_ 'exception))))
              (if (macro-join-timeout-exception? _e87767_)
                  (macro-join-timeout-exception-arguments _e87767_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92754
                                (let ()
                                  (declare (not safe))
                                  (cons _e87767_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp92754)))))
            (if (macro-join-timeout-exception? _exn87765_)
                (macro-join-timeout-exception-arguments _exn87765_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92753
                              (let ()
                                (declare (not safe))
                                (cons _exn87765_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp92753)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn87759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87759_))
            (let ((_e87762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87759_ 'exception))))
              (if (macro-join-timeout-exception? _e87762_)
                  (macro-join-timeout-exception-procedure _e87762_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92756
                                (let ()
                                  (declare (not safe))
                                  (cons _e87762_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp92756)))))
            (if (macro-join-timeout-exception? _exn87759_)
                (macro-join-timeout-exception-procedure _exn87759_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92755
                              (let ()
                                (declare (not safe))
                                (cons _exn87759_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp92755)))))))
    (define keyword-expected-exception?
      (lambda (_exn87755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87755_))
            (let ((_e87757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87755_ 'exception))))
              (macro-keyword-expected-exception? _e87757_))
            (macro-keyword-expected-exception? _exn87755_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn87751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87751_))
            (let ((_e87753_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87751_ 'exception))))
              (if (macro-keyword-expected-exception? _e87753_)
                  (macro-keyword-expected-exception-arguments _e87753_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92758
                                (let ()
                                  (declare (not safe))
                                  (cons _e87753_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp92758)))))
            (if (macro-keyword-expected-exception? _exn87751_)
                (macro-keyword-expected-exception-arguments _exn87751_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92757
                              (let ()
                                (declare (not safe))
                                (cons _exn87751_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp92757)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn87745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87745_))
            (let ((_e87748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87745_ 'exception))))
              (if (macro-keyword-expected-exception? _e87748_)
                  (macro-keyword-expected-exception-procedure _e87748_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92760
                                (let ()
                                  (declare (not safe))
                                  (cons _e87748_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp92760)))))
            (if (macro-keyword-expected-exception? _exn87745_)
                (macro-keyword-expected-exception-procedure _exn87745_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92759
                              (let ()
                                (declare (not safe))
                                (cons _exn87745_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp92759)))))))
    (define length-mismatch-exception?
      (lambda (_exn87741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87741_))
            (let ((_e87743_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87741_ 'exception))))
              (macro-length-mismatch-exception? _e87743_))
            (macro-length-mismatch-exception? _exn87741_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn87737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87737_))
            (let ((_e87739_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87737_ 'exception))))
              (if (macro-length-mismatch-exception? _e87739_)
                  (macro-length-mismatch-exception-arg-id _e87739_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92762
                                (let ()
                                  (declare (not safe))
                                  (cons _e87739_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp92762)))))
            (if (macro-length-mismatch-exception? _exn87737_)
                (macro-length-mismatch-exception-arg-id _exn87737_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92761
                              (let ()
                                (declare (not safe))
                                (cons _exn87737_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp92761)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn87733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87733_))
            (let ((_e87735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87733_ 'exception))))
              (if (macro-length-mismatch-exception? _e87735_)
                  (macro-length-mismatch-exception-arguments _e87735_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92764
                                (let ()
                                  (declare (not safe))
                                  (cons _e87735_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp92764)))))
            (if (macro-length-mismatch-exception? _exn87733_)
                (macro-length-mismatch-exception-arguments _exn87733_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92763
                              (let ()
                                (declare (not safe))
                                (cons _exn87733_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp92763)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn87727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87727_))
            (let ((_e87730_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87727_ 'exception))))
              (if (macro-length-mismatch-exception? _e87730_)
                  (macro-length-mismatch-exception-procedure _e87730_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92766
                                (let ()
                                  (declare (not safe))
                                  (cons _e87730_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp92766)))))
            (if (macro-length-mismatch-exception? _exn87727_)
                (macro-length-mismatch-exception-procedure _exn87727_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92765
                              (let ()
                                (declare (not safe))
                                (cons _exn87727_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp92765)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn87723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87723_))
            (let ((_e87725_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87723_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e87725_))
            (macro-mailbox-receive-timeout-exception? _exn87723_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn87719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87719_))
            (let ((_e87721_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87719_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87721_)
                  (macro-mailbox-receive-timeout-exception-arguments _e87721_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92768
                                (let ()
                                  (declare (not safe))
                                  (cons _e87721_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp92768)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87719_)
                (macro-mailbox-receive-timeout-exception-arguments _exn87719_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92767
                              (let ()
                                (declare (not safe))
                                (cons _exn87719_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp92767)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn87713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87713_))
            (let ((_e87716_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87713_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87716_)
                  (macro-mailbox-receive-timeout-exception-procedure _e87716_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92770
                                (let ()
                                  (declare (not safe))
                                  (cons _e87716_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp92770)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87713_)
                (macro-mailbox-receive-timeout-exception-procedure _exn87713_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92769
                              (let ()
                                (declare (not safe))
                                (cons _exn87713_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp92769)))))))
    (define module-not-found-exception?
      (lambda (_exn87709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87709_))
            (let ((_e87711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87709_ 'exception))))
              (macro-module-not-found-exception? _e87711_))
            (macro-module-not-found-exception? _exn87709_))))
    (define module-not-found-exception-arguments
      (lambda (_exn87705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87705_))
            (let ((_e87707_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87705_ 'exception))))
              (if (macro-module-not-found-exception? _e87707_)
                  (macro-module-not-found-exception-arguments _e87707_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92772
                                (let ()
                                  (declare (not safe))
                                  (cons _e87707_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp92772)))))
            (if (macro-module-not-found-exception? _exn87705_)
                (macro-module-not-found-exception-arguments _exn87705_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92771
                              (let ()
                                (declare (not safe))
                                (cons _exn87705_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp92771)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn87699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87699_))
            (let ((_e87702_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87699_ 'exception))))
              (if (macro-module-not-found-exception? _e87702_)
                  (macro-module-not-found-exception-procedure _e87702_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92774
                                (let ()
                                  (declare (not safe))
                                  (cons _e87702_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp92774)))))
            (if (macro-module-not-found-exception? _exn87699_)
                (macro-module-not-found-exception-procedure _exn87699_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92773
                              (let ()
                                (declare (not safe))
                                (cons _exn87699_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp92773)))))))
    (define multiple-c-return-exception?
      (lambda (_exn87693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87693_))
            (let ((_e87696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87693_ 'exception))))
              (macro-multiple-c-return-exception? _e87696_))
            (macro-multiple-c-return-exception? _exn87693_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn87689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87689_))
            (let ((_e87691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87689_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e87691_))
            (macro-no-such-file-or-directory-exception? _exn87689_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn87685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87685_))
            (let ((_e87687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87685_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87687_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e87687_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92776
                                (let ()
                                  (declare (not safe))
                                  (cons _e87687_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp92776)))))
            (if (macro-no-such-file-or-directory-exception? _exn87685_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn87685_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92775
                              (let ()
                                (declare (not safe))
                                (cons _exn87685_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp92775)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn87679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87679_))
            (let ((_e87682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87679_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87682_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e87682_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92778
                                (let ()
                                  (declare (not safe))
                                  (cons _e87682_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp92778)))))
            (if (macro-no-such-file-or-directory-exception? _exn87679_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn87679_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92777
                              (let ()
                                (declare (not safe))
                                (cons _exn87679_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp92777)))))))
    (define noncontinuable-exception?
      (lambda (_exn87675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87675_))
            (let ((_e87677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87675_ 'exception))))
              (macro-noncontinuable-exception? _e87677_))
            (macro-noncontinuable-exception? _exn87675_))))
    (define noncontinuable-exception-reason
      (lambda (_exn87669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87669_))
            (let ((_e87672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87669_ 'exception))))
              (if (macro-noncontinuable-exception? _e87672_)
                  (macro-noncontinuable-exception-reason _e87672_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp92780
                                (let ()
                                  (declare (not safe))
                                  (cons _e87672_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp92780)))))
            (if (macro-noncontinuable-exception? _exn87669_)
                (macro-noncontinuable-exception-reason _exn87669_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp92779
                              (let ()
                                (declare (not safe))
                                (cons _exn87669_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp92779)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn87665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87665_))
            (let ((_e87667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87665_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e87667_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn87665_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn87661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87661_))
            (let ((_e87663_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87661_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87663_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e87663_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92782
                                (let ()
                                  (declare (not safe))
                                  (cons _e87663_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp92782)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87661_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn87661_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92781
                              (let ()
                                (declare (not safe))
                                (cons _exn87661_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp92781)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn87655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87655_))
            (let ((_e87658_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87655_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87658_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e87658_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92784
                                (let ()
                                  (declare (not safe))
                                  (cons _e87658_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp92784)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87655_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn87655_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92783
                              (let ()
                                (declare (not safe))
                                (cons _exn87655_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp92783)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn87651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87651_))
            (let ((_e87653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87651_ 'exception))))
              (macro-nonprocedure-operator-exception? _e87653_))
            (macro-nonprocedure-operator-exception? _exn87651_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn87647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87647_))
            (let ((_e87649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87647_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87649_)
                  (macro-nonprocedure-operator-exception-arguments _e87649_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92786
                                (let ()
                                  (declare (not safe))
                                  (cons _e87649_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp92786)))))
            (if (macro-nonprocedure-operator-exception? _exn87647_)
                (macro-nonprocedure-operator-exception-arguments _exn87647_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92785
                              (let ()
                                (declare (not safe))
                                (cons _exn87647_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp92785)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn87643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87643_))
            (let ((_e87645_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87643_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87645_)
                  (macro-nonprocedure-operator-exception-code _e87645_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92788
                                (let ()
                                  (declare (not safe))
                                  (cons _e87645_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp92788)))))
            (if (macro-nonprocedure-operator-exception? _exn87643_)
                (macro-nonprocedure-operator-exception-code _exn87643_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92787
                              (let ()
                                (declare (not safe))
                                (cons _exn87643_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp92787)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn87639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87639_))
            (let ((_e87641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87639_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87641_)
                  (macro-nonprocedure-operator-exception-operator _e87641_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92790
                                (let ()
                                  (declare (not safe))
                                  (cons _e87641_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp92790)))))
            (if (macro-nonprocedure-operator-exception? _exn87639_)
                (macro-nonprocedure-operator-exception-operator _exn87639_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92789
                              (let ()
                                (declare (not safe))
                                (cons _exn87639_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp92789)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn87633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87633_))
            (let ((_e87636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87633_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87636_)
                  (macro-nonprocedure-operator-exception-rte _e87636_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92792
                                (let ()
                                  (declare (not safe))
                                  (cons _e87636_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp92792)))))
            (if (macro-nonprocedure-operator-exception? _exn87633_)
                (macro-nonprocedure-operator-exception-rte _exn87633_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92791
                              (let ()
                                (declare (not safe))
                                (cons _exn87633_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp92791)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn87629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87629_))
            (let ((_e87631_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87629_ 'exception))))
              (macro-not-in-compilation-context-exception? _e87631_))
            (macro-not-in-compilation-context-exception? _exn87629_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn87625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87625_))
            (let ((_e87627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87625_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87627_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e87627_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92794
                                (let ()
                                  (declare (not safe))
                                  (cons _e87627_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp92794)))))
            (if (macro-not-in-compilation-context-exception? _exn87625_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn87625_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92793
                              (let ()
                                (declare (not safe))
                                (cons _exn87625_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp92793)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn87619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87619_))
            (let ((_e87622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87619_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87622_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e87622_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92796
                                (let ()
                                  (declare (not safe))
                                  (cons _e87622_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp92796)))))
            (if (macro-not-in-compilation-context-exception? _exn87619_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn87619_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92795
                              (let ()
                                (declare (not safe))
                                (cons _exn87619_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp92795)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn87615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87615_))
            (let ((_e87617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87615_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e87617_))
            (macro-number-of-arguments-limit-exception? _exn87615_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn87611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87611_))
            (let ((_e87613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87611_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87613_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e87613_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92798
                                (let ()
                                  (declare (not safe))
                                  (cons _e87613_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp92798)))))
            (if (macro-number-of-arguments-limit-exception? _exn87611_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn87611_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92797
                              (let ()
                                (declare (not safe))
                                (cons _exn87611_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp92797)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn87605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87605_))
            (let ((_e87608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87605_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87608_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e87608_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92800
                                (let ()
                                  (declare (not safe))
                                  (cons _e87608_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp92800)))))
            (if (macro-number-of-arguments-limit-exception? _exn87605_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn87605_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92799
                              (let ()
                                (declare (not safe))
                                (cons _exn87605_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp92799)))))))
    (define os-exception?
      (lambda (_exn87601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87601_))
            (let ((_e87603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87601_ 'exception))))
              (macro-os-exception? _e87603_))
            (macro-os-exception? _exn87601_))))
    (define os-exception-arguments
      (lambda (_exn87597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87597_))
            (let ((_e87599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87597_ 'exception))))
              (if (macro-os-exception? _e87599_)
                  (macro-os-exception-arguments _e87599_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92802
                                (let ()
                                  (declare (not safe))
                                  (cons _e87599_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp92802)))))
            (if (macro-os-exception? _exn87597_)
                (macro-os-exception-arguments _exn87597_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92801
                              (let ()
                                (declare (not safe))
                                (cons _exn87597_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp92801)))))))
    (define os-exception-code
      (lambda (_exn87593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87593_))
            (let ((_e87595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87593_ 'exception))))
              (if (macro-os-exception? _e87595_)
                  (macro-os-exception-code _e87595_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92804
                                (let ()
                                  (declare (not safe))
                                  (cons _e87595_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp92804)))))
            (if (macro-os-exception? _exn87593_)
                (macro-os-exception-code _exn87593_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92803
                              (let ()
                                (declare (not safe))
                                (cons _exn87593_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp92803)))))))
    (define os-exception-message
      (lambda (_exn87589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87589_))
            (let ((_e87591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87589_ 'exception))))
              (if (macro-os-exception? _e87591_)
                  (macro-os-exception-message _e87591_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92806
                                (let ()
                                  (declare (not safe))
                                  (cons _e87591_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp92806)))))
            (if (macro-os-exception? _exn87589_)
                (macro-os-exception-message _exn87589_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92805
                              (let ()
                                (declare (not safe))
                                (cons _exn87589_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp92805)))))))
    (define os-exception-procedure
      (lambda (_exn87583_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87583_))
            (let ((_e87586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87583_ 'exception))))
              (if (macro-os-exception? _e87586_)
                  (macro-os-exception-procedure _e87586_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92808
                                (let ()
                                  (declare (not safe))
                                  (cons _e87586_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp92808)))))
            (if (macro-os-exception? _exn87583_)
                (macro-os-exception-procedure _exn87583_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92807
                              (let ()
                                (declare (not safe))
                                (cons _exn87583_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp92807)))))))
    (define permission-denied-exception?
      (lambda (_exn87579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87579_))
            (let ((_e87581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87579_ 'exception))))
              (macro-permission-denied-exception? _e87581_))
            (macro-permission-denied-exception? _exn87579_))))
    (define permission-denied-exception-arguments
      (lambda (_exn87575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87575_))
            (let ((_e87577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87575_ 'exception))))
              (if (macro-permission-denied-exception? _e87577_)
                  (macro-permission-denied-exception-arguments _e87577_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92810
                                (let ()
                                  (declare (not safe))
                                  (cons _e87577_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp92810)))))
            (if (macro-permission-denied-exception? _exn87575_)
                (macro-permission-denied-exception-arguments _exn87575_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92809
                              (let ()
                                (declare (not safe))
                                (cons _exn87575_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp92809)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn87569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87569_))
            (let ((_e87572_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87569_ 'exception))))
              (if (macro-permission-denied-exception? _e87572_)
                  (macro-permission-denied-exception-procedure _e87572_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92812
                                (let ()
                                  (declare (not safe))
                                  (cons _e87572_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp92812)))))
            (if (macro-permission-denied-exception? _exn87569_)
                (macro-permission-denied-exception-procedure _exn87569_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92811
                              (let ()
                                (declare (not safe))
                                (cons _exn87569_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp92811)))))))
    (define range-exception?
      (lambda (_exn87565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87565_))
            (let ((_e87567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87565_ 'exception))))
              (macro-range-exception? _e87567_))
            (macro-range-exception? _exn87565_))))
    (define range-exception-arg-id
      (lambda (_exn87561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87561_))
            (let ((_e87563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87561_ 'exception))))
              (if (macro-range-exception? _e87563_)
                  (macro-range-exception-arg-id _e87563_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92814
                                (let ()
                                  (declare (not safe))
                                  (cons _e87563_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp92814)))))
            (if (macro-range-exception? _exn87561_)
                (macro-range-exception-arg-id _exn87561_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92813
                              (let ()
                                (declare (not safe))
                                (cons _exn87561_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp92813)))))))
    (define range-exception-arguments
      (lambda (_exn87557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87557_))
            (let ((_e87559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87557_ 'exception))))
              (if (macro-range-exception? _e87559_)
                  (macro-range-exception-arguments _e87559_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92816
                                (let ()
                                  (declare (not safe))
                                  (cons _e87559_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp92816)))))
            (if (macro-range-exception? _exn87557_)
                (macro-range-exception-arguments _exn87557_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92815
                              (let ()
                                (declare (not safe))
                                (cons _exn87557_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp92815)))))))
    (define range-exception-procedure
      (lambda (_exn87551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87551_))
            (let ((_e87554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87551_ 'exception))))
              (if (macro-range-exception? _e87554_)
                  (macro-range-exception-procedure _e87554_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92818
                                (let ()
                                  (declare (not safe))
                                  (cons _e87554_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp92818)))))
            (if (macro-range-exception? _exn87551_)
                (macro-range-exception-procedure _exn87551_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92817
                              (let ()
                                (declare (not safe))
                                (cons _exn87551_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp92817)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn87547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87547_))
            (let ((_e87549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87547_ 'exception))))
              (macro-rpc-remote-error-exception? _e87549_))
            (macro-rpc-remote-error-exception? _exn87547_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn87543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87543_))
            (let ((_e87545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87543_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87545_)
                  (macro-rpc-remote-error-exception-arguments _e87545_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92820
                                (let ()
                                  (declare (not safe))
                                  (cons _e87545_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp92820)))))
            (if (macro-rpc-remote-error-exception? _exn87543_)
                (macro-rpc-remote-error-exception-arguments _exn87543_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92819
                              (let ()
                                (declare (not safe))
                                (cons _exn87543_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp92819)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn87539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87539_))
            (let ((_e87541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87539_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87541_)
                  (macro-rpc-remote-error-exception-message _e87541_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92822
                                (let ()
                                  (declare (not safe))
                                  (cons _e87541_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp92822)))))
            (if (macro-rpc-remote-error-exception? _exn87539_)
                (macro-rpc-remote-error-exception-message _exn87539_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92821
                              (let ()
                                (declare (not safe))
                                (cons _exn87539_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp92821)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn87533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87533_))
            (let ((_e87536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87533_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87536_)
                  (macro-rpc-remote-error-exception-procedure _e87536_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92824
                                (let ()
                                  (declare (not safe))
                                  (cons _e87536_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp92824)))))
            (if (macro-rpc-remote-error-exception? _exn87533_)
                (macro-rpc-remote-error-exception-procedure _exn87533_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92823
                              (let ()
                                (declare (not safe))
                                (cons _exn87533_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp92823)))))))
    (define scheduler-exception?
      (lambda (_exn87529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87529_))
            (let ((_e87531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87529_ 'exception))))
              (macro-scheduler-exception? _e87531_))
            (macro-scheduler-exception? _exn87529_))))
    (define scheduler-exception-reason
      (lambda (_exn87523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87523_))
            (let ((_e87526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87523_ 'exception))))
              (if (macro-scheduler-exception? _e87526_)
                  (macro-scheduler-exception-reason _e87526_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp92826
                                (let ()
                                  (declare (not safe))
                                  (cons _e87526_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp92826)))))
            (if (macro-scheduler-exception? _exn87523_)
                (macro-scheduler-exception-reason _exn87523_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp92825
                              (let ()
                                (declare (not safe))
                                (cons _exn87523_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp92825)))))))
    (define sfun-conversion-exception?
      (lambda (_exn87519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87519_))
            (let ((_e87521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87519_ 'exception))))
              (macro-sfun-conversion-exception? _e87521_))
            (macro-sfun-conversion-exception? _exn87519_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn87515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87515_))
            (let ((_e87517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87515_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87517_)
                  (macro-sfun-conversion-exception-arguments _e87517_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92828
                                (let ()
                                  (declare (not safe))
                                  (cons _e87517_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp92828)))))
            (if (macro-sfun-conversion-exception? _exn87515_)
                (macro-sfun-conversion-exception-arguments _exn87515_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92827
                              (let ()
                                (declare (not safe))
                                (cons _exn87515_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp92827)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn87511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87511_))
            (let ((_e87513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87511_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87513_)
                  (macro-sfun-conversion-exception-code _e87513_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92830
                                (let ()
                                  (declare (not safe))
                                  (cons _e87513_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp92830)))))
            (if (macro-sfun-conversion-exception? _exn87511_)
                (macro-sfun-conversion-exception-code _exn87511_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92829
                              (let ()
                                (declare (not safe))
                                (cons _exn87511_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp92829)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn87507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87507_))
            (let ((_e87509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87507_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87509_)
                  (macro-sfun-conversion-exception-message _e87509_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92832
                                (let ()
                                  (declare (not safe))
                                  (cons _e87509_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp92832)))))
            (if (macro-sfun-conversion-exception? _exn87507_)
                (macro-sfun-conversion-exception-message _exn87507_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92831
                              (let ()
                                (declare (not safe))
                                (cons _exn87507_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp92831)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn87501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87501_))
            (let ((_e87504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87501_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87504_)
                  (macro-sfun-conversion-exception-procedure _e87504_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92834
                                (let ()
                                  (declare (not safe))
                                  (cons _e87504_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp92834)))))
            (if (macro-sfun-conversion-exception? _exn87501_)
                (macro-sfun-conversion-exception-procedure _exn87501_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92833
                              (let ()
                                (declare (not safe))
                                (cons _exn87501_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp92833)))))))
    (define stack-overflow-exception?
      (lambda (_exn87495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87495_))
            (let ((_e87498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87495_ 'exception))))
              (macro-stack-overflow-exception? _e87498_))
            (macro-stack-overflow-exception? _exn87495_))))
    (define started-thread-exception?
      (lambda (_exn87491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87491_))
            (let ((_e87493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87491_ 'exception))))
              (macro-started-thread-exception? _e87493_))
            (macro-started-thread-exception? _exn87491_))))
    (define started-thread-exception-arguments
      (lambda (_exn87487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87487_))
            (let ((_e87489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87487_ 'exception))))
              (if (macro-started-thread-exception? _e87489_)
                  (macro-started-thread-exception-arguments _e87489_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92836
                                (let ()
                                  (declare (not safe))
                                  (cons _e87489_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp92836)))))
            (if (macro-started-thread-exception? _exn87487_)
                (macro-started-thread-exception-arguments _exn87487_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92835
                              (let ()
                                (declare (not safe))
                                (cons _exn87487_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp92835)))))))
    (define started-thread-exception-procedure
      (lambda (_exn87481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87481_))
            (let ((_e87484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87481_ 'exception))))
              (if (macro-started-thread-exception? _e87484_)
                  (macro-started-thread-exception-procedure _e87484_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92838
                                (let ()
                                  (declare (not safe))
                                  (cons _e87484_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp92838)))))
            (if (macro-started-thread-exception? _exn87481_)
                (macro-started-thread-exception-procedure _exn87481_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92837
                              (let ()
                                (declare (not safe))
                                (cons _exn87481_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp92837)))))))
    (define terminated-thread-exception?
      (lambda (_exn87477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87477_))
            (let ((_e87479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87477_ 'exception))))
              (macro-terminated-thread-exception? _e87479_))
            (macro-terminated-thread-exception? _exn87477_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn87473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87473_))
            (let ((_e87475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87473_ 'exception))))
              (if (macro-terminated-thread-exception? _e87475_)
                  (macro-terminated-thread-exception-arguments _e87475_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92840
                                (let ()
                                  (declare (not safe))
                                  (cons _e87475_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp92840)))))
            (if (macro-terminated-thread-exception? _exn87473_)
                (macro-terminated-thread-exception-arguments _exn87473_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92839
                              (let ()
                                (declare (not safe))
                                (cons _exn87473_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp92839)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn87467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87467_))
            (let ((_e87470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87467_ 'exception))))
              (if (macro-terminated-thread-exception? _e87470_)
                  (macro-terminated-thread-exception-procedure _e87470_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92842
                                (let ()
                                  (declare (not safe))
                                  (cons _e87470_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp92842)))))
            (if (macro-terminated-thread-exception? _exn87467_)
                (macro-terminated-thread-exception-procedure _exn87467_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92841
                              (let ()
                                (declare (not safe))
                                (cons _exn87467_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp92841)))))))
    (define type-exception?
      (lambda (_exn87463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87463_))
            (let ((_e87465_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87463_ 'exception))))
              (macro-type-exception? _e87465_))
            (macro-type-exception? _exn87463_))))
    (define type-exception-arg-id
      (lambda (_exn87459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87459_))
            (let ((_e87461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87459_ 'exception))))
              (if (macro-type-exception? _e87461_)
                  (macro-type-exception-arg-id _e87461_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92844
                                (let ()
                                  (declare (not safe))
                                  (cons _e87461_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp92844)))))
            (if (macro-type-exception? _exn87459_)
                (macro-type-exception-arg-id _exn87459_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92843
                              (let ()
                                (declare (not safe))
                                (cons _exn87459_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp92843)))))))
    (define type-exception-arguments
      (lambda (_exn87455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87455_))
            (let ((_e87457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87455_ 'exception))))
              (if (macro-type-exception? _e87457_)
                  (macro-type-exception-arguments _e87457_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92846
                                (let ()
                                  (declare (not safe))
                                  (cons _e87457_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp92846)))))
            (if (macro-type-exception? _exn87455_)
                (macro-type-exception-arguments _exn87455_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92845
                              (let ()
                                (declare (not safe))
                                (cons _exn87455_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp92845)))))))
    (define type-exception-procedure
      (lambda (_exn87451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87451_))
            (let ((_e87453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87451_ 'exception))))
              (if (macro-type-exception? _e87453_)
                  (macro-type-exception-procedure _e87453_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92848
                                (let ()
                                  (declare (not safe))
                                  (cons _e87453_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp92848)))))
            (if (macro-type-exception? _exn87451_)
                (macro-type-exception-procedure _exn87451_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92847
                              (let ()
                                (declare (not safe))
                                (cons _exn87451_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp92847)))))))
    (define type-exception-type-id
      (lambda (_exn87445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87445_))
            (let ((_e87448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87445_ 'exception))))
              (if (macro-type-exception? _e87448_)
                  (macro-type-exception-type-id _e87448_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92850
                                (let ()
                                  (declare (not safe))
                                  (cons _e87448_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp92850)))))
            (if (macro-type-exception? _exn87445_)
                (macro-type-exception-type-id _exn87445_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92849
                              (let ()
                                (declare (not safe))
                                (cons _exn87445_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp92849)))))))
    (define unbound-global-exception?
      (lambda (_exn87441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87441_))
            (let ((_e87443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87441_ 'exception))))
              (macro-unbound-global-exception? _e87443_))
            (macro-unbound-global-exception? _exn87441_))))
    (define unbound-global-exception-code
      (lambda (_exn87437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87437_))
            (let ((_e87439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87437_ 'exception))))
              (if (macro-unbound-global-exception? _e87439_)
                  (macro-unbound-global-exception-code _e87439_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92852
                                (let ()
                                  (declare (not safe))
                                  (cons _e87439_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp92852)))))
            (if (macro-unbound-global-exception? _exn87437_)
                (macro-unbound-global-exception-code _exn87437_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92851
                              (let ()
                                (declare (not safe))
                                (cons _exn87437_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp92851)))))))
    (define unbound-global-exception-rte
      (lambda (_exn87433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87433_))
            (let ((_e87435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87433_ 'exception))))
              (if (macro-unbound-global-exception? _e87435_)
                  (macro-unbound-global-exception-rte _e87435_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92854
                                (let ()
                                  (declare (not safe))
                                  (cons _e87435_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp92854)))))
            (if (macro-unbound-global-exception? _exn87433_)
                (macro-unbound-global-exception-rte _exn87433_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92853
                              (let ()
                                (declare (not safe))
                                (cons _exn87433_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp92853)))))))
    (define unbound-global-exception-variable
      (lambda (_exn87427_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87427_))
            (let ((_e87430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87427_ 'exception))))
              (if (macro-unbound-global-exception? _e87430_)
                  (macro-unbound-global-exception-variable _e87430_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92856
                                (let ()
                                  (declare (not safe))
                                  (cons _e87430_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp92856)))))
            (if (macro-unbound-global-exception? _exn87427_)
                (macro-unbound-global-exception-variable _exn87427_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92855
                              (let ()
                                (declare (not safe))
                                (cons _exn87427_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp92855)))))))
    (define unbound-key-exception?
      (lambda (_exn87423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87423_))
            (let ((_e87425_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87423_ 'exception))))
              (macro-unbound-key-exception? _e87425_))
            (macro-unbound-key-exception? _exn87423_))))
    (define unbound-key-exception-arguments
      (lambda (_exn87419_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87419_))
            (let ((_e87421_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87419_ 'exception))))
              (if (macro-unbound-key-exception? _e87421_)
                  (macro-unbound-key-exception-arguments _e87421_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92858
                                (let ()
                                  (declare (not safe))
                                  (cons _e87421_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp92858)))))
            (if (macro-unbound-key-exception? _exn87419_)
                (macro-unbound-key-exception-arguments _exn87419_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92857
                              (let ()
                                (declare (not safe))
                                (cons _exn87419_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp92857)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn87413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87413_))
            (let ((_e87416_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87413_ 'exception))))
              (if (macro-unbound-key-exception? _e87416_)
                  (macro-unbound-key-exception-procedure _e87416_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92860
                                (let ()
                                  (declare (not safe))
                                  (cons _e87416_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp92860)))))
            (if (macro-unbound-key-exception? _exn87413_)
                (macro-unbound-key-exception-procedure _exn87413_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92859
                              (let ()
                                (declare (not safe))
                                (cons _exn87413_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp92859)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn87409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87409_))
            (let ((_e87411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87409_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e87411_))
            (macro-unbound-os-environment-variable-exception? _exn87409_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn87405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87405_))
            (let ((_e87407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87405_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87407_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e87407_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92862
                                (let ()
                                  (declare (not safe))
                                  (cons _e87407_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp92862)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87405_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn87405_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92861
                              (let ()
                                (declare (not safe))
                                (cons _exn87405_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp92861)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn87399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87399_))
            (let ((_e87402_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87399_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87402_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e87402_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92864
                                (let ()
                                  (declare (not safe))
                                  (cons _e87402_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp92864)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87399_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn87399_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92863
                              (let ()
                                (declare (not safe))
                                (cons _exn87399_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp92863)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn87395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87395_))
            (let ((_e87397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87395_ 'exception))))
              (macro-unbound-serial-number-exception? _e87397_))
            (macro-unbound-serial-number-exception? _exn87395_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn87391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87391_))
            (let ((_e87393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87391_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87393_)
                  (macro-unbound-serial-number-exception-arguments _e87393_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92866
                                (let ()
                                  (declare (not safe))
                                  (cons _e87393_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp92866)))))
            (if (macro-unbound-serial-number-exception? _exn87391_)
                (macro-unbound-serial-number-exception-arguments _exn87391_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92865
                              (let ()
                                (declare (not safe))
                                (cons _exn87391_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp92865)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn87385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87385_))
            (let ((_e87388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87385_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87388_)
                  (macro-unbound-serial-number-exception-procedure _e87388_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92868
                                (let ()
                                  (declare (not safe))
                                  (cons _e87388_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp92868)))))
            (if (macro-unbound-serial-number-exception? _exn87385_)
                (macro-unbound-serial-number-exception-procedure _exn87385_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92867
                              (let ()
                                (declare (not safe))
                                (cons _exn87385_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp92867)))))))
    (define uncaught-exception?
      (lambda (_exn87381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87381_))
            (let ((_e87383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87381_ 'exception))))
              (macro-uncaught-exception? _e87383_))
            (macro-uncaught-exception? _exn87381_))))
    (define uncaught-exception-arguments
      (lambda (_exn87377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87377_))
            (let ((_e87379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87377_ 'exception))))
              (if (macro-uncaught-exception? _e87379_)
                  (macro-uncaught-exception-arguments _e87379_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92870
                                (let ()
                                  (declare (not safe))
                                  (cons _e87379_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp92870)))))
            (if (macro-uncaught-exception? _exn87377_)
                (macro-uncaught-exception-arguments _exn87377_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92869
                              (let ()
                                (declare (not safe))
                                (cons _exn87377_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp92869)))))))
    (define uncaught-exception-procedure
      (lambda (_exn87373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87373_))
            (let ((_e87375_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87373_ 'exception))))
              (if (macro-uncaught-exception? _e87375_)
                  (macro-uncaught-exception-procedure _e87375_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92872
                                (let ()
                                  (declare (not safe))
                                  (cons _e87375_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp92872)))))
            (if (macro-uncaught-exception? _exn87373_)
                (macro-uncaught-exception-procedure _exn87373_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92871
                              (let ()
                                (declare (not safe))
                                (cons _exn87373_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp92871)))))))
    (define uncaught-exception-reason
      (lambda (_exn87367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87367_))
            (let ((_e87370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87367_ 'exception))))
              (if (macro-uncaught-exception? _e87370_)
                  (macro-uncaught-exception-reason _e87370_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92874
                                (let ()
                                  (declare (not safe))
                                  (cons _e87370_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp92874)))))
            (if (macro-uncaught-exception? _exn87367_)
                (macro-uncaught-exception-reason _exn87367_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92873
                              (let ()
                                (declare (not safe))
                                (cons _exn87367_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp92873)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn87363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87363_))
            (let ((_e87365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87363_ 'exception))))
              (macro-uninitialized-thread-exception? _e87365_))
            (macro-uninitialized-thread-exception? _exn87363_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn87359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87359_))
            (let ((_e87361_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87359_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87361_)
                  (macro-uninitialized-thread-exception-arguments _e87361_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92876
                                (let ()
                                  (declare (not safe))
                                  (cons _e87361_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp92876)))))
            (if (macro-uninitialized-thread-exception? _exn87359_)
                (macro-uninitialized-thread-exception-arguments _exn87359_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92875
                              (let ()
                                (declare (not safe))
                                (cons _exn87359_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp92875)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn87353_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87353_))
            (let ((_e87356_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87353_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87356_)
                  (macro-uninitialized-thread-exception-procedure _e87356_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92878
                                (let ()
                                  (declare (not safe))
                                  (cons _e87356_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp92878)))))
            (if (macro-uninitialized-thread-exception? _exn87353_)
                (macro-uninitialized-thread-exception-procedure _exn87353_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92877
                              (let ()
                                (declare (not safe))
                                (cons _exn87353_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp92877)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn87349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87349_))
            (let ((_e87351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87349_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e87351_))
            (macro-unknown-keyword-argument-exception? _exn87349_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn87345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87345_))
            (let ((_e87347_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87345_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87347_)
                  (macro-unknown-keyword-argument-exception-arguments _e87347_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92880
                                (let ()
                                  (declare (not safe))
                                  (cons _e87347_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp92880)))))
            (if (macro-unknown-keyword-argument-exception? _exn87345_)
                (macro-unknown-keyword-argument-exception-arguments _exn87345_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92879
                              (let ()
                                (declare (not safe))
                                (cons _exn87345_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp92879)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn87339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87339_))
            (let ((_e87342_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87339_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87342_)
                  (macro-unknown-keyword-argument-exception-procedure _e87342_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92882
                                (let ()
                                  (declare (not safe))
                                  (cons _e87342_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp92882)))))
            (if (macro-unknown-keyword-argument-exception? _exn87339_)
                (macro-unknown-keyword-argument-exception-procedure _exn87339_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92881
                              (let ()
                                (declare (not safe))
                                (cons _exn87339_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp92881)))))))
    (define unterminated-process-exception?
      (lambda (_exn87335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87335_))
            (let ((_e87337_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87335_ 'exception))))
              (macro-unterminated-process-exception? _e87337_))
            (macro-unterminated-process-exception? _exn87335_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn87331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87331_))
            (let ((_e87333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87331_ 'exception))))
              (if (macro-unterminated-process-exception? _e87333_)
                  (macro-unterminated-process-exception-arguments _e87333_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92884
                                (let ()
                                  (declare (not safe))
                                  (cons _e87333_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp92884)))))
            (if (macro-unterminated-process-exception? _exn87331_)
                (macro-unterminated-process-exception-arguments _exn87331_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92883
                              (let ()
                                (declare (not safe))
                                (cons _exn87331_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp92883)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn87325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87325_))
            (let ((_e87328_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87325_ 'exception))))
              (if (macro-unterminated-process-exception? _e87328_)
                  (macro-unterminated-process-exception-procedure _e87328_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92886
                                (let ()
                                  (declare (not safe))
                                  (cons _e87328_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp92886)))))
            (if (macro-unterminated-process-exception? _exn87325_)
                (macro-unterminated-process-exception-procedure _exn87325_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92885
                              (let ()
                                (declare (not safe))
                                (cons _exn87325_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp92885)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn87321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87321_))
            (let ((_e87323_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87321_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e87323_))
            (macro-wrong-number-of-arguments-exception? _exn87321_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn87317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87317_))
            (let ((_e87319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87317_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87319_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e87319_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92888
                                (let ()
                                  (declare (not safe))
                                  (cons _e87319_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp92888)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87317_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn87317_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92887
                              (let ()
                                (declare (not safe))
                                (cons _exn87317_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp92887)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn87311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87311_))
            (let ((_e87314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87311_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87314_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e87314_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92890
                                (let ()
                                  (declare (not safe))
                                  (cons _e87314_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp92890)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87311_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn87311_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92889
                              (let ()
                                (declare (not safe))
                                (cons _exn87311_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp92889)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn87307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87307_))
            (let ((_e87309_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87307_ 'exception))))
              (macro-wrong-number-of-values-exception? _e87309_))
            (macro-wrong-number-of-values-exception? _exn87307_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn87303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87303_))
            (let ((_e87305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87303_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87305_)
                  (macro-wrong-number-of-values-exception-code _e87305_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92892
                                (let ()
                                  (declare (not safe))
                                  (cons _e87305_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp92892)))))
            (if (macro-wrong-number-of-values-exception? _exn87303_)
                (macro-wrong-number-of-values-exception-code _exn87303_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92891
                              (let ()
                                (declare (not safe))
                                (cons _exn87303_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp92891)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn87299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87299_))
            (let ((_e87301_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87299_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87301_)
                  (macro-wrong-number-of-values-exception-rte _e87301_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92894
                                (let ()
                                  (declare (not safe))
                                  (cons _e87301_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp92894)))))
            (if (macro-wrong-number-of-values-exception? _exn87299_)
                (macro-wrong-number-of-values-exception-rte _exn87299_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92893
                              (let ()
                                (declare (not safe))
                                (cons _exn87299_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp92893)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn87293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87293_))
            (let ((_e87296_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87293_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87296_)
                  (macro-wrong-number-of-values-exception-vals _e87296_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92896
                                (let ()
                                  (declare (not safe))
                                  (cons _e87296_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp92896)))))
            (if (macro-wrong-number-of-values-exception? _exn87293_)
                (macro-wrong-number-of-values-exception-vals _exn87293_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92895
                              (let ()
                                (declare (not safe))
                                (cons _exn87293_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp92895)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn87287_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87287_))
            (let ((_e87290_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87287_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e87290_))
            (macro-wrong-processor-c-return-exception? _exn87287_))))))
