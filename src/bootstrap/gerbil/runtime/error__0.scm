(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708271166)
  (begin
    (define Exception::t
      (let ((__tmp95683 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95683
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91587_ (apply make-instance Exception::t _$args91587_)))
    (define StackTrace::t
      (let ((__tmp95684 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95684
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91584_ (apply make-instance StackTrace::t _$args91584_)))
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
      (let ((__tmp95685 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95685
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91581_ (apply make-instance Error::t _$args91581_)))
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
      (let ((__tmp95686 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95686
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91578_
        (apply make-instance RuntimeException::t _$args91578_)))
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
      (lambda (_exn91573_ _continue91574_)
        (let ((_exn91576_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91573_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91576_ _continue91574_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91569_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91569_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91569_ 'continuation))
                '#!void
                (let ((__tmp95687
                       (lambda (_cont91571_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91569_
                            'continuation
                            _cont91571_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95687)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91569_))))
    (define error
      (lambda (_message91566_ . _irritants91567_)
        (raise (let ((__obj95677
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95677
                  _message91566_
                  'irritants:
                  _irritants91567_)
                 __obj95677))))
    (define with-exception-handler
      (lambda (_handler91559_ _thunk91560_)
        (if (let () (declare (not safe)) (procedure? _handler91559_))
            '#!void
            (raise (let ((__obj95678
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95678
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91559_ '())))
                     __obj95678)))
        (if (let () (declare (not safe)) (procedure? _thunk91560_))
            '#!void
            (raise (let ((__obj95679
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95679
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91560_ '())))
                     __obj95679)))
        (let ((__tmp95688
               (lambda (_exn91562_)
                 (let ((_exn91564_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91562_))))
                   (_handler91559_ _exn91564_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95688 _thunk91560_))))
    (define with-catch
      (lambda (_handler91552_ _thunk91553_)
        (if (let () (declare (not safe)) (procedure? _handler91552_))
            '#!void
            (raise (let ((__obj95680
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95680
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91552_ '())))
                     __obj95680)))
        (if (let () (declare (not safe)) (procedure? _thunk91553_))
            '#!void
            (raise (let ((__obj95681
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95681
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91553_ '())))
                     __obj95681)))
        (let ((__tmp95689
               (lambda (_cont91555_)
                 (with-exception-handler
                  (lambda (_exn91557_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91555_
                       _handler91552_
                       _exn91557_)))
                  _thunk91553_))))
          (declare (not safe))
          (##continuation-capture __tmp95689))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91543_)
        (if (or (heap-overflow-exception? _exn91543_)
                (stack-overflow-exception? _exn91543_))
            _exn91543_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91543_))
                _exn91543_
                (if (macro-exception? _exn91543_)
                    (let ((_rte91548_
                           (let ((__obj95682
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95682
                                _exn91543_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95682)))
                      (let ((__tmp95690
                             (lambda (_cont91550_)
                               (let ((__tmp95691
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91550_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91548_
                                  'continuation
                                  __tmp95691)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95690))
                      _rte91548_)
                    _exn91543_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91538_)
        (let ((_$e91540_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91538_))))
          (if _$e91540_ _$e91540_ (error-exception? _obj91538_)))))
    (define error-message
      (lambda (_obj91536_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91536_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91536_ 'message))
            (if (error-exception? _obj91536_)
                (error-exception-message _obj91536_)
                '#f))))
    (define error-irritants
      (lambda (_obj91534_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91534_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91534_ 'irritants))
            (if (error-exception? _obj91534_)
                (error-exception-parameters _obj91534_)
                '#f))))
    (define error-trace
      (lambda (_obj91532_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91532_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91532_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91514_ _port91515_)
        (let ((_$e91517_
               (let ()
                 (declare (not safe))
                 (method-ref _e91514_ 'display-exception))))
          (if _$e91517_
              ((lambda (_f91520_) (_f91520_ _e91514_ _port91515_)) _$e91517_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91514_ _port91515_))))))
    (define display-exception__0
      (lambda (_e91525_)
        (let ((_port91527_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91525_ _port91527_))))
    (define display-exception
      (lambda _g95693_
        (let ((_g95692_ (let () (declare (not safe)) (##length _g95693_))))
          (cond ((let () (declare (not safe)) (##fx= _g95692_ 1))
                 (apply (lambda (_e91525_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91525_)))
                        _g95693_))
                ((let () (declare (not safe)) (##fx= _g95692_ 2))
                 (apply (lambda (_e91529_ _port91530_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91529_ _port91530_)))
                        _g95693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95693_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91503_ _message91504_ . _rest91505_)
        (let ((_message91511_
               (if (let () (declare (not safe)) (string? _message91504_))
                   _message91504_
                   (call-with-output-string
                    '""
                    (lambda (_g9150691508_)
                      (display _message91504_ _g9150691508_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91503_ 'message _message91511_))
          (apply class-instance-init! _self91503_ _rest91505_))))
    (define Error:::init!::specialize
      (lambda (__t95656)
        (let ((__message95657
               (let ((__tmp95658
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95656 'message))))
                 (if __tmp95658 __tmp95658 (error '"Unknown slot" 'message)))))
          (lambda (_self91503_ _message91504_ . _rest91505_)
            (let ((_message91511_
                   (if (let () (declare (not safe)) (string? _message91504_))
                       _message91504_
                       (call-with-output-string
                        '""
                        (lambda (_g9150691508_)
                          (display _message91504_ _g9150691508_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91503_
                 _message91511_
                 __message95657
                 __t95656
                 '#f))
              (apply class-instance-init! _self91503_ _rest91505_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self91361_ _port91362_)
        (let ((_tmp-port91364_ (open-output-string))
              (_display-error-newline91365_
               (> (output-port-column _port91362_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91364_))
          (let ((__tmp95694
                 (lambda ()
                   (if _display-error-newline91365_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e91368_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91361_ 'where))))
                     (if _$e91368_ (display _$e91368_) (display '"?")))
                   (let ((__tmp95695
                          (let ((__tmp95696
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self91361_))))
                            (declare (not safe))
                            (##type-name __tmp95696))))
                     (declare (not safe))
                     (display* '" [" __tmp95695 '"]: "))
                   (let ((__tmp95697
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91361_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95697))
                   (let ((_irritants91371_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91361_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants91371_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj91373_)
                              (write _obj91373_)
                              (write-char '#\space))
                            _irritants91371_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self91361_))
                            (dump-stack-trace?))
                       (let ((_cont9137491376_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self91361_
                                 'continuation))))
                         (if _cont9137491376_
                             (let ((_cont91379_ _cont9137491376_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont91379_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95694
             current-output-port
             _tmp-port91364_))
          (let ((__tmp95698 (get-output-string _tmp-port91364_)))
            (declare (not safe))
            (##write-string __tmp95698 _port91362_)))))
    (define Error::display-exception::specialize
      (lambda (__t95659)
        (let ((__message95660
               (let ((__tmp95664
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95659 'message))))
                 (if __tmp95664 __tmp95664 (error '"Unknown slot" 'message))))
              (__irritants95661
               (let ((__tmp95665
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95659 'irritants))))
                 (if __tmp95665
                     __tmp95665
                     (error '"Unknown slot" 'irritants))))
              (__where95662
               (let ((__tmp95666
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95659 'where))))
                 (if __tmp95666 __tmp95666 (error '"Unknown slot" 'where))))
              (__continuation95663
               (let ((__tmp95667
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95659 'continuation))))
                 (if __tmp95667
                     __tmp95667
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self91361_ _port91362_)
            (let ((_tmp-port91364_ (open-output-string))
                  (_display-error-newline91365_
                   (> (output-port-column _port91362_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91364_))
              (let ((__tmp95699
                     (lambda ()
                       (if _display-error-newline91365_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e91368_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91361_
                                 __where95662
                                 __t95659
                                 '#f))))
                         (if _$e91368_ (display _$e91368_) (display '"?")))
                       (let ((__tmp95700
                              (let ((__tmp95701
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self91361_))))
                                (declare (not safe))
                                (##type-name __tmp95701))))
                         (declare (not safe))
                         (display* '" [" __tmp95700 '"]: "))
                       (let ((__tmp95702
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91361_
                                 __message95660
                                 __t95659
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95702))
                       (let ((_irritants91371_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91361_
                                 __irritants95661
                                 __t95659
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants91371_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj91373_)
                                  (write _obj91373_)
                                  (write-char '#\space))
                                _irritants91371_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self91361_))
                                (dump-stack-trace?))
                           (let ((_cont9137491376_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self91361_
                                     __continuation95663
                                     __t95659
                                     '#f))))
                             (if _cont9137491376_
                                 (let ((_cont91379_ _cont9137491376_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont91379_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95699
                 current-output-port
                 _tmp-port91364_))
              (let ((__tmp95703 (get-output-string _tmp-port91364_)))
                (declare (not safe))
                (##write-string __tmp95703 _port91362_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self91228_ _port91229_)
        (let ((_tmp-port91231_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91231_))
          (let ((__tmp95704
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self91228_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95704 _tmp-port91231_))
          (if (dump-stack-trace?)
              (let ((_cont9123291234_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self91228_ 'continuation))))
                (if _cont9123291234_
                    (let ((_cont91237_ _cont9123291234_))
                      (display '"--- continuation backtrace:" _tmp-port91231_)
                      (newline _tmp-port91231_)
                      (display-continuation-backtrace
                       _cont91237_
                       _tmp-port91231_))
                    '#f))
              '#!void)
          (let ((__tmp95705 (get-output-string _tmp-port91231_)))
            (declare (not safe))
            (##write-string __tmp95705 _port91229_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95668)
        (let ((__exception95669
               (let ((__tmp95671
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95668 'exception))))
                 (if __tmp95671
                     __tmp95671
                     (error '"Unknown slot" 'exception))))
              (__continuation95670
               (let ((__tmp95672
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95668 'continuation))))
                 (if __tmp95672
                     __tmp95672
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self91228_ _port91229_)
            (let ((_tmp-port91231_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91231_))
              (let ((__tmp95706
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self91228_
                        __exception95669
                        __t95668
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95706 _tmp-port91231_))
              (if (dump-stack-trace?)
                  (let ((_cont9123291234_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self91228_
                            __continuation95670
                            __t95668
                            '#f))))
                    (if _cont9123291234_
                        (let ((_cont91237_ _cont9123291234_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port91231_)
                          (newline _tmp-port91231_)
                          (display-continuation-backtrace
                           _cont91237_
                           _tmp-port91231_))
                        '#f))
                  '#!void)
              (let ((__tmp95707 (get-output-string _tmp-port91231_)))
                (declare (not safe))
                (##write-string __tmp95707 _port91229_)))))))
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
      (lambda (_port91100_)
        (if (macro-character-port? _port91100_)
            (let ((_old-width91102_
                   (macro-character-port-output-width _port91100_)))
              (macro-character-port-output-width-set!
               _port91100_
               (lambda (_port91104_) '256))
              _old-width91102_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port91097_ _old-width91098_)
        (if (macro-character-port? _port91097_)
            (macro-character-port-output-width-set!
             _port91097_
             _old-width91098_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e91095_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e91095_))))
    (define abandoned-mutex-exception?
      (lambda (_exn91089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91089_))
            (let ((_e91092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91089_ 'exception))))
              (macro-abandoned-mutex-exception? _e91092_))
            (macro-abandoned-mutex-exception? _exn91089_))))
    (define cfun-conversion-exception?
      (lambda (_exn91085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91085_))
            (let ((_e91087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91085_ 'exception))))
              (macro-cfun-conversion-exception? _e91087_))
            (macro-cfun-conversion-exception? _exn91085_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn91081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91081_))
            (let ((_e91083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91081_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91083_)
                  (macro-cfun-conversion-exception-arguments _e91083_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95708
                                (let ()
                                  (declare (not safe))
                                  (cons _e91083_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95708)))))
            (if (macro-cfun-conversion-exception? _exn91081_)
                (macro-cfun-conversion-exception-arguments _exn91081_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95709
                              (let ()
                                (declare (not safe))
                                (cons _exn91081_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95709)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn91077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91077_))
            (let ((_e91079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91077_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91079_)
                  (macro-cfun-conversion-exception-code _e91079_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95710
                                (let ()
                                  (declare (not safe))
                                  (cons _e91079_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95710)))))
            (if (macro-cfun-conversion-exception? _exn91077_)
                (macro-cfun-conversion-exception-code _exn91077_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95711
                              (let ()
                                (declare (not safe))
                                (cons _exn91077_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95711)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn91073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91073_))
            (let ((_e91075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91073_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91075_)
                  (macro-cfun-conversion-exception-message _e91075_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95712
                                (let ()
                                  (declare (not safe))
                                  (cons _e91075_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95712)))))
            (if (macro-cfun-conversion-exception? _exn91073_)
                (macro-cfun-conversion-exception-message _exn91073_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95713
                              (let ()
                                (declare (not safe))
                                (cons _exn91073_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95713)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn91067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91067_))
            (let ((_e91070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91067_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91070_)
                  (macro-cfun-conversion-exception-procedure _e91070_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95714
                                (let ()
                                  (declare (not safe))
                                  (cons _e91070_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95714)))))
            (if (macro-cfun-conversion-exception? _exn91067_)
                (macro-cfun-conversion-exception-procedure _exn91067_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95715
                              (let ()
                                (declare (not safe))
                                (cons _exn91067_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95715)))))))
    (define datum-parsing-exception?
      (lambda (_exn91063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91063_))
            (let ((_e91065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91063_ 'exception))))
              (macro-datum-parsing-exception? _e91065_))
            (macro-datum-parsing-exception? _exn91063_))))
    (define datum-parsing-exception-kind
      (lambda (_exn91059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91059_))
            (let ((_e91061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91059_ 'exception))))
              (if (macro-datum-parsing-exception? _e91061_)
                  (macro-datum-parsing-exception-kind _e91061_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95716
                                (let ()
                                  (declare (not safe))
                                  (cons _e91061_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95716)))))
            (if (macro-datum-parsing-exception? _exn91059_)
                (macro-datum-parsing-exception-kind _exn91059_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95717
                              (let ()
                                (declare (not safe))
                                (cons _exn91059_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95717)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn91055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91055_))
            (let ((_e91057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91055_ 'exception))))
              (if (macro-datum-parsing-exception? _e91057_)
                  (macro-datum-parsing-exception-parameters _e91057_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95718
                                (let ()
                                  (declare (not safe))
                                  (cons _e91057_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95718)))))
            (if (macro-datum-parsing-exception? _exn91055_)
                (macro-datum-parsing-exception-parameters _exn91055_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95719
                              (let ()
                                (declare (not safe))
                                (cons _exn91055_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95719)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn91049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91049_))
            (let ((_e91052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91049_ 'exception))))
              (if (macro-datum-parsing-exception? _e91052_)
                  (macro-datum-parsing-exception-readenv _e91052_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95720
                                (let ()
                                  (declare (not safe))
                                  (cons _e91052_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95720)))))
            (if (macro-datum-parsing-exception? _exn91049_)
                (macro-datum-parsing-exception-readenv _exn91049_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95721
                              (let ()
                                (declare (not safe))
                                (cons _exn91049_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95721)))))))
    (define deadlock-exception?
      (lambda (_exn91043_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91043_))
            (let ((_e91046_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91043_ 'exception))))
              (macro-deadlock-exception? _e91046_))
            (macro-deadlock-exception? _exn91043_))))
    (define divide-by-zero-exception?
      (lambda (_exn91039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91039_))
            (let ((_e91041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91039_ 'exception))))
              (macro-divide-by-zero-exception? _e91041_))
            (macro-divide-by-zero-exception? _exn91039_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn91035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91035_))
            (let ((_e91037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91035_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91037_)
                  (macro-divide-by-zero-exception-arguments _e91037_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95722
                                (let ()
                                  (declare (not safe))
                                  (cons _e91037_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95722)))))
            (if (macro-divide-by-zero-exception? _exn91035_)
                (macro-divide-by-zero-exception-arguments _exn91035_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95723
                              (let ()
                                (declare (not safe))
                                (cons _exn91035_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95723)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn91029_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91029_))
            (let ((_e91032_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91029_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91032_)
                  (macro-divide-by-zero-exception-procedure _e91032_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95724
                                (let ()
                                  (declare (not safe))
                                  (cons _e91032_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95724)))))
            (if (macro-divide-by-zero-exception? _exn91029_)
                (macro-divide-by-zero-exception-procedure _exn91029_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95725
                              (let ()
                                (declare (not safe))
                                (cons _exn91029_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95725)))))))
    (define error-exception?
      (lambda (_exn91025_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91025_))
            (let ((_e91027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91025_ 'exception))))
              (macro-error-exception? _e91027_))
            (macro-error-exception? _exn91025_))))
    (define error-exception-message
      (lambda (_exn91021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91021_))
            (let ((_e91023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91021_ 'exception))))
              (if (macro-error-exception? _e91023_)
                  (macro-error-exception-message _e91023_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95726
                                (let ()
                                  (declare (not safe))
                                  (cons _e91023_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95726)))))
            (if (macro-error-exception? _exn91021_)
                (macro-error-exception-message _exn91021_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95727
                              (let ()
                                (declare (not safe))
                                (cons _exn91021_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95727)))))))
    (define error-exception-parameters
      (lambda (_exn91015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91015_))
            (let ((_e91018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91015_ 'exception))))
              (if (macro-error-exception? _e91018_)
                  (macro-error-exception-parameters _e91018_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95728
                                (let ()
                                  (declare (not safe))
                                  (cons _e91018_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95728)))))
            (if (macro-error-exception? _exn91015_)
                (macro-error-exception-parameters _exn91015_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95729
                              (let ()
                                (declare (not safe))
                                (cons _exn91015_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95729)))))))
    (define expression-parsing-exception?
      (lambda (_exn91011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91011_))
            (let ((_e91013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91011_ 'exception))))
              (macro-expression-parsing-exception? _e91013_))
            (macro-expression-parsing-exception? _exn91011_))))
    (define expression-parsing-exception-kind
      (lambda (_exn91007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91007_))
            (let ((_e91009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91007_ 'exception))))
              (if (macro-expression-parsing-exception? _e91009_)
                  (macro-expression-parsing-exception-kind _e91009_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95730
                                (let ()
                                  (declare (not safe))
                                  (cons _e91009_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95730)))))
            (if (macro-expression-parsing-exception? _exn91007_)
                (macro-expression-parsing-exception-kind _exn91007_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95731
                              (let ()
                                (declare (not safe))
                                (cons _exn91007_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95731)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn91003_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91003_))
            (let ((_e91005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91003_ 'exception))))
              (if (macro-expression-parsing-exception? _e91005_)
                  (macro-expression-parsing-exception-parameters _e91005_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95732
                                (let ()
                                  (declare (not safe))
                                  (cons _e91005_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95732)))))
            (if (macro-expression-parsing-exception? _exn91003_)
                (macro-expression-parsing-exception-parameters _exn91003_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95733
                              (let ()
                                (declare (not safe))
                                (cons _exn91003_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95733)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90997_))
            (let ((_e91000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90997_ 'exception))))
              (if (macro-expression-parsing-exception? _e91000_)
                  (macro-expression-parsing-exception-source _e91000_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95734
                                (let ()
                                  (declare (not safe))
                                  (cons _e91000_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95734)))))
            (if (macro-expression-parsing-exception? _exn90997_)
                (macro-expression-parsing-exception-source _exn90997_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95735
                              (let ()
                                (declare (not safe))
                                (cons _exn90997_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95735)))))))
    (define file-exists-exception?
      (lambda (_exn90993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90993_))
            (let ((_e90995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90993_ 'exception))))
              (macro-file-exists-exception? _e90995_))
            (macro-file-exists-exception? _exn90993_))))
    (define file-exists-exception-arguments
      (lambda (_exn90989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90989_))
            (let ((_e90991_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90989_ 'exception))))
              (if (macro-file-exists-exception? _e90991_)
                  (macro-file-exists-exception-arguments _e90991_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95736
                                (let ()
                                  (declare (not safe))
                                  (cons _e90991_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95736)))))
            (if (macro-file-exists-exception? _exn90989_)
                (macro-file-exists-exception-arguments _exn90989_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95737
                              (let ()
                                (declare (not safe))
                                (cons _exn90989_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95737)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90983_))
            (let ((_e90986_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90983_ 'exception))))
              (if (macro-file-exists-exception? _e90986_)
                  (macro-file-exists-exception-procedure _e90986_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95738
                                (let ()
                                  (declare (not safe))
                                  (cons _e90986_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95738)))))
            (if (macro-file-exists-exception? _exn90983_)
                (macro-file-exists-exception-procedure _exn90983_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95739
                              (let ()
                                (declare (not safe))
                                (cons _exn90983_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95739)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90979_))
            (let ((_e90981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90979_ 'exception))))
              (macro-fixnum-overflow-exception? _e90981_))
            (macro-fixnum-overflow-exception? _exn90979_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90975_))
            (let ((_e90977_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90975_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90977_)
                  (macro-fixnum-overflow-exception-arguments _e90977_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95740
                                (let ()
                                  (declare (not safe))
                                  (cons _e90977_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95740)))))
            (if (macro-fixnum-overflow-exception? _exn90975_)
                (macro-fixnum-overflow-exception-arguments _exn90975_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95741
                              (let ()
                                (declare (not safe))
                                (cons _exn90975_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95741)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90969_))
            (let ((_e90972_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90969_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90972_)
                  (macro-fixnum-overflow-exception-procedure _e90972_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95742
                                (let ()
                                  (declare (not safe))
                                  (cons _e90972_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95742)))))
            (if (macro-fixnum-overflow-exception? _exn90969_)
                (macro-fixnum-overflow-exception-procedure _exn90969_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95743
                              (let ()
                                (declare (not safe))
                                (cons _exn90969_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95743)))))))
    (define heap-overflow-exception?
      (lambda (_exn90963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90963_))
            (let ((_e90966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90963_ 'exception))))
              (macro-heap-overflow-exception? _e90966_))
            (macro-heap-overflow-exception? _exn90963_))))
    (define inactive-thread-exception?
      (lambda (_exn90959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90959_))
            (let ((_e90961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90959_ 'exception))))
              (macro-inactive-thread-exception? _e90961_))
            (macro-inactive-thread-exception? _exn90959_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90955_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90955_))
            (let ((_e90957_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90955_ 'exception))))
              (if (macro-inactive-thread-exception? _e90957_)
                  (macro-inactive-thread-exception-arguments _e90957_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95744
                                (let ()
                                  (declare (not safe))
                                  (cons _e90957_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95744)))))
            (if (macro-inactive-thread-exception? _exn90955_)
                (macro-inactive-thread-exception-arguments _exn90955_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95745
                              (let ()
                                (declare (not safe))
                                (cons _exn90955_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95745)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90949_))
            (let ((_e90952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90949_ 'exception))))
              (if (macro-inactive-thread-exception? _e90952_)
                  (macro-inactive-thread-exception-procedure _e90952_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95746
                                (let ()
                                  (declare (not safe))
                                  (cons _e90952_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95746)))))
            (if (macro-inactive-thread-exception? _exn90949_)
                (macro-inactive-thread-exception-procedure _exn90949_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95747
                              (let ()
                                (declare (not safe))
                                (cons _exn90949_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95747)))))))
    (define initialized-thread-exception?
      (lambda (_exn90945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90945_))
            (let ((_e90947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90945_ 'exception))))
              (macro-initialized-thread-exception? _e90947_))
            (macro-initialized-thread-exception? _exn90945_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90941_))
            (let ((_e90943_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90941_ 'exception))))
              (if (macro-initialized-thread-exception? _e90943_)
                  (macro-initialized-thread-exception-arguments _e90943_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95748
                                (let ()
                                  (declare (not safe))
                                  (cons _e90943_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95748)))))
            (if (macro-initialized-thread-exception? _exn90941_)
                (macro-initialized-thread-exception-arguments _exn90941_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95749
                              (let ()
                                (declare (not safe))
                                (cons _exn90941_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95749)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90935_))
            (let ((_e90938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90935_ 'exception))))
              (if (macro-initialized-thread-exception? _e90938_)
                  (macro-initialized-thread-exception-procedure _e90938_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95750
                                (let ()
                                  (declare (not safe))
                                  (cons _e90938_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95750)))))
            (if (macro-initialized-thread-exception? _exn90935_)
                (macro-initialized-thread-exception-procedure _exn90935_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95751
                              (let ()
                                (declare (not safe))
                                (cons _exn90935_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95751)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90931_))
            (let ((_e90933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90931_ 'exception))))
              (macro-invalid-hash-number-exception? _e90933_))
            (macro-invalid-hash-number-exception? _exn90931_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90927_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90927_))
            (let ((_e90929_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90927_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90929_)
                  (macro-invalid-hash-number-exception-arguments _e90929_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95752
                                (let ()
                                  (declare (not safe))
                                  (cons _e90929_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95752)))))
            (if (macro-invalid-hash-number-exception? _exn90927_)
                (macro-invalid-hash-number-exception-arguments _exn90927_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95753
                              (let ()
                                (declare (not safe))
                                (cons _exn90927_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95753)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90921_))
            (let ((_e90924_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90921_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90924_)
                  (macro-invalid-hash-number-exception-procedure _e90924_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95754
                                (let ()
                                  (declare (not safe))
                                  (cons _e90924_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95754)))))
            (if (macro-invalid-hash-number-exception? _exn90921_)
                (macro-invalid-hash-number-exception-procedure _exn90921_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95755
                              (let ()
                                (declare (not safe))
                                (cons _exn90921_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95755)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90917_))
            (let ((_e90919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90917_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90919_))
            (macro-invalid-utf8-encoding-exception? _exn90917_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90913_))
            (let ((_e90915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90913_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90915_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90915_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95756
                                (let ()
                                  (declare (not safe))
                                  (cons _e90915_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95756)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90913_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90913_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95757
                              (let ()
                                (declare (not safe))
                                (cons _exn90913_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95757)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90907_))
            (let ((_e90910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90907_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90910_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90910_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95758
                                (let ()
                                  (declare (not safe))
                                  (cons _e90910_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95758)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90907_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90907_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95759
                              (let ()
                                (declare (not safe))
                                (cons _exn90907_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95759)))))))
    (define join-timeout-exception?
      (lambda (_exn90903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90903_))
            (let ((_e90905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90903_ 'exception))))
              (macro-join-timeout-exception? _e90905_))
            (macro-join-timeout-exception? _exn90903_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90899_))
            (let ((_e90901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90899_ 'exception))))
              (if (macro-join-timeout-exception? _e90901_)
                  (macro-join-timeout-exception-arguments _e90901_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95760
                                (let ()
                                  (declare (not safe))
                                  (cons _e90901_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95760)))))
            (if (macro-join-timeout-exception? _exn90899_)
                (macro-join-timeout-exception-arguments _exn90899_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95761
                              (let ()
                                (declare (not safe))
                                (cons _exn90899_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95761)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90893_))
            (let ((_e90896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90893_ 'exception))))
              (if (macro-join-timeout-exception? _e90896_)
                  (macro-join-timeout-exception-procedure _e90896_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95762
                                (let ()
                                  (declare (not safe))
                                  (cons _e90896_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95762)))))
            (if (macro-join-timeout-exception? _exn90893_)
                (macro-join-timeout-exception-procedure _exn90893_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95763
                              (let ()
                                (declare (not safe))
                                (cons _exn90893_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95763)))))))
    (define keyword-expected-exception?
      (lambda (_exn90889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90889_))
            (let ((_e90891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90889_ 'exception))))
              (macro-keyword-expected-exception? _e90891_))
            (macro-keyword-expected-exception? _exn90889_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90885_))
            (let ((_e90887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90885_ 'exception))))
              (if (macro-keyword-expected-exception? _e90887_)
                  (macro-keyword-expected-exception-arguments _e90887_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95764
                                (let ()
                                  (declare (not safe))
                                  (cons _e90887_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95764)))))
            (if (macro-keyword-expected-exception? _exn90885_)
                (macro-keyword-expected-exception-arguments _exn90885_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95765
                              (let ()
                                (declare (not safe))
                                (cons _exn90885_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95765)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90879_))
            (let ((_e90882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90879_ 'exception))))
              (if (macro-keyword-expected-exception? _e90882_)
                  (macro-keyword-expected-exception-procedure _e90882_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95766
                                (let ()
                                  (declare (not safe))
                                  (cons _e90882_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95766)))))
            (if (macro-keyword-expected-exception? _exn90879_)
                (macro-keyword-expected-exception-procedure _exn90879_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95767
                              (let ()
                                (declare (not safe))
                                (cons _exn90879_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95767)))))))
    (define length-mismatch-exception?
      (lambda (_exn90875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90875_))
            (let ((_e90877_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90875_ 'exception))))
              (macro-length-mismatch-exception? _e90877_))
            (macro-length-mismatch-exception? _exn90875_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90871_))
            (let ((_e90873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90871_ 'exception))))
              (if (macro-length-mismatch-exception? _e90873_)
                  (macro-length-mismatch-exception-arg-id _e90873_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95768
                                (let ()
                                  (declare (not safe))
                                  (cons _e90873_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95768)))))
            (if (macro-length-mismatch-exception? _exn90871_)
                (macro-length-mismatch-exception-arg-id _exn90871_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95769
                              (let ()
                                (declare (not safe))
                                (cons _exn90871_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95769)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90867_))
            (let ((_e90869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90867_ 'exception))))
              (if (macro-length-mismatch-exception? _e90869_)
                  (macro-length-mismatch-exception-arguments _e90869_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95770
                                (let ()
                                  (declare (not safe))
                                  (cons _e90869_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95770)))))
            (if (macro-length-mismatch-exception? _exn90867_)
                (macro-length-mismatch-exception-arguments _exn90867_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95771
                              (let ()
                                (declare (not safe))
                                (cons _exn90867_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95771)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90861_))
            (let ((_e90864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90861_ 'exception))))
              (if (macro-length-mismatch-exception? _e90864_)
                  (macro-length-mismatch-exception-procedure _e90864_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95772
                                (let ()
                                  (declare (not safe))
                                  (cons _e90864_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95772)))))
            (if (macro-length-mismatch-exception? _exn90861_)
                (macro-length-mismatch-exception-procedure _exn90861_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95773
                              (let ()
                                (declare (not safe))
                                (cons _exn90861_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95773)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90857_))
            (let ((_e90859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90857_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90859_))
            (macro-mailbox-receive-timeout-exception? _exn90857_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90853_))
            (let ((_e90855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90853_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90855_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90855_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95774
                                (let ()
                                  (declare (not safe))
                                  (cons _e90855_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95774)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90853_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90853_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95775
                              (let ()
                                (declare (not safe))
                                (cons _exn90853_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95775)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90847_))
            (let ((_e90850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90847_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90850_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90850_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95776
                                (let ()
                                  (declare (not safe))
                                  (cons _e90850_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95776)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90847_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90847_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95777
                              (let ()
                                (declare (not safe))
                                (cons _exn90847_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95777)))))))
    (define module-not-found-exception?
      (lambda (_exn90843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90843_))
            (let ((_e90845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90843_ 'exception))))
              (macro-module-not-found-exception? _e90845_))
            (macro-module-not-found-exception? _exn90843_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90839_))
            (let ((_e90841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90839_ 'exception))))
              (if (macro-module-not-found-exception? _e90841_)
                  (macro-module-not-found-exception-arguments _e90841_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95778
                                (let ()
                                  (declare (not safe))
                                  (cons _e90841_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95778)))))
            (if (macro-module-not-found-exception? _exn90839_)
                (macro-module-not-found-exception-arguments _exn90839_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95779
                              (let ()
                                (declare (not safe))
                                (cons _exn90839_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95779)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90833_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90833_))
            (let ((_e90836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90833_ 'exception))))
              (if (macro-module-not-found-exception? _e90836_)
                  (macro-module-not-found-exception-procedure _e90836_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95780
                                (let ()
                                  (declare (not safe))
                                  (cons _e90836_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95780)))))
            (if (macro-module-not-found-exception? _exn90833_)
                (macro-module-not-found-exception-procedure _exn90833_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95781
                              (let ()
                                (declare (not safe))
                                (cons _exn90833_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95781)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90827_))
            (let ((_e90830_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90827_ 'exception))))
              (macro-multiple-c-return-exception? _e90830_))
            (macro-multiple-c-return-exception? _exn90827_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90823_))
            (let ((_e90825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90823_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90825_))
            (macro-no-such-file-or-directory-exception? _exn90823_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90819_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90819_))
            (let ((_e90821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90819_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90821_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90821_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95782
                                (let ()
                                  (declare (not safe))
                                  (cons _e90821_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95782)))))
            (if (macro-no-such-file-or-directory-exception? _exn90819_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90819_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95783
                              (let ()
                                (declare (not safe))
                                (cons _exn90819_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95783)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90813_))
            (let ((_e90816_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90813_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90816_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90816_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95784
                                (let ()
                                  (declare (not safe))
                                  (cons _e90816_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95784)))))
            (if (macro-no-such-file-or-directory-exception? _exn90813_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90813_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95785
                              (let ()
                                (declare (not safe))
                                (cons _exn90813_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95785)))))))
    (define noncontinuable-exception?
      (lambda (_exn90809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90809_))
            (let ((_e90811_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90809_ 'exception))))
              (macro-noncontinuable-exception? _e90811_))
            (macro-noncontinuable-exception? _exn90809_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90803_))
            (let ((_e90806_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90803_ 'exception))))
              (if (macro-noncontinuable-exception? _e90806_)
                  (macro-noncontinuable-exception-reason _e90806_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95786
                                (let ()
                                  (declare (not safe))
                                  (cons _e90806_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95786)))))
            (if (macro-noncontinuable-exception? _exn90803_)
                (macro-noncontinuable-exception-reason _exn90803_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95787
                              (let ()
                                (declare (not safe))
                                (cons _exn90803_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95787)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90799_))
            (let ((_e90801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90799_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90801_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90799_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90795_))
            (let ((_e90797_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90795_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90797_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90797_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95788
                                (let ()
                                  (declare (not safe))
                                  (cons _e90797_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95788)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90795_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90795_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95789
                              (let ()
                                (declare (not safe))
                                (cons _exn90795_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95789)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90789_))
            (let ((_e90792_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90789_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90792_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90792_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95790
                                (let ()
                                  (declare (not safe))
                                  (cons _e90792_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95790)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90789_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90789_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95791
                              (let ()
                                (declare (not safe))
                                (cons _exn90789_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95791)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90785_))
            (let ((_e90787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90785_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90787_))
            (macro-nonprocedure-operator-exception? _exn90785_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90781_))
            (let ((_e90783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90781_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90783_)
                  (macro-nonprocedure-operator-exception-arguments _e90783_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95792
                                (let ()
                                  (declare (not safe))
                                  (cons _e90783_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95792)))))
            (if (macro-nonprocedure-operator-exception? _exn90781_)
                (macro-nonprocedure-operator-exception-arguments _exn90781_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95793
                              (let ()
                                (declare (not safe))
                                (cons _exn90781_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95793)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90777_))
            (let ((_e90779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90777_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90779_)
                  (macro-nonprocedure-operator-exception-code _e90779_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95794
                                (let ()
                                  (declare (not safe))
                                  (cons _e90779_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95794)))))
            (if (macro-nonprocedure-operator-exception? _exn90777_)
                (macro-nonprocedure-operator-exception-code _exn90777_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95795
                              (let ()
                                (declare (not safe))
                                (cons _exn90777_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95795)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90773_))
            (let ((_e90775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90773_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90775_)
                  (macro-nonprocedure-operator-exception-operator _e90775_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95796
                                (let ()
                                  (declare (not safe))
                                  (cons _e90775_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95796)))))
            (if (macro-nonprocedure-operator-exception? _exn90773_)
                (macro-nonprocedure-operator-exception-operator _exn90773_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95797
                              (let ()
                                (declare (not safe))
                                (cons _exn90773_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95797)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90767_))
            (let ((_e90770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90767_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90770_)
                  (macro-nonprocedure-operator-exception-rte _e90770_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95798
                                (let ()
                                  (declare (not safe))
                                  (cons _e90770_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95798)))))
            (if (macro-nonprocedure-operator-exception? _exn90767_)
                (macro-nonprocedure-operator-exception-rte _exn90767_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95799
                              (let ()
                                (declare (not safe))
                                (cons _exn90767_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95799)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90763_))
            (let ((_e90765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90763_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90765_))
            (macro-not-in-compilation-context-exception? _exn90763_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90759_))
            (let ((_e90761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90759_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90761_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90761_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95800
                                (let ()
                                  (declare (not safe))
                                  (cons _e90761_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95800)))))
            (if (macro-not-in-compilation-context-exception? _exn90759_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90759_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95801
                              (let ()
                                (declare (not safe))
                                (cons _exn90759_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95801)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90753_))
            (let ((_e90756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90753_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90756_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90756_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95802
                                (let ()
                                  (declare (not safe))
                                  (cons _e90756_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95802)))))
            (if (macro-not-in-compilation-context-exception? _exn90753_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90753_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95803
                              (let ()
                                (declare (not safe))
                                (cons _exn90753_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95803)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90749_))
            (let ((_e90751_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90749_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90751_))
            (macro-number-of-arguments-limit-exception? _exn90749_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90745_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90745_))
            (let ((_e90747_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90745_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90747_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90747_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95804
                                (let ()
                                  (declare (not safe))
                                  (cons _e90747_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95804)))))
            (if (macro-number-of-arguments-limit-exception? _exn90745_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90745_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95805
                              (let ()
                                (declare (not safe))
                                (cons _exn90745_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95805)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90739_))
            (let ((_e90742_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90739_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90742_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90742_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95806
                                (let ()
                                  (declare (not safe))
                                  (cons _e90742_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95806)))))
            (if (macro-number-of-arguments-limit-exception? _exn90739_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90739_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95807
                              (let ()
                                (declare (not safe))
                                (cons _exn90739_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95807)))))))
    (define os-exception?
      (lambda (_exn90735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90735_))
            (let ((_e90737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90735_ 'exception))))
              (macro-os-exception? _e90737_))
            (macro-os-exception? _exn90735_))))
    (define os-exception-arguments
      (lambda (_exn90731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90731_))
            (let ((_e90733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90731_ 'exception))))
              (if (macro-os-exception? _e90733_)
                  (macro-os-exception-arguments _e90733_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95808
                                (let ()
                                  (declare (not safe))
                                  (cons _e90733_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95808)))))
            (if (macro-os-exception? _exn90731_)
                (macro-os-exception-arguments _exn90731_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95809
                              (let ()
                                (declare (not safe))
                                (cons _exn90731_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95809)))))))
    (define os-exception-code
      (lambda (_exn90727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90727_))
            (let ((_e90729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90727_ 'exception))))
              (if (macro-os-exception? _e90729_)
                  (macro-os-exception-code _e90729_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95810
                                (let ()
                                  (declare (not safe))
                                  (cons _e90729_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95810)))))
            (if (macro-os-exception? _exn90727_)
                (macro-os-exception-code _exn90727_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95811
                              (let ()
                                (declare (not safe))
                                (cons _exn90727_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95811)))))))
    (define os-exception-message
      (lambda (_exn90723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90723_))
            (let ((_e90725_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90723_ 'exception))))
              (if (macro-os-exception? _e90725_)
                  (macro-os-exception-message _e90725_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95812
                                (let ()
                                  (declare (not safe))
                                  (cons _e90725_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95812)))))
            (if (macro-os-exception? _exn90723_)
                (macro-os-exception-message _exn90723_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95813
                              (let ()
                                (declare (not safe))
                                (cons _exn90723_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95813)))))))
    (define os-exception-procedure
      (lambda (_exn90717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90717_))
            (let ((_e90720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90717_ 'exception))))
              (if (macro-os-exception? _e90720_)
                  (macro-os-exception-procedure _e90720_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95814
                                (let ()
                                  (declare (not safe))
                                  (cons _e90720_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95814)))))
            (if (macro-os-exception? _exn90717_)
                (macro-os-exception-procedure _exn90717_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95815
                              (let ()
                                (declare (not safe))
                                (cons _exn90717_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95815)))))))
    (define permission-denied-exception?
      (lambda (_exn90713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90713_))
            (let ((_e90715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90713_ 'exception))))
              (macro-permission-denied-exception? _e90715_))
            (macro-permission-denied-exception? _exn90713_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90709_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90709_))
            (let ((_e90711_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90709_ 'exception))))
              (if (macro-permission-denied-exception? _e90711_)
                  (macro-permission-denied-exception-arguments _e90711_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95816
                                (let ()
                                  (declare (not safe))
                                  (cons _e90711_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95816)))))
            (if (macro-permission-denied-exception? _exn90709_)
                (macro-permission-denied-exception-arguments _exn90709_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95817
                              (let ()
                                (declare (not safe))
                                (cons _exn90709_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95817)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90703_))
            (let ((_e90706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90703_ 'exception))))
              (if (macro-permission-denied-exception? _e90706_)
                  (macro-permission-denied-exception-procedure _e90706_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95818
                                (let ()
                                  (declare (not safe))
                                  (cons _e90706_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95818)))))
            (if (macro-permission-denied-exception? _exn90703_)
                (macro-permission-denied-exception-procedure _exn90703_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95819
                              (let ()
                                (declare (not safe))
                                (cons _exn90703_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95819)))))))
    (define range-exception?
      (lambda (_exn90699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90699_))
            (let ((_e90701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90699_ 'exception))))
              (macro-range-exception? _e90701_))
            (macro-range-exception? _exn90699_))))
    (define range-exception-arg-id
      (lambda (_exn90695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90695_))
            (let ((_e90697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90695_ 'exception))))
              (if (macro-range-exception? _e90697_)
                  (macro-range-exception-arg-id _e90697_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95820
                                (let ()
                                  (declare (not safe))
                                  (cons _e90697_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95820)))))
            (if (macro-range-exception? _exn90695_)
                (macro-range-exception-arg-id _exn90695_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95821
                              (let ()
                                (declare (not safe))
                                (cons _exn90695_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95821)))))))
    (define range-exception-arguments
      (lambda (_exn90691_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90691_))
            (let ((_e90693_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90691_ 'exception))))
              (if (macro-range-exception? _e90693_)
                  (macro-range-exception-arguments _e90693_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95822
                                (let ()
                                  (declare (not safe))
                                  (cons _e90693_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95822)))))
            (if (macro-range-exception? _exn90691_)
                (macro-range-exception-arguments _exn90691_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95823
                              (let ()
                                (declare (not safe))
                                (cons _exn90691_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95823)))))))
    (define range-exception-procedure
      (lambda (_exn90685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90685_))
            (let ((_e90688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90685_ 'exception))))
              (if (macro-range-exception? _e90688_)
                  (macro-range-exception-procedure _e90688_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95824
                                (let ()
                                  (declare (not safe))
                                  (cons _e90688_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95824)))))
            (if (macro-range-exception? _exn90685_)
                (macro-range-exception-procedure _exn90685_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95825
                              (let ()
                                (declare (not safe))
                                (cons _exn90685_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95825)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90681_))
            (let ((_e90683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90681_ 'exception))))
              (macro-rpc-remote-error-exception? _e90683_))
            (macro-rpc-remote-error-exception? _exn90681_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90677_))
            (let ((_e90679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90677_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90679_)
                  (macro-rpc-remote-error-exception-arguments _e90679_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95826
                                (let ()
                                  (declare (not safe))
                                  (cons _e90679_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95826)))))
            (if (macro-rpc-remote-error-exception? _exn90677_)
                (macro-rpc-remote-error-exception-arguments _exn90677_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95827
                              (let ()
                                (declare (not safe))
                                (cons _exn90677_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95827)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90673_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90673_))
            (let ((_e90675_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90673_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90675_)
                  (macro-rpc-remote-error-exception-message _e90675_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95828
                                (let ()
                                  (declare (not safe))
                                  (cons _e90675_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95828)))))
            (if (macro-rpc-remote-error-exception? _exn90673_)
                (macro-rpc-remote-error-exception-message _exn90673_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95829
                              (let ()
                                (declare (not safe))
                                (cons _exn90673_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95829)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90667_))
            (let ((_e90670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90667_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90670_)
                  (macro-rpc-remote-error-exception-procedure _e90670_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95830
                                (let ()
                                  (declare (not safe))
                                  (cons _e90670_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95830)))))
            (if (macro-rpc-remote-error-exception? _exn90667_)
                (macro-rpc-remote-error-exception-procedure _exn90667_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95831
                              (let ()
                                (declare (not safe))
                                (cons _exn90667_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95831)))))))
    (define scheduler-exception?
      (lambda (_exn90663_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90663_))
            (let ((_e90665_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90663_ 'exception))))
              (macro-scheduler-exception? _e90665_))
            (macro-scheduler-exception? _exn90663_))))
    (define scheduler-exception-reason
      (lambda (_exn90657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90657_))
            (let ((_e90660_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90657_ 'exception))))
              (if (macro-scheduler-exception? _e90660_)
                  (macro-scheduler-exception-reason _e90660_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95832
                                (let ()
                                  (declare (not safe))
                                  (cons _e90660_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95832)))))
            (if (macro-scheduler-exception? _exn90657_)
                (macro-scheduler-exception-reason _exn90657_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95833
                              (let ()
                                (declare (not safe))
                                (cons _exn90657_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95833)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90653_))
            (let ((_e90655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90653_ 'exception))))
              (macro-sfun-conversion-exception? _e90655_))
            (macro-sfun-conversion-exception? _exn90653_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90649_))
            (let ((_e90651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90649_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90651_)
                  (macro-sfun-conversion-exception-arguments _e90651_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95834
                                (let ()
                                  (declare (not safe))
                                  (cons _e90651_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95834)))))
            (if (macro-sfun-conversion-exception? _exn90649_)
                (macro-sfun-conversion-exception-arguments _exn90649_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95835
                              (let ()
                                (declare (not safe))
                                (cons _exn90649_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95835)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90645_))
            (let ((_e90647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90645_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90647_)
                  (macro-sfun-conversion-exception-code _e90647_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95836
                                (let ()
                                  (declare (not safe))
                                  (cons _e90647_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95836)))))
            (if (macro-sfun-conversion-exception? _exn90645_)
                (macro-sfun-conversion-exception-code _exn90645_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95837
                              (let ()
                                (declare (not safe))
                                (cons _exn90645_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95837)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90641_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90641_))
            (let ((_e90643_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90641_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90643_)
                  (macro-sfun-conversion-exception-message _e90643_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95838
                                (let ()
                                  (declare (not safe))
                                  (cons _e90643_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95838)))))
            (if (macro-sfun-conversion-exception? _exn90641_)
                (macro-sfun-conversion-exception-message _exn90641_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95839
                              (let ()
                                (declare (not safe))
                                (cons _exn90641_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95839)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90635_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90635_))
            (let ((_e90638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90635_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90638_)
                  (macro-sfun-conversion-exception-procedure _e90638_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95840
                                (let ()
                                  (declare (not safe))
                                  (cons _e90638_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95840)))))
            (if (macro-sfun-conversion-exception? _exn90635_)
                (macro-sfun-conversion-exception-procedure _exn90635_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95841
                              (let ()
                                (declare (not safe))
                                (cons _exn90635_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95841)))))))
    (define stack-overflow-exception?
      (lambda (_exn90629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90629_))
            (let ((_e90632_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90629_ 'exception))))
              (macro-stack-overflow-exception? _e90632_))
            (macro-stack-overflow-exception? _exn90629_))))
    (define started-thread-exception?
      (lambda (_exn90625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90625_))
            (let ((_e90627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90625_ 'exception))))
              (macro-started-thread-exception? _e90627_))
            (macro-started-thread-exception? _exn90625_))))
    (define started-thread-exception-arguments
      (lambda (_exn90621_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90621_))
            (let ((_e90623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90621_ 'exception))))
              (if (macro-started-thread-exception? _e90623_)
                  (macro-started-thread-exception-arguments _e90623_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95842
                                (let ()
                                  (declare (not safe))
                                  (cons _e90623_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95842)))))
            (if (macro-started-thread-exception? _exn90621_)
                (macro-started-thread-exception-arguments _exn90621_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95843
                              (let ()
                                (declare (not safe))
                                (cons _exn90621_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95843)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90615_))
            (let ((_e90618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90615_ 'exception))))
              (if (macro-started-thread-exception? _e90618_)
                  (macro-started-thread-exception-procedure _e90618_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95844
                                (let ()
                                  (declare (not safe))
                                  (cons _e90618_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95844)))))
            (if (macro-started-thread-exception? _exn90615_)
                (macro-started-thread-exception-procedure _exn90615_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95845
                              (let ()
                                (declare (not safe))
                                (cons _exn90615_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95845)))))))
    (define terminated-thread-exception?
      (lambda (_exn90611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90611_))
            (let ((_e90613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90611_ 'exception))))
              (macro-terminated-thread-exception? _e90613_))
            (macro-terminated-thread-exception? _exn90611_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90607_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90607_))
            (let ((_e90609_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90607_ 'exception))))
              (if (macro-terminated-thread-exception? _e90609_)
                  (macro-terminated-thread-exception-arguments _e90609_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95846
                                (let ()
                                  (declare (not safe))
                                  (cons _e90609_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95846)))))
            (if (macro-terminated-thread-exception? _exn90607_)
                (macro-terminated-thread-exception-arguments _exn90607_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95847
                              (let ()
                                (declare (not safe))
                                (cons _exn90607_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95847)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90601_))
            (let ((_e90604_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90601_ 'exception))))
              (if (macro-terminated-thread-exception? _e90604_)
                  (macro-terminated-thread-exception-procedure _e90604_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95848
                                (let ()
                                  (declare (not safe))
                                  (cons _e90604_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95848)))))
            (if (macro-terminated-thread-exception? _exn90601_)
                (macro-terminated-thread-exception-procedure _exn90601_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95849
                              (let ()
                                (declare (not safe))
                                (cons _exn90601_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95849)))))))
    (define type-exception?
      (lambda (_exn90597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90597_))
            (let ((_e90599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90597_ 'exception))))
              (macro-type-exception? _e90599_))
            (macro-type-exception? _exn90597_))))
    (define type-exception-arg-id
      (lambda (_exn90593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90593_))
            (let ((_e90595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90593_ 'exception))))
              (if (macro-type-exception? _e90595_)
                  (macro-type-exception-arg-id _e90595_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95850
                                (let ()
                                  (declare (not safe))
                                  (cons _e90595_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95850)))))
            (if (macro-type-exception? _exn90593_)
                (macro-type-exception-arg-id _exn90593_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95851
                              (let ()
                                (declare (not safe))
                                (cons _exn90593_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95851)))))))
    (define type-exception-arguments
      (lambda (_exn90589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90589_))
            (let ((_e90591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90589_ 'exception))))
              (if (macro-type-exception? _e90591_)
                  (macro-type-exception-arguments _e90591_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95852
                                (let ()
                                  (declare (not safe))
                                  (cons _e90591_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95852)))))
            (if (macro-type-exception? _exn90589_)
                (macro-type-exception-arguments _exn90589_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95853
                              (let ()
                                (declare (not safe))
                                (cons _exn90589_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95853)))))))
    (define type-exception-procedure
      (lambda (_exn90585_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90585_))
            (let ((_e90587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90585_ 'exception))))
              (if (macro-type-exception? _e90587_)
                  (macro-type-exception-procedure _e90587_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95854
                                (let ()
                                  (declare (not safe))
                                  (cons _e90587_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95854)))))
            (if (macro-type-exception? _exn90585_)
                (macro-type-exception-procedure _exn90585_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95855
                              (let ()
                                (declare (not safe))
                                (cons _exn90585_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95855)))))))
    (define type-exception-type-id
      (lambda (_exn90579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90579_))
            (let ((_e90582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90579_ 'exception))))
              (if (macro-type-exception? _e90582_)
                  (macro-type-exception-type-id _e90582_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95856
                                (let ()
                                  (declare (not safe))
                                  (cons _e90582_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95856)))))
            (if (macro-type-exception? _exn90579_)
                (macro-type-exception-type-id _exn90579_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95857
                              (let ()
                                (declare (not safe))
                                (cons _exn90579_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95857)))))))
    (define unbound-global-exception?
      (lambda (_exn90575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90575_))
            (let ((_e90577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90575_ 'exception))))
              (macro-unbound-global-exception? _e90577_))
            (macro-unbound-global-exception? _exn90575_))))
    (define unbound-global-exception-code
      (lambda (_exn90571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90571_))
            (let ((_e90573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90571_ 'exception))))
              (if (macro-unbound-global-exception? _e90573_)
                  (macro-unbound-global-exception-code _e90573_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95858
                                (let ()
                                  (declare (not safe))
                                  (cons _e90573_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95858)))))
            (if (macro-unbound-global-exception? _exn90571_)
                (macro-unbound-global-exception-code _exn90571_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95859
                              (let ()
                                (declare (not safe))
                                (cons _exn90571_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95859)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90567_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90567_))
            (let ((_e90569_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90567_ 'exception))))
              (if (macro-unbound-global-exception? _e90569_)
                  (macro-unbound-global-exception-rte _e90569_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95860
                                (let ()
                                  (declare (not safe))
                                  (cons _e90569_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95860)))))
            (if (macro-unbound-global-exception? _exn90567_)
                (macro-unbound-global-exception-rte _exn90567_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95861
                              (let ()
                                (declare (not safe))
                                (cons _exn90567_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95861)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90561_))
            (let ((_e90564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90561_ 'exception))))
              (if (macro-unbound-global-exception? _e90564_)
                  (macro-unbound-global-exception-variable _e90564_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95862
                                (let ()
                                  (declare (not safe))
                                  (cons _e90564_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95862)))))
            (if (macro-unbound-global-exception? _exn90561_)
                (macro-unbound-global-exception-variable _exn90561_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95863
                              (let ()
                                (declare (not safe))
                                (cons _exn90561_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95863)))))))
    (define unbound-key-exception?
      (lambda (_exn90557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90557_))
            (let ((_e90559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90557_ 'exception))))
              (macro-unbound-key-exception? _e90559_))
            (macro-unbound-key-exception? _exn90557_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90553_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90553_))
            (let ((_e90555_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90553_ 'exception))))
              (if (macro-unbound-key-exception? _e90555_)
                  (macro-unbound-key-exception-arguments _e90555_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95864
                                (let ()
                                  (declare (not safe))
                                  (cons _e90555_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95864)))))
            (if (macro-unbound-key-exception? _exn90553_)
                (macro-unbound-key-exception-arguments _exn90553_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95865
                              (let ()
                                (declare (not safe))
                                (cons _exn90553_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95865)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90547_))
            (let ((_e90550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90547_ 'exception))))
              (if (macro-unbound-key-exception? _e90550_)
                  (macro-unbound-key-exception-procedure _e90550_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95866
                                (let ()
                                  (declare (not safe))
                                  (cons _e90550_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95866)))))
            (if (macro-unbound-key-exception? _exn90547_)
                (macro-unbound-key-exception-procedure _exn90547_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95867
                              (let ()
                                (declare (not safe))
                                (cons _exn90547_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95867)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90543_))
            (let ((_e90545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90543_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90545_))
            (macro-unbound-os-environment-variable-exception? _exn90543_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90539_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90539_))
            (let ((_e90541_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90539_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90541_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90541_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95868
                                (let ()
                                  (declare (not safe))
                                  (cons _e90541_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95868)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90539_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90539_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95869
                              (let ()
                                (declare (not safe))
                                (cons _exn90539_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95869)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90533_))
            (let ((_e90536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90533_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90536_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90536_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95870
                                (let ()
                                  (declare (not safe))
                                  (cons _e90536_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95870)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90533_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90533_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95871
                              (let ()
                                (declare (not safe))
                                (cons _exn90533_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95871)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90529_))
            (let ((_e90531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90529_ 'exception))))
              (macro-unbound-serial-number-exception? _e90531_))
            (macro-unbound-serial-number-exception? _exn90529_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90525_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90525_))
            (let ((_e90527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90525_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90527_)
                  (macro-unbound-serial-number-exception-arguments _e90527_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95872
                                (let ()
                                  (declare (not safe))
                                  (cons _e90527_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95872)))))
            (if (macro-unbound-serial-number-exception? _exn90525_)
                (macro-unbound-serial-number-exception-arguments _exn90525_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95873
                              (let ()
                                (declare (not safe))
                                (cons _exn90525_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95873)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90519_))
            (let ((_e90522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90519_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90522_)
                  (macro-unbound-serial-number-exception-procedure _e90522_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95874
                                (let ()
                                  (declare (not safe))
                                  (cons _e90522_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95874)))))
            (if (macro-unbound-serial-number-exception? _exn90519_)
                (macro-unbound-serial-number-exception-procedure _exn90519_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95875
                              (let ()
                                (declare (not safe))
                                (cons _exn90519_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95875)))))))
    (define uncaught-exception?
      (lambda (_exn90515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90515_))
            (let ((_e90517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90515_ 'exception))))
              (macro-uncaught-exception? _e90517_))
            (macro-uncaught-exception? _exn90515_))))
    (define uncaught-exception-arguments
      (lambda (_exn90511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90511_))
            (let ((_e90513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90511_ 'exception))))
              (if (macro-uncaught-exception? _e90513_)
                  (macro-uncaught-exception-arguments _e90513_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95876
                                (let ()
                                  (declare (not safe))
                                  (cons _e90513_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95876)))))
            (if (macro-uncaught-exception? _exn90511_)
                (macro-uncaught-exception-arguments _exn90511_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95877
                              (let ()
                                (declare (not safe))
                                (cons _exn90511_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95877)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90507_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90507_))
            (let ((_e90509_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90507_ 'exception))))
              (if (macro-uncaught-exception? _e90509_)
                  (macro-uncaught-exception-procedure _e90509_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95878
                                (let ()
                                  (declare (not safe))
                                  (cons _e90509_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95878)))))
            (if (macro-uncaught-exception? _exn90507_)
                (macro-uncaught-exception-procedure _exn90507_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95879
                              (let ()
                                (declare (not safe))
                                (cons _exn90507_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95879)))))))
    (define uncaught-exception-reason
      (lambda (_exn90501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90501_))
            (let ((_e90504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90501_ 'exception))))
              (if (macro-uncaught-exception? _e90504_)
                  (macro-uncaught-exception-reason _e90504_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95880
                                (let ()
                                  (declare (not safe))
                                  (cons _e90504_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95880)))))
            (if (macro-uncaught-exception? _exn90501_)
                (macro-uncaught-exception-reason _exn90501_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95881
                              (let ()
                                (declare (not safe))
                                (cons _exn90501_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95881)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90497_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90497_))
            (let ((_e90499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90497_ 'exception))))
              (macro-uninitialized-thread-exception? _e90499_))
            (macro-uninitialized-thread-exception? _exn90497_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90493_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90493_))
            (let ((_e90495_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90493_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90495_)
                  (macro-uninitialized-thread-exception-arguments _e90495_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95882
                                (let ()
                                  (declare (not safe))
                                  (cons _e90495_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95882)))))
            (if (macro-uninitialized-thread-exception? _exn90493_)
                (macro-uninitialized-thread-exception-arguments _exn90493_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95883
                              (let ()
                                (declare (not safe))
                                (cons _exn90493_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95883)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90487_))
            (let ((_e90490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90487_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90490_)
                  (macro-uninitialized-thread-exception-procedure _e90490_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95884
                                (let ()
                                  (declare (not safe))
                                  (cons _e90490_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95884)))))
            (if (macro-uninitialized-thread-exception? _exn90487_)
                (macro-uninitialized-thread-exception-procedure _exn90487_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95885
                              (let ()
                                (declare (not safe))
                                (cons _exn90487_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95885)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90483_))
            (let ((_e90485_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90483_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90485_))
            (macro-unknown-keyword-argument-exception? _exn90483_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90479_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90479_))
            (let ((_e90481_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90479_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90481_)
                  (macro-unknown-keyword-argument-exception-arguments _e90481_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95886
                                (let ()
                                  (declare (not safe))
                                  (cons _e90481_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95886)))))
            (if (macro-unknown-keyword-argument-exception? _exn90479_)
                (macro-unknown-keyword-argument-exception-arguments _exn90479_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95887
                              (let ()
                                (declare (not safe))
                                (cons _exn90479_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95887)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90473_))
            (let ((_e90476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90473_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90476_)
                  (macro-unknown-keyword-argument-exception-procedure _e90476_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95888
                                (let ()
                                  (declare (not safe))
                                  (cons _e90476_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95888)))))
            (if (macro-unknown-keyword-argument-exception? _exn90473_)
                (macro-unknown-keyword-argument-exception-procedure _exn90473_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95889
                              (let ()
                                (declare (not safe))
                                (cons _exn90473_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95889)))))))
    (define unterminated-process-exception?
      (lambda (_exn90469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90469_))
            (let ((_e90471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90469_ 'exception))))
              (macro-unterminated-process-exception? _e90471_))
            (macro-unterminated-process-exception? _exn90469_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90465_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90465_))
            (let ((_e90467_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90465_ 'exception))))
              (if (macro-unterminated-process-exception? _e90467_)
                  (macro-unterminated-process-exception-arguments _e90467_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95890
                                (let ()
                                  (declare (not safe))
                                  (cons _e90467_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95890)))))
            (if (macro-unterminated-process-exception? _exn90465_)
                (macro-unterminated-process-exception-arguments _exn90465_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95891
                              (let ()
                                (declare (not safe))
                                (cons _exn90465_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95891)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90459_))
            (let ((_e90462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90459_ 'exception))))
              (if (macro-unterminated-process-exception? _e90462_)
                  (macro-unterminated-process-exception-procedure _e90462_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95892
                                (let ()
                                  (declare (not safe))
                                  (cons _e90462_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95892)))))
            (if (macro-unterminated-process-exception? _exn90459_)
                (macro-unterminated-process-exception-procedure _exn90459_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95893
                              (let ()
                                (declare (not safe))
                                (cons _exn90459_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95893)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90455_))
            (let ((_e90457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90455_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90457_))
            (macro-wrong-number-of-arguments-exception? _exn90455_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90451_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90451_))
            (let ((_e90453_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90451_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90453_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90453_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95894
                                (let ()
                                  (declare (not safe))
                                  (cons _e90453_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95894)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90451_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90451_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95895
                              (let ()
                                (declare (not safe))
                                (cons _exn90451_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95895)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90445_))
            (let ((_e90448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90445_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90448_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90448_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95896
                                (let ()
                                  (declare (not safe))
                                  (cons _e90448_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95896)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90445_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90445_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95897
                              (let ()
                                (declare (not safe))
                                (cons _exn90445_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95897)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90441_))
            (let ((_e90443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90441_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90443_))
            (macro-wrong-number-of-values-exception? _exn90441_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90437_))
            (let ((_e90439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90437_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90439_)
                  (macro-wrong-number-of-values-exception-code _e90439_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95898
                                (let ()
                                  (declare (not safe))
                                  (cons _e90439_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95898)))))
            (if (macro-wrong-number-of-values-exception? _exn90437_)
                (macro-wrong-number-of-values-exception-code _exn90437_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95899
                              (let ()
                                (declare (not safe))
                                (cons _exn90437_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95899)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90433_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90433_))
            (let ((_e90435_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90433_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90435_)
                  (macro-wrong-number-of-values-exception-rte _e90435_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95900
                                (let ()
                                  (declare (not safe))
                                  (cons _e90435_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95900)))))
            (if (macro-wrong-number-of-values-exception? _exn90433_)
                (macro-wrong-number-of-values-exception-rte _exn90433_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95901
                              (let ()
                                (declare (not safe))
                                (cons _exn90433_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95901)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90427_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90427_))
            (let ((_e90430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90427_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90430_)
                  (macro-wrong-number-of-values-exception-vals _e90430_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95902
                                (let ()
                                  (declare (not safe))
                                  (cons _e90430_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95902)))))
            (if (macro-wrong-number-of-values-exception? _exn90427_)
                (macro-wrong-number-of-values-exception-vals _exn90427_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95903
                              (let ()
                                (declare (not safe))
                                (cons _exn90427_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95903)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90421_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90421_))
            (let ((_e90424_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90421_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90424_))
            (macro-wrong-processor-c-return-exception? _exn90421_))))))
