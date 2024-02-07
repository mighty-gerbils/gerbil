(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1707346615)
  (begin
    (define Exception::t
      (let ((__tmp92745 (list)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp92745
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args88522_
        (apply make-class-instance Exception::t _$args88522_)))
    (define StackTrace::t
      (let ((__tmp92746 (list)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp92746
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args88519_
        (apply make-class-instance StackTrace::t _$args88519_)))
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
      (let ((__tmp92747 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#Error::t
         'Error
         __tmp92747
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args88516_ (apply make-class-instance Error::t _$args88516_)))
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
      (let ((__tmp92748 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type*
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp92748
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args88513_
        (apply make-class-instance RuntimeException::t _$args88513_)))
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
      (lambda (_exn88508_ _continue88509_)
        (let ((_exn88511_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn88508_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn88511_ _continue88509_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn88504_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn88504_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn88504_ 'continuation))
                '#!void
                (let ((__tmp92749
                       (lambda (_cont88506_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn88504_
                            'continuation
                            _cont88506_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp92749)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn88504_))))
    (define error
      (lambda (_message88501_ . _irritants88502_)
        (raise (let ((__obj92739 (make-object* Error::t '5)))
                 (Error:::init!
                  __obj92739
                  _message88501_
                  'irritants:
                  _irritants88502_)
                 __obj92739))))
    (define with-exception-handler
      (lambda (_handler88494_ _thunk88495_)
        (if (let () (declare (not safe)) (procedure? _handler88494_))
            '#!void
            (raise (let ((__obj92740 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj92740
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88494_ '())))
                     __obj92740)))
        (if (let () (declare (not safe)) (procedure? _thunk88495_))
            '#!void
            (raise (let ((__obj92741 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj92741
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88495_ '())))
                     __obj92741)))
        (let ((__tmp92750
               (lambda (_exn88497_)
                 (let ((_exn88499_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn88497_))))
                   (_handler88494_ _exn88499_)))))
          (declare (not safe))
          (##with-exception-handler __tmp92750 _thunk88495_))))
    (define with-catch
      (lambda (_handler88487_ _thunk88488_)
        (if (let () (declare (not safe)) (procedure? _handler88487_))
            '#!void
            (raise (let ((__obj92742 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj92742
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler88487_ '())))
                     __obj92742)))
        (if (let () (declare (not safe)) (procedure? _thunk88488_))
            '#!void
            (raise (let ((__obj92743 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj92743
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk88488_ '())))
                     __obj92743)))
        (let ((__tmp92751
               (lambda (_cont88490_)
                 (with-exception-handler
                  (lambda (_exn88492_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont88490_
                       _handler88487_
                       _exn88492_)))
                  _thunk88488_))))
          (declare (not safe))
          (##continuation-capture __tmp92751))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn88478_)
        (if (or (heap-overflow-exception? _exn88478_)
                (stack-overflow-exception? _exn88478_))
            _exn88478_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn88478_))
                _exn88478_
                (if (macro-exception? _exn88478_)
                    (let ((_rte88483_
                           (let ((__obj92744
                                  (make-object* RuntimeException::t '3)))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj92744
                                _exn88478_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj92744)))
                      (let ((__tmp92752
                             (lambda (_cont88485_)
                               (let ((__tmp92753
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont88485_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte88483_
                                  'continuation
                                  __tmp92753)))))
                        (declare (not safe))
                        (##continuation-capture __tmp92752))
                      _rte88483_)
                    _exn88478_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj88473_)
        (let ((_$e88475_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj88473_))))
          (if _$e88475_ _$e88475_ (error-exception? _obj88473_)))))
    (define error-message
      (lambda (_obj88471_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88471_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88471_ 'message))
            (if (error-exception? _obj88471_)
                (error-exception-message _obj88471_)
                '#f))))
    (define error-irritants
      (lambda (_obj88469_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88469_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88469_ 'irritants))
            (if (error-exception? _obj88469_)
                (error-exception-parameters _obj88469_)
                '#f))))
    (define error-trace
      (lambda (_obj88467_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj88467_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj88467_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e88449_ _port88450_)
        (let ((_$e88452_
               (let ()
                 (declare (not safe))
                 (method-ref _e88449_ 'display-exception))))
          (if _$e88452_
              ((lambda (_f88455_) (_f88455_ _e88449_ _port88450_)) _$e88452_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e88449_ _port88450_))))))
    (define display-exception__0
      (lambda (_e88460_)
        (let ((_port88462_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e88460_ _port88462_))))
    (define display-exception
      (lambda _g92755_
        (let ((_g92754_ (let () (declare (not safe)) (##length _g92755_))))
          (cond ((let () (declare (not safe)) (##fx= _g92754_ 1))
                 (apply (lambda (_e88460_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e88460_)))
                        _g92755_))
                ((let () (declare (not safe)) (##fx= _g92754_ 2))
                 (apply (lambda (_e88464_ _port88465_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e88464_ _port88465_)))
                        _g92755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g92755_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self88438_ _message88439_ . _rest88440_)
        (let ((_message88446_
               (if (let () (declare (not safe)) (string? _message88439_))
                   _message88439_
                   (call-with-output-string
                    '""
                    (lambda (_g8844188443_)
                      (display _message88439_ _g8844188443_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self88438_ 'message _message88446_))
          (apply class-instance-init! _self88438_ _rest88440_))))
    (define Error:::init!::specialize
      (lambda (__t92718)
        (let ((__message92719
               (let ((__tmp92720
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t92718 'message))))
                 (if __tmp92720 __tmp92720 (error '"Unknown slot" 'message)))))
          (lambda (_self88438_ _message88439_ . _rest88440_)
            (let ((_message88446_
                   (if (let () (declare (not safe)) (string? _message88439_))
                       _message88439_
                       (call-with-output-string
                        '""
                        (lambda (_g8844188443_)
                          (display _message88439_ _g8844188443_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self88438_
                 _message88446_
                 __message92719
                 __t92718
                 '#f))
              (apply class-instance-init! _self88438_ _rest88440_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self88296_ _port88297_)
        (let ((_tmp-port88299_ (open-output-string))
              (_display-error-newline88300_
               (> (output-port-column _port88297_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88299_))
          (let ((__tmp92756
                 (lambda ()
                   (if _display-error-newline88300_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e88303_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88296_ 'where))))
                     (if _$e88303_ (display _$e88303_) (display '"?")))
                   (let ((__tmp92757
                          (let ((__tmp92758
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self88296_))))
                            (declare (not safe))
                            (##type-name __tmp92758))))
                     (declare (not safe))
                     (display* '" [" __tmp92757 '"]: "))
                   (let ((__tmp92759
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88296_ 'message))))
                     (declare (not safe))
                     (displayln __tmp92759))
                   (let ((_irritants88306_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self88296_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants88306_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj88308_)
                              (write _obj88308_)
                              (write-char '#\space))
                            _irritants88306_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self88296_))
                            (dump-stack-trace?))
                       (let ((_cont8830988311_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self88296_
                                 'continuation))))
                         (if _cont8830988311_
                             (let ((_cont88314_ _cont8830988311_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont88314_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp92756
             current-output-port
             _tmp-port88299_))
          (let ((__tmp92760 (get-output-string _tmp-port88299_)))
            (declare (not safe))
            (##write-string __tmp92760 _port88297_)))))
    (define Error::display-exception::specialize
      (lambda (__t92721)
        (let ((__continuation92722
               (let ((__tmp92726
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t92721 'continuation))))
                 (if __tmp92726
                     __tmp92726
                     (error '"Unknown slot" 'continuation))))
              (__message92723
               (let ((__tmp92727
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t92721 'message))))
                 (if __tmp92727 __tmp92727 (error '"Unknown slot" 'message))))
              (__where92724
               (let ((__tmp92728
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t92721 'where))))
                 (if __tmp92728 __tmp92728 (error '"Unknown slot" 'where))))
              (__irritants92725
               (let ((__tmp92729
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t92721 'irritants))))
                 (if __tmp92729
                     __tmp92729
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_self88296_ _port88297_)
            (let ((_tmp-port88299_ (open-output-string))
                  (_display-error-newline88300_
                   (> (output-port-column _port88297_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88299_))
              (let ((__tmp92761
                     (lambda ()
                       (if _display-error-newline88300_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e88303_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88296_
                                 __where92724
                                 __t92721
                                 '#f))))
                         (if _$e88303_ (display _$e88303_) (display '"?")))
                       (let ((__tmp92762
                              (let ((__tmp92763
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self88296_))))
                                (declare (not safe))
                                (##type-name __tmp92763))))
                         (declare (not safe))
                         (display* '" [" __tmp92762 '"]: "))
                       (let ((__tmp92764
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88296_
                                 __message92723
                                 __t92721
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp92764))
                       (let ((_irritants88306_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self88296_
                                 __irritants92725
                                 __t92721
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants88306_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj88308_)
                                  (write _obj88308_)
                                  (write-char '#\space))
                                _irritants88306_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self88296_))
                                (dump-stack-trace?))
                           (let ((_cont8830988311_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self88296_
                                     __continuation92722
                                     __t92721
                                     '#f))))
                             (if _cont8830988311_
                                 (let ((_cont88314_ _cont8830988311_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont88314_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp92761
                 current-output-port
                 _tmp-port88299_))
              (let ((__tmp92765 (get-output-string _tmp-port88299_)))
                (declare (not safe))
                (##write-string __tmp92765 _port88297_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self88163_ _port88164_)
        (let ((_tmp-port88166_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port88166_))
          (let ((__tmp92766
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self88163_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp92766 _tmp-port88166_))
          (let ((_cont8816788169_
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self88163_ 'continuation))))
            (if _cont8816788169_
                (let ((_cont88172_ _cont8816788169_))
                  (display '"--- continuation backtrace:" _tmp-port88166_)
                  (newline _tmp-port88166_)
                  (display-continuation-backtrace _cont88172_ _tmp-port88166_))
                '#f))
          (let ((__tmp92767 (get-output-string _tmp-port88166_)))
            (declare (not safe))
            (##write-string __tmp92767 _port88164_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t92730)
        (let ((__exception92731
               (let ((__tmp92733
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t92730 'exception))))
                 (if __tmp92733
                     __tmp92733
                     (error '"Unknown slot" 'exception))))
              (__continuation92732
               (let ((__tmp92734
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t92730 'continuation))))
                 (if __tmp92734
                     __tmp92734
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self88163_ _port88164_)
            (let ((_tmp-port88166_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port88166_))
              (let ((__tmp92768
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self88163_
                        __exception92731
                        __t92730
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp92768 _tmp-port88166_))
              (let ((_cont8816788169_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self88163_
                        __continuation92732
                        __t92730
                        '#f))))
                (if _cont8816788169_
                    (let ((_cont88172_ _cont8816788169_))
                      (display '"--- continuation backtrace:" _tmp-port88166_)
                      (newline _tmp-port88166_)
                      (display-continuation-backtrace
                       _cont88172_
                       _tmp-port88166_))
                    '#f))
              (let ((__tmp92769 (get-output-string _tmp-port88166_)))
                (declare (not safe))
                (##write-string __tmp92769 _port88164_)))))))
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
      (lambda (_port88035_)
        (if (macro-character-port? _port88035_)
            (let ((_old-width88037_
                   (macro-character-port-output-width _port88035_)))
              (macro-character-port-output-width-set!
               _port88035_
               (lambda (_port88039_) '256))
              _old-width88037_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port88032_ _old-width88033_)
        (if (macro-character-port? _port88032_)
            (macro-character-port-output-width-set!
             _port88032_
             _old-width88033_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e88030_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e88030_))))
    (define abandoned-mutex-exception?
      (lambda (_exn88024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn88024_))
            (let ((_e88027_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn88024_ 'exception))))
              (macro-abandoned-mutex-exception? _e88027_))
            (macro-abandoned-mutex-exception? _exn88024_))))
    (define cfun-conversion-exception?
      (lambda (_exn88020_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn88020_))
            (let ((_e88022_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn88020_ 'exception))))
              (macro-cfun-conversion-exception? _e88022_))
            (macro-cfun-conversion-exception? _exn88020_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn88016_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn88016_))
            (let ((_e88018_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn88016_ 'exception))))
              (if (macro-cfun-conversion-exception? _e88018_)
                  (macro-cfun-conversion-exception-arguments _e88018_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92771
                                (let ()
                                  (declare (not safe))
                                  (cons _e88018_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp92771)))))
            (if (macro-cfun-conversion-exception? _exn88016_)
                (macro-cfun-conversion-exception-arguments _exn88016_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92770
                              (let ()
                                (declare (not safe))
                                (cons _exn88016_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp92770)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn88012_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn88012_))
            (let ((_e88014_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn88012_ 'exception))))
              (if (macro-cfun-conversion-exception? _e88014_)
                  (macro-cfun-conversion-exception-code _e88014_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92773
                                (let ()
                                  (declare (not safe))
                                  (cons _e88014_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp92773)))))
            (if (macro-cfun-conversion-exception? _exn88012_)
                (macro-cfun-conversion-exception-code _exn88012_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92772
                              (let ()
                                (declare (not safe))
                                (cons _exn88012_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp92772)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn88008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn88008_))
            (let ((_e88010_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn88008_ 'exception))))
              (if (macro-cfun-conversion-exception? _e88010_)
                  (macro-cfun-conversion-exception-message _e88010_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92775
                                (let ()
                                  (declare (not safe))
                                  (cons _e88010_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp92775)))))
            (if (macro-cfun-conversion-exception? _exn88008_)
                (macro-cfun-conversion-exception-message _exn88008_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92774
                              (let ()
                                (declare (not safe))
                                (cons _exn88008_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp92774)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn88002_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn88002_))
            (let ((_e88005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn88002_ 'exception))))
              (if (macro-cfun-conversion-exception? _e88005_)
                  (macro-cfun-conversion-exception-procedure _e88005_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp92777
                                (let ()
                                  (declare (not safe))
                                  (cons _e88005_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp92777)))))
            (if (macro-cfun-conversion-exception? _exn88002_)
                (macro-cfun-conversion-exception-procedure _exn88002_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp92776
                              (let ()
                                (declare (not safe))
                                (cons _exn88002_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp92776)))))))
    (define datum-parsing-exception?
      (lambda (_exn87998_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87998_))
            (let ((_e88000_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87998_ 'exception))))
              (macro-datum-parsing-exception? _e88000_))
            (macro-datum-parsing-exception? _exn87998_))))
    (define datum-parsing-exception-kind
      (lambda (_exn87994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87994_))
            (let ((_e87996_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87994_ 'exception))))
              (if (macro-datum-parsing-exception? _e87996_)
                  (macro-datum-parsing-exception-kind _e87996_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92779
                                (let ()
                                  (declare (not safe))
                                  (cons _e87996_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp92779)))))
            (if (macro-datum-parsing-exception? _exn87994_)
                (macro-datum-parsing-exception-kind _exn87994_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92778
                              (let ()
                                (declare (not safe))
                                (cons _exn87994_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp92778)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn87990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87990_))
            (let ((_e87992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87990_ 'exception))))
              (if (macro-datum-parsing-exception? _e87992_)
                  (macro-datum-parsing-exception-parameters _e87992_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92781
                                (let ()
                                  (declare (not safe))
                                  (cons _e87992_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp92781)))))
            (if (macro-datum-parsing-exception? _exn87990_)
                (macro-datum-parsing-exception-parameters _exn87990_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92780
                              (let ()
                                (declare (not safe))
                                (cons _exn87990_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp92780)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn87984_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87984_))
            (let ((_e87987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87984_ 'exception))))
              (if (macro-datum-parsing-exception? _e87987_)
                  (macro-datum-parsing-exception-readenv _e87987_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp92783
                                (let ()
                                  (declare (not safe))
                                  (cons _e87987_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp92783)))))
            (if (macro-datum-parsing-exception? _exn87984_)
                (macro-datum-parsing-exception-readenv _exn87984_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp92782
                              (let ()
                                (declare (not safe))
                                (cons _exn87984_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp92782)))))))
    (define deadlock-exception?
      (lambda (_exn87978_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87978_))
            (let ((_e87981_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87978_ 'exception))))
              (macro-deadlock-exception? _e87981_))
            (macro-deadlock-exception? _exn87978_))))
    (define divide-by-zero-exception?
      (lambda (_exn87974_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87974_))
            (let ((_e87976_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87974_ 'exception))))
              (macro-divide-by-zero-exception? _e87976_))
            (macro-divide-by-zero-exception? _exn87974_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn87970_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87970_))
            (let ((_e87972_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87970_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87972_)
                  (macro-divide-by-zero-exception-arguments _e87972_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92785
                                (let ()
                                  (declare (not safe))
                                  (cons _e87972_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp92785)))))
            (if (macro-divide-by-zero-exception? _exn87970_)
                (macro-divide-by-zero-exception-arguments _exn87970_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92784
                              (let ()
                                (declare (not safe))
                                (cons _exn87970_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp92784)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn87964_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87964_))
            (let ((_e87967_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87964_ 'exception))))
              (if (macro-divide-by-zero-exception? _e87967_)
                  (macro-divide-by-zero-exception-procedure _e87967_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp92787
                                (let ()
                                  (declare (not safe))
                                  (cons _e87967_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp92787)))))
            (if (macro-divide-by-zero-exception? _exn87964_)
                (macro-divide-by-zero-exception-procedure _exn87964_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp92786
                              (let ()
                                (declare (not safe))
                                (cons _exn87964_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp92786)))))))
    (define error-exception?
      (lambda (_exn87960_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87960_))
            (let ((_e87962_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87960_ 'exception))))
              (macro-error-exception? _e87962_))
            (macro-error-exception? _exn87960_))))
    (define error-exception-message
      (lambda (_exn87956_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87956_))
            (let ((_e87958_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87956_ 'exception))))
              (if (macro-error-exception? _e87958_)
                  (macro-error-exception-message _e87958_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92789
                                (let ()
                                  (declare (not safe))
                                  (cons _e87958_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp92789)))))
            (if (macro-error-exception? _exn87956_)
                (macro-error-exception-message _exn87956_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92788
                              (let ()
                                (declare (not safe))
                                (cons _exn87956_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp92788)))))))
    (define error-exception-parameters
      (lambda (_exn87950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87950_))
            (let ((_e87953_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87950_ 'exception))))
              (if (macro-error-exception? _e87953_)
                  (macro-error-exception-parameters _e87953_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp92791
                                (let ()
                                  (declare (not safe))
                                  (cons _e87953_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp92791)))))
            (if (macro-error-exception? _exn87950_)
                (macro-error-exception-parameters _exn87950_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp92790
                              (let ()
                                (declare (not safe))
                                (cons _exn87950_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp92790)))))))
    (define expression-parsing-exception?
      (lambda (_exn87946_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87946_))
            (let ((_e87948_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87946_ 'exception))))
              (macro-expression-parsing-exception? _e87948_))
            (macro-expression-parsing-exception? _exn87946_))))
    (define expression-parsing-exception-kind
      (lambda (_exn87942_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87942_))
            (let ((_e87944_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87942_ 'exception))))
              (if (macro-expression-parsing-exception? _e87944_)
                  (macro-expression-parsing-exception-kind _e87944_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92793
                                (let ()
                                  (declare (not safe))
                                  (cons _e87944_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp92793)))))
            (if (macro-expression-parsing-exception? _exn87942_)
                (macro-expression-parsing-exception-kind _exn87942_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92792
                              (let ()
                                (declare (not safe))
                                (cons _exn87942_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp92792)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn87938_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87938_))
            (let ((_e87940_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87938_ 'exception))))
              (if (macro-expression-parsing-exception? _e87940_)
                  (macro-expression-parsing-exception-parameters _e87940_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92795
                                (let ()
                                  (declare (not safe))
                                  (cons _e87940_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp92795)))))
            (if (macro-expression-parsing-exception? _exn87938_)
                (macro-expression-parsing-exception-parameters _exn87938_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92794
                              (let ()
                                (declare (not safe))
                                (cons _exn87938_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp92794)))))))
    (define expression-parsing-exception-source
      (lambda (_exn87932_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87932_))
            (let ((_e87935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87932_ 'exception))))
              (if (macro-expression-parsing-exception? _e87935_)
                  (macro-expression-parsing-exception-source _e87935_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp92797
                                (let ()
                                  (declare (not safe))
                                  (cons _e87935_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp92797)))))
            (if (macro-expression-parsing-exception? _exn87932_)
                (macro-expression-parsing-exception-source _exn87932_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp92796
                              (let ()
                                (declare (not safe))
                                (cons _exn87932_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp92796)))))))
    (define file-exists-exception?
      (lambda (_exn87928_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87928_))
            (let ((_e87930_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87928_ 'exception))))
              (macro-file-exists-exception? _e87930_))
            (macro-file-exists-exception? _exn87928_))))
    (define file-exists-exception-arguments
      (lambda (_exn87924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87924_))
            (let ((_e87926_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87924_ 'exception))))
              (if (macro-file-exists-exception? _e87926_)
                  (macro-file-exists-exception-arguments _e87926_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92799
                                (let ()
                                  (declare (not safe))
                                  (cons _e87926_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp92799)))))
            (if (macro-file-exists-exception? _exn87924_)
                (macro-file-exists-exception-arguments _exn87924_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92798
                              (let ()
                                (declare (not safe))
                                (cons _exn87924_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp92798)))))))
    (define file-exists-exception-procedure
      (lambda (_exn87918_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87918_))
            (let ((_e87921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87918_ 'exception))))
              (if (macro-file-exists-exception? _e87921_)
                  (macro-file-exists-exception-procedure _e87921_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp92801
                                (let ()
                                  (declare (not safe))
                                  (cons _e87921_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp92801)))))
            (if (macro-file-exists-exception? _exn87918_)
                (macro-file-exists-exception-procedure _exn87918_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp92800
                              (let ()
                                (declare (not safe))
                                (cons _exn87918_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp92800)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn87914_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87914_))
            (let ((_e87916_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87914_ 'exception))))
              (macro-fixnum-overflow-exception? _e87916_))
            (macro-fixnum-overflow-exception? _exn87914_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn87910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87910_))
            (let ((_e87912_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87910_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87912_)
                  (macro-fixnum-overflow-exception-arguments _e87912_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92803
                                (let ()
                                  (declare (not safe))
                                  (cons _e87912_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp92803)))))
            (if (macro-fixnum-overflow-exception? _exn87910_)
                (macro-fixnum-overflow-exception-arguments _exn87910_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92802
                              (let ()
                                (declare (not safe))
                                (cons _exn87910_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp92802)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn87904_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87904_))
            (let ((_e87907_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87904_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e87907_)
                  (macro-fixnum-overflow-exception-procedure _e87907_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp92805
                                (let ()
                                  (declare (not safe))
                                  (cons _e87907_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp92805)))))
            (if (macro-fixnum-overflow-exception? _exn87904_)
                (macro-fixnum-overflow-exception-procedure _exn87904_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp92804
                              (let ()
                                (declare (not safe))
                                (cons _exn87904_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp92804)))))))
    (define heap-overflow-exception?
      (lambda (_exn87898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87898_))
            (let ((_e87901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87898_ 'exception))))
              (macro-heap-overflow-exception? _e87901_))
            (macro-heap-overflow-exception? _exn87898_))))
    (define inactive-thread-exception?
      (lambda (_exn87894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87894_))
            (let ((_e87896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87894_ 'exception))))
              (macro-inactive-thread-exception? _e87896_))
            (macro-inactive-thread-exception? _exn87894_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn87890_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87890_))
            (let ((_e87892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87890_ 'exception))))
              (if (macro-inactive-thread-exception? _e87892_)
                  (macro-inactive-thread-exception-arguments _e87892_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92807
                                (let ()
                                  (declare (not safe))
                                  (cons _e87892_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp92807)))))
            (if (macro-inactive-thread-exception? _exn87890_)
                (macro-inactive-thread-exception-arguments _exn87890_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92806
                              (let ()
                                (declare (not safe))
                                (cons _exn87890_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp92806)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn87884_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87884_))
            (let ((_e87887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87884_ 'exception))))
              (if (macro-inactive-thread-exception? _e87887_)
                  (macro-inactive-thread-exception-procedure _e87887_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp92809
                                (let ()
                                  (declare (not safe))
                                  (cons _e87887_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp92809)))))
            (if (macro-inactive-thread-exception? _exn87884_)
                (macro-inactive-thread-exception-procedure _exn87884_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp92808
                              (let ()
                                (declare (not safe))
                                (cons _exn87884_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp92808)))))))
    (define initialized-thread-exception?
      (lambda (_exn87880_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87880_))
            (let ((_e87882_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87880_ 'exception))))
              (macro-initialized-thread-exception? _e87882_))
            (macro-initialized-thread-exception? _exn87880_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn87876_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87876_))
            (let ((_e87878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87876_ 'exception))))
              (if (macro-initialized-thread-exception? _e87878_)
                  (macro-initialized-thread-exception-arguments _e87878_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92811
                                (let ()
                                  (declare (not safe))
                                  (cons _e87878_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp92811)))))
            (if (macro-initialized-thread-exception? _exn87876_)
                (macro-initialized-thread-exception-arguments _exn87876_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92810
                              (let ()
                                (declare (not safe))
                                (cons _exn87876_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp92810)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn87870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87870_))
            (let ((_e87873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87870_ 'exception))))
              (if (macro-initialized-thread-exception? _e87873_)
                  (macro-initialized-thread-exception-procedure _e87873_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp92813
                                (let ()
                                  (declare (not safe))
                                  (cons _e87873_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp92813)))))
            (if (macro-initialized-thread-exception? _exn87870_)
                (macro-initialized-thread-exception-procedure _exn87870_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp92812
                              (let ()
                                (declare (not safe))
                                (cons _exn87870_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp92812)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn87866_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87866_))
            (let ((_e87868_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87866_ 'exception))))
              (macro-invalid-hash-number-exception? _e87868_))
            (macro-invalid-hash-number-exception? _exn87866_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn87862_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87862_))
            (let ((_e87864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87862_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87864_)
                  (macro-invalid-hash-number-exception-arguments _e87864_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92815
                                (let ()
                                  (declare (not safe))
                                  (cons _e87864_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp92815)))))
            (if (macro-invalid-hash-number-exception? _exn87862_)
                (macro-invalid-hash-number-exception-arguments _exn87862_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92814
                              (let ()
                                (declare (not safe))
                                (cons _exn87862_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp92814)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn87856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87856_))
            (let ((_e87859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87856_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e87859_)
                  (macro-invalid-hash-number-exception-procedure _e87859_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp92817
                                (let ()
                                  (declare (not safe))
                                  (cons _e87859_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp92817)))))
            (if (macro-invalid-hash-number-exception? _exn87856_)
                (macro-invalid-hash-number-exception-procedure _exn87856_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp92816
                              (let ()
                                (declare (not safe))
                                (cons _exn87856_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp92816)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn87852_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87852_))
            (let ((_e87854_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87852_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e87854_))
            (macro-invalid-utf8-encoding-exception? _exn87852_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn87848_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87848_))
            (let ((_e87850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87848_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87850_)
                  (macro-invalid-utf8-encoding-exception-arguments _e87850_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92819
                                (let ()
                                  (declare (not safe))
                                  (cons _e87850_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp92819)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87848_)
                (macro-invalid-utf8-encoding-exception-arguments _exn87848_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92818
                              (let ()
                                (declare (not safe))
                                (cons _exn87848_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp92818)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn87842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87842_))
            (let ((_e87845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87842_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e87845_)
                  (macro-invalid-utf8-encoding-exception-procedure _e87845_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp92821
                                (let ()
                                  (declare (not safe))
                                  (cons _e87845_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp92821)))))
            (if (macro-invalid-utf8-encoding-exception? _exn87842_)
                (macro-invalid-utf8-encoding-exception-procedure _exn87842_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp92820
                              (let ()
                                (declare (not safe))
                                (cons _exn87842_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp92820)))))))
    (define join-timeout-exception?
      (lambda (_exn87838_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87838_))
            (let ((_e87840_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87838_ 'exception))))
              (macro-join-timeout-exception? _e87840_))
            (macro-join-timeout-exception? _exn87838_))))
    (define join-timeout-exception-arguments
      (lambda (_exn87834_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87834_))
            (let ((_e87836_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87834_ 'exception))))
              (if (macro-join-timeout-exception? _e87836_)
                  (macro-join-timeout-exception-arguments _e87836_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92823
                                (let ()
                                  (declare (not safe))
                                  (cons _e87836_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp92823)))))
            (if (macro-join-timeout-exception? _exn87834_)
                (macro-join-timeout-exception-arguments _exn87834_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92822
                              (let ()
                                (declare (not safe))
                                (cons _exn87834_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp92822)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn87828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87828_))
            (let ((_e87831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87828_ 'exception))))
              (if (macro-join-timeout-exception? _e87831_)
                  (macro-join-timeout-exception-procedure _e87831_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp92825
                                (let ()
                                  (declare (not safe))
                                  (cons _e87831_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp92825)))))
            (if (macro-join-timeout-exception? _exn87828_)
                (macro-join-timeout-exception-procedure _exn87828_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp92824
                              (let ()
                                (declare (not safe))
                                (cons _exn87828_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp92824)))))))
    (define keyword-expected-exception?
      (lambda (_exn87824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87824_))
            (let ((_e87826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87824_ 'exception))))
              (macro-keyword-expected-exception? _e87826_))
            (macro-keyword-expected-exception? _exn87824_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn87820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87820_))
            (let ((_e87822_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87820_ 'exception))))
              (if (macro-keyword-expected-exception? _e87822_)
                  (macro-keyword-expected-exception-arguments _e87822_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92827
                                (let ()
                                  (declare (not safe))
                                  (cons _e87822_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp92827)))))
            (if (macro-keyword-expected-exception? _exn87820_)
                (macro-keyword-expected-exception-arguments _exn87820_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92826
                              (let ()
                                (declare (not safe))
                                (cons _exn87820_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp92826)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn87814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87814_))
            (let ((_e87817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87814_ 'exception))))
              (if (macro-keyword-expected-exception? _e87817_)
                  (macro-keyword-expected-exception-procedure _e87817_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp92829
                                (let ()
                                  (declare (not safe))
                                  (cons _e87817_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp92829)))))
            (if (macro-keyword-expected-exception? _exn87814_)
                (macro-keyword-expected-exception-procedure _exn87814_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp92828
                              (let ()
                                (declare (not safe))
                                (cons _exn87814_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp92828)))))))
    (define length-mismatch-exception?
      (lambda (_exn87810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87810_))
            (let ((_e87812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87810_ 'exception))))
              (macro-length-mismatch-exception? _e87812_))
            (macro-length-mismatch-exception? _exn87810_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn87806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87806_))
            (let ((_e87808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87806_ 'exception))))
              (if (macro-length-mismatch-exception? _e87808_)
                  (macro-length-mismatch-exception-arg-id _e87808_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92831
                                (let ()
                                  (declare (not safe))
                                  (cons _e87808_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp92831)))))
            (if (macro-length-mismatch-exception? _exn87806_)
                (macro-length-mismatch-exception-arg-id _exn87806_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92830
                              (let ()
                                (declare (not safe))
                                (cons _exn87806_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp92830)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn87802_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87802_))
            (let ((_e87804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87802_ 'exception))))
              (if (macro-length-mismatch-exception? _e87804_)
                  (macro-length-mismatch-exception-arguments _e87804_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92833
                                (let ()
                                  (declare (not safe))
                                  (cons _e87804_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp92833)))))
            (if (macro-length-mismatch-exception? _exn87802_)
                (macro-length-mismatch-exception-arguments _exn87802_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92832
                              (let ()
                                (declare (not safe))
                                (cons _exn87802_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp92832)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn87796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87796_))
            (let ((_e87799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87796_ 'exception))))
              (if (macro-length-mismatch-exception? _e87799_)
                  (macro-length-mismatch-exception-procedure _e87799_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp92835
                                (let ()
                                  (declare (not safe))
                                  (cons _e87799_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp92835)))))
            (if (macro-length-mismatch-exception? _exn87796_)
                (macro-length-mismatch-exception-procedure _exn87796_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp92834
                              (let ()
                                (declare (not safe))
                                (cons _exn87796_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp92834)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn87792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87792_))
            (let ((_e87794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87792_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e87794_))
            (macro-mailbox-receive-timeout-exception? _exn87792_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn87788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87788_))
            (let ((_e87790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87788_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87790_)
                  (macro-mailbox-receive-timeout-exception-arguments _e87790_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92837
                                (let ()
                                  (declare (not safe))
                                  (cons _e87790_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp92837)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87788_)
                (macro-mailbox-receive-timeout-exception-arguments _exn87788_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92836
                              (let ()
                                (declare (not safe))
                                (cons _exn87788_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp92836)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn87782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87782_))
            (let ((_e87785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87782_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e87785_)
                  (macro-mailbox-receive-timeout-exception-procedure _e87785_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp92839
                                (let ()
                                  (declare (not safe))
                                  (cons _e87785_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp92839)))))
            (if (macro-mailbox-receive-timeout-exception? _exn87782_)
                (macro-mailbox-receive-timeout-exception-procedure _exn87782_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp92838
                              (let ()
                                (declare (not safe))
                                (cons _exn87782_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp92838)))))))
    (define module-not-found-exception?
      (lambda (_exn87778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87778_))
            (let ((_e87780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87778_ 'exception))))
              (macro-module-not-found-exception? _e87780_))
            (macro-module-not-found-exception? _exn87778_))))
    (define module-not-found-exception-arguments
      (lambda (_exn87774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87774_))
            (let ((_e87776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87774_ 'exception))))
              (if (macro-module-not-found-exception? _e87776_)
                  (macro-module-not-found-exception-arguments _e87776_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92841
                                (let ()
                                  (declare (not safe))
                                  (cons _e87776_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp92841)))))
            (if (macro-module-not-found-exception? _exn87774_)
                (macro-module-not-found-exception-arguments _exn87774_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92840
                              (let ()
                                (declare (not safe))
                                (cons _exn87774_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp92840)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn87768_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87768_))
            (let ((_e87771_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87768_ 'exception))))
              (if (macro-module-not-found-exception? _e87771_)
                  (macro-module-not-found-exception-procedure _e87771_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp92843
                                (let ()
                                  (declare (not safe))
                                  (cons _e87771_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp92843)))))
            (if (macro-module-not-found-exception? _exn87768_)
                (macro-module-not-found-exception-procedure _exn87768_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp92842
                              (let ()
                                (declare (not safe))
                                (cons _exn87768_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp92842)))))))
    (define multiple-c-return-exception?
      (lambda (_exn87762_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87762_))
            (let ((_e87765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87762_ 'exception))))
              (macro-multiple-c-return-exception? _e87765_))
            (macro-multiple-c-return-exception? _exn87762_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn87758_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87758_))
            (let ((_e87760_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87758_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e87760_))
            (macro-no-such-file-or-directory-exception? _exn87758_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn87754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87754_))
            (let ((_e87756_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87754_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87756_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e87756_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92845
                                (let ()
                                  (declare (not safe))
                                  (cons _e87756_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp92845)))))
            (if (macro-no-such-file-or-directory-exception? _exn87754_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn87754_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92844
                              (let ()
                                (declare (not safe))
                                (cons _exn87754_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp92844)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn87748_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87748_))
            (let ((_e87751_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87748_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e87751_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e87751_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp92847
                                (let ()
                                  (declare (not safe))
                                  (cons _e87751_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp92847)))))
            (if (macro-no-such-file-or-directory-exception? _exn87748_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn87748_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp92846
                              (let ()
                                (declare (not safe))
                                (cons _exn87748_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp92846)))))))
    (define noncontinuable-exception?
      (lambda (_exn87744_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87744_))
            (let ((_e87746_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87744_ 'exception))))
              (macro-noncontinuable-exception? _e87746_))
            (macro-noncontinuable-exception? _exn87744_))))
    (define noncontinuable-exception-reason
      (lambda (_exn87738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87738_))
            (let ((_e87741_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87738_ 'exception))))
              (if (macro-noncontinuable-exception? _e87741_)
                  (macro-noncontinuable-exception-reason _e87741_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp92849
                                (let ()
                                  (declare (not safe))
                                  (cons _e87741_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp92849)))))
            (if (macro-noncontinuable-exception? _exn87738_)
                (macro-noncontinuable-exception-reason _exn87738_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp92848
                              (let ()
                                (declare (not safe))
                                (cons _exn87738_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp92848)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn87734_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87734_))
            (let ((_e87736_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87734_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e87736_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn87734_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn87730_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87730_))
            (let ((_e87732_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87730_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87732_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e87732_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92851
                                (let ()
                                  (declare (not safe))
                                  (cons _e87732_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp92851)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87730_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn87730_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92850
                              (let ()
                                (declare (not safe))
                                (cons _exn87730_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp92850)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn87724_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87724_))
            (let ((_e87727_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87724_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e87727_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e87727_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp92853
                                (let ()
                                  (declare (not safe))
                                  (cons _e87727_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp92853)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn87724_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn87724_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp92852
                              (let ()
                                (declare (not safe))
                                (cons _exn87724_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp92852)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn87720_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87720_))
            (let ((_e87722_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87720_ 'exception))))
              (macro-nonprocedure-operator-exception? _e87722_))
            (macro-nonprocedure-operator-exception? _exn87720_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn87716_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87716_))
            (let ((_e87718_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87716_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87718_)
                  (macro-nonprocedure-operator-exception-arguments _e87718_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92855
                                (let ()
                                  (declare (not safe))
                                  (cons _e87718_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp92855)))))
            (if (macro-nonprocedure-operator-exception? _exn87716_)
                (macro-nonprocedure-operator-exception-arguments _exn87716_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92854
                              (let ()
                                (declare (not safe))
                                (cons _exn87716_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp92854)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn87712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87712_))
            (let ((_e87714_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87712_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87714_)
                  (macro-nonprocedure-operator-exception-code _e87714_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92857
                                (let ()
                                  (declare (not safe))
                                  (cons _e87714_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp92857)))))
            (if (macro-nonprocedure-operator-exception? _exn87712_)
                (macro-nonprocedure-operator-exception-code _exn87712_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92856
                              (let ()
                                (declare (not safe))
                                (cons _exn87712_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp92856)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn87708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87708_))
            (let ((_e87710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87708_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87710_)
                  (macro-nonprocedure-operator-exception-operator _e87710_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92859
                                (let ()
                                  (declare (not safe))
                                  (cons _e87710_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp92859)))))
            (if (macro-nonprocedure-operator-exception? _exn87708_)
                (macro-nonprocedure-operator-exception-operator _exn87708_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92858
                              (let ()
                                (declare (not safe))
                                (cons _exn87708_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp92858)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn87702_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87702_))
            (let ((_e87705_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87702_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e87705_)
                  (macro-nonprocedure-operator-exception-rte _e87705_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp92861
                                (let ()
                                  (declare (not safe))
                                  (cons _e87705_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp92861)))))
            (if (macro-nonprocedure-operator-exception? _exn87702_)
                (macro-nonprocedure-operator-exception-rte _exn87702_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp92860
                              (let ()
                                (declare (not safe))
                                (cons _exn87702_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp92860)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn87698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87698_))
            (let ((_e87700_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87698_ 'exception))))
              (macro-not-in-compilation-context-exception? _e87700_))
            (macro-not-in-compilation-context-exception? _exn87698_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn87694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87694_))
            (let ((_e87696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87694_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87696_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e87696_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92863
                                (let ()
                                  (declare (not safe))
                                  (cons _e87696_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp92863)))))
            (if (macro-not-in-compilation-context-exception? _exn87694_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn87694_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92862
                              (let ()
                                (declare (not safe))
                                (cons _exn87694_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp92862)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn87688_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87688_))
            (let ((_e87691_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87688_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e87691_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e87691_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp92865
                                (let ()
                                  (declare (not safe))
                                  (cons _e87691_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp92865)))))
            (if (macro-not-in-compilation-context-exception? _exn87688_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn87688_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp92864
                              (let ()
                                (declare (not safe))
                                (cons _exn87688_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp92864)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn87684_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87684_))
            (let ((_e87686_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87684_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e87686_))
            (macro-number-of-arguments-limit-exception? _exn87684_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn87680_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87680_))
            (let ((_e87682_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87680_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87682_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e87682_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92867
                                (let ()
                                  (declare (not safe))
                                  (cons _e87682_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp92867)))))
            (if (macro-number-of-arguments-limit-exception? _exn87680_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn87680_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92866
                              (let ()
                                (declare (not safe))
                                (cons _exn87680_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp92866)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn87674_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87674_))
            (let ((_e87677_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87674_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e87677_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e87677_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp92869
                                (let ()
                                  (declare (not safe))
                                  (cons _e87677_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp92869)))))
            (if (macro-number-of-arguments-limit-exception? _exn87674_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn87674_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp92868
                              (let ()
                                (declare (not safe))
                                (cons _exn87674_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp92868)))))))
    (define os-exception?
      (lambda (_exn87670_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87670_))
            (let ((_e87672_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87670_ 'exception))))
              (macro-os-exception? _e87672_))
            (macro-os-exception? _exn87670_))))
    (define os-exception-arguments
      (lambda (_exn87666_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87666_))
            (let ((_e87668_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87666_ 'exception))))
              (if (macro-os-exception? _e87668_)
                  (macro-os-exception-arguments _e87668_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92871
                                (let ()
                                  (declare (not safe))
                                  (cons _e87668_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp92871)))))
            (if (macro-os-exception? _exn87666_)
                (macro-os-exception-arguments _exn87666_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92870
                              (let ()
                                (declare (not safe))
                                (cons _exn87666_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp92870)))))))
    (define os-exception-code
      (lambda (_exn87662_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87662_))
            (let ((_e87664_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87662_ 'exception))))
              (if (macro-os-exception? _e87664_)
                  (macro-os-exception-code _e87664_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92873
                                (let ()
                                  (declare (not safe))
                                  (cons _e87664_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp92873)))))
            (if (macro-os-exception? _exn87662_)
                (macro-os-exception-code _exn87662_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92872
                              (let ()
                                (declare (not safe))
                                (cons _exn87662_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp92872)))))))
    (define os-exception-message
      (lambda (_exn87658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87658_))
            (let ((_e87660_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87658_ 'exception))))
              (if (macro-os-exception? _e87660_)
                  (macro-os-exception-message _e87660_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92875
                                (let ()
                                  (declare (not safe))
                                  (cons _e87660_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp92875)))))
            (if (macro-os-exception? _exn87658_)
                (macro-os-exception-message _exn87658_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92874
                              (let ()
                                (declare (not safe))
                                (cons _exn87658_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp92874)))))))
    (define os-exception-procedure
      (lambda (_exn87652_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87652_))
            (let ((_e87655_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87652_ 'exception))))
              (if (macro-os-exception? _e87655_)
                  (macro-os-exception-procedure _e87655_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp92877
                                (let ()
                                  (declare (not safe))
                                  (cons _e87655_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp92877)))))
            (if (macro-os-exception? _exn87652_)
                (macro-os-exception-procedure _exn87652_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp92876
                              (let ()
                                (declare (not safe))
                                (cons _exn87652_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp92876)))))))
    (define permission-denied-exception?
      (lambda (_exn87648_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87648_))
            (let ((_e87650_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87648_ 'exception))))
              (macro-permission-denied-exception? _e87650_))
            (macro-permission-denied-exception? _exn87648_))))
    (define permission-denied-exception-arguments
      (lambda (_exn87644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87644_))
            (let ((_e87646_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87644_ 'exception))))
              (if (macro-permission-denied-exception? _e87646_)
                  (macro-permission-denied-exception-arguments _e87646_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92879
                                (let ()
                                  (declare (not safe))
                                  (cons _e87646_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp92879)))))
            (if (macro-permission-denied-exception? _exn87644_)
                (macro-permission-denied-exception-arguments _exn87644_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92878
                              (let ()
                                (declare (not safe))
                                (cons _exn87644_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp92878)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn87638_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87638_))
            (let ((_e87641_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87638_ 'exception))))
              (if (macro-permission-denied-exception? _e87641_)
                  (macro-permission-denied-exception-procedure _e87641_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp92881
                                (let ()
                                  (declare (not safe))
                                  (cons _e87641_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp92881)))))
            (if (macro-permission-denied-exception? _exn87638_)
                (macro-permission-denied-exception-procedure _exn87638_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp92880
                              (let ()
                                (declare (not safe))
                                (cons _exn87638_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp92880)))))))
    (define range-exception?
      (lambda (_exn87634_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87634_))
            (let ((_e87636_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87634_ 'exception))))
              (macro-range-exception? _e87636_))
            (macro-range-exception? _exn87634_))))
    (define range-exception-arg-id
      (lambda (_exn87630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87630_))
            (let ((_e87632_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87630_ 'exception))))
              (if (macro-range-exception? _e87632_)
                  (macro-range-exception-arg-id _e87632_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92883
                                (let ()
                                  (declare (not safe))
                                  (cons _e87632_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp92883)))))
            (if (macro-range-exception? _exn87630_)
                (macro-range-exception-arg-id _exn87630_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92882
                              (let ()
                                (declare (not safe))
                                (cons _exn87630_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp92882)))))))
    (define range-exception-arguments
      (lambda (_exn87626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87626_))
            (let ((_e87628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87626_ 'exception))))
              (if (macro-range-exception? _e87628_)
                  (macro-range-exception-arguments _e87628_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92885
                                (let ()
                                  (declare (not safe))
                                  (cons _e87628_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp92885)))))
            (if (macro-range-exception? _exn87626_)
                (macro-range-exception-arguments _exn87626_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92884
                              (let ()
                                (declare (not safe))
                                (cons _exn87626_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp92884)))))))
    (define range-exception-procedure
      (lambda (_exn87620_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87620_))
            (let ((_e87623_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87620_ 'exception))))
              (if (macro-range-exception? _e87623_)
                  (macro-range-exception-procedure _e87623_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp92887
                                (let ()
                                  (declare (not safe))
                                  (cons _e87623_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp92887)))))
            (if (macro-range-exception? _exn87620_)
                (macro-range-exception-procedure _exn87620_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp92886
                              (let ()
                                (declare (not safe))
                                (cons _exn87620_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp92886)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn87616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87616_))
            (let ((_e87618_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87616_ 'exception))))
              (macro-rpc-remote-error-exception? _e87618_))
            (macro-rpc-remote-error-exception? _exn87616_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn87612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87612_))
            (let ((_e87614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87612_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87614_)
                  (macro-rpc-remote-error-exception-arguments _e87614_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92889
                                (let ()
                                  (declare (not safe))
                                  (cons _e87614_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp92889)))))
            (if (macro-rpc-remote-error-exception? _exn87612_)
                (macro-rpc-remote-error-exception-arguments _exn87612_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92888
                              (let ()
                                (declare (not safe))
                                (cons _exn87612_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp92888)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn87608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87608_))
            (let ((_e87610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87608_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87610_)
                  (macro-rpc-remote-error-exception-message _e87610_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92891
                                (let ()
                                  (declare (not safe))
                                  (cons _e87610_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp92891)))))
            (if (macro-rpc-remote-error-exception? _exn87608_)
                (macro-rpc-remote-error-exception-message _exn87608_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92890
                              (let ()
                                (declare (not safe))
                                (cons _exn87608_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp92890)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn87602_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87602_))
            (let ((_e87605_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87602_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e87605_)
                  (macro-rpc-remote-error-exception-procedure _e87605_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp92893
                                (let ()
                                  (declare (not safe))
                                  (cons _e87605_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp92893)))))
            (if (macro-rpc-remote-error-exception? _exn87602_)
                (macro-rpc-remote-error-exception-procedure _exn87602_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp92892
                              (let ()
                                (declare (not safe))
                                (cons _exn87602_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp92892)))))))
    (define scheduler-exception?
      (lambda (_exn87598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87598_))
            (let ((_e87600_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87598_ 'exception))))
              (macro-scheduler-exception? _e87600_))
            (macro-scheduler-exception? _exn87598_))))
    (define scheduler-exception-reason
      (lambda (_exn87592_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87592_))
            (let ((_e87595_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87592_ 'exception))))
              (if (macro-scheduler-exception? _e87595_)
                  (macro-scheduler-exception-reason _e87595_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp92895
                                (let ()
                                  (declare (not safe))
                                  (cons _e87595_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp92895)))))
            (if (macro-scheduler-exception? _exn87592_)
                (macro-scheduler-exception-reason _exn87592_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp92894
                              (let ()
                                (declare (not safe))
                                (cons _exn87592_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp92894)))))))
    (define sfun-conversion-exception?
      (lambda (_exn87588_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87588_))
            (let ((_e87590_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87588_ 'exception))))
              (macro-sfun-conversion-exception? _e87590_))
            (macro-sfun-conversion-exception? _exn87588_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn87584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87584_))
            (let ((_e87586_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87584_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87586_)
                  (macro-sfun-conversion-exception-arguments _e87586_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92897
                                (let ()
                                  (declare (not safe))
                                  (cons _e87586_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp92897)))))
            (if (macro-sfun-conversion-exception? _exn87584_)
                (macro-sfun-conversion-exception-arguments _exn87584_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92896
                              (let ()
                                (declare (not safe))
                                (cons _exn87584_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp92896)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn87580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87580_))
            (let ((_e87582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87580_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87582_)
                  (macro-sfun-conversion-exception-code _e87582_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92899
                                (let ()
                                  (declare (not safe))
                                  (cons _e87582_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp92899)))))
            (if (macro-sfun-conversion-exception? _exn87580_)
                (macro-sfun-conversion-exception-code _exn87580_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92898
                              (let ()
                                (declare (not safe))
                                (cons _exn87580_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp92898)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn87576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87576_))
            (let ((_e87578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87576_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87578_)
                  (macro-sfun-conversion-exception-message _e87578_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92901
                                (let ()
                                  (declare (not safe))
                                  (cons _e87578_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp92901)))))
            (if (macro-sfun-conversion-exception? _exn87576_)
                (macro-sfun-conversion-exception-message _exn87576_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92900
                              (let ()
                                (declare (not safe))
                                (cons _exn87576_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp92900)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn87570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87570_))
            (let ((_e87573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87570_ 'exception))))
              (if (macro-sfun-conversion-exception? _e87573_)
                  (macro-sfun-conversion-exception-procedure _e87573_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp92903
                                (let ()
                                  (declare (not safe))
                                  (cons _e87573_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp92903)))))
            (if (macro-sfun-conversion-exception? _exn87570_)
                (macro-sfun-conversion-exception-procedure _exn87570_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp92902
                              (let ()
                                (declare (not safe))
                                (cons _exn87570_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp92902)))))))
    (define stack-overflow-exception?
      (lambda (_exn87564_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87564_))
            (let ((_e87567_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87564_ 'exception))))
              (macro-stack-overflow-exception? _e87567_))
            (macro-stack-overflow-exception? _exn87564_))))
    (define started-thread-exception?
      (lambda (_exn87560_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87560_))
            (let ((_e87562_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87560_ 'exception))))
              (macro-started-thread-exception? _e87562_))
            (macro-started-thread-exception? _exn87560_))))
    (define started-thread-exception-arguments
      (lambda (_exn87556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87556_))
            (let ((_e87558_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87556_ 'exception))))
              (if (macro-started-thread-exception? _e87558_)
                  (macro-started-thread-exception-arguments _e87558_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92905
                                (let ()
                                  (declare (not safe))
                                  (cons _e87558_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp92905)))))
            (if (macro-started-thread-exception? _exn87556_)
                (macro-started-thread-exception-arguments _exn87556_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92904
                              (let ()
                                (declare (not safe))
                                (cons _exn87556_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp92904)))))))
    (define started-thread-exception-procedure
      (lambda (_exn87550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87550_))
            (let ((_e87553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87550_ 'exception))))
              (if (macro-started-thread-exception? _e87553_)
                  (macro-started-thread-exception-procedure _e87553_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp92907
                                (let ()
                                  (declare (not safe))
                                  (cons _e87553_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp92907)))))
            (if (macro-started-thread-exception? _exn87550_)
                (macro-started-thread-exception-procedure _exn87550_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp92906
                              (let ()
                                (declare (not safe))
                                (cons _exn87550_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp92906)))))))
    (define terminated-thread-exception?
      (lambda (_exn87546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87546_))
            (let ((_e87548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87546_ 'exception))))
              (macro-terminated-thread-exception? _e87548_))
            (macro-terminated-thread-exception? _exn87546_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn87542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87542_))
            (let ((_e87544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87542_ 'exception))))
              (if (macro-terminated-thread-exception? _e87544_)
                  (macro-terminated-thread-exception-arguments _e87544_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92909
                                (let ()
                                  (declare (not safe))
                                  (cons _e87544_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp92909)))))
            (if (macro-terminated-thread-exception? _exn87542_)
                (macro-terminated-thread-exception-arguments _exn87542_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92908
                              (let ()
                                (declare (not safe))
                                (cons _exn87542_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp92908)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn87536_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87536_))
            (let ((_e87539_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87536_ 'exception))))
              (if (macro-terminated-thread-exception? _e87539_)
                  (macro-terminated-thread-exception-procedure _e87539_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp92911
                                (let ()
                                  (declare (not safe))
                                  (cons _e87539_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp92911)))))
            (if (macro-terminated-thread-exception? _exn87536_)
                (macro-terminated-thread-exception-procedure _exn87536_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp92910
                              (let ()
                                (declare (not safe))
                                (cons _exn87536_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp92910)))))))
    (define type-exception?
      (lambda (_exn87532_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87532_))
            (let ((_e87534_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87532_ 'exception))))
              (macro-type-exception? _e87534_))
            (macro-type-exception? _exn87532_))))
    (define type-exception-arg-id
      (lambda (_exn87528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87528_))
            (let ((_e87530_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87528_ 'exception))))
              (if (macro-type-exception? _e87530_)
                  (macro-type-exception-arg-id _e87530_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92913
                                (let ()
                                  (declare (not safe))
                                  (cons _e87530_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp92913)))))
            (if (macro-type-exception? _exn87528_)
                (macro-type-exception-arg-id _exn87528_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92912
                              (let ()
                                (declare (not safe))
                                (cons _exn87528_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp92912)))))))
    (define type-exception-arguments
      (lambda (_exn87524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87524_))
            (let ((_e87526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87524_ 'exception))))
              (if (macro-type-exception? _e87526_)
                  (macro-type-exception-arguments _e87526_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92915
                                (let ()
                                  (declare (not safe))
                                  (cons _e87526_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp92915)))))
            (if (macro-type-exception? _exn87524_)
                (macro-type-exception-arguments _exn87524_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92914
                              (let ()
                                (declare (not safe))
                                (cons _exn87524_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp92914)))))))
    (define type-exception-procedure
      (lambda (_exn87520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87520_))
            (let ((_e87522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87520_ 'exception))))
              (if (macro-type-exception? _e87522_)
                  (macro-type-exception-procedure _e87522_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92917
                                (let ()
                                  (declare (not safe))
                                  (cons _e87522_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp92917)))))
            (if (macro-type-exception? _exn87520_)
                (macro-type-exception-procedure _exn87520_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92916
                              (let ()
                                (declare (not safe))
                                (cons _exn87520_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp92916)))))))
    (define type-exception-type-id
      (lambda (_exn87514_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87514_))
            (let ((_e87517_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87514_ 'exception))))
              (if (macro-type-exception? _e87517_)
                  (macro-type-exception-type-id _e87517_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp92919
                                (let ()
                                  (declare (not safe))
                                  (cons _e87517_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp92919)))))
            (if (macro-type-exception? _exn87514_)
                (macro-type-exception-type-id _exn87514_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp92918
                              (let ()
                                (declare (not safe))
                                (cons _exn87514_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp92918)))))))
    (define unbound-global-exception?
      (lambda (_exn87510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87510_))
            (let ((_e87512_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87510_ 'exception))))
              (macro-unbound-global-exception? _e87512_))
            (macro-unbound-global-exception? _exn87510_))))
    (define unbound-global-exception-code
      (lambda (_exn87506_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87506_))
            (let ((_e87508_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87506_ 'exception))))
              (if (macro-unbound-global-exception? _e87508_)
                  (macro-unbound-global-exception-code _e87508_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92921
                                (let ()
                                  (declare (not safe))
                                  (cons _e87508_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp92921)))))
            (if (macro-unbound-global-exception? _exn87506_)
                (macro-unbound-global-exception-code _exn87506_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92920
                              (let ()
                                (declare (not safe))
                                (cons _exn87506_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp92920)))))))
    (define unbound-global-exception-rte
      (lambda (_exn87502_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87502_))
            (let ((_e87504_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87502_ 'exception))))
              (if (macro-unbound-global-exception? _e87504_)
                  (macro-unbound-global-exception-rte _e87504_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92923
                                (let ()
                                  (declare (not safe))
                                  (cons _e87504_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp92923)))))
            (if (macro-unbound-global-exception? _exn87502_)
                (macro-unbound-global-exception-rte _exn87502_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92922
                              (let ()
                                (declare (not safe))
                                (cons _exn87502_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp92922)))))))
    (define unbound-global-exception-variable
      (lambda (_exn87496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87496_))
            (let ((_e87499_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87496_ 'exception))))
              (if (macro-unbound-global-exception? _e87499_)
                  (macro-unbound-global-exception-variable _e87499_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp92925
                                (let ()
                                  (declare (not safe))
                                  (cons _e87499_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp92925)))))
            (if (macro-unbound-global-exception? _exn87496_)
                (macro-unbound-global-exception-variable _exn87496_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp92924
                              (let ()
                                (declare (not safe))
                                (cons _exn87496_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp92924)))))))
    (define unbound-key-exception?
      (lambda (_exn87492_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87492_))
            (let ((_e87494_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87492_ 'exception))))
              (macro-unbound-key-exception? _e87494_))
            (macro-unbound-key-exception? _exn87492_))))
    (define unbound-key-exception-arguments
      (lambda (_exn87488_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87488_))
            (let ((_e87490_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87488_ 'exception))))
              (if (macro-unbound-key-exception? _e87490_)
                  (macro-unbound-key-exception-arguments _e87490_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92927
                                (let ()
                                  (declare (not safe))
                                  (cons _e87490_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp92927)))))
            (if (macro-unbound-key-exception? _exn87488_)
                (macro-unbound-key-exception-arguments _exn87488_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92926
                              (let ()
                                (declare (not safe))
                                (cons _exn87488_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp92926)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn87482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87482_))
            (let ((_e87485_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87482_ 'exception))))
              (if (macro-unbound-key-exception? _e87485_)
                  (macro-unbound-key-exception-procedure _e87485_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp92929
                                (let ()
                                  (declare (not safe))
                                  (cons _e87485_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp92929)))))
            (if (macro-unbound-key-exception? _exn87482_)
                (macro-unbound-key-exception-procedure _exn87482_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp92928
                              (let ()
                                (declare (not safe))
                                (cons _exn87482_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp92928)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn87478_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87478_))
            (let ((_e87480_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87478_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e87480_))
            (macro-unbound-os-environment-variable-exception? _exn87478_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn87474_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87474_))
            (let ((_e87476_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87474_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87476_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e87476_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92931
                                (let ()
                                  (declare (not safe))
                                  (cons _e87476_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp92931)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87474_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn87474_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92930
                              (let ()
                                (declare (not safe))
                                (cons _exn87474_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp92930)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn87468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87468_))
            (let ((_e87471_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87468_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e87471_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e87471_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp92933
                                (let ()
                                  (declare (not safe))
                                  (cons _e87471_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp92933)))))
            (if (macro-unbound-os-environment-variable-exception? _exn87468_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn87468_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp92932
                              (let ()
                                (declare (not safe))
                                (cons _exn87468_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp92932)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn87464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87464_))
            (let ((_e87466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87464_ 'exception))))
              (macro-unbound-serial-number-exception? _e87466_))
            (macro-unbound-serial-number-exception? _exn87464_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn87460_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87460_))
            (let ((_e87462_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87460_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87462_)
                  (macro-unbound-serial-number-exception-arguments _e87462_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92935
                                (let ()
                                  (declare (not safe))
                                  (cons _e87462_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp92935)))))
            (if (macro-unbound-serial-number-exception? _exn87460_)
                (macro-unbound-serial-number-exception-arguments _exn87460_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92934
                              (let ()
                                (declare (not safe))
                                (cons _exn87460_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp92934)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn87454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87454_))
            (let ((_e87457_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87454_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e87457_)
                  (macro-unbound-serial-number-exception-procedure _e87457_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp92937
                                (let ()
                                  (declare (not safe))
                                  (cons _e87457_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp92937)))))
            (if (macro-unbound-serial-number-exception? _exn87454_)
                (macro-unbound-serial-number-exception-procedure _exn87454_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp92936
                              (let ()
                                (declare (not safe))
                                (cons _exn87454_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp92936)))))))
    (define uncaught-exception?
      (lambda (_exn87450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87450_))
            (let ((_e87452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87450_ 'exception))))
              (macro-uncaught-exception? _e87452_))
            (macro-uncaught-exception? _exn87450_))))
    (define uncaught-exception-arguments
      (lambda (_exn87446_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87446_))
            (let ((_e87448_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87446_ 'exception))))
              (if (macro-uncaught-exception? _e87448_)
                  (macro-uncaught-exception-arguments _e87448_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92939
                                (let ()
                                  (declare (not safe))
                                  (cons _e87448_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp92939)))))
            (if (macro-uncaught-exception? _exn87446_)
                (macro-uncaught-exception-arguments _exn87446_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92938
                              (let ()
                                (declare (not safe))
                                (cons _exn87446_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp92938)))))))
    (define uncaught-exception-procedure
      (lambda (_exn87442_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87442_))
            (let ((_e87444_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87442_ 'exception))))
              (if (macro-uncaught-exception? _e87444_)
                  (macro-uncaught-exception-procedure _e87444_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92941
                                (let ()
                                  (declare (not safe))
                                  (cons _e87444_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp92941)))))
            (if (macro-uncaught-exception? _exn87442_)
                (macro-uncaught-exception-procedure _exn87442_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92940
                              (let ()
                                (declare (not safe))
                                (cons _exn87442_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp92940)))))))
    (define uncaught-exception-reason
      (lambda (_exn87436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87436_))
            (let ((_e87439_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87436_ 'exception))))
              (if (macro-uncaught-exception? _e87439_)
                  (macro-uncaught-exception-reason _e87439_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp92943
                                (let ()
                                  (declare (not safe))
                                  (cons _e87439_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp92943)))))
            (if (macro-uncaught-exception? _exn87436_)
                (macro-uncaught-exception-reason _exn87436_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp92942
                              (let ()
                                (declare (not safe))
                                (cons _exn87436_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp92942)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn87432_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87432_))
            (let ((_e87434_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87432_ 'exception))))
              (macro-uninitialized-thread-exception? _e87434_))
            (macro-uninitialized-thread-exception? _exn87432_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn87428_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87428_))
            (let ((_e87430_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87428_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87430_)
                  (macro-uninitialized-thread-exception-arguments _e87430_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92945
                                (let ()
                                  (declare (not safe))
                                  (cons _e87430_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp92945)))))
            (if (macro-uninitialized-thread-exception? _exn87428_)
                (macro-uninitialized-thread-exception-arguments _exn87428_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92944
                              (let ()
                                (declare (not safe))
                                (cons _exn87428_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp92944)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn87422_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87422_))
            (let ((_e87425_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87422_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e87425_)
                  (macro-uninitialized-thread-exception-procedure _e87425_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp92947
                                (let ()
                                  (declare (not safe))
                                  (cons _e87425_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp92947)))))
            (if (macro-uninitialized-thread-exception? _exn87422_)
                (macro-uninitialized-thread-exception-procedure _exn87422_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp92946
                              (let ()
                                (declare (not safe))
                                (cons _exn87422_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp92946)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn87418_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87418_))
            (let ((_e87420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87418_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e87420_))
            (macro-unknown-keyword-argument-exception? _exn87418_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn87414_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87414_))
            (let ((_e87416_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87414_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87416_)
                  (macro-unknown-keyword-argument-exception-arguments _e87416_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92949
                                (let ()
                                  (declare (not safe))
                                  (cons _e87416_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp92949)))))
            (if (macro-unknown-keyword-argument-exception? _exn87414_)
                (macro-unknown-keyword-argument-exception-arguments _exn87414_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92948
                              (let ()
                                (declare (not safe))
                                (cons _exn87414_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp92948)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn87408_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87408_))
            (let ((_e87411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87408_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e87411_)
                  (macro-unknown-keyword-argument-exception-procedure _e87411_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp92951
                                (let ()
                                  (declare (not safe))
                                  (cons _e87411_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp92951)))))
            (if (macro-unknown-keyword-argument-exception? _exn87408_)
                (macro-unknown-keyword-argument-exception-procedure _exn87408_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp92950
                              (let ()
                                (declare (not safe))
                                (cons _exn87408_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp92950)))))))
    (define unterminated-process-exception?
      (lambda (_exn87404_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87404_))
            (let ((_e87406_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87404_ 'exception))))
              (macro-unterminated-process-exception? _e87406_))
            (macro-unterminated-process-exception? _exn87404_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn87400_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87400_))
            (let ((_e87402_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87400_ 'exception))))
              (if (macro-unterminated-process-exception? _e87402_)
                  (macro-unterminated-process-exception-arguments _e87402_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92953
                                (let ()
                                  (declare (not safe))
                                  (cons _e87402_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp92953)))))
            (if (macro-unterminated-process-exception? _exn87400_)
                (macro-unterminated-process-exception-arguments _exn87400_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92952
                              (let ()
                                (declare (not safe))
                                (cons _exn87400_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp92952)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn87394_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87394_))
            (let ((_e87397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87394_ 'exception))))
              (if (macro-unterminated-process-exception? _e87397_)
                  (macro-unterminated-process-exception-procedure _e87397_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp92955
                                (let ()
                                  (declare (not safe))
                                  (cons _e87397_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp92955)))))
            (if (macro-unterminated-process-exception? _exn87394_)
                (macro-unterminated-process-exception-procedure _exn87394_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp92954
                              (let ()
                                (declare (not safe))
                                (cons _exn87394_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp92954)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn87390_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87390_))
            (let ((_e87392_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87390_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e87392_))
            (macro-wrong-number-of-arguments-exception? _exn87390_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn87386_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87386_))
            (let ((_e87388_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87386_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87388_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e87388_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92957
                                (let ()
                                  (declare (not safe))
                                  (cons _e87388_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp92957)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87386_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn87386_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92956
                              (let ()
                                (declare (not safe))
                                (cons _exn87386_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp92956)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn87380_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87380_))
            (let ((_e87383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87380_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e87383_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e87383_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp92959
                                (let ()
                                  (declare (not safe))
                                  (cons _e87383_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp92959)))))
            (if (macro-wrong-number-of-arguments-exception? _exn87380_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn87380_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp92958
                              (let ()
                                (declare (not safe))
                                (cons _exn87380_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp92958)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn87376_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87376_))
            (let ((_e87378_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87376_ 'exception))))
              (macro-wrong-number-of-values-exception? _e87378_))
            (macro-wrong-number-of-values-exception? _exn87376_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn87372_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87372_))
            (let ((_e87374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87372_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87374_)
                  (macro-wrong-number-of-values-exception-code _e87374_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92961
                                (let ()
                                  (declare (not safe))
                                  (cons _e87374_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp92961)))))
            (if (macro-wrong-number-of-values-exception? _exn87372_)
                (macro-wrong-number-of-values-exception-code _exn87372_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92960
                              (let ()
                                (declare (not safe))
                                (cons _exn87372_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp92960)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn87368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87368_))
            (let ((_e87370_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87368_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87370_)
                  (macro-wrong-number-of-values-exception-rte _e87370_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92963
                                (let ()
                                  (declare (not safe))
                                  (cons _e87370_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp92963)))))
            (if (macro-wrong-number-of-values-exception? _exn87368_)
                (macro-wrong-number-of-values-exception-rte _exn87368_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92962
                              (let ()
                                (declare (not safe))
                                (cons _exn87368_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp92962)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn87362_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87362_))
            (let ((_e87365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87362_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e87365_)
                  (macro-wrong-number-of-values-exception-vals _e87365_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp92965
                                (let ()
                                  (declare (not safe))
                                  (cons _e87365_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp92965)))))
            (if (macro-wrong-number-of-values-exception? _exn87362_)
                (macro-wrong-number-of-values-exception-vals _exn87362_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp92964
                              (let ()
                                (declare (not safe))
                                (cons _exn87362_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp92964)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn87356_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn87356_))
            (let ((_e87359_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn87356_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e87359_))
            (macro-wrong-processor-c-return-exception? _exn87356_))))))
