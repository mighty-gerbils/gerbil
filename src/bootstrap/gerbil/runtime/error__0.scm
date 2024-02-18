(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708280331)
  (begin
    (define Exception::t
      (let ((__tmp95685 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95685
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91589_ (apply make-instance Exception::t _$args91589_)))
    (define StackTrace::t
      (let ((__tmp95686 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95686
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91586_ (apply make-instance StackTrace::t _$args91586_)))
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
      (let ((__tmp95687 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95687
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91583_ (apply make-instance Error::t _$args91583_)))
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
      (let ((__tmp95688 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95688
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91580_
        (apply make-instance RuntimeException::t _$args91580_)))
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
      (lambda (_exn91575_ _continue91576_)
        (let ((_exn91578_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91575_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91578_ _continue91576_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91571_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91571_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91571_ 'continuation))
                '#!void
                (let ((__tmp95689
                       (lambda (_cont91573_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91571_
                            'continuation
                            _cont91573_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95689)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91571_))))
    (define error
      (lambda (_message91568_ . _irritants91569_)
        (raise (let ((__obj95679
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95679
                  _message91568_
                  'irritants:
                  _irritants91569_)
                 __obj95679))))
    (define with-exception-handler
      (lambda (_handler91561_ _thunk91562_)
        (if (let () (declare (not safe)) (procedure? _handler91561_))
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
                      (let () (declare (not safe)) (cons _handler91561_ '())))
                     __obj95680)))
        (if (let () (declare (not safe)) (procedure? _thunk91562_))
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
                      (let () (declare (not safe)) (cons _thunk91562_ '())))
                     __obj95681)))
        (let ((__tmp95690
               (lambda (_exn91564_)
                 (let ((_exn91566_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91564_))))
                   (_handler91561_ _exn91566_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95690 _thunk91562_))))
    (define with-catch
      (lambda (_handler91554_ _thunk91555_)
        (if (let () (declare (not safe)) (procedure? _handler91554_))
            '#!void
            (raise (let ((__obj95682
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95682
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91554_ '())))
                     __obj95682)))
        (if (let () (declare (not safe)) (procedure? _thunk91555_))
            '#!void
            (raise (let ((__obj95683
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95683
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91555_ '())))
                     __obj95683)))
        (let ((__tmp95691
               (lambda (_cont91557_)
                 (with-exception-handler
                  (lambda (_exn91559_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91557_
                       _handler91554_
                       _exn91559_)))
                  _thunk91555_))))
          (declare (not safe))
          (##continuation-capture __tmp95691))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91545_)
        (if (or (heap-overflow-exception? _exn91545_)
                (stack-overflow-exception? _exn91545_))
            _exn91545_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91545_))
                _exn91545_
                (if (macro-exception? _exn91545_)
                    (let ((_rte91550_
                           (let ((__obj95684
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95684
                                _exn91545_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95684)))
                      (let ((__tmp95692
                             (lambda (_cont91552_)
                               (let ((__tmp95693
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91552_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91550_
                                  'continuation
                                  __tmp95693)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95692))
                      _rte91550_)
                    _exn91545_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91540_)
        (let ((_$e91542_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91540_))))
          (if _$e91542_ _$e91542_ (error-exception? _obj91540_)))))
    (define error-message
      (lambda (_obj91538_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91538_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91538_ 'message))
            (if (error-exception? _obj91538_)
                (error-exception-message _obj91538_)
                '#f))))
    (define error-irritants
      (lambda (_obj91536_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91536_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91536_ 'irritants))
            (if (error-exception? _obj91536_)
                (error-exception-parameters _obj91536_)
                '#f))))
    (define error-trace
      (lambda (_obj91534_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91534_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91534_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91516_ _port91517_)
        (let ((_$e91519_
               (let ()
                 (declare (not safe))
                 (method-ref _e91516_ 'display-exception))))
          (if _$e91519_
              ((lambda (_f91522_) (_f91522_ _e91516_ _port91517_)) _$e91519_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91516_ _port91517_))))))
    (define display-exception__0
      (lambda (_e91527_)
        (let ((_port91529_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91527_ _port91529_))))
    (define display-exception
      (lambda _g95695_
        (let ((_g95694_ (let () (declare (not safe)) (##length _g95695_))))
          (cond ((let () (declare (not safe)) (##fx= _g95694_ 1))
                 (apply (lambda (_e91527_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91527_)))
                        _g95695_))
                ((let () (declare (not safe)) (##fx= _g95694_ 2))
                 (apply (lambda (_e91531_ _port91532_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91531_ _port91532_)))
                        _g95695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95695_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91505_ _message91506_ . _rest91507_)
        (let ((_message91513_
               (if (let () (declare (not safe)) (string? _message91506_))
                   _message91506_
                   (call-with-output-string
                    '""
                    (lambda (_g9150891510_)
                      (display _message91506_ _g9150891510_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91505_ 'message _message91513_))
          (apply class-instance-init! _self91505_ _rest91507_))))
    (define Error:::init!::specialize
      (lambda (__t95658)
        (let ((__message95659
               (let ((__tmp95660
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95658 'message))))
                 (if __tmp95660 __tmp95660 (error '"Unknown slot" 'message)))))
          (lambda (_self91505_ _message91506_ . _rest91507_)
            (let ((_message91513_
                   (if (let () (declare (not safe)) (string? _message91506_))
                       _message91506_
                       (call-with-output-string
                        '""
                        (lambda (_g9150891510_)
                          (display _message91506_ _g9150891510_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91505_
                 _message91513_
                 __message95659
                 __t95658
                 '#f))
              (apply class-instance-init! _self91505_ _rest91507_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self91363_ _port91364_)
        (let ((_tmp-port91366_ (open-output-string))
              (_display-error-newline91367_
               (> (output-port-column _port91364_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91366_))
          (let ((__tmp95696
                 (lambda ()
                   (if _display-error-newline91367_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e91370_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91363_ 'where))))
                     (if _$e91370_ (display _$e91370_) (display '"?")))
                   (let ((__tmp95697
                          (let ((__tmp95698
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self91363_))))
                            (declare (not safe))
                            (##type-name __tmp95698))))
                     (declare (not safe))
                     (display* '" [" __tmp95697 '"]: "))
                   (let ((__tmp95699
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91363_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95699))
                   (let ((_irritants91373_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91363_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants91373_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj91375_)
                              (write _obj91375_)
                              (write-char '#\space))
                            _irritants91373_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self91363_))
                            (dump-stack-trace?))
                       (let ((_cont9137691378_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self91363_
                                 'continuation))))
                         (if _cont9137691378_
                             (let ((_cont91381_ _cont9137691378_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont91381_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95696
             current-output-port
             _tmp-port91366_))
          (let ((__tmp95700 (get-output-string _tmp-port91366_)))
            (declare (not safe))
            (##write-string __tmp95700 _port91364_)))))
    (define Error::display-exception::specialize
      (lambda (__t95661)
        (let ((__message95662
               (let ((__tmp95666
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95661 'message))))
                 (if __tmp95666 __tmp95666 (error '"Unknown slot" 'message))))
              (__irritants95663
               (let ((__tmp95667
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95661 'irritants))))
                 (if __tmp95667
                     __tmp95667
                     (error '"Unknown slot" 'irritants))))
              (__where95664
               (let ((__tmp95668
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95661 'where))))
                 (if __tmp95668 __tmp95668 (error '"Unknown slot" 'where))))
              (__continuation95665
               (let ((__tmp95669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95661 'continuation))))
                 (if __tmp95669
                     __tmp95669
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self91363_ _port91364_)
            (let ((_tmp-port91366_ (open-output-string))
                  (_display-error-newline91367_
                   (> (output-port-column _port91364_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91366_))
              (let ((__tmp95701
                     (lambda ()
                       (if _display-error-newline91367_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e91370_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91363_
                                 __where95664
                                 __t95661
                                 '#f))))
                         (if _$e91370_ (display _$e91370_) (display '"?")))
                       (let ((__tmp95702
                              (let ((__tmp95703
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self91363_))))
                                (declare (not safe))
                                (##type-name __tmp95703))))
                         (declare (not safe))
                         (display* '" [" __tmp95702 '"]: "))
                       (let ((__tmp95704
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91363_
                                 __message95662
                                 __t95661
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95704))
                       (let ((_irritants91373_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91363_
                                 __irritants95663
                                 __t95661
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants91373_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj91375_)
                                  (write _obj91375_)
                                  (write-char '#\space))
                                _irritants91373_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self91363_))
                                (dump-stack-trace?))
                           (let ((_cont9137691378_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self91363_
                                     __continuation95665
                                     __t95661
                                     '#f))))
                             (if _cont9137691378_
                                 (let ((_cont91381_ _cont9137691378_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont91381_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95701
                 current-output-port
                 _tmp-port91366_))
              (let ((__tmp95705 (get-output-string _tmp-port91366_)))
                (declare (not safe))
                (##write-string __tmp95705 _port91364_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self91230_ _port91231_)
        (let ((_tmp-port91233_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91233_))
          (let ((__tmp95706
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self91230_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95706 _tmp-port91233_))
          (if (dump-stack-trace?)
              (let ((_cont9123491236_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self91230_ 'continuation))))
                (if _cont9123491236_
                    (let ((_cont91239_ _cont9123491236_))
                      (display '"--- continuation backtrace:" _tmp-port91233_)
                      (newline _tmp-port91233_)
                      (display-continuation-backtrace
                       _cont91239_
                       _tmp-port91233_))
                    '#f))
              '#!void)
          (let ((__tmp95707 (get-output-string _tmp-port91233_)))
            (declare (not safe))
            (##write-string __tmp95707 _port91231_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95670)
        (let ((__continuation95671
               (let ((__tmp95673
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95670 'continuation))))
                 (if __tmp95673
                     __tmp95673
                     (error '"Unknown slot" 'continuation))))
              (__exception95672
               (let ((__tmp95674
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95670 'exception))))
                 (if __tmp95674
                     __tmp95674
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self91230_ _port91231_)
            (let ((_tmp-port91233_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91233_))
              (let ((__tmp95708
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self91230_
                        __exception95672
                        __t95670
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95708 _tmp-port91233_))
              (if (dump-stack-trace?)
                  (let ((_cont9123491236_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self91230_
                            __continuation95671
                            __t95670
                            '#f))))
                    (if _cont9123491236_
                        (let ((_cont91239_ _cont9123491236_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port91233_)
                          (newline _tmp-port91233_)
                          (display-continuation-backtrace
                           _cont91239_
                           _tmp-port91233_))
                        '#f))
                  '#!void)
              (let ((__tmp95709 (get-output-string _tmp-port91233_)))
                (declare (not safe))
                (##write-string __tmp95709 _port91231_)))))))
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
      (lambda (_port91102_)
        (if (macro-character-port? _port91102_)
            (let ((_old-width91104_
                   (macro-character-port-output-width _port91102_)))
              (macro-character-port-output-width-set!
               _port91102_
               (lambda (_port91106_) '256))
              _old-width91104_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port91099_ _old-width91100_)
        (if (macro-character-port? _port91099_)
            (macro-character-port-output-width-set!
             _port91099_
             _old-width91100_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e91097_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e91097_))))
    (define abandoned-mutex-exception?
      (lambda (_exn91091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91091_))
            (let ((_e91094_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91091_ 'exception))))
              (macro-abandoned-mutex-exception? _e91094_))
            (macro-abandoned-mutex-exception? _exn91091_))))
    (define cfun-conversion-exception?
      (lambda (_exn91087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91087_))
            (let ((_e91089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91087_ 'exception))))
              (macro-cfun-conversion-exception? _e91089_))
            (macro-cfun-conversion-exception? _exn91087_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn91083_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91083_))
            (let ((_e91085_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91083_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91085_)
                  (macro-cfun-conversion-exception-arguments _e91085_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95711
                                (let ()
                                  (declare (not safe))
                                  (cons _e91085_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95711)))))
            (if (macro-cfun-conversion-exception? _exn91083_)
                (macro-cfun-conversion-exception-arguments _exn91083_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95710
                              (let ()
                                (declare (not safe))
                                (cons _exn91083_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95710)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn91079_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91079_))
            (let ((_e91081_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91079_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91081_)
                  (macro-cfun-conversion-exception-code _e91081_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95713
                                (let ()
                                  (declare (not safe))
                                  (cons _e91081_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95713)))))
            (if (macro-cfun-conversion-exception? _exn91079_)
                (macro-cfun-conversion-exception-code _exn91079_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95712
                              (let ()
                                (declare (not safe))
                                (cons _exn91079_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95712)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn91075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91075_))
            (let ((_e91077_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91075_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91077_)
                  (macro-cfun-conversion-exception-message _e91077_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95715
                                (let ()
                                  (declare (not safe))
                                  (cons _e91077_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95715)))))
            (if (macro-cfun-conversion-exception? _exn91075_)
                (macro-cfun-conversion-exception-message _exn91075_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95714
                              (let ()
                                (declare (not safe))
                                (cons _exn91075_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95714)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn91069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91069_))
            (let ((_e91072_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91069_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91072_)
                  (macro-cfun-conversion-exception-procedure _e91072_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95717
                                (let ()
                                  (declare (not safe))
                                  (cons _e91072_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95717)))))
            (if (macro-cfun-conversion-exception? _exn91069_)
                (macro-cfun-conversion-exception-procedure _exn91069_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95716
                              (let ()
                                (declare (not safe))
                                (cons _exn91069_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95716)))))))
    (define datum-parsing-exception?
      (lambda (_exn91065_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91065_))
            (let ((_e91067_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91065_ 'exception))))
              (macro-datum-parsing-exception? _e91067_))
            (macro-datum-parsing-exception? _exn91065_))))
    (define datum-parsing-exception-kind
      (lambda (_exn91061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91061_))
            (let ((_e91063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91061_ 'exception))))
              (if (macro-datum-parsing-exception? _e91063_)
                  (macro-datum-parsing-exception-kind _e91063_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95719
                                (let ()
                                  (declare (not safe))
                                  (cons _e91063_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95719)))))
            (if (macro-datum-parsing-exception? _exn91061_)
                (macro-datum-parsing-exception-kind _exn91061_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95718
                              (let ()
                                (declare (not safe))
                                (cons _exn91061_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95718)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn91057_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91057_))
            (let ((_e91059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91057_ 'exception))))
              (if (macro-datum-parsing-exception? _e91059_)
                  (macro-datum-parsing-exception-parameters _e91059_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95721
                                (let ()
                                  (declare (not safe))
                                  (cons _e91059_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95721)))))
            (if (macro-datum-parsing-exception? _exn91057_)
                (macro-datum-parsing-exception-parameters _exn91057_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95720
                              (let ()
                                (declare (not safe))
                                (cons _exn91057_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95720)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn91051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91051_))
            (let ((_e91054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91051_ 'exception))))
              (if (macro-datum-parsing-exception? _e91054_)
                  (macro-datum-parsing-exception-readenv _e91054_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95723
                                (let ()
                                  (declare (not safe))
                                  (cons _e91054_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95723)))))
            (if (macro-datum-parsing-exception? _exn91051_)
                (macro-datum-parsing-exception-readenv _exn91051_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95722
                              (let ()
                                (declare (not safe))
                                (cons _exn91051_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95722)))))))
    (define deadlock-exception?
      (lambda (_exn91045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91045_))
            (let ((_e91048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91045_ 'exception))))
              (macro-deadlock-exception? _e91048_))
            (macro-deadlock-exception? _exn91045_))))
    (define divide-by-zero-exception?
      (lambda (_exn91041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91041_))
            (let ((_e91043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91041_ 'exception))))
              (macro-divide-by-zero-exception? _e91043_))
            (macro-divide-by-zero-exception? _exn91041_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn91037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91037_))
            (let ((_e91039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91037_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91039_)
                  (macro-divide-by-zero-exception-arguments _e91039_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95725
                                (let ()
                                  (declare (not safe))
                                  (cons _e91039_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95725)))))
            (if (macro-divide-by-zero-exception? _exn91037_)
                (macro-divide-by-zero-exception-arguments _exn91037_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95724
                              (let ()
                                (declare (not safe))
                                (cons _exn91037_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95724)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn91031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91031_))
            (let ((_e91034_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91031_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91034_)
                  (macro-divide-by-zero-exception-procedure _e91034_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95727
                                (let ()
                                  (declare (not safe))
                                  (cons _e91034_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95727)))))
            (if (macro-divide-by-zero-exception? _exn91031_)
                (macro-divide-by-zero-exception-procedure _exn91031_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95726
                              (let ()
                                (declare (not safe))
                                (cons _exn91031_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95726)))))))
    (define error-exception?
      (lambda (_exn91027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91027_))
            (let ((_e91029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91027_ 'exception))))
              (macro-error-exception? _e91029_))
            (macro-error-exception? _exn91027_))))
    (define error-exception-message
      (lambda (_exn91023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91023_))
            (let ((_e91025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91023_ 'exception))))
              (if (macro-error-exception? _e91025_)
                  (macro-error-exception-message _e91025_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95729
                                (let ()
                                  (declare (not safe))
                                  (cons _e91025_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95729)))))
            (if (macro-error-exception? _exn91023_)
                (macro-error-exception-message _exn91023_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95728
                              (let ()
                                (declare (not safe))
                                (cons _exn91023_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95728)))))))
    (define error-exception-parameters
      (lambda (_exn91017_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91017_))
            (let ((_e91020_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91017_ 'exception))))
              (if (macro-error-exception? _e91020_)
                  (macro-error-exception-parameters _e91020_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95731
                                (let ()
                                  (declare (not safe))
                                  (cons _e91020_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95731)))))
            (if (macro-error-exception? _exn91017_)
                (macro-error-exception-parameters _exn91017_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95730
                              (let ()
                                (declare (not safe))
                                (cons _exn91017_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95730)))))))
    (define expression-parsing-exception?
      (lambda (_exn91013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91013_))
            (let ((_e91015_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91013_ 'exception))))
              (macro-expression-parsing-exception? _e91015_))
            (macro-expression-parsing-exception? _exn91013_))))
    (define expression-parsing-exception-kind
      (lambda (_exn91009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91009_))
            (let ((_e91011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91009_ 'exception))))
              (if (macro-expression-parsing-exception? _e91011_)
                  (macro-expression-parsing-exception-kind _e91011_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95733
                                (let ()
                                  (declare (not safe))
                                  (cons _e91011_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95733)))))
            (if (macro-expression-parsing-exception? _exn91009_)
                (macro-expression-parsing-exception-kind _exn91009_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95732
                              (let ()
                                (declare (not safe))
                                (cons _exn91009_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95732)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn91005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91005_))
            (let ((_e91007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91005_ 'exception))))
              (if (macro-expression-parsing-exception? _e91007_)
                  (macro-expression-parsing-exception-parameters _e91007_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95735
                                (let ()
                                  (declare (not safe))
                                  (cons _e91007_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95735)))))
            (if (macro-expression-parsing-exception? _exn91005_)
                (macro-expression-parsing-exception-parameters _exn91005_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95734
                              (let ()
                                (declare (not safe))
                                (cons _exn91005_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95734)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90999_))
            (let ((_e91002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90999_ 'exception))))
              (if (macro-expression-parsing-exception? _e91002_)
                  (macro-expression-parsing-exception-source _e91002_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95737
                                (let ()
                                  (declare (not safe))
                                  (cons _e91002_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95737)))))
            (if (macro-expression-parsing-exception? _exn90999_)
                (macro-expression-parsing-exception-source _exn90999_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95736
                              (let ()
                                (declare (not safe))
                                (cons _exn90999_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95736)))))))
    (define file-exists-exception?
      (lambda (_exn90995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90995_))
            (let ((_e90997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90995_ 'exception))))
              (macro-file-exists-exception? _e90997_))
            (macro-file-exists-exception? _exn90995_))))
    (define file-exists-exception-arguments
      (lambda (_exn90991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90991_))
            (let ((_e90993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90991_ 'exception))))
              (if (macro-file-exists-exception? _e90993_)
                  (macro-file-exists-exception-arguments _e90993_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95739
                                (let ()
                                  (declare (not safe))
                                  (cons _e90993_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95739)))))
            (if (macro-file-exists-exception? _exn90991_)
                (macro-file-exists-exception-arguments _exn90991_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95738
                              (let ()
                                (declare (not safe))
                                (cons _exn90991_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95738)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90985_))
            (let ((_e90988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90985_ 'exception))))
              (if (macro-file-exists-exception? _e90988_)
                  (macro-file-exists-exception-procedure _e90988_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95741
                                (let ()
                                  (declare (not safe))
                                  (cons _e90988_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95741)))))
            (if (macro-file-exists-exception? _exn90985_)
                (macro-file-exists-exception-procedure _exn90985_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95740
                              (let ()
                                (declare (not safe))
                                (cons _exn90985_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95740)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90981_))
            (let ((_e90983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90981_ 'exception))))
              (macro-fixnum-overflow-exception? _e90983_))
            (macro-fixnum-overflow-exception? _exn90981_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90977_))
            (let ((_e90979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90977_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90979_)
                  (macro-fixnum-overflow-exception-arguments _e90979_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95743
                                (let ()
                                  (declare (not safe))
                                  (cons _e90979_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95743)))))
            (if (macro-fixnum-overflow-exception? _exn90977_)
                (macro-fixnum-overflow-exception-arguments _exn90977_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95742
                              (let ()
                                (declare (not safe))
                                (cons _exn90977_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95742)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90971_))
            (let ((_e90974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90971_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90974_)
                  (macro-fixnum-overflow-exception-procedure _e90974_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95745
                                (let ()
                                  (declare (not safe))
                                  (cons _e90974_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95745)))))
            (if (macro-fixnum-overflow-exception? _exn90971_)
                (macro-fixnum-overflow-exception-procedure _exn90971_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95744
                              (let ()
                                (declare (not safe))
                                (cons _exn90971_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95744)))))))
    (define heap-overflow-exception?
      (lambda (_exn90965_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90965_))
            (let ((_e90968_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90965_ 'exception))))
              (macro-heap-overflow-exception? _e90968_))
            (macro-heap-overflow-exception? _exn90965_))))
    (define inactive-thread-exception?
      (lambda (_exn90961_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90961_))
            (let ((_e90963_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90961_ 'exception))))
              (macro-inactive-thread-exception? _e90963_))
            (macro-inactive-thread-exception? _exn90961_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90957_))
            (let ((_e90959_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90957_ 'exception))))
              (if (macro-inactive-thread-exception? _e90959_)
                  (macro-inactive-thread-exception-arguments _e90959_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95747
                                (let ()
                                  (declare (not safe))
                                  (cons _e90959_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95747)))))
            (if (macro-inactive-thread-exception? _exn90957_)
                (macro-inactive-thread-exception-arguments _exn90957_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95746
                              (let ()
                                (declare (not safe))
                                (cons _exn90957_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95746)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90951_))
            (let ((_e90954_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90951_ 'exception))))
              (if (macro-inactive-thread-exception? _e90954_)
                  (macro-inactive-thread-exception-procedure _e90954_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95749
                                (let ()
                                  (declare (not safe))
                                  (cons _e90954_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95749)))))
            (if (macro-inactive-thread-exception? _exn90951_)
                (macro-inactive-thread-exception-procedure _exn90951_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95748
                              (let ()
                                (declare (not safe))
                                (cons _exn90951_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95748)))))))
    (define initialized-thread-exception?
      (lambda (_exn90947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90947_))
            (let ((_e90949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90947_ 'exception))))
              (macro-initialized-thread-exception? _e90949_))
            (macro-initialized-thread-exception? _exn90947_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90943_))
            (let ((_e90945_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90943_ 'exception))))
              (if (macro-initialized-thread-exception? _e90945_)
                  (macro-initialized-thread-exception-arguments _e90945_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95751
                                (let ()
                                  (declare (not safe))
                                  (cons _e90945_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95751)))))
            (if (macro-initialized-thread-exception? _exn90943_)
                (macro-initialized-thread-exception-arguments _exn90943_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95750
                              (let ()
                                (declare (not safe))
                                (cons _exn90943_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95750)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90937_))
            (let ((_e90940_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90937_ 'exception))))
              (if (macro-initialized-thread-exception? _e90940_)
                  (macro-initialized-thread-exception-procedure _e90940_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95753
                                (let ()
                                  (declare (not safe))
                                  (cons _e90940_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95753)))))
            (if (macro-initialized-thread-exception? _exn90937_)
                (macro-initialized-thread-exception-procedure _exn90937_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95752
                              (let ()
                                (declare (not safe))
                                (cons _exn90937_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95752)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90933_))
            (let ((_e90935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90933_ 'exception))))
              (macro-invalid-hash-number-exception? _e90935_))
            (macro-invalid-hash-number-exception? _exn90933_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90929_))
            (let ((_e90931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90929_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90931_)
                  (macro-invalid-hash-number-exception-arguments _e90931_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95755
                                (let ()
                                  (declare (not safe))
                                  (cons _e90931_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95755)))))
            (if (macro-invalid-hash-number-exception? _exn90929_)
                (macro-invalid-hash-number-exception-arguments _exn90929_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95754
                              (let ()
                                (declare (not safe))
                                (cons _exn90929_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95754)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90923_))
            (let ((_e90926_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90923_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90926_)
                  (macro-invalid-hash-number-exception-procedure _e90926_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95757
                                (let ()
                                  (declare (not safe))
                                  (cons _e90926_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95757)))))
            (if (macro-invalid-hash-number-exception? _exn90923_)
                (macro-invalid-hash-number-exception-procedure _exn90923_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95756
                              (let ()
                                (declare (not safe))
                                (cons _exn90923_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95756)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90919_))
            (let ((_e90921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90919_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90921_))
            (macro-invalid-utf8-encoding-exception? _exn90919_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90915_))
            (let ((_e90917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90915_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90917_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90917_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95759
                                (let ()
                                  (declare (not safe))
                                  (cons _e90917_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95759)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90915_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90915_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95758
                              (let ()
                                (declare (not safe))
                                (cons _exn90915_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95758)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90909_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90909_))
            (let ((_e90912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90909_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90912_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90912_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95761
                                (let ()
                                  (declare (not safe))
                                  (cons _e90912_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95761)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90909_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90909_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95760
                              (let ()
                                (declare (not safe))
                                (cons _exn90909_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95760)))))))
    (define join-timeout-exception?
      (lambda (_exn90905_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90905_))
            (let ((_e90907_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90905_ 'exception))))
              (macro-join-timeout-exception? _e90907_))
            (macro-join-timeout-exception? _exn90905_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90901_))
            (let ((_e90903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90901_ 'exception))))
              (if (macro-join-timeout-exception? _e90903_)
                  (macro-join-timeout-exception-arguments _e90903_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95763
                                (let ()
                                  (declare (not safe))
                                  (cons _e90903_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95763)))))
            (if (macro-join-timeout-exception? _exn90901_)
                (macro-join-timeout-exception-arguments _exn90901_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95762
                              (let ()
                                (declare (not safe))
                                (cons _exn90901_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95762)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90895_))
            (let ((_e90898_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90895_ 'exception))))
              (if (macro-join-timeout-exception? _e90898_)
                  (macro-join-timeout-exception-procedure _e90898_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95765
                                (let ()
                                  (declare (not safe))
                                  (cons _e90898_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95765)))))
            (if (macro-join-timeout-exception? _exn90895_)
                (macro-join-timeout-exception-procedure _exn90895_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95764
                              (let ()
                                (declare (not safe))
                                (cons _exn90895_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95764)))))))
    (define keyword-expected-exception?
      (lambda (_exn90891_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90891_))
            (let ((_e90893_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90891_ 'exception))))
              (macro-keyword-expected-exception? _e90893_))
            (macro-keyword-expected-exception? _exn90891_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90887_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90887_))
            (let ((_e90889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90887_ 'exception))))
              (if (macro-keyword-expected-exception? _e90889_)
                  (macro-keyword-expected-exception-arguments _e90889_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95767
                                (let ()
                                  (declare (not safe))
                                  (cons _e90889_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95767)))))
            (if (macro-keyword-expected-exception? _exn90887_)
                (macro-keyword-expected-exception-arguments _exn90887_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95766
                              (let ()
                                (declare (not safe))
                                (cons _exn90887_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95766)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90881_))
            (let ((_e90884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90881_ 'exception))))
              (if (macro-keyword-expected-exception? _e90884_)
                  (macro-keyword-expected-exception-procedure _e90884_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95769
                                (let ()
                                  (declare (not safe))
                                  (cons _e90884_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95769)))))
            (if (macro-keyword-expected-exception? _exn90881_)
                (macro-keyword-expected-exception-procedure _exn90881_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95768
                              (let ()
                                (declare (not safe))
                                (cons _exn90881_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95768)))))))
    (define length-mismatch-exception?
      (lambda (_exn90877_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90877_))
            (let ((_e90879_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90877_ 'exception))))
              (macro-length-mismatch-exception? _e90879_))
            (macro-length-mismatch-exception? _exn90877_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90873_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90873_))
            (let ((_e90875_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90873_ 'exception))))
              (if (macro-length-mismatch-exception? _e90875_)
                  (macro-length-mismatch-exception-arg-id _e90875_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95771
                                (let ()
                                  (declare (not safe))
                                  (cons _e90875_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95771)))))
            (if (macro-length-mismatch-exception? _exn90873_)
                (macro-length-mismatch-exception-arg-id _exn90873_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95770
                              (let ()
                                (declare (not safe))
                                (cons _exn90873_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95770)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90869_))
            (let ((_e90871_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90869_ 'exception))))
              (if (macro-length-mismatch-exception? _e90871_)
                  (macro-length-mismatch-exception-arguments _e90871_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95773
                                (let ()
                                  (declare (not safe))
                                  (cons _e90871_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95773)))))
            (if (macro-length-mismatch-exception? _exn90869_)
                (macro-length-mismatch-exception-arguments _exn90869_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95772
                              (let ()
                                (declare (not safe))
                                (cons _exn90869_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95772)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90863_))
            (let ((_e90866_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90863_ 'exception))))
              (if (macro-length-mismatch-exception? _e90866_)
                  (macro-length-mismatch-exception-procedure _e90866_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95775
                                (let ()
                                  (declare (not safe))
                                  (cons _e90866_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95775)))))
            (if (macro-length-mismatch-exception? _exn90863_)
                (macro-length-mismatch-exception-procedure _exn90863_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95774
                              (let ()
                                (declare (not safe))
                                (cons _exn90863_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95774)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90859_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90859_))
            (let ((_e90861_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90859_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90861_))
            (macro-mailbox-receive-timeout-exception? _exn90859_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90855_))
            (let ((_e90857_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90855_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90857_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90857_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95777
                                (let ()
                                  (declare (not safe))
                                  (cons _e90857_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95777)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90855_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90855_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95776
                              (let ()
                                (declare (not safe))
                                (cons _exn90855_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95776)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90849_))
            (let ((_e90852_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90849_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90852_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90852_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95779
                                (let ()
                                  (declare (not safe))
                                  (cons _e90852_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95779)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90849_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90849_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95778
                              (let ()
                                (declare (not safe))
                                (cons _exn90849_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95778)))))))
    (define module-not-found-exception?
      (lambda (_exn90845_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90845_))
            (let ((_e90847_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90845_ 'exception))))
              (macro-module-not-found-exception? _e90847_))
            (macro-module-not-found-exception? _exn90845_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90841_))
            (let ((_e90843_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90841_ 'exception))))
              (if (macro-module-not-found-exception? _e90843_)
                  (macro-module-not-found-exception-arguments _e90843_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95781
                                (let ()
                                  (declare (not safe))
                                  (cons _e90843_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95781)))))
            (if (macro-module-not-found-exception? _exn90841_)
                (macro-module-not-found-exception-arguments _exn90841_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95780
                              (let ()
                                (declare (not safe))
                                (cons _exn90841_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95780)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90835_))
            (let ((_e90838_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90835_ 'exception))))
              (if (macro-module-not-found-exception? _e90838_)
                  (macro-module-not-found-exception-procedure _e90838_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95783
                                (let ()
                                  (declare (not safe))
                                  (cons _e90838_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95783)))))
            (if (macro-module-not-found-exception? _exn90835_)
                (macro-module-not-found-exception-procedure _exn90835_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95782
                              (let ()
                                (declare (not safe))
                                (cons _exn90835_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95782)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90829_))
            (let ((_e90832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90829_ 'exception))))
              (macro-multiple-c-return-exception? _e90832_))
            (macro-multiple-c-return-exception? _exn90829_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90825_))
            (let ((_e90827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90825_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90827_))
            (macro-no-such-file-or-directory-exception? _exn90825_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90821_))
            (let ((_e90823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90821_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90823_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90823_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95785
                                (let ()
                                  (declare (not safe))
                                  (cons _e90823_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95785)))))
            (if (macro-no-such-file-or-directory-exception? _exn90821_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90821_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95784
                              (let ()
                                (declare (not safe))
                                (cons _exn90821_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95784)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90815_))
            (let ((_e90818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90815_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90818_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90818_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95787
                                (let ()
                                  (declare (not safe))
                                  (cons _e90818_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95787)))))
            (if (macro-no-such-file-or-directory-exception? _exn90815_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90815_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95786
                              (let ()
                                (declare (not safe))
                                (cons _exn90815_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95786)))))))
    (define noncontinuable-exception?
      (lambda (_exn90811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90811_))
            (let ((_e90813_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90811_ 'exception))))
              (macro-noncontinuable-exception? _e90813_))
            (macro-noncontinuable-exception? _exn90811_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90805_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90805_))
            (let ((_e90808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90805_ 'exception))))
              (if (macro-noncontinuable-exception? _e90808_)
                  (macro-noncontinuable-exception-reason _e90808_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95789
                                (let ()
                                  (declare (not safe))
                                  (cons _e90808_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95789)))))
            (if (macro-noncontinuable-exception? _exn90805_)
                (macro-noncontinuable-exception-reason _exn90805_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95788
                              (let ()
                                (declare (not safe))
                                (cons _exn90805_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95788)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90801_))
            (let ((_e90803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90801_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90803_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90801_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90797_))
            (let ((_e90799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90797_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90799_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90799_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95791
                                (let ()
                                  (declare (not safe))
                                  (cons _e90799_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95791)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90797_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90797_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95790
                              (let ()
                                (declare (not safe))
                                (cons _exn90797_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95790)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90791_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90791_))
            (let ((_e90794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90791_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90794_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90794_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95793
                                (let ()
                                  (declare (not safe))
                                  (cons _e90794_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95793)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90791_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90791_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95792
                              (let ()
                                (declare (not safe))
                                (cons _exn90791_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95792)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90787_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90787_))
            (let ((_e90789_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90787_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90789_))
            (macro-nonprocedure-operator-exception? _exn90787_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90783_))
            (let ((_e90785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90783_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90785_)
                  (macro-nonprocedure-operator-exception-arguments _e90785_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95795
                                (let ()
                                  (declare (not safe))
                                  (cons _e90785_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95795)))))
            (if (macro-nonprocedure-operator-exception? _exn90783_)
                (macro-nonprocedure-operator-exception-arguments _exn90783_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95794
                              (let ()
                                (declare (not safe))
                                (cons _exn90783_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95794)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90779_))
            (let ((_e90781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90779_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90781_)
                  (macro-nonprocedure-operator-exception-code _e90781_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95797
                                (let ()
                                  (declare (not safe))
                                  (cons _e90781_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95797)))))
            (if (macro-nonprocedure-operator-exception? _exn90779_)
                (macro-nonprocedure-operator-exception-code _exn90779_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95796
                              (let ()
                                (declare (not safe))
                                (cons _exn90779_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95796)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90775_))
            (let ((_e90777_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90775_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90777_)
                  (macro-nonprocedure-operator-exception-operator _e90777_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95799
                                (let ()
                                  (declare (not safe))
                                  (cons _e90777_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95799)))))
            (if (macro-nonprocedure-operator-exception? _exn90775_)
                (macro-nonprocedure-operator-exception-operator _exn90775_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95798
                              (let ()
                                (declare (not safe))
                                (cons _exn90775_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95798)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90769_))
            (let ((_e90772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90769_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90772_)
                  (macro-nonprocedure-operator-exception-rte _e90772_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95801
                                (let ()
                                  (declare (not safe))
                                  (cons _e90772_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95801)))))
            (if (macro-nonprocedure-operator-exception? _exn90769_)
                (macro-nonprocedure-operator-exception-rte _exn90769_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95800
                              (let ()
                                (declare (not safe))
                                (cons _exn90769_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95800)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90765_))
            (let ((_e90767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90765_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90767_))
            (macro-not-in-compilation-context-exception? _exn90765_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90761_))
            (let ((_e90763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90761_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90763_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90763_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95803
                                (let ()
                                  (declare (not safe))
                                  (cons _e90763_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95803)))))
            (if (macro-not-in-compilation-context-exception? _exn90761_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90761_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95802
                              (let ()
                                (declare (not safe))
                                (cons _exn90761_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95802)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90755_))
            (let ((_e90758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90755_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90758_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90758_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95805
                                (let ()
                                  (declare (not safe))
                                  (cons _e90758_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95805)))))
            (if (macro-not-in-compilation-context-exception? _exn90755_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90755_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95804
                              (let ()
                                (declare (not safe))
                                (cons _exn90755_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95804)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90751_))
            (let ((_e90753_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90751_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90753_))
            (macro-number-of-arguments-limit-exception? _exn90751_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90747_))
            (let ((_e90749_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90747_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90749_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90749_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95807
                                (let ()
                                  (declare (not safe))
                                  (cons _e90749_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95807)))))
            (if (macro-number-of-arguments-limit-exception? _exn90747_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90747_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95806
                              (let ()
                                (declare (not safe))
                                (cons _exn90747_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95806)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90741_))
            (let ((_e90744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90741_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90744_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90744_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95809
                                (let ()
                                  (declare (not safe))
                                  (cons _e90744_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95809)))))
            (if (macro-number-of-arguments-limit-exception? _exn90741_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90741_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95808
                              (let ()
                                (declare (not safe))
                                (cons _exn90741_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95808)))))))
    (define os-exception?
      (lambda (_exn90737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90737_))
            (let ((_e90739_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90737_ 'exception))))
              (macro-os-exception? _e90739_))
            (macro-os-exception? _exn90737_))))
    (define os-exception-arguments
      (lambda (_exn90733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90733_))
            (let ((_e90735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90733_ 'exception))))
              (if (macro-os-exception? _e90735_)
                  (macro-os-exception-arguments _e90735_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95811
                                (let ()
                                  (declare (not safe))
                                  (cons _e90735_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95811)))))
            (if (macro-os-exception? _exn90733_)
                (macro-os-exception-arguments _exn90733_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95810
                              (let ()
                                (declare (not safe))
                                (cons _exn90733_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95810)))))))
    (define os-exception-code
      (lambda (_exn90729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90729_))
            (let ((_e90731_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90729_ 'exception))))
              (if (macro-os-exception? _e90731_)
                  (macro-os-exception-code _e90731_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95813
                                (let ()
                                  (declare (not safe))
                                  (cons _e90731_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95813)))))
            (if (macro-os-exception? _exn90729_)
                (macro-os-exception-code _exn90729_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95812
                              (let ()
                                (declare (not safe))
                                (cons _exn90729_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95812)))))))
    (define os-exception-message
      (lambda (_exn90725_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90725_))
            (let ((_e90727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90725_ 'exception))))
              (if (macro-os-exception? _e90727_)
                  (macro-os-exception-message _e90727_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95815
                                (let ()
                                  (declare (not safe))
                                  (cons _e90727_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95815)))))
            (if (macro-os-exception? _exn90725_)
                (macro-os-exception-message _exn90725_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95814
                              (let ()
                                (declare (not safe))
                                (cons _exn90725_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95814)))))))
    (define os-exception-procedure
      (lambda (_exn90719_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90719_))
            (let ((_e90722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90719_ 'exception))))
              (if (macro-os-exception? _e90722_)
                  (macro-os-exception-procedure _e90722_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95817
                                (let ()
                                  (declare (not safe))
                                  (cons _e90722_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95817)))))
            (if (macro-os-exception? _exn90719_)
                (macro-os-exception-procedure _exn90719_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95816
                              (let ()
                                (declare (not safe))
                                (cons _exn90719_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95816)))))))
    (define permission-denied-exception?
      (lambda (_exn90715_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90715_))
            (let ((_e90717_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90715_ 'exception))))
              (macro-permission-denied-exception? _e90717_))
            (macro-permission-denied-exception? _exn90715_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90711_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90711_))
            (let ((_e90713_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90711_ 'exception))))
              (if (macro-permission-denied-exception? _e90713_)
                  (macro-permission-denied-exception-arguments _e90713_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95819
                                (let ()
                                  (declare (not safe))
                                  (cons _e90713_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95819)))))
            (if (macro-permission-denied-exception? _exn90711_)
                (macro-permission-denied-exception-arguments _exn90711_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95818
                              (let ()
                                (declare (not safe))
                                (cons _exn90711_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95818)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90705_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90705_))
            (let ((_e90708_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90705_ 'exception))))
              (if (macro-permission-denied-exception? _e90708_)
                  (macro-permission-denied-exception-procedure _e90708_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95821
                                (let ()
                                  (declare (not safe))
                                  (cons _e90708_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95821)))))
            (if (macro-permission-denied-exception? _exn90705_)
                (macro-permission-denied-exception-procedure _exn90705_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95820
                              (let ()
                                (declare (not safe))
                                (cons _exn90705_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95820)))))))
    (define range-exception?
      (lambda (_exn90701_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90701_))
            (let ((_e90703_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90701_ 'exception))))
              (macro-range-exception? _e90703_))
            (macro-range-exception? _exn90701_))))
    (define range-exception-arg-id
      (lambda (_exn90697_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90697_))
            (let ((_e90699_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90697_ 'exception))))
              (if (macro-range-exception? _e90699_)
                  (macro-range-exception-arg-id _e90699_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95823
                                (let ()
                                  (declare (not safe))
                                  (cons _e90699_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95823)))))
            (if (macro-range-exception? _exn90697_)
                (macro-range-exception-arg-id _exn90697_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95822
                              (let ()
                                (declare (not safe))
                                (cons _exn90697_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95822)))))))
    (define range-exception-arguments
      (lambda (_exn90693_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90693_))
            (let ((_e90695_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90693_ 'exception))))
              (if (macro-range-exception? _e90695_)
                  (macro-range-exception-arguments _e90695_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95825
                                (let ()
                                  (declare (not safe))
                                  (cons _e90695_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95825)))))
            (if (macro-range-exception? _exn90693_)
                (macro-range-exception-arguments _exn90693_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95824
                              (let ()
                                (declare (not safe))
                                (cons _exn90693_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95824)))))))
    (define range-exception-procedure
      (lambda (_exn90687_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90687_))
            (let ((_e90690_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90687_ 'exception))))
              (if (macro-range-exception? _e90690_)
                  (macro-range-exception-procedure _e90690_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95827
                                (let ()
                                  (declare (not safe))
                                  (cons _e90690_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95827)))))
            (if (macro-range-exception? _exn90687_)
                (macro-range-exception-procedure _exn90687_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95826
                              (let ()
                                (declare (not safe))
                                (cons _exn90687_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95826)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90683_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90683_))
            (let ((_e90685_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90683_ 'exception))))
              (macro-rpc-remote-error-exception? _e90685_))
            (macro-rpc-remote-error-exception? _exn90683_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90679_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90679_))
            (let ((_e90681_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90679_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90681_)
                  (macro-rpc-remote-error-exception-arguments _e90681_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95829
                                (let ()
                                  (declare (not safe))
                                  (cons _e90681_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95829)))))
            (if (macro-rpc-remote-error-exception? _exn90679_)
                (macro-rpc-remote-error-exception-arguments _exn90679_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95828
                              (let ()
                                (declare (not safe))
                                (cons _exn90679_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95828)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90675_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90675_))
            (let ((_e90677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90675_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90677_)
                  (macro-rpc-remote-error-exception-message _e90677_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95831
                                (let ()
                                  (declare (not safe))
                                  (cons _e90677_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95831)))))
            (if (macro-rpc-remote-error-exception? _exn90675_)
                (macro-rpc-remote-error-exception-message _exn90675_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95830
                              (let ()
                                (declare (not safe))
                                (cons _exn90675_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95830)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90669_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90669_))
            (let ((_e90672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90669_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90672_)
                  (macro-rpc-remote-error-exception-procedure _e90672_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95833
                                (let ()
                                  (declare (not safe))
                                  (cons _e90672_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95833)))))
            (if (macro-rpc-remote-error-exception? _exn90669_)
                (macro-rpc-remote-error-exception-procedure _exn90669_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95832
                              (let ()
                                (declare (not safe))
                                (cons _exn90669_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95832)))))))
    (define scheduler-exception?
      (lambda (_exn90665_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90665_))
            (let ((_e90667_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90665_ 'exception))))
              (macro-scheduler-exception? _e90667_))
            (macro-scheduler-exception? _exn90665_))))
    (define scheduler-exception-reason
      (lambda (_exn90659_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90659_))
            (let ((_e90662_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90659_ 'exception))))
              (if (macro-scheduler-exception? _e90662_)
                  (macro-scheduler-exception-reason _e90662_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95835
                                (let ()
                                  (declare (not safe))
                                  (cons _e90662_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95835)))))
            (if (macro-scheduler-exception? _exn90659_)
                (macro-scheduler-exception-reason _exn90659_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95834
                              (let ()
                                (declare (not safe))
                                (cons _exn90659_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95834)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90655_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90655_))
            (let ((_e90657_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90655_ 'exception))))
              (macro-sfun-conversion-exception? _e90657_))
            (macro-sfun-conversion-exception? _exn90655_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90651_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90651_))
            (let ((_e90653_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90651_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90653_)
                  (macro-sfun-conversion-exception-arguments _e90653_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95837
                                (let ()
                                  (declare (not safe))
                                  (cons _e90653_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95837)))))
            (if (macro-sfun-conversion-exception? _exn90651_)
                (macro-sfun-conversion-exception-arguments _exn90651_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95836
                              (let ()
                                (declare (not safe))
                                (cons _exn90651_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95836)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90647_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90647_))
            (let ((_e90649_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90647_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90649_)
                  (macro-sfun-conversion-exception-code _e90649_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95839
                                (let ()
                                  (declare (not safe))
                                  (cons _e90649_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95839)))))
            (if (macro-sfun-conversion-exception? _exn90647_)
                (macro-sfun-conversion-exception-code _exn90647_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95838
                              (let ()
                                (declare (not safe))
                                (cons _exn90647_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95838)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90643_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90643_))
            (let ((_e90645_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90643_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90645_)
                  (macro-sfun-conversion-exception-message _e90645_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95841
                                (let ()
                                  (declare (not safe))
                                  (cons _e90645_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95841)))))
            (if (macro-sfun-conversion-exception? _exn90643_)
                (macro-sfun-conversion-exception-message _exn90643_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95840
                              (let ()
                                (declare (not safe))
                                (cons _exn90643_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95840)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90637_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90637_))
            (let ((_e90640_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90637_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90640_)
                  (macro-sfun-conversion-exception-procedure _e90640_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95843
                                (let ()
                                  (declare (not safe))
                                  (cons _e90640_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95843)))))
            (if (macro-sfun-conversion-exception? _exn90637_)
                (macro-sfun-conversion-exception-procedure _exn90637_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95842
                              (let ()
                                (declare (not safe))
                                (cons _exn90637_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95842)))))))
    (define stack-overflow-exception?
      (lambda (_exn90631_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90631_))
            (let ((_e90634_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90631_ 'exception))))
              (macro-stack-overflow-exception? _e90634_))
            (macro-stack-overflow-exception? _exn90631_))))
    (define started-thread-exception?
      (lambda (_exn90627_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90627_))
            (let ((_e90629_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90627_ 'exception))))
              (macro-started-thread-exception? _e90629_))
            (macro-started-thread-exception? _exn90627_))))
    (define started-thread-exception-arguments
      (lambda (_exn90623_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90623_))
            (let ((_e90625_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90623_ 'exception))))
              (if (macro-started-thread-exception? _e90625_)
                  (macro-started-thread-exception-arguments _e90625_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95845
                                (let ()
                                  (declare (not safe))
                                  (cons _e90625_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95845)))))
            (if (macro-started-thread-exception? _exn90623_)
                (macro-started-thread-exception-arguments _exn90623_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95844
                              (let ()
                                (declare (not safe))
                                (cons _exn90623_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95844)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90617_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90617_))
            (let ((_e90620_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90617_ 'exception))))
              (if (macro-started-thread-exception? _e90620_)
                  (macro-started-thread-exception-procedure _e90620_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95847
                                (let ()
                                  (declare (not safe))
                                  (cons _e90620_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95847)))))
            (if (macro-started-thread-exception? _exn90617_)
                (macro-started-thread-exception-procedure _exn90617_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95846
                              (let ()
                                (declare (not safe))
                                (cons _exn90617_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95846)))))))
    (define terminated-thread-exception?
      (lambda (_exn90613_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90613_))
            (let ((_e90615_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90613_ 'exception))))
              (macro-terminated-thread-exception? _e90615_))
            (macro-terminated-thread-exception? _exn90613_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90609_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90609_))
            (let ((_e90611_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90609_ 'exception))))
              (if (macro-terminated-thread-exception? _e90611_)
                  (macro-terminated-thread-exception-arguments _e90611_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95849
                                (let ()
                                  (declare (not safe))
                                  (cons _e90611_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95849)))))
            (if (macro-terminated-thread-exception? _exn90609_)
                (macro-terminated-thread-exception-arguments _exn90609_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95848
                              (let ()
                                (declare (not safe))
                                (cons _exn90609_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95848)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90603_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90603_))
            (let ((_e90606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90603_ 'exception))))
              (if (macro-terminated-thread-exception? _e90606_)
                  (macro-terminated-thread-exception-procedure _e90606_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95851
                                (let ()
                                  (declare (not safe))
                                  (cons _e90606_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95851)))))
            (if (macro-terminated-thread-exception? _exn90603_)
                (macro-terminated-thread-exception-procedure _exn90603_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95850
                              (let ()
                                (declare (not safe))
                                (cons _exn90603_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95850)))))))
    (define type-exception?
      (lambda (_exn90599_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90599_))
            (let ((_e90601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90599_ 'exception))))
              (macro-type-exception? _e90601_))
            (macro-type-exception? _exn90599_))))
    (define type-exception-arg-id
      (lambda (_exn90595_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90595_))
            (let ((_e90597_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90595_ 'exception))))
              (if (macro-type-exception? _e90597_)
                  (macro-type-exception-arg-id _e90597_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95853
                                (let ()
                                  (declare (not safe))
                                  (cons _e90597_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95853)))))
            (if (macro-type-exception? _exn90595_)
                (macro-type-exception-arg-id _exn90595_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95852
                              (let ()
                                (declare (not safe))
                                (cons _exn90595_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95852)))))))
    (define type-exception-arguments
      (lambda (_exn90591_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90591_))
            (let ((_e90593_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90591_ 'exception))))
              (if (macro-type-exception? _e90593_)
                  (macro-type-exception-arguments _e90593_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95855
                                (let ()
                                  (declare (not safe))
                                  (cons _e90593_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95855)))))
            (if (macro-type-exception? _exn90591_)
                (macro-type-exception-arguments _exn90591_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95854
                              (let ()
                                (declare (not safe))
                                (cons _exn90591_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95854)))))))
    (define type-exception-procedure
      (lambda (_exn90587_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90587_))
            (let ((_e90589_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90587_ 'exception))))
              (if (macro-type-exception? _e90589_)
                  (macro-type-exception-procedure _e90589_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95857
                                (let ()
                                  (declare (not safe))
                                  (cons _e90589_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95857)))))
            (if (macro-type-exception? _exn90587_)
                (macro-type-exception-procedure _exn90587_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95856
                              (let ()
                                (declare (not safe))
                                (cons _exn90587_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95856)))))))
    (define type-exception-type-id
      (lambda (_exn90581_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90581_))
            (let ((_e90584_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90581_ 'exception))))
              (if (macro-type-exception? _e90584_)
                  (macro-type-exception-type-id _e90584_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95859
                                (let ()
                                  (declare (not safe))
                                  (cons _e90584_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95859)))))
            (if (macro-type-exception? _exn90581_)
                (macro-type-exception-type-id _exn90581_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95858
                              (let ()
                                (declare (not safe))
                                (cons _exn90581_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95858)))))))
    (define unbound-global-exception?
      (lambda (_exn90577_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90577_))
            (let ((_e90579_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90577_ 'exception))))
              (macro-unbound-global-exception? _e90579_))
            (macro-unbound-global-exception? _exn90577_))))
    (define unbound-global-exception-code
      (lambda (_exn90573_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90573_))
            (let ((_e90575_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90573_ 'exception))))
              (if (macro-unbound-global-exception? _e90575_)
                  (macro-unbound-global-exception-code _e90575_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95861
                                (let ()
                                  (declare (not safe))
                                  (cons _e90575_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95861)))))
            (if (macro-unbound-global-exception? _exn90573_)
                (macro-unbound-global-exception-code _exn90573_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95860
                              (let ()
                                (declare (not safe))
                                (cons _exn90573_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95860)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90569_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90569_))
            (let ((_e90571_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90569_ 'exception))))
              (if (macro-unbound-global-exception? _e90571_)
                  (macro-unbound-global-exception-rte _e90571_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95863
                                (let ()
                                  (declare (not safe))
                                  (cons _e90571_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95863)))))
            (if (macro-unbound-global-exception? _exn90569_)
                (macro-unbound-global-exception-rte _exn90569_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95862
                              (let ()
                                (declare (not safe))
                                (cons _exn90569_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95862)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90563_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90563_))
            (let ((_e90566_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90563_ 'exception))))
              (if (macro-unbound-global-exception? _e90566_)
                  (macro-unbound-global-exception-variable _e90566_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95865
                                (let ()
                                  (declare (not safe))
                                  (cons _e90566_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95865)))))
            (if (macro-unbound-global-exception? _exn90563_)
                (macro-unbound-global-exception-variable _exn90563_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95864
                              (let ()
                                (declare (not safe))
                                (cons _exn90563_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95864)))))))
    (define unbound-key-exception?
      (lambda (_exn90559_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90559_))
            (let ((_e90561_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90559_ 'exception))))
              (macro-unbound-key-exception? _e90561_))
            (macro-unbound-key-exception? _exn90559_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90555_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90555_))
            (let ((_e90557_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90555_ 'exception))))
              (if (macro-unbound-key-exception? _e90557_)
                  (macro-unbound-key-exception-arguments _e90557_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95867
                                (let ()
                                  (declare (not safe))
                                  (cons _e90557_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95867)))))
            (if (macro-unbound-key-exception? _exn90555_)
                (macro-unbound-key-exception-arguments _exn90555_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95866
                              (let ()
                                (declare (not safe))
                                (cons _exn90555_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95866)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90549_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90549_))
            (let ((_e90552_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90549_ 'exception))))
              (if (macro-unbound-key-exception? _e90552_)
                  (macro-unbound-key-exception-procedure _e90552_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95869
                                (let ()
                                  (declare (not safe))
                                  (cons _e90552_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95869)))))
            (if (macro-unbound-key-exception? _exn90549_)
                (macro-unbound-key-exception-procedure _exn90549_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95868
                              (let ()
                                (declare (not safe))
                                (cons _exn90549_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95868)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90545_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90545_))
            (let ((_e90547_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90545_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90547_))
            (macro-unbound-os-environment-variable-exception? _exn90545_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90541_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90541_))
            (let ((_e90543_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90541_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90543_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90543_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95871
                                (let ()
                                  (declare (not safe))
                                  (cons _e90543_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95871)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90541_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90541_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95870
                              (let ()
                                (declare (not safe))
                                (cons _exn90541_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95870)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90535_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90535_))
            (let ((_e90538_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90535_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90538_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90538_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95873
                                (let ()
                                  (declare (not safe))
                                  (cons _e90538_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95873)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90535_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90535_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95872
                              (let ()
                                (declare (not safe))
                                (cons _exn90535_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95872)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90531_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90531_))
            (let ((_e90533_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90531_ 'exception))))
              (macro-unbound-serial-number-exception? _e90533_))
            (macro-unbound-serial-number-exception? _exn90531_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90527_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90527_))
            (let ((_e90529_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90527_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90529_)
                  (macro-unbound-serial-number-exception-arguments _e90529_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95875
                                (let ()
                                  (declare (not safe))
                                  (cons _e90529_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95875)))))
            (if (macro-unbound-serial-number-exception? _exn90527_)
                (macro-unbound-serial-number-exception-arguments _exn90527_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95874
                              (let ()
                                (declare (not safe))
                                (cons _exn90527_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95874)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90521_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90521_))
            (let ((_e90524_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90521_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90524_)
                  (macro-unbound-serial-number-exception-procedure _e90524_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95877
                                (let ()
                                  (declare (not safe))
                                  (cons _e90524_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95877)))))
            (if (macro-unbound-serial-number-exception? _exn90521_)
                (macro-unbound-serial-number-exception-procedure _exn90521_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95876
                              (let ()
                                (declare (not safe))
                                (cons _exn90521_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95876)))))))
    (define uncaught-exception?
      (lambda (_exn90517_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90517_))
            (let ((_e90519_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90517_ 'exception))))
              (macro-uncaught-exception? _e90519_))
            (macro-uncaught-exception? _exn90517_))))
    (define uncaught-exception-arguments
      (lambda (_exn90513_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90513_))
            (let ((_e90515_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90513_ 'exception))))
              (if (macro-uncaught-exception? _e90515_)
                  (macro-uncaught-exception-arguments _e90515_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95879
                                (let ()
                                  (declare (not safe))
                                  (cons _e90515_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95879)))))
            (if (macro-uncaught-exception? _exn90513_)
                (macro-uncaught-exception-arguments _exn90513_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95878
                              (let ()
                                (declare (not safe))
                                (cons _exn90513_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95878)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90509_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90509_))
            (let ((_e90511_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90509_ 'exception))))
              (if (macro-uncaught-exception? _e90511_)
                  (macro-uncaught-exception-procedure _e90511_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95881
                                (let ()
                                  (declare (not safe))
                                  (cons _e90511_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95881)))))
            (if (macro-uncaught-exception? _exn90509_)
                (macro-uncaught-exception-procedure _exn90509_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95880
                              (let ()
                                (declare (not safe))
                                (cons _exn90509_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95880)))))))
    (define uncaught-exception-reason
      (lambda (_exn90503_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90503_))
            (let ((_e90506_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90503_ 'exception))))
              (if (macro-uncaught-exception? _e90506_)
                  (macro-uncaught-exception-reason _e90506_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95883
                                (let ()
                                  (declare (not safe))
                                  (cons _e90506_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95883)))))
            (if (macro-uncaught-exception? _exn90503_)
                (macro-uncaught-exception-reason _exn90503_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95882
                              (let ()
                                (declare (not safe))
                                (cons _exn90503_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95882)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90499_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90499_))
            (let ((_e90501_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90499_ 'exception))))
              (macro-uninitialized-thread-exception? _e90501_))
            (macro-uninitialized-thread-exception? _exn90499_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90495_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90495_))
            (let ((_e90497_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90495_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90497_)
                  (macro-uninitialized-thread-exception-arguments _e90497_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95885
                                (let ()
                                  (declare (not safe))
                                  (cons _e90497_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95885)))))
            (if (macro-uninitialized-thread-exception? _exn90495_)
                (macro-uninitialized-thread-exception-arguments _exn90495_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95884
                              (let ()
                                (declare (not safe))
                                (cons _exn90495_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95884)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90489_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90489_))
            (let ((_e90492_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90489_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90492_)
                  (macro-uninitialized-thread-exception-procedure _e90492_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95887
                                (let ()
                                  (declare (not safe))
                                  (cons _e90492_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95887)))))
            (if (macro-uninitialized-thread-exception? _exn90489_)
                (macro-uninitialized-thread-exception-procedure _exn90489_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95886
                              (let ()
                                (declare (not safe))
                                (cons _exn90489_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95886)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90485_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90485_))
            (let ((_e90487_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90485_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90487_))
            (macro-unknown-keyword-argument-exception? _exn90485_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90481_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90481_))
            (let ((_e90483_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90481_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90483_)
                  (macro-unknown-keyword-argument-exception-arguments _e90483_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95889
                                (let ()
                                  (declare (not safe))
                                  (cons _e90483_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95889)))))
            (if (macro-unknown-keyword-argument-exception? _exn90481_)
                (macro-unknown-keyword-argument-exception-arguments _exn90481_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95888
                              (let ()
                                (declare (not safe))
                                (cons _exn90481_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95888)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90475_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90475_))
            (let ((_e90478_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90475_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90478_)
                  (macro-unknown-keyword-argument-exception-procedure _e90478_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95891
                                (let ()
                                  (declare (not safe))
                                  (cons _e90478_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95891)))))
            (if (macro-unknown-keyword-argument-exception? _exn90475_)
                (macro-unknown-keyword-argument-exception-procedure _exn90475_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95890
                              (let ()
                                (declare (not safe))
                                (cons _exn90475_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95890)))))))
    (define unterminated-process-exception?
      (lambda (_exn90471_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90471_))
            (let ((_e90473_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90471_ 'exception))))
              (macro-unterminated-process-exception? _e90473_))
            (macro-unterminated-process-exception? _exn90471_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90467_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90467_))
            (let ((_e90469_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90467_ 'exception))))
              (if (macro-unterminated-process-exception? _e90469_)
                  (macro-unterminated-process-exception-arguments _e90469_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95893
                                (let ()
                                  (declare (not safe))
                                  (cons _e90469_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95893)))))
            (if (macro-unterminated-process-exception? _exn90467_)
                (macro-unterminated-process-exception-arguments _exn90467_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95892
                              (let ()
                                (declare (not safe))
                                (cons _exn90467_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95892)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90461_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90461_))
            (let ((_e90464_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90461_ 'exception))))
              (if (macro-unterminated-process-exception? _e90464_)
                  (macro-unterminated-process-exception-procedure _e90464_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95895
                                (let ()
                                  (declare (not safe))
                                  (cons _e90464_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95895)))))
            (if (macro-unterminated-process-exception? _exn90461_)
                (macro-unterminated-process-exception-procedure _exn90461_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95894
                              (let ()
                                (declare (not safe))
                                (cons _exn90461_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95894)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90457_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90457_))
            (let ((_e90459_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90457_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90459_))
            (macro-wrong-number-of-arguments-exception? _exn90457_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90453_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90453_))
            (let ((_e90455_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90453_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90455_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90455_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95897
                                (let ()
                                  (declare (not safe))
                                  (cons _e90455_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95897)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90453_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90453_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95896
                              (let ()
                                (declare (not safe))
                                (cons _exn90453_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95896)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90447_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90447_))
            (let ((_e90450_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90447_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90450_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90450_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95899
                                (let ()
                                  (declare (not safe))
                                  (cons _e90450_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95899)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90447_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90447_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95898
                              (let ()
                                (declare (not safe))
                                (cons _exn90447_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95898)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90443_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90443_))
            (let ((_e90445_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90443_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90445_))
            (macro-wrong-number-of-values-exception? _exn90443_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90439_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90439_))
            (let ((_e90441_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90439_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90441_)
                  (macro-wrong-number-of-values-exception-code _e90441_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95901
                                (let ()
                                  (declare (not safe))
                                  (cons _e90441_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95901)))))
            (if (macro-wrong-number-of-values-exception? _exn90439_)
                (macro-wrong-number-of-values-exception-code _exn90439_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95900
                              (let ()
                                (declare (not safe))
                                (cons _exn90439_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95900)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90435_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90435_))
            (let ((_e90437_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90435_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90437_)
                  (macro-wrong-number-of-values-exception-rte _e90437_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95903
                                (let ()
                                  (declare (not safe))
                                  (cons _e90437_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95903)))))
            (if (macro-wrong-number-of-values-exception? _exn90435_)
                (macro-wrong-number-of-values-exception-rte _exn90435_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95902
                              (let ()
                                (declare (not safe))
                                (cons _exn90435_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95902)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90429_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90429_))
            (let ((_e90432_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90429_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90432_)
                  (macro-wrong-number-of-values-exception-vals _e90432_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95905
                                (let ()
                                  (declare (not safe))
                                  (cons _e90432_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95905)))))
            (if (macro-wrong-number-of-values-exception? _exn90429_)
                (macro-wrong-number-of-values-exception-vals _exn90429_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95904
                              (let ()
                                (declare (not safe))
                                (cons _exn90429_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95904)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90423_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90423_))
            (let ((_e90426_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90423_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90426_))
            (macro-wrong-processor-c-return-exception? _exn90423_))))))
