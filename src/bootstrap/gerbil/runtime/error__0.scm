(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708289479)
  (begin
    (define Exception::t
      (let ((__tmp95687 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp95687
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args91591_ (apply make-instance Exception::t _$args91591_)))
    (define StackTrace::t
      (let ((__tmp95688 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp95688
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args91588_ (apply make-instance StackTrace::t _$args91588_)))
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
      (let ((__tmp95689 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp95689
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args91585_ (apply make-instance Error::t _$args91585_)))
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
      (let ((__tmp95690 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp95690
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args91582_
        (apply make-instance RuntimeException::t _$args91582_)))
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
      (lambda (_exn91577_ _continue91578_)
        (let ((_exn91580_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn91577_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn91580_ _continue91578_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn91573_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn91573_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn91573_ 'continuation))
                '#!void
                (let ((__tmp95691
                       (lambda (_cont91575_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn91573_
                            'continuation
                            _cont91575_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp95691)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn91573_))))
    (define error
      (lambda (_message91570_ . _irritants91571_)
        (raise (let ((__obj95681
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj95681
                  _message91570_
                  'irritants:
                  _irritants91571_)
                 __obj95681))))
    (define with-exception-handler
      (lambda (_handler91563_ _thunk91564_)
        (if (let () (declare (not safe)) (procedure? _handler91563_))
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
                      (let () (declare (not safe)) (cons _handler91563_ '())))
                     __obj95682)))
        (if (let () (declare (not safe)) (procedure? _thunk91564_))
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
                      (let () (declare (not safe)) (cons _thunk91564_ '())))
                     __obj95683)))
        (let ((__tmp95692
               (lambda (_exn91566_)
                 (let ((_exn91568_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn91566_))))
                   (_handler91563_ _exn91568_)))))
          (declare (not safe))
          (##with-exception-handler __tmp95692 _thunk91564_))))
    (define with-catch
      (lambda (_handler91556_ _thunk91557_)
        (if (let () (declare (not safe)) (procedure? _handler91556_))
            '#!void
            (raise (let ((__obj95684
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95684
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler91556_ '())))
                     __obj95684)))
        (if (let () (declare (not safe)) (procedure? _thunk91557_))
            '#!void
            (raise (let ((__obj95685
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj95685
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk91557_ '())))
                     __obj95685)))
        (let ((__tmp95693
               (lambda (_cont91559_)
                 (with-exception-handler
                  (lambda (_exn91561_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont91559_
                       _handler91556_
                       _exn91561_)))
                  _thunk91557_))))
          (declare (not safe))
          (##continuation-capture __tmp95693))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn91547_)
        (if (or (heap-overflow-exception? _exn91547_)
                (stack-overflow-exception? _exn91547_))
            _exn91547_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn91547_))
                _exn91547_
                (if (macro-exception? _exn91547_)
                    (let ((_rte91552_
                           (let ((__obj95686
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj95686
                                _exn91547_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj95686)))
                      (let ((__tmp95694
                             (lambda (_cont91554_)
                               (let ((__tmp95695
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont91554_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte91552_
                                  'continuation
                                  __tmp95695)))))
                        (declare (not safe))
                        (##continuation-capture __tmp95694))
                      _rte91552_)
                    _exn91547_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj91542_)
        (let ((_$e91544_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj91542_))))
          (if _$e91544_ _$e91544_ (error-exception? _obj91542_)))))
    (define error-message
      (lambda (_obj91540_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91540_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91540_ 'message))
            (if (error-exception? _obj91540_)
                (error-exception-message _obj91540_)
                '#f))))
    (define error-irritants
      (lambda (_obj91538_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91538_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91538_ 'irritants))
            (if (error-exception? _obj91538_)
                (error-exception-parameters _obj91538_)
                '#f))))
    (define error-trace
      (lambda (_obj91536_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj91536_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj91536_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e91518_ _port91519_)
        (let ((_$e91521_
               (let ()
                 (declare (not safe))
                 (method-ref _e91518_ 'display-exception))))
          (if _$e91521_
              ((lambda (_f91524_) (_f91524_ _e91518_ _port91519_)) _$e91521_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e91518_ _port91519_))))))
    (define display-exception__0
      (lambda (_e91529_)
        (let ((_port91531_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e91529_ _port91531_))))
    (define display-exception
      (lambda _g95697_
        (let ((_g95696_ (let () (declare (not safe)) (##length _g95697_))))
          (cond ((let () (declare (not safe)) (##fx= _g95696_ 1))
                 (apply (lambda (_e91529_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e91529_)))
                        _g95697_))
                ((let () (declare (not safe)) (##fx= _g95696_ 2))
                 (apply (lambda (_e91533_ _port91534_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e91533_ _port91534_)))
                        _g95697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g95697_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self91507_ _message91508_ . _rest91509_)
        (let ((_message91515_
               (if (let () (declare (not safe)) (string? _message91508_))
                   _message91508_
                   (call-with-output-string
                    '""
                    (lambda (_g9151091512_)
                      (display _message91508_ _g9151091512_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self91507_ 'message _message91515_))
          (apply class-instance-init! _self91507_ _rest91509_))))
    (define Error:::init!::specialize
      (lambda (__t95660)
        (let ((__message95661
               (let ((__tmp95662
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95660 'message))))
                 (if __tmp95662 __tmp95662 (error '"Unknown slot" 'message)))))
          (lambda (_self91507_ _message91508_ . _rest91509_)
            (let ((_message91515_
                   (if (let () (declare (not safe)) (string? _message91508_))
                       _message91508_
                       (call-with-output-string
                        '""
                        (lambda (_g9151091512_)
                          (display _message91508_ _g9151091512_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self91507_
                 _message91515_
                 __message95661
                 __t95660
                 '#f))
              (apply class-instance-init! _self91507_ _rest91509_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self91365_ _port91366_)
        (let ((_tmp-port91368_ (open-output-string))
              (_display-error-newline91369_
               (> (output-port-column _port91366_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91368_))
          (let ((__tmp95698
                 (lambda ()
                   (if _display-error-newline91369_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e91372_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91365_ 'where))))
                     (if _$e91372_ (display _$e91372_) (display '"?")))
                   (let ((__tmp95699
                          (let ((__tmp95700
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self91365_))))
                            (declare (not safe))
                            (##type-name __tmp95700))))
                     (declare (not safe))
                     (display* '" [" __tmp95699 '"]: "))
                   (let ((__tmp95701
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91365_ 'message))))
                     (declare (not safe))
                     (displayln __tmp95701))
                   (let ((_irritants91375_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self91365_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants91375_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj91377_)
                              (write _obj91377_)
                              (write-char '#\space))
                            _irritants91375_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self91365_))
                            (dump-stack-trace?))
                       (let ((_cont9137891380_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self91365_
                                 'continuation))))
                         (if _cont9137891380_
                             (let ((_cont91383_ _cont9137891380_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont91383_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp95698
             current-output-port
             _tmp-port91368_))
          (let ((__tmp95702 (get-output-string _tmp-port91368_)))
            (declare (not safe))
            (##write-string __tmp95702 _port91366_)))))
    (define Error::display-exception::specialize
      (lambda (__t95663)
        (let ((__where95664
               (let ((__tmp95668
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95663 'where))))
                 (if __tmp95668 __tmp95668 (error '"Unknown slot" 'where))))
              (__continuation95665
               (let ((__tmp95669
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95663 'continuation))))
                 (if __tmp95669
                     __tmp95669
                     (error '"Unknown slot" 'continuation))))
              (__message95666
               (let ((__tmp95670
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95663 'message))))
                 (if __tmp95670 __tmp95670 (error '"Unknown slot" 'message))))
              (__irritants95667
               (let ((__tmp95671
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95663 'irritants))))
                 (if __tmp95671
                     __tmp95671
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self91365_ _port91366_)
            (let ((_tmp-port91368_ (open-output-string))
                  (_display-error-newline91369_
                   (> (output-port-column _port91366_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91368_))
              (let ((__tmp95703
                     (lambda ()
                       (if _display-error-newline91369_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e91372_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91365_
                                 __where95664
                                 __t95663
                                 '#f))))
                         (if _$e91372_ (display _$e91372_) (display '"?")))
                       (let ((__tmp95704
                              (let ((__tmp95705
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self91365_))))
                                (declare (not safe))
                                (##type-name __tmp95705))))
                         (declare (not safe))
                         (display* '" [" __tmp95704 '"]: "))
                       (let ((__tmp95706
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91365_
                                 __message95666
                                 __t95663
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp95706))
                       (let ((_irritants91375_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self91365_
                                 __irritants95667
                                 __t95663
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants91375_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj91377_)
                                  (write _obj91377_)
                                  (write-char '#\space))
                                _irritants91375_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self91365_))
                                (dump-stack-trace?))
                           (let ((_cont9137891380_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self91365_
                                     __continuation95665
                                     __t95663
                                     '#f))))
                             (if _cont9137891380_
                                 (let ((_cont91383_ _cont9137891380_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont91383_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp95703
                 current-output-port
                 _tmp-port91368_))
              (let ((__tmp95707 (get-output-string _tmp-port91368_)))
                (declare (not safe))
                (##write-string __tmp95707 _port91366_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self91232_ _port91233_)
        (let ((_tmp-port91235_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port91235_))
          (let ((__tmp95708
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self91232_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp95708 _tmp-port91235_))
          (if (dump-stack-trace?)
              (let ((_cont9123691238_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self91232_ 'continuation))))
                (if _cont9123691238_
                    (let ((_cont91241_ _cont9123691238_))
                      (display '"--- continuation backtrace:" _tmp-port91235_)
                      (newline _tmp-port91235_)
                      (display-continuation-backtrace
                       _cont91241_
                       _tmp-port91235_))
                    '#f))
              '#!void)
          (let ((__tmp95709 (get-output-string _tmp-port91235_)))
            (declare (not safe))
            (##write-string __tmp95709 _port91233_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t95672)
        (let ((__continuation95673
               (let ((__tmp95675
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95672 'continuation))))
                 (if __tmp95675
                     __tmp95675
                     (error '"Unknown slot" 'continuation))))
              (__exception95674
               (let ((__tmp95676
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t95672 'exception))))
                 (if __tmp95676
                     __tmp95676
                     (error '"Unknown slot" 'exception)))))
          (lambda (_self91232_ _port91233_)
            (let ((_tmp-port91235_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port91235_))
              (let ((__tmp95710
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self91232_
                        __exception95674
                        __t95672
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp95710 _tmp-port91235_))
              (if (dump-stack-trace?)
                  (let ((_cont9123691238_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self91232_
                            __continuation95673
                            __t95672
                            '#f))))
                    (if _cont9123691238_
                        (let ((_cont91241_ _cont9123691238_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port91235_)
                          (newline _tmp-port91235_)
                          (display-continuation-backtrace
                           _cont91241_
                           _tmp-port91235_))
                        '#f))
                  '#!void)
              (let ((__tmp95711 (get-output-string _tmp-port91235_)))
                (declare (not safe))
                (##write-string __tmp95711 _port91233_)))))))
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
      (lambda (_port91104_)
        (if (macro-character-port? _port91104_)
            (let ((_old-width91106_
                   (macro-character-port-output-width _port91104_)))
              (macro-character-port-output-width-set!
               _port91104_
               (lambda (_port91108_) '256))
              _old-width91106_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port91101_ _old-width91102_)
        (if (macro-character-port? _port91101_)
            (macro-character-port-output-width-set!
             _port91101_
             _old-width91102_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e91099_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e91099_))))
    (define abandoned-mutex-exception?
      (lambda (_exn91093_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91093_))
            (let ((_e91096_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91093_ 'exception))))
              (macro-abandoned-mutex-exception? _e91096_))
            (macro-abandoned-mutex-exception? _exn91093_))))
    (define cfun-conversion-exception?
      (lambda (_exn91089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91089_))
            (let ((_e91091_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91089_ 'exception))))
              (macro-cfun-conversion-exception? _e91091_))
            (macro-cfun-conversion-exception? _exn91089_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn91085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91085_))
            (let ((_e91087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91085_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91087_)
                  (macro-cfun-conversion-exception-arguments _e91087_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95713
                                (let ()
                                  (declare (not safe))
                                  (cons _e91087_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp95713)))))
            (if (macro-cfun-conversion-exception? _exn91085_)
                (macro-cfun-conversion-exception-arguments _exn91085_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95712
                              (let ()
                                (declare (not safe))
                                (cons _exn91085_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp95712)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn91081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91081_))
            (let ((_e91083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91081_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91083_)
                  (macro-cfun-conversion-exception-code _e91083_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95715
                                (let ()
                                  (declare (not safe))
                                  (cons _e91083_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp95715)))))
            (if (macro-cfun-conversion-exception? _exn91081_)
                (macro-cfun-conversion-exception-code _exn91081_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95714
                              (let ()
                                (declare (not safe))
                                (cons _exn91081_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp95714)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn91077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91077_))
            (let ((_e91079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91077_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91079_)
                  (macro-cfun-conversion-exception-message _e91079_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95717
                                (let ()
                                  (declare (not safe))
                                  (cons _e91079_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp95717)))))
            (if (macro-cfun-conversion-exception? _exn91077_)
                (macro-cfun-conversion-exception-message _exn91077_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95716
                              (let ()
                                (declare (not safe))
                                (cons _exn91077_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp95716)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn91071_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91071_))
            (let ((_e91074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91071_ 'exception))))
              (if (macro-cfun-conversion-exception? _e91074_)
                  (macro-cfun-conversion-exception-procedure _e91074_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp95719
                                (let ()
                                  (declare (not safe))
                                  (cons _e91074_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp95719)))))
            (if (macro-cfun-conversion-exception? _exn91071_)
                (macro-cfun-conversion-exception-procedure _exn91071_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp95718
                              (let ()
                                (declare (not safe))
                                (cons _exn91071_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp95718)))))))
    (define datum-parsing-exception?
      (lambda (_exn91067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91067_))
            (let ((_e91069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91067_ 'exception))))
              (macro-datum-parsing-exception? _e91069_))
            (macro-datum-parsing-exception? _exn91067_))))
    (define datum-parsing-exception-kind
      (lambda (_exn91063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91063_))
            (let ((_e91065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91063_ 'exception))))
              (if (macro-datum-parsing-exception? _e91065_)
                  (macro-datum-parsing-exception-kind _e91065_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95721
                                (let ()
                                  (declare (not safe))
                                  (cons _e91065_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp95721)))))
            (if (macro-datum-parsing-exception? _exn91063_)
                (macro-datum-parsing-exception-kind _exn91063_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95720
                              (let ()
                                (declare (not safe))
                                (cons _exn91063_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp95720)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn91059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91059_))
            (let ((_e91061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91059_ 'exception))))
              (if (macro-datum-parsing-exception? _e91061_)
                  (macro-datum-parsing-exception-parameters _e91061_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95723
                                (let ()
                                  (declare (not safe))
                                  (cons _e91061_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp95723)))))
            (if (macro-datum-parsing-exception? _exn91059_)
                (macro-datum-parsing-exception-parameters _exn91059_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95722
                              (let ()
                                (declare (not safe))
                                (cons _exn91059_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp95722)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn91053_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91053_))
            (let ((_e91056_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91053_ 'exception))))
              (if (macro-datum-parsing-exception? _e91056_)
                  (macro-datum-parsing-exception-readenv _e91056_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp95725
                                (let ()
                                  (declare (not safe))
                                  (cons _e91056_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp95725)))))
            (if (macro-datum-parsing-exception? _exn91053_)
                (macro-datum-parsing-exception-readenv _exn91053_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp95724
                              (let ()
                                (declare (not safe))
                                (cons _exn91053_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp95724)))))))
    (define deadlock-exception?
      (lambda (_exn91047_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91047_))
            (let ((_e91050_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91047_ 'exception))))
              (macro-deadlock-exception? _e91050_))
            (macro-deadlock-exception? _exn91047_))))
    (define divide-by-zero-exception?
      (lambda (_exn91043_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91043_))
            (let ((_e91045_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91043_ 'exception))))
              (macro-divide-by-zero-exception? _e91045_))
            (macro-divide-by-zero-exception? _exn91043_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn91039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91039_))
            (let ((_e91041_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91039_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91041_)
                  (macro-divide-by-zero-exception-arguments _e91041_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95727
                                (let ()
                                  (declare (not safe))
                                  (cons _e91041_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp95727)))))
            (if (macro-divide-by-zero-exception? _exn91039_)
                (macro-divide-by-zero-exception-arguments _exn91039_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95726
                              (let ()
                                (declare (not safe))
                                (cons _exn91039_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp95726)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn91033_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91033_))
            (let ((_e91036_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91033_ 'exception))))
              (if (macro-divide-by-zero-exception? _e91036_)
                  (macro-divide-by-zero-exception-procedure _e91036_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp95729
                                (let ()
                                  (declare (not safe))
                                  (cons _e91036_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp95729)))))
            (if (macro-divide-by-zero-exception? _exn91033_)
                (macro-divide-by-zero-exception-procedure _exn91033_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp95728
                              (let ()
                                (declare (not safe))
                                (cons _exn91033_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp95728)))))))
    (define error-exception?
      (lambda (_exn91029_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91029_))
            (let ((_e91031_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91029_ 'exception))))
              (macro-error-exception? _e91031_))
            (macro-error-exception? _exn91029_))))
    (define error-exception-message
      (lambda (_exn91025_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91025_))
            (let ((_e91027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91025_ 'exception))))
              (if (macro-error-exception? _e91027_)
                  (macro-error-exception-message _e91027_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95731
                                (let ()
                                  (declare (not safe))
                                  (cons _e91027_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp95731)))))
            (if (macro-error-exception? _exn91025_)
                (macro-error-exception-message _exn91025_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95730
                              (let ()
                                (declare (not safe))
                                (cons _exn91025_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp95730)))))))
    (define error-exception-parameters
      (lambda (_exn91019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91019_))
            (let ((_e91022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91019_ 'exception))))
              (if (macro-error-exception? _e91022_)
                  (macro-error-exception-parameters _e91022_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp95733
                                (let ()
                                  (declare (not safe))
                                  (cons _e91022_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp95733)))))
            (if (macro-error-exception? _exn91019_)
                (macro-error-exception-parameters _exn91019_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp95732
                              (let ()
                                (declare (not safe))
                                (cons _exn91019_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp95732)))))))
    (define expression-parsing-exception?
      (lambda (_exn91015_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91015_))
            (let ((_e91017_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91015_ 'exception))))
              (macro-expression-parsing-exception? _e91017_))
            (macro-expression-parsing-exception? _exn91015_))))
    (define expression-parsing-exception-kind
      (lambda (_exn91011_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91011_))
            (let ((_e91013_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91011_ 'exception))))
              (if (macro-expression-parsing-exception? _e91013_)
                  (macro-expression-parsing-exception-kind _e91013_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95735
                                (let ()
                                  (declare (not safe))
                                  (cons _e91013_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp95735)))))
            (if (macro-expression-parsing-exception? _exn91011_)
                (macro-expression-parsing-exception-kind _exn91011_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95734
                              (let ()
                                (declare (not safe))
                                (cons _exn91011_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp95734)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn91007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91007_))
            (let ((_e91009_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91007_ 'exception))))
              (if (macro-expression-parsing-exception? _e91009_)
                  (macro-expression-parsing-exception-parameters _e91009_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95737
                                (let ()
                                  (declare (not safe))
                                  (cons _e91009_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp95737)))))
            (if (macro-expression-parsing-exception? _exn91007_)
                (macro-expression-parsing-exception-parameters _exn91007_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95736
                              (let ()
                                (declare (not safe))
                                (cons _exn91007_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp95736)))))))
    (define expression-parsing-exception-source
      (lambda (_exn91001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn91001_))
            (let ((_e91004_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn91001_ 'exception))))
              (if (macro-expression-parsing-exception? _e91004_)
                  (macro-expression-parsing-exception-source _e91004_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp95739
                                (let ()
                                  (declare (not safe))
                                  (cons _e91004_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp95739)))))
            (if (macro-expression-parsing-exception? _exn91001_)
                (macro-expression-parsing-exception-source _exn91001_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp95738
                              (let ()
                                (declare (not safe))
                                (cons _exn91001_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp95738)))))))
    (define file-exists-exception?
      (lambda (_exn90997_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90997_))
            (let ((_e90999_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90997_ 'exception))))
              (macro-file-exists-exception? _e90999_))
            (macro-file-exists-exception? _exn90997_))))
    (define file-exists-exception-arguments
      (lambda (_exn90993_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90993_))
            (let ((_e90995_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90993_ 'exception))))
              (if (macro-file-exists-exception? _e90995_)
                  (macro-file-exists-exception-arguments _e90995_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95741
                                (let ()
                                  (declare (not safe))
                                  (cons _e90995_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp95741)))))
            (if (macro-file-exists-exception? _exn90993_)
                (macro-file-exists-exception-arguments _exn90993_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95740
                              (let ()
                                (declare (not safe))
                                (cons _exn90993_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp95740)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90987_))
            (let ((_e90990_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90987_ 'exception))))
              (if (macro-file-exists-exception? _e90990_)
                  (macro-file-exists-exception-procedure _e90990_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp95743
                                (let ()
                                  (declare (not safe))
                                  (cons _e90990_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp95743)))))
            (if (macro-file-exists-exception? _exn90987_)
                (macro-file-exists-exception-procedure _exn90987_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp95742
                              (let ()
                                (declare (not safe))
                                (cons _exn90987_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp95742)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90983_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90983_))
            (let ((_e90985_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90983_ 'exception))))
              (macro-fixnum-overflow-exception? _e90985_))
            (macro-fixnum-overflow-exception? _exn90983_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90979_))
            (let ((_e90981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90979_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90981_)
                  (macro-fixnum-overflow-exception-arguments _e90981_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95745
                                (let ()
                                  (declare (not safe))
                                  (cons _e90981_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp95745)))))
            (if (macro-fixnum-overflow-exception? _exn90979_)
                (macro-fixnum-overflow-exception-arguments _exn90979_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95744
                              (let ()
                                (declare (not safe))
                                (cons _exn90979_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp95744)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90973_))
            (let ((_e90976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90973_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90976_)
                  (macro-fixnum-overflow-exception-procedure _e90976_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp95747
                                (let ()
                                  (declare (not safe))
                                  (cons _e90976_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp95747)))))
            (if (macro-fixnum-overflow-exception? _exn90973_)
                (macro-fixnum-overflow-exception-procedure _exn90973_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp95746
                              (let ()
                                (declare (not safe))
                                (cons _exn90973_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp95746)))))))
    (define heap-overflow-exception?
      (lambda (_exn90967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90967_))
            (let ((_e90970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90967_ 'exception))))
              (macro-heap-overflow-exception? _e90970_))
            (macro-heap-overflow-exception? _exn90967_))))
    (define inactive-thread-exception?
      (lambda (_exn90963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90963_))
            (let ((_e90965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90963_ 'exception))))
              (macro-inactive-thread-exception? _e90965_))
            (macro-inactive-thread-exception? _exn90963_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90959_))
            (let ((_e90961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90959_ 'exception))))
              (if (macro-inactive-thread-exception? _e90961_)
                  (macro-inactive-thread-exception-arguments _e90961_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95749
                                (let ()
                                  (declare (not safe))
                                  (cons _e90961_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp95749)))))
            (if (macro-inactive-thread-exception? _exn90959_)
                (macro-inactive-thread-exception-arguments _exn90959_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95748
                              (let ()
                                (declare (not safe))
                                (cons _exn90959_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp95748)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90953_))
            (let ((_e90956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90953_ 'exception))))
              (if (macro-inactive-thread-exception? _e90956_)
                  (macro-inactive-thread-exception-procedure _e90956_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp95751
                                (let ()
                                  (declare (not safe))
                                  (cons _e90956_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp95751)))))
            (if (macro-inactive-thread-exception? _exn90953_)
                (macro-inactive-thread-exception-procedure _exn90953_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp95750
                              (let ()
                                (declare (not safe))
                                (cons _exn90953_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp95750)))))))
    (define initialized-thread-exception?
      (lambda (_exn90949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90949_))
            (let ((_e90951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90949_ 'exception))))
              (macro-initialized-thread-exception? _e90951_))
            (macro-initialized-thread-exception? _exn90949_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90945_))
            (let ((_e90947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90945_ 'exception))))
              (if (macro-initialized-thread-exception? _e90947_)
                  (macro-initialized-thread-exception-arguments _e90947_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95753
                                (let ()
                                  (declare (not safe))
                                  (cons _e90947_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp95753)))))
            (if (macro-initialized-thread-exception? _exn90945_)
                (macro-initialized-thread-exception-arguments _exn90945_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95752
                              (let ()
                                (declare (not safe))
                                (cons _exn90945_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp95752)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90939_))
            (let ((_e90942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90939_ 'exception))))
              (if (macro-initialized-thread-exception? _e90942_)
                  (macro-initialized-thread-exception-procedure _e90942_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp95755
                                (let ()
                                  (declare (not safe))
                                  (cons _e90942_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp95755)))))
            (if (macro-initialized-thread-exception? _exn90939_)
                (macro-initialized-thread-exception-procedure _exn90939_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp95754
                              (let ()
                                (declare (not safe))
                                (cons _exn90939_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp95754)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90935_))
            (let ((_e90937_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90935_ 'exception))))
              (macro-invalid-hash-number-exception? _e90937_))
            (macro-invalid-hash-number-exception? _exn90935_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90931_))
            (let ((_e90933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90931_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90933_)
                  (macro-invalid-hash-number-exception-arguments _e90933_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95757
                                (let ()
                                  (declare (not safe))
                                  (cons _e90933_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp95757)))))
            (if (macro-invalid-hash-number-exception? _exn90931_)
                (macro-invalid-hash-number-exception-arguments _exn90931_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95756
                              (let ()
                                (declare (not safe))
                                (cons _exn90931_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp95756)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90925_))
            (let ((_e90928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90925_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90928_)
                  (macro-invalid-hash-number-exception-procedure _e90928_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp95759
                                (let ()
                                  (declare (not safe))
                                  (cons _e90928_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp95759)))))
            (if (macro-invalid-hash-number-exception? _exn90925_)
                (macro-invalid-hash-number-exception-procedure _exn90925_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp95758
                              (let ()
                                (declare (not safe))
                                (cons _exn90925_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp95758)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90921_))
            (let ((_e90923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90921_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90923_))
            (macro-invalid-utf8-encoding-exception? _exn90921_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90917_))
            (let ((_e90919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90917_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90919_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90919_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95761
                                (let ()
                                  (declare (not safe))
                                  (cons _e90919_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp95761)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90917_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90917_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95760
                              (let ()
                                (declare (not safe))
                                (cons _exn90917_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp95760)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90911_))
            (let ((_e90914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90911_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90914_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90914_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp95763
                                (let ()
                                  (declare (not safe))
                                  (cons _e90914_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp95763)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90911_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90911_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp95762
                              (let ()
                                (declare (not safe))
                                (cons _exn90911_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp95762)))))))
    (define join-timeout-exception?
      (lambda (_exn90907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90907_))
            (let ((_e90909_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90907_ 'exception))))
              (macro-join-timeout-exception? _e90909_))
            (macro-join-timeout-exception? _exn90907_))))
    (define join-timeout-exception-arguments
      (lambda (_exn90903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90903_))
            (let ((_e90905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90903_ 'exception))))
              (if (macro-join-timeout-exception? _e90905_)
                  (macro-join-timeout-exception-arguments _e90905_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95765
                                (let ()
                                  (declare (not safe))
                                  (cons _e90905_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp95765)))))
            (if (macro-join-timeout-exception? _exn90903_)
                (macro-join-timeout-exception-arguments _exn90903_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95764
                              (let ()
                                (declare (not safe))
                                (cons _exn90903_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp95764)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn90897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90897_))
            (let ((_e90900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90897_ 'exception))))
              (if (macro-join-timeout-exception? _e90900_)
                  (macro-join-timeout-exception-procedure _e90900_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp95767
                                (let ()
                                  (declare (not safe))
                                  (cons _e90900_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp95767)))))
            (if (macro-join-timeout-exception? _exn90897_)
                (macro-join-timeout-exception-procedure _exn90897_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp95766
                              (let ()
                                (declare (not safe))
                                (cons _exn90897_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp95766)))))))
    (define keyword-expected-exception?
      (lambda (_exn90893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90893_))
            (let ((_e90895_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90893_ 'exception))))
              (macro-keyword-expected-exception? _e90895_))
            (macro-keyword-expected-exception? _exn90893_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn90889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90889_))
            (let ((_e90891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90889_ 'exception))))
              (if (macro-keyword-expected-exception? _e90891_)
                  (macro-keyword-expected-exception-arguments _e90891_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95769
                                (let ()
                                  (declare (not safe))
                                  (cons _e90891_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp95769)))))
            (if (macro-keyword-expected-exception? _exn90889_)
                (macro-keyword-expected-exception-arguments _exn90889_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95768
                              (let ()
                                (declare (not safe))
                                (cons _exn90889_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp95768)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn90883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90883_))
            (let ((_e90886_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90883_ 'exception))))
              (if (macro-keyword-expected-exception? _e90886_)
                  (macro-keyword-expected-exception-procedure _e90886_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp95771
                                (let ()
                                  (declare (not safe))
                                  (cons _e90886_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp95771)))))
            (if (macro-keyword-expected-exception? _exn90883_)
                (macro-keyword-expected-exception-procedure _exn90883_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp95770
                              (let ()
                                (declare (not safe))
                                (cons _exn90883_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp95770)))))))
    (define length-mismatch-exception?
      (lambda (_exn90879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90879_))
            (let ((_e90881_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90879_ 'exception))))
              (macro-length-mismatch-exception? _e90881_))
            (macro-length-mismatch-exception? _exn90879_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn90875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90875_))
            (let ((_e90877_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90875_ 'exception))))
              (if (macro-length-mismatch-exception? _e90877_)
                  (macro-length-mismatch-exception-arg-id _e90877_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95773
                                (let ()
                                  (declare (not safe))
                                  (cons _e90877_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp95773)))))
            (if (macro-length-mismatch-exception? _exn90875_)
                (macro-length-mismatch-exception-arg-id _exn90875_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95772
                              (let ()
                                (declare (not safe))
                                (cons _exn90875_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp95772)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn90871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90871_))
            (let ((_e90873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90871_ 'exception))))
              (if (macro-length-mismatch-exception? _e90873_)
                  (macro-length-mismatch-exception-arguments _e90873_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95775
                                (let ()
                                  (declare (not safe))
                                  (cons _e90873_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp95775)))))
            (if (macro-length-mismatch-exception? _exn90871_)
                (macro-length-mismatch-exception-arguments _exn90871_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95774
                              (let ()
                                (declare (not safe))
                                (cons _exn90871_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp95774)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn90865_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90865_))
            (let ((_e90868_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90865_ 'exception))))
              (if (macro-length-mismatch-exception? _e90868_)
                  (macro-length-mismatch-exception-procedure _e90868_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp95777
                                (let ()
                                  (declare (not safe))
                                  (cons _e90868_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp95777)))))
            (if (macro-length-mismatch-exception? _exn90865_)
                (macro-length-mismatch-exception-procedure _exn90865_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp95776
                              (let ()
                                (declare (not safe))
                                (cons _exn90865_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp95776)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn90861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90861_))
            (let ((_e90863_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90861_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e90863_))
            (macro-mailbox-receive-timeout-exception? _exn90861_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn90857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90857_))
            (let ((_e90859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90857_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90859_)
                  (macro-mailbox-receive-timeout-exception-arguments _e90859_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95779
                                (let ()
                                  (declare (not safe))
                                  (cons _e90859_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp95779)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90857_)
                (macro-mailbox-receive-timeout-exception-arguments _exn90857_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95778
                              (let ()
                                (declare (not safe))
                                (cons _exn90857_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp95778)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn90851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90851_))
            (let ((_e90854_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90851_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e90854_)
                  (macro-mailbox-receive-timeout-exception-procedure _e90854_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp95781
                                (let ()
                                  (declare (not safe))
                                  (cons _e90854_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp95781)))))
            (if (macro-mailbox-receive-timeout-exception? _exn90851_)
                (macro-mailbox-receive-timeout-exception-procedure _exn90851_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp95780
                              (let ()
                                (declare (not safe))
                                (cons _exn90851_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp95780)))))))
    (define module-not-found-exception?
      (lambda (_exn90847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90847_))
            (let ((_e90849_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90847_ 'exception))))
              (macro-module-not-found-exception? _e90849_))
            (macro-module-not-found-exception? _exn90847_))))
    (define module-not-found-exception-arguments
      (lambda (_exn90843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90843_))
            (let ((_e90845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90843_ 'exception))))
              (if (macro-module-not-found-exception? _e90845_)
                  (macro-module-not-found-exception-arguments _e90845_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95783
                                (let ()
                                  (declare (not safe))
                                  (cons _e90845_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp95783)))))
            (if (macro-module-not-found-exception? _exn90843_)
                (macro-module-not-found-exception-arguments _exn90843_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95782
                              (let ()
                                (declare (not safe))
                                (cons _exn90843_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp95782)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn90837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90837_))
            (let ((_e90840_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90837_ 'exception))))
              (if (macro-module-not-found-exception? _e90840_)
                  (macro-module-not-found-exception-procedure _e90840_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp95785
                                (let ()
                                  (declare (not safe))
                                  (cons _e90840_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp95785)))))
            (if (macro-module-not-found-exception? _exn90837_)
                (macro-module-not-found-exception-procedure _exn90837_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp95784
                              (let ()
                                (declare (not safe))
                                (cons _exn90837_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp95784)))))))
    (define multiple-c-return-exception?
      (lambda (_exn90831_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90831_))
            (let ((_e90834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90831_ 'exception))))
              (macro-multiple-c-return-exception? _e90834_))
            (macro-multiple-c-return-exception? _exn90831_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn90827_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90827_))
            (let ((_e90829_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90827_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e90829_))
            (macro-no-such-file-or-directory-exception? _exn90827_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn90823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90823_))
            (let ((_e90825_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90823_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90825_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e90825_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95787
                                (let ()
                                  (declare (not safe))
                                  (cons _e90825_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp95787)))))
            (if (macro-no-such-file-or-directory-exception? _exn90823_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn90823_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95786
                              (let ()
                                (declare (not safe))
                                (cons _exn90823_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp95786)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn90817_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90817_))
            (let ((_e90820_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90817_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e90820_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e90820_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp95789
                                (let ()
                                  (declare (not safe))
                                  (cons _e90820_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp95789)))))
            (if (macro-no-such-file-or-directory-exception? _exn90817_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn90817_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp95788
                              (let ()
                                (declare (not safe))
                                (cons _exn90817_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp95788)))))))
    (define noncontinuable-exception?
      (lambda (_exn90813_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90813_))
            (let ((_e90815_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90813_ 'exception))))
              (macro-noncontinuable-exception? _e90815_))
            (macro-noncontinuable-exception? _exn90813_))))
    (define noncontinuable-exception-reason
      (lambda (_exn90807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90807_))
            (let ((_e90810_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90807_ 'exception))))
              (if (macro-noncontinuable-exception? _e90810_)
                  (macro-noncontinuable-exception-reason _e90810_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp95791
                                (let ()
                                  (declare (not safe))
                                  (cons _e90810_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp95791)))))
            (if (macro-noncontinuable-exception? _exn90807_)
                (macro-noncontinuable-exception-reason _exn90807_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp95790
                              (let ()
                                (declare (not safe))
                                (cons _exn90807_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp95790)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn90803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90803_))
            (let ((_e90805_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90803_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e90805_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn90803_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn90799_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90799_))
            (let ((_e90801_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90799_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90801_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e90801_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95793
                                (let ()
                                  (declare (not safe))
                                  (cons _e90801_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp95793)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90799_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn90799_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95792
                              (let ()
                                (declare (not safe))
                                (cons _exn90799_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp95792)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn90793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90793_))
            (let ((_e90796_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90793_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e90796_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e90796_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp95795
                                (let ()
                                  (declare (not safe))
                                  (cons _e90796_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp95795)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn90793_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn90793_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp95794
                              (let ()
                                (declare (not safe))
                                (cons _exn90793_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp95794)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn90789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90789_))
            (let ((_e90791_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90789_ 'exception))))
              (macro-nonprocedure-operator-exception? _e90791_))
            (macro-nonprocedure-operator-exception? _exn90789_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn90785_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90785_))
            (let ((_e90787_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90785_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90787_)
                  (macro-nonprocedure-operator-exception-arguments _e90787_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95797
                                (let ()
                                  (declare (not safe))
                                  (cons _e90787_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp95797)))))
            (if (macro-nonprocedure-operator-exception? _exn90785_)
                (macro-nonprocedure-operator-exception-arguments _exn90785_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95796
                              (let ()
                                (declare (not safe))
                                (cons _exn90785_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp95796)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn90781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90781_))
            (let ((_e90783_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90781_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90783_)
                  (macro-nonprocedure-operator-exception-code _e90783_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95799
                                (let ()
                                  (declare (not safe))
                                  (cons _e90783_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp95799)))))
            (if (macro-nonprocedure-operator-exception? _exn90781_)
                (macro-nonprocedure-operator-exception-code _exn90781_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95798
                              (let ()
                                (declare (not safe))
                                (cons _exn90781_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp95798)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn90777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90777_))
            (let ((_e90779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90777_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90779_)
                  (macro-nonprocedure-operator-exception-operator _e90779_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95801
                                (let ()
                                  (declare (not safe))
                                  (cons _e90779_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp95801)))))
            (if (macro-nonprocedure-operator-exception? _exn90777_)
                (macro-nonprocedure-operator-exception-operator _exn90777_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95800
                              (let ()
                                (declare (not safe))
                                (cons _exn90777_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp95800)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn90771_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90771_))
            (let ((_e90774_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90771_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e90774_)
                  (macro-nonprocedure-operator-exception-rte _e90774_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp95803
                                (let ()
                                  (declare (not safe))
                                  (cons _e90774_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp95803)))))
            (if (macro-nonprocedure-operator-exception? _exn90771_)
                (macro-nonprocedure-operator-exception-rte _exn90771_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp95802
                              (let ()
                                (declare (not safe))
                                (cons _exn90771_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp95802)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn90767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90767_))
            (let ((_e90769_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90767_ 'exception))))
              (macro-not-in-compilation-context-exception? _e90769_))
            (macro-not-in-compilation-context-exception? _exn90767_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn90763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90763_))
            (let ((_e90765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90763_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90765_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e90765_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95805
                                (let ()
                                  (declare (not safe))
                                  (cons _e90765_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp95805)))))
            (if (macro-not-in-compilation-context-exception? _exn90763_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn90763_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95804
                              (let ()
                                (declare (not safe))
                                (cons _exn90763_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp95804)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn90757_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90757_))
            (let ((_e90760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90757_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e90760_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e90760_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp95807
                                (let ()
                                  (declare (not safe))
                                  (cons _e90760_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp95807)))))
            (if (macro-not-in-compilation-context-exception? _exn90757_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn90757_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp95806
                              (let ()
                                (declare (not safe))
                                (cons _exn90757_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp95806)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn90753_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90753_))
            (let ((_e90755_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90753_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e90755_))
            (macro-number-of-arguments-limit-exception? _exn90753_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn90749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90749_))
            (let ((_e90751_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90749_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90751_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e90751_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95809
                                (let ()
                                  (declare (not safe))
                                  (cons _e90751_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp95809)))))
            (if (macro-number-of-arguments-limit-exception? _exn90749_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn90749_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95808
                              (let ()
                                (declare (not safe))
                                (cons _exn90749_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp95808)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn90743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90743_))
            (let ((_e90746_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90743_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e90746_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e90746_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp95811
                                (let ()
                                  (declare (not safe))
                                  (cons _e90746_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp95811)))))
            (if (macro-number-of-arguments-limit-exception? _exn90743_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn90743_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp95810
                              (let ()
                                (declare (not safe))
                                (cons _exn90743_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp95810)))))))
    (define os-exception?
      (lambda (_exn90739_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90739_))
            (let ((_e90741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90739_ 'exception))))
              (macro-os-exception? _e90741_))
            (macro-os-exception? _exn90739_))))
    (define os-exception-arguments
      (lambda (_exn90735_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90735_))
            (let ((_e90737_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90735_ 'exception))))
              (if (macro-os-exception? _e90737_)
                  (macro-os-exception-arguments _e90737_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95813
                                (let ()
                                  (declare (not safe))
                                  (cons _e90737_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp95813)))))
            (if (macro-os-exception? _exn90735_)
                (macro-os-exception-arguments _exn90735_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95812
                              (let ()
                                (declare (not safe))
                                (cons _exn90735_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp95812)))))))
    (define os-exception-code
      (lambda (_exn90731_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90731_))
            (let ((_e90733_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90731_ 'exception))))
              (if (macro-os-exception? _e90733_)
                  (macro-os-exception-code _e90733_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95815
                                (let ()
                                  (declare (not safe))
                                  (cons _e90733_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp95815)))))
            (if (macro-os-exception? _exn90731_)
                (macro-os-exception-code _exn90731_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95814
                              (let ()
                                (declare (not safe))
                                (cons _exn90731_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp95814)))))))
    (define os-exception-message
      (lambda (_exn90727_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90727_))
            (let ((_e90729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90727_ 'exception))))
              (if (macro-os-exception? _e90729_)
                  (macro-os-exception-message _e90729_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95817
                                (let ()
                                  (declare (not safe))
                                  (cons _e90729_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp95817)))))
            (if (macro-os-exception? _exn90727_)
                (macro-os-exception-message _exn90727_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95816
                              (let ()
                                (declare (not safe))
                                (cons _exn90727_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp95816)))))))
    (define os-exception-procedure
      (lambda (_exn90721_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90721_))
            (let ((_e90724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90721_ 'exception))))
              (if (macro-os-exception? _e90724_)
                  (macro-os-exception-procedure _e90724_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp95819
                                (let ()
                                  (declare (not safe))
                                  (cons _e90724_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp95819)))))
            (if (macro-os-exception? _exn90721_)
                (macro-os-exception-procedure _exn90721_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp95818
                              (let ()
                                (declare (not safe))
                                (cons _exn90721_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp95818)))))))
    (define permission-denied-exception?
      (lambda (_exn90717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90717_))
            (let ((_e90719_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90717_ 'exception))))
              (macro-permission-denied-exception? _e90719_))
            (macro-permission-denied-exception? _exn90717_))))
    (define permission-denied-exception-arguments
      (lambda (_exn90713_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90713_))
            (let ((_e90715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90713_ 'exception))))
              (if (macro-permission-denied-exception? _e90715_)
                  (macro-permission-denied-exception-arguments _e90715_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95821
                                (let ()
                                  (declare (not safe))
                                  (cons _e90715_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp95821)))))
            (if (macro-permission-denied-exception? _exn90713_)
                (macro-permission-denied-exception-arguments _exn90713_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95820
                              (let ()
                                (declare (not safe))
                                (cons _exn90713_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp95820)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn90707_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90707_))
            (let ((_e90710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90707_ 'exception))))
              (if (macro-permission-denied-exception? _e90710_)
                  (macro-permission-denied-exception-procedure _e90710_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp95823
                                (let ()
                                  (declare (not safe))
                                  (cons _e90710_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp95823)))))
            (if (macro-permission-denied-exception? _exn90707_)
                (macro-permission-denied-exception-procedure _exn90707_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp95822
                              (let ()
                                (declare (not safe))
                                (cons _exn90707_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp95822)))))))
    (define range-exception?
      (lambda (_exn90703_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90703_))
            (let ((_e90705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90703_ 'exception))))
              (macro-range-exception? _e90705_))
            (macro-range-exception? _exn90703_))))
    (define range-exception-arg-id
      (lambda (_exn90699_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90699_))
            (let ((_e90701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90699_ 'exception))))
              (if (macro-range-exception? _e90701_)
                  (macro-range-exception-arg-id _e90701_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95825
                                (let ()
                                  (declare (not safe))
                                  (cons _e90701_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp95825)))))
            (if (macro-range-exception? _exn90699_)
                (macro-range-exception-arg-id _exn90699_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95824
                              (let ()
                                (declare (not safe))
                                (cons _exn90699_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp95824)))))))
    (define range-exception-arguments
      (lambda (_exn90695_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90695_))
            (let ((_e90697_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90695_ 'exception))))
              (if (macro-range-exception? _e90697_)
                  (macro-range-exception-arguments _e90697_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95827
                                (let ()
                                  (declare (not safe))
                                  (cons _e90697_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp95827)))))
            (if (macro-range-exception? _exn90695_)
                (macro-range-exception-arguments _exn90695_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95826
                              (let ()
                                (declare (not safe))
                                (cons _exn90695_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp95826)))))))
    (define range-exception-procedure
      (lambda (_exn90689_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90689_))
            (let ((_e90692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90689_ 'exception))))
              (if (macro-range-exception? _e90692_)
                  (macro-range-exception-procedure _e90692_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp95829
                                (let ()
                                  (declare (not safe))
                                  (cons _e90692_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp95829)))))
            (if (macro-range-exception? _exn90689_)
                (macro-range-exception-procedure _exn90689_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp95828
                              (let ()
                                (declare (not safe))
                                (cons _exn90689_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp95828)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn90685_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90685_))
            (let ((_e90687_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90685_ 'exception))))
              (macro-rpc-remote-error-exception? _e90687_))
            (macro-rpc-remote-error-exception? _exn90685_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn90681_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90681_))
            (let ((_e90683_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90681_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90683_)
                  (macro-rpc-remote-error-exception-arguments _e90683_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95831
                                (let ()
                                  (declare (not safe))
                                  (cons _e90683_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp95831)))))
            (if (macro-rpc-remote-error-exception? _exn90681_)
                (macro-rpc-remote-error-exception-arguments _exn90681_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95830
                              (let ()
                                (declare (not safe))
                                (cons _exn90681_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp95830)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn90677_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90677_))
            (let ((_e90679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90677_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90679_)
                  (macro-rpc-remote-error-exception-message _e90679_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95833
                                (let ()
                                  (declare (not safe))
                                  (cons _e90679_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp95833)))))
            (if (macro-rpc-remote-error-exception? _exn90677_)
                (macro-rpc-remote-error-exception-message _exn90677_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95832
                              (let ()
                                (declare (not safe))
                                (cons _exn90677_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp95832)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn90671_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90671_))
            (let ((_e90674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90671_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e90674_)
                  (macro-rpc-remote-error-exception-procedure _e90674_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp95835
                                (let ()
                                  (declare (not safe))
                                  (cons _e90674_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp95835)))))
            (if (macro-rpc-remote-error-exception? _exn90671_)
                (macro-rpc-remote-error-exception-procedure _exn90671_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp95834
                              (let ()
                                (declare (not safe))
                                (cons _exn90671_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp95834)))))))
    (define scheduler-exception?
      (lambda (_exn90667_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90667_))
            (let ((_e90669_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90667_ 'exception))))
              (macro-scheduler-exception? _e90669_))
            (macro-scheduler-exception? _exn90667_))))
    (define scheduler-exception-reason
      (lambda (_exn90661_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90661_))
            (let ((_e90664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90661_ 'exception))))
              (if (macro-scheduler-exception? _e90664_)
                  (macro-scheduler-exception-reason _e90664_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp95837
                                (let ()
                                  (declare (not safe))
                                  (cons _e90664_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp95837)))))
            (if (macro-scheduler-exception? _exn90661_)
                (macro-scheduler-exception-reason _exn90661_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp95836
                              (let ()
                                (declare (not safe))
                                (cons _exn90661_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp95836)))))))
    (define sfun-conversion-exception?
      (lambda (_exn90657_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90657_))
            (let ((_e90659_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90657_ 'exception))))
              (macro-sfun-conversion-exception? _e90659_))
            (macro-sfun-conversion-exception? _exn90657_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn90653_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90653_))
            (let ((_e90655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90653_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90655_)
                  (macro-sfun-conversion-exception-arguments _e90655_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95839
                                (let ()
                                  (declare (not safe))
                                  (cons _e90655_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp95839)))))
            (if (macro-sfun-conversion-exception? _exn90653_)
                (macro-sfun-conversion-exception-arguments _exn90653_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95838
                              (let ()
                                (declare (not safe))
                                (cons _exn90653_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp95838)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn90649_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90649_))
            (let ((_e90651_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90649_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90651_)
                  (macro-sfun-conversion-exception-code _e90651_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95841
                                (let ()
                                  (declare (not safe))
                                  (cons _e90651_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp95841)))))
            (if (macro-sfun-conversion-exception? _exn90649_)
                (macro-sfun-conversion-exception-code _exn90649_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95840
                              (let ()
                                (declare (not safe))
                                (cons _exn90649_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp95840)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn90645_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90645_))
            (let ((_e90647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90645_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90647_)
                  (macro-sfun-conversion-exception-message _e90647_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95843
                                (let ()
                                  (declare (not safe))
                                  (cons _e90647_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp95843)))))
            (if (macro-sfun-conversion-exception? _exn90645_)
                (macro-sfun-conversion-exception-message _exn90645_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95842
                              (let ()
                                (declare (not safe))
                                (cons _exn90645_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp95842)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn90639_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90639_))
            (let ((_e90642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90639_ 'exception))))
              (if (macro-sfun-conversion-exception? _e90642_)
                  (macro-sfun-conversion-exception-procedure _e90642_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp95845
                                (let ()
                                  (declare (not safe))
                                  (cons _e90642_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp95845)))))
            (if (macro-sfun-conversion-exception? _exn90639_)
                (macro-sfun-conversion-exception-procedure _exn90639_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp95844
                              (let ()
                                (declare (not safe))
                                (cons _exn90639_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp95844)))))))
    (define stack-overflow-exception?
      (lambda (_exn90633_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90633_))
            (let ((_e90636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90633_ 'exception))))
              (macro-stack-overflow-exception? _e90636_))
            (macro-stack-overflow-exception? _exn90633_))))
    (define started-thread-exception?
      (lambda (_exn90629_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90629_))
            (let ((_e90631_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90629_ 'exception))))
              (macro-started-thread-exception? _e90631_))
            (macro-started-thread-exception? _exn90629_))))
    (define started-thread-exception-arguments
      (lambda (_exn90625_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90625_))
            (let ((_e90627_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90625_ 'exception))))
              (if (macro-started-thread-exception? _e90627_)
                  (macro-started-thread-exception-arguments _e90627_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95847
                                (let ()
                                  (declare (not safe))
                                  (cons _e90627_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp95847)))))
            (if (macro-started-thread-exception? _exn90625_)
                (macro-started-thread-exception-arguments _exn90625_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95846
                              (let ()
                                (declare (not safe))
                                (cons _exn90625_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp95846)))))))
    (define started-thread-exception-procedure
      (lambda (_exn90619_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90619_))
            (let ((_e90622_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90619_ 'exception))))
              (if (macro-started-thread-exception? _e90622_)
                  (macro-started-thread-exception-procedure _e90622_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp95849
                                (let ()
                                  (declare (not safe))
                                  (cons _e90622_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp95849)))))
            (if (macro-started-thread-exception? _exn90619_)
                (macro-started-thread-exception-procedure _exn90619_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp95848
                              (let ()
                                (declare (not safe))
                                (cons _exn90619_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp95848)))))))
    (define terminated-thread-exception?
      (lambda (_exn90615_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90615_))
            (let ((_e90617_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90615_ 'exception))))
              (macro-terminated-thread-exception? _e90617_))
            (macro-terminated-thread-exception? _exn90615_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn90611_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90611_))
            (let ((_e90613_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90611_ 'exception))))
              (if (macro-terminated-thread-exception? _e90613_)
                  (macro-terminated-thread-exception-arguments _e90613_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95851
                                (let ()
                                  (declare (not safe))
                                  (cons _e90613_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp95851)))))
            (if (macro-terminated-thread-exception? _exn90611_)
                (macro-terminated-thread-exception-arguments _exn90611_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95850
                              (let ()
                                (declare (not safe))
                                (cons _exn90611_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp95850)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn90605_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90605_))
            (let ((_e90608_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90605_ 'exception))))
              (if (macro-terminated-thread-exception? _e90608_)
                  (macro-terminated-thread-exception-procedure _e90608_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp95853
                                (let ()
                                  (declare (not safe))
                                  (cons _e90608_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp95853)))))
            (if (macro-terminated-thread-exception? _exn90605_)
                (macro-terminated-thread-exception-procedure _exn90605_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp95852
                              (let ()
                                (declare (not safe))
                                (cons _exn90605_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp95852)))))))
    (define type-exception?
      (lambda (_exn90601_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90601_))
            (let ((_e90603_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90601_ 'exception))))
              (macro-type-exception? _e90603_))
            (macro-type-exception? _exn90601_))))
    (define type-exception-arg-id
      (lambda (_exn90597_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90597_))
            (let ((_e90599_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90597_ 'exception))))
              (if (macro-type-exception? _e90599_)
                  (macro-type-exception-arg-id _e90599_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95855
                                (let ()
                                  (declare (not safe))
                                  (cons _e90599_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp95855)))))
            (if (macro-type-exception? _exn90597_)
                (macro-type-exception-arg-id _exn90597_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95854
                              (let ()
                                (declare (not safe))
                                (cons _exn90597_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp95854)))))))
    (define type-exception-arguments
      (lambda (_exn90593_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90593_))
            (let ((_e90595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90593_ 'exception))))
              (if (macro-type-exception? _e90595_)
                  (macro-type-exception-arguments _e90595_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95857
                                (let ()
                                  (declare (not safe))
                                  (cons _e90595_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp95857)))))
            (if (macro-type-exception? _exn90593_)
                (macro-type-exception-arguments _exn90593_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95856
                              (let ()
                                (declare (not safe))
                                (cons _exn90593_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp95856)))))))
    (define type-exception-procedure
      (lambda (_exn90589_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90589_))
            (let ((_e90591_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90589_ 'exception))))
              (if (macro-type-exception? _e90591_)
                  (macro-type-exception-procedure _e90591_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95859
                                (let ()
                                  (declare (not safe))
                                  (cons _e90591_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp95859)))))
            (if (macro-type-exception? _exn90589_)
                (macro-type-exception-procedure _exn90589_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95858
                              (let ()
                                (declare (not safe))
                                (cons _exn90589_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp95858)))))))
    (define type-exception-type-id
      (lambda (_exn90583_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90583_))
            (let ((_e90586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90583_ 'exception))))
              (if (macro-type-exception? _e90586_)
                  (macro-type-exception-type-id _e90586_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp95861
                                (let ()
                                  (declare (not safe))
                                  (cons _e90586_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp95861)))))
            (if (macro-type-exception? _exn90583_)
                (macro-type-exception-type-id _exn90583_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp95860
                              (let ()
                                (declare (not safe))
                                (cons _exn90583_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp95860)))))))
    (define unbound-global-exception?
      (lambda (_exn90579_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90579_))
            (let ((_e90581_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90579_ 'exception))))
              (macro-unbound-global-exception? _e90581_))
            (macro-unbound-global-exception? _exn90579_))))
    (define unbound-global-exception-code
      (lambda (_exn90575_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90575_))
            (let ((_e90577_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90575_ 'exception))))
              (if (macro-unbound-global-exception? _e90577_)
                  (macro-unbound-global-exception-code _e90577_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95863
                                (let ()
                                  (declare (not safe))
                                  (cons _e90577_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp95863)))))
            (if (macro-unbound-global-exception? _exn90575_)
                (macro-unbound-global-exception-code _exn90575_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95862
                              (let ()
                                (declare (not safe))
                                (cons _exn90575_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp95862)))))))
    (define unbound-global-exception-rte
      (lambda (_exn90571_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90571_))
            (let ((_e90573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90571_ 'exception))))
              (if (macro-unbound-global-exception? _e90573_)
                  (macro-unbound-global-exception-rte _e90573_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95865
                                (let ()
                                  (declare (not safe))
                                  (cons _e90573_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp95865)))))
            (if (macro-unbound-global-exception? _exn90571_)
                (macro-unbound-global-exception-rte _exn90571_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95864
                              (let ()
                                (declare (not safe))
                                (cons _exn90571_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp95864)))))))
    (define unbound-global-exception-variable
      (lambda (_exn90565_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90565_))
            (let ((_e90568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90565_ 'exception))))
              (if (macro-unbound-global-exception? _e90568_)
                  (macro-unbound-global-exception-variable _e90568_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp95867
                                (let ()
                                  (declare (not safe))
                                  (cons _e90568_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp95867)))))
            (if (macro-unbound-global-exception? _exn90565_)
                (macro-unbound-global-exception-variable _exn90565_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp95866
                              (let ()
                                (declare (not safe))
                                (cons _exn90565_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp95866)))))))
    (define unbound-key-exception?
      (lambda (_exn90561_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90561_))
            (let ((_e90563_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90561_ 'exception))))
              (macro-unbound-key-exception? _e90563_))
            (macro-unbound-key-exception? _exn90561_))))
    (define unbound-key-exception-arguments
      (lambda (_exn90557_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90557_))
            (let ((_e90559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90557_ 'exception))))
              (if (macro-unbound-key-exception? _e90559_)
                  (macro-unbound-key-exception-arguments _e90559_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95869
                                (let ()
                                  (declare (not safe))
                                  (cons _e90559_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp95869)))))
            (if (macro-unbound-key-exception? _exn90557_)
                (macro-unbound-key-exception-arguments _exn90557_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95868
                              (let ()
                                (declare (not safe))
                                (cons _exn90557_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp95868)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn90551_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90551_))
            (let ((_e90554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90551_ 'exception))))
              (if (macro-unbound-key-exception? _e90554_)
                  (macro-unbound-key-exception-procedure _e90554_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp95871
                                (let ()
                                  (declare (not safe))
                                  (cons _e90554_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp95871)))))
            (if (macro-unbound-key-exception? _exn90551_)
                (macro-unbound-key-exception-procedure _exn90551_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp95870
                              (let ()
                                (declare (not safe))
                                (cons _exn90551_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp95870)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn90547_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90547_))
            (let ((_e90549_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90547_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e90549_))
            (macro-unbound-os-environment-variable-exception? _exn90547_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn90543_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90543_))
            (let ((_e90545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90543_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90545_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e90545_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95873
                                (let ()
                                  (declare (not safe))
                                  (cons _e90545_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp95873)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90543_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn90543_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95872
                              (let ()
                                (declare (not safe))
                                (cons _exn90543_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp95872)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn90537_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90537_))
            (let ((_e90540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90537_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e90540_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e90540_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp95875
                                (let ()
                                  (declare (not safe))
                                  (cons _e90540_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp95875)))))
            (if (macro-unbound-os-environment-variable-exception? _exn90537_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn90537_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp95874
                              (let ()
                                (declare (not safe))
                                (cons _exn90537_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp95874)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn90533_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90533_))
            (let ((_e90535_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90533_ 'exception))))
              (macro-unbound-serial-number-exception? _e90535_))
            (macro-unbound-serial-number-exception? _exn90533_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn90529_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90529_))
            (let ((_e90531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90529_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90531_)
                  (macro-unbound-serial-number-exception-arguments _e90531_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95877
                                (let ()
                                  (declare (not safe))
                                  (cons _e90531_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp95877)))))
            (if (macro-unbound-serial-number-exception? _exn90529_)
                (macro-unbound-serial-number-exception-arguments _exn90529_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95876
                              (let ()
                                (declare (not safe))
                                (cons _exn90529_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp95876)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn90523_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90523_))
            (let ((_e90526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90523_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e90526_)
                  (macro-unbound-serial-number-exception-procedure _e90526_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp95879
                                (let ()
                                  (declare (not safe))
                                  (cons _e90526_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp95879)))))
            (if (macro-unbound-serial-number-exception? _exn90523_)
                (macro-unbound-serial-number-exception-procedure _exn90523_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp95878
                              (let ()
                                (declare (not safe))
                                (cons _exn90523_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp95878)))))))
    (define uncaught-exception?
      (lambda (_exn90519_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90519_))
            (let ((_e90521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90519_ 'exception))))
              (macro-uncaught-exception? _e90521_))
            (macro-uncaught-exception? _exn90519_))))
    (define uncaught-exception-arguments
      (lambda (_exn90515_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90515_))
            (let ((_e90517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90515_ 'exception))))
              (if (macro-uncaught-exception? _e90517_)
                  (macro-uncaught-exception-arguments _e90517_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95881
                                (let ()
                                  (declare (not safe))
                                  (cons _e90517_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp95881)))))
            (if (macro-uncaught-exception? _exn90515_)
                (macro-uncaught-exception-arguments _exn90515_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95880
                              (let ()
                                (declare (not safe))
                                (cons _exn90515_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp95880)))))))
    (define uncaught-exception-procedure
      (lambda (_exn90511_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90511_))
            (let ((_e90513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90511_ 'exception))))
              (if (macro-uncaught-exception? _e90513_)
                  (macro-uncaught-exception-procedure _e90513_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95883
                                (let ()
                                  (declare (not safe))
                                  (cons _e90513_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp95883)))))
            (if (macro-uncaught-exception? _exn90511_)
                (macro-uncaught-exception-procedure _exn90511_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95882
                              (let ()
                                (declare (not safe))
                                (cons _exn90511_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp95882)))))))
    (define uncaught-exception-reason
      (lambda (_exn90505_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90505_))
            (let ((_e90508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90505_ 'exception))))
              (if (macro-uncaught-exception? _e90508_)
                  (macro-uncaught-exception-reason _e90508_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp95885
                                (let ()
                                  (declare (not safe))
                                  (cons _e90508_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp95885)))))
            (if (macro-uncaught-exception? _exn90505_)
                (macro-uncaught-exception-reason _exn90505_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp95884
                              (let ()
                                (declare (not safe))
                                (cons _exn90505_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp95884)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn90501_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90501_))
            (let ((_e90503_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90501_ 'exception))))
              (macro-uninitialized-thread-exception? _e90503_))
            (macro-uninitialized-thread-exception? _exn90501_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn90497_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90497_))
            (let ((_e90499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90497_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90499_)
                  (macro-uninitialized-thread-exception-arguments _e90499_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95887
                                (let ()
                                  (declare (not safe))
                                  (cons _e90499_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp95887)))))
            (if (macro-uninitialized-thread-exception? _exn90497_)
                (macro-uninitialized-thread-exception-arguments _exn90497_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95886
                              (let ()
                                (declare (not safe))
                                (cons _exn90497_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp95886)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn90491_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90491_))
            (let ((_e90494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90491_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e90494_)
                  (macro-uninitialized-thread-exception-procedure _e90494_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp95889
                                (let ()
                                  (declare (not safe))
                                  (cons _e90494_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp95889)))))
            (if (macro-uninitialized-thread-exception? _exn90491_)
                (macro-uninitialized-thread-exception-procedure _exn90491_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp95888
                              (let ()
                                (declare (not safe))
                                (cons _exn90491_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp95888)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn90487_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90487_))
            (let ((_e90489_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90487_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e90489_))
            (macro-unknown-keyword-argument-exception? _exn90487_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn90483_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90483_))
            (let ((_e90485_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90483_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90485_)
                  (macro-unknown-keyword-argument-exception-arguments _e90485_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95891
                                (let ()
                                  (declare (not safe))
                                  (cons _e90485_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp95891)))))
            (if (macro-unknown-keyword-argument-exception? _exn90483_)
                (macro-unknown-keyword-argument-exception-arguments _exn90483_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95890
                              (let ()
                                (declare (not safe))
                                (cons _exn90483_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp95890)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn90477_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90477_))
            (let ((_e90480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90477_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e90480_)
                  (macro-unknown-keyword-argument-exception-procedure _e90480_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp95893
                                (let ()
                                  (declare (not safe))
                                  (cons _e90480_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp95893)))))
            (if (macro-unknown-keyword-argument-exception? _exn90477_)
                (macro-unknown-keyword-argument-exception-procedure _exn90477_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp95892
                              (let ()
                                (declare (not safe))
                                (cons _exn90477_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp95892)))))))
    (define unterminated-process-exception?
      (lambda (_exn90473_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90473_))
            (let ((_e90475_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90473_ 'exception))))
              (macro-unterminated-process-exception? _e90475_))
            (macro-unterminated-process-exception? _exn90473_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn90469_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90469_))
            (let ((_e90471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90469_ 'exception))))
              (if (macro-unterminated-process-exception? _e90471_)
                  (macro-unterminated-process-exception-arguments _e90471_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95895
                                (let ()
                                  (declare (not safe))
                                  (cons _e90471_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp95895)))))
            (if (macro-unterminated-process-exception? _exn90469_)
                (macro-unterminated-process-exception-arguments _exn90469_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95894
                              (let ()
                                (declare (not safe))
                                (cons _exn90469_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp95894)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn90463_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90463_))
            (let ((_e90466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90463_ 'exception))))
              (if (macro-unterminated-process-exception? _e90466_)
                  (macro-unterminated-process-exception-procedure _e90466_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp95897
                                (let ()
                                  (declare (not safe))
                                  (cons _e90466_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp95897)))))
            (if (macro-unterminated-process-exception? _exn90463_)
                (macro-unterminated-process-exception-procedure _exn90463_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp95896
                              (let ()
                                (declare (not safe))
                                (cons _exn90463_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp95896)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn90459_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90459_))
            (let ((_e90461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90459_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e90461_))
            (macro-wrong-number-of-arguments-exception? _exn90459_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn90455_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90455_))
            (let ((_e90457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90455_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90457_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e90457_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95899
                                (let ()
                                  (declare (not safe))
                                  (cons _e90457_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp95899)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90455_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn90455_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95898
                              (let ()
                                (declare (not safe))
                                (cons _exn90455_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp95898)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn90449_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90449_))
            (let ((_e90452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90449_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e90452_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e90452_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp95901
                                (let ()
                                  (declare (not safe))
                                  (cons _e90452_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp95901)))))
            (if (macro-wrong-number-of-arguments-exception? _exn90449_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn90449_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp95900
                              (let ()
                                (declare (not safe))
                                (cons _exn90449_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp95900)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn90445_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90445_))
            (let ((_e90447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90445_ 'exception))))
              (macro-wrong-number-of-values-exception? _e90447_))
            (macro-wrong-number-of-values-exception? _exn90445_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn90441_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90441_))
            (let ((_e90443_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90441_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90443_)
                  (macro-wrong-number-of-values-exception-code _e90443_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95903
                                (let ()
                                  (declare (not safe))
                                  (cons _e90443_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp95903)))))
            (if (macro-wrong-number-of-values-exception? _exn90441_)
                (macro-wrong-number-of-values-exception-code _exn90441_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95902
                              (let ()
                                (declare (not safe))
                                (cons _exn90441_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp95902)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn90437_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90437_))
            (let ((_e90439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90437_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90439_)
                  (macro-wrong-number-of-values-exception-rte _e90439_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95905
                                (let ()
                                  (declare (not safe))
                                  (cons _e90439_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp95905)))))
            (if (macro-wrong-number-of-values-exception? _exn90437_)
                (macro-wrong-number-of-values-exception-rte _exn90437_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95904
                              (let ()
                                (declare (not safe))
                                (cons _exn90437_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp95904)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn90431_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90431_))
            (let ((_e90434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90431_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e90434_)
                  (macro-wrong-number-of-values-exception-vals _e90434_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95907
                                (let ()
                                  (declare (not safe))
                                  (cons _e90434_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95907)))))
            (if (macro-wrong-number-of-values-exception? _exn90431_)
                (macro-wrong-number-of-values-exception-vals _exn90431_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp95906
                              (let ()
                                (declare (not safe))
                                (cons _exn90431_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp95906)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn90425_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90425_))
            (let ((_e90428_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90425_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e90428_))
            (macro-wrong-processor-c-return-exception? _exn90425_))))))
