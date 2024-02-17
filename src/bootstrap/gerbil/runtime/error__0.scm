(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1708210939)
  (begin
    (define Exception::t
      (let ((__tmp94780 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp94780
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args90684_ (apply make-instance Exception::t _$args90684_)))
    (define StackTrace::t
      (let ((__tmp94781 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp94781
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args90681_ (apply make-instance StackTrace::t _$args90681_)))
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
      (let ((__tmp94782 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp94782
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args90678_ (apply make-instance Error::t _$args90678_)))
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
      (let ((__tmp94783 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp94783
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args90675_
        (apply make-instance RuntimeException::t _$args90675_)))
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
      (lambda (_exn90670_ _continue90671_)
        (let ((_exn90673_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn90670_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn90673_ _continue90671_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn90666_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn90666_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn90666_ 'continuation))
                '#!void
                (let ((__tmp94784
                       (lambda (_cont90668_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn90666_
                            'continuation
                            _cont90668_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp94784)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn90666_))))
    (define error
      (lambda (_message90663_ . _irritants90664_)
        (raise (let ((__obj94774
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj94774
                  _message90663_
                  'irritants:
                  _irritants90664_)
                 __obj94774))))
    (define with-exception-handler
      (lambda (_handler90656_ _thunk90657_)
        (if (let () (declare (not safe)) (procedure? _handler90656_))
            '#!void
            (raise (let ((__obj94775
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94775
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90656_ '())))
                     __obj94775)))
        (if (let () (declare (not safe)) (procedure? _thunk90657_))
            '#!void
            (raise (let ((__obj94776
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94776
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90657_ '())))
                     __obj94776)))
        (let ((__tmp94785
               (lambda (_exn90659_)
                 (let ((_exn90661_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn90659_))))
                   (_handler90656_ _exn90661_)))))
          (declare (not safe))
          (##with-exception-handler __tmp94785 _thunk90657_))))
    (define with-catch
      (lambda (_handler90649_ _thunk90650_)
        (if (let () (declare (not safe)) (procedure? _handler90649_))
            '#!void
            (raise (let ((__obj94777
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94777
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler90649_ '())))
                     __obj94777)))
        (if (let () (declare (not safe)) (procedure? _thunk90650_))
            '#!void
            (raise (let ((__obj94778
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj94778
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk90650_ '())))
                     __obj94778)))
        (let ((__tmp94786
               (lambda (_cont90652_)
                 (with-exception-handler
                  (lambda (_exn90654_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont90652_
                       _handler90649_
                       _exn90654_)))
                  _thunk90650_))))
          (declare (not safe))
          (##continuation-capture __tmp94786))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn90640_)
        (if (or (heap-overflow-exception? _exn90640_)
                (stack-overflow-exception? _exn90640_))
            _exn90640_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn90640_))
                _exn90640_
                (if (macro-exception? _exn90640_)
                    (let ((_rte90645_
                           (let ((__obj94779
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj94779
                                _exn90640_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj94779)))
                      (let ((__tmp94787
                             (lambda (_cont90647_)
                               (let ((__tmp94788
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont90647_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte90645_
                                  'continuation
                                  __tmp94788)))))
                        (declare (not safe))
                        (##continuation-capture __tmp94787))
                      _rte90645_)
                    _exn90640_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj90635_)
        (let ((_$e90637_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj90635_))))
          (if _$e90637_ _$e90637_ (error-exception? _obj90635_)))))
    (define error-message
      (lambda (_obj90633_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90633_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90633_ 'message))
            (if (error-exception? _obj90633_)
                (error-exception-message _obj90633_)
                '#f))))
    (define error-irritants
      (lambda (_obj90631_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90631_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90631_ 'irritants))
            (if (error-exception? _obj90631_)
                (error-exception-parameters _obj90631_)
                '#f))))
    (define error-trace
      (lambda (_obj90629_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj90629_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj90629_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e90611_ _port90612_)
        (let ((_$e90614_
               (let ()
                 (declare (not safe))
                 (method-ref _e90611_ 'display-exception))))
          (if _$e90614_
              ((lambda (_f90617_) (_f90617_ _e90611_ _port90612_)) _$e90614_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e90611_ _port90612_))))))
    (define display-exception__0
      (lambda (_e90622_)
        (let ((_port90624_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e90622_ _port90624_))))
    (define display-exception
      (lambda _g94790_
        (let ((_g94789_ (let () (declare (not safe)) (##length _g94790_))))
          (cond ((let () (declare (not safe)) (##fx= _g94789_ 1))
                 (apply (lambda (_e90622_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e90622_)))
                        _g94790_))
                ((let () (declare (not safe)) (##fx= _g94789_ 2))
                 (apply (lambda (_e90626_ _port90627_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e90626_ _port90627_)))
                        _g94790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g94790_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self90600_ _message90601_ . _rest90602_)
        (let ((_message90608_
               (if (let () (declare (not safe)) (string? _message90601_))
                   _message90601_
                   (call-with-output-string
                    '""
                    (lambda (_g9060390605_)
                      (display _message90601_ _g9060390605_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self90600_ 'message _message90608_))
          (apply class-instance-init! _self90600_ _rest90602_))))
    (define Error:::init!::specialize
      (lambda (__t94753)
        (let ((__message94754
               (let ((__tmp94755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94753 'message))))
                 (if __tmp94755 __tmp94755 (error '"Unknown slot" 'message)))))
          (lambda (_self90600_ _message90601_ . _rest90602_)
            (let ((_message90608_
                   (if (let () (declare (not safe)) (string? _message90601_))
                       _message90601_
                       (call-with-output-string
                        '""
                        (lambda (_g9060390605_)
                          (display _message90601_ _g9060390605_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self90600_
                 _message90608_
                 __message94754
                 __t94753
                 '#f))
              (apply class-instance-init! _self90600_ _rest90602_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self90458_ _port90459_)
        (let ((_tmp-port90461_ (open-output-string))
              (_display-error-newline90462_
               (> (output-port-column _port90459_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90461_))
          (let ((__tmp94791
                 (lambda ()
                   (if _display-error-newline90462_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e90465_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90458_ 'where))))
                     (if _$e90465_ (display _$e90465_) (display '"?")))
                   (let ((__tmp94792
                          (let ((__tmp94793
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self90458_))))
                            (declare (not safe))
                            (##type-name __tmp94793))))
                     (declare (not safe))
                     (display* '" [" __tmp94792 '"]: "))
                   (let ((__tmp94794
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90458_ 'message))))
                     (declare (not safe))
                     (displayln __tmp94794))
                   (let ((_irritants90468_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self90458_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants90468_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj90470_)
                              (write _obj90470_)
                              (write-char '#\space))
                            _irritants90468_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self90458_))
                            (dump-stack-trace?))
                       (let ((_cont9047190473_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self90458_
                                 'continuation))))
                         (if _cont9047190473_
                             (let ((_cont90476_ _cont9047190473_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont90476_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp94791
             current-output-port
             _tmp-port90461_))
          (let ((__tmp94795 (get-output-string _tmp-port90461_)))
            (declare (not safe))
            (##write-string __tmp94795 _port90459_)))))
    (define Error::display-exception::specialize
      (lambda (__t94756)
        (let ((__irritants94757
               (let ((__tmp94761
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94756 'irritants))))
                 (if __tmp94761
                     __tmp94761
                     (error '"Unknown slot" 'irritants))))
              (__continuation94758
               (let ((__tmp94762
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94756 'continuation))))
                 (if __tmp94762
                     __tmp94762
                     (error '"Unknown slot" 'continuation))))
              (__message94759
               (let ((__tmp94763
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94756 'message))))
                 (if __tmp94763 __tmp94763 (error '"Unknown slot" 'message))))
              (__where94760
               (let ((__tmp94764
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94756 'where))))
                 (if __tmp94764 __tmp94764 (error '"Unknown slot" 'where)))))
          (lambda (_self90458_ _port90459_)
            (let ((_tmp-port90461_ (open-output-string))
                  (_display-error-newline90462_
                   (> (output-port-column _port90459_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90461_))
              (let ((__tmp94796
                     (lambda ()
                       (if _display-error-newline90462_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e90465_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90458_
                                 __where94760
                                 __t94756
                                 '#f))))
                         (if _$e90465_ (display _$e90465_) (display '"?")))
                       (let ((__tmp94797
                              (let ((__tmp94798
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self90458_))))
                                (declare (not safe))
                                (##type-name __tmp94798))))
                         (declare (not safe))
                         (display* '" [" __tmp94797 '"]: "))
                       (let ((__tmp94799
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90458_
                                 __message94759
                                 __t94756
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp94799))
                       (let ((_irritants90468_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self90458_
                                 __irritants94757
                                 __t94756
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants90468_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj90470_)
                                  (write _obj90470_)
                                  (write-char '#\space))
                                _irritants90468_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self90458_))
                                (dump-stack-trace?))
                           (let ((_cont9047190473_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self90458_
                                     __continuation94758
                                     __t94756
                                     '#f))))
                             (if _cont9047190473_
                                 (let ((_cont90476_ _cont9047190473_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont90476_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp94796
                 current-output-port
                 _tmp-port90461_))
              (let ((__tmp94800 (get-output-string _tmp-port90461_)))
                (declare (not safe))
                (##write-string __tmp94800 _port90459_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self90325_ _port90326_)
        (let ((_tmp-port90328_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port90328_))
          (let ((__tmp94801
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self90325_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp94801 _tmp-port90328_))
          (if (dump-stack-trace?)
              (let ((_cont9032990331_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self90325_ 'continuation))))
                (if _cont9032990331_
                    (let ((_cont90334_ _cont9032990331_))
                      (display '"--- continuation backtrace:" _tmp-port90328_)
                      (newline _tmp-port90328_)
                      (display-continuation-backtrace
                       _cont90334_
                       _tmp-port90328_))
                    '#f))
              '#!void)
          (let ((__tmp94802 (get-output-string _tmp-port90328_)))
            (declare (not safe))
            (##write-string __tmp94802 _port90326_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t94765)
        (let ((__exception94766
               (let ((__tmp94768
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94765 'exception))))
                 (if __tmp94768
                     __tmp94768
                     (error '"Unknown slot" 'exception))))
              (__continuation94767
               (let ((__tmp94769
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t94765 'continuation))))
                 (if __tmp94769
                     __tmp94769
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self90325_ _port90326_)
            (let ((_tmp-port90328_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port90328_))
              (let ((__tmp94803
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self90325_
                        __exception94766
                        __t94765
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp94803 _tmp-port90328_))
              (if (dump-stack-trace?)
                  (let ((_cont9032990331_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self90325_
                            __continuation94767
                            __t94765
                            '#f))))
                    (if _cont9032990331_
                        (let ((_cont90334_ _cont9032990331_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port90328_)
                          (newline _tmp-port90328_)
                          (display-continuation-backtrace
                           _cont90334_
                           _tmp-port90328_))
                        '#f))
                  '#!void)
              (let ((__tmp94804 (get-output-string _tmp-port90328_)))
                (declare (not safe))
                (##write-string __tmp94804 _port90326_)))))))
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
      (lambda (_port90197_)
        (if (macro-character-port? _port90197_)
            (let ((_old-width90199_
                   (macro-character-port-output-width _port90197_)))
              (macro-character-port-output-width-set!
               _port90197_
               (lambda (_port90201_) '256))
              _old-width90199_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port90194_ _old-width90195_)
        (if (macro-character-port? _port90194_)
            (macro-character-port-output-width-set!
             _port90194_
             _old-width90195_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e90192_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _e90192_))))
    (define abandoned-mutex-exception?
      (lambda (_exn90186_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90186_))
            (let ((_e90189_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90186_ 'exception))))
              (macro-abandoned-mutex-exception? _e90189_))
            (macro-abandoned-mutex-exception? _exn90186_))))
    (define cfun-conversion-exception?
      (lambda (_exn90182_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90182_))
            (let ((_e90184_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90182_ 'exception))))
              (macro-cfun-conversion-exception? _e90184_))
            (macro-cfun-conversion-exception? _exn90182_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn90178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90178_))
            (let ((_e90180_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90178_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90180_)
                  (macro-cfun-conversion-exception-arguments _e90180_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94806
                                (let ()
                                  (declare (not safe))
                                  (cons _e90180_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp94806)))))
            (if (macro-cfun-conversion-exception? _exn90178_)
                (macro-cfun-conversion-exception-arguments _exn90178_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94805
                              (let ()
                                (declare (not safe))
                                (cons _exn90178_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp94805)))))))
    (define cfun-conversion-exception-code
      (lambda (_exn90174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90174_))
            (let ((_e90176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90174_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90176_)
                  (macro-cfun-conversion-exception-code _e90176_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94808
                                (let ()
                                  (declare (not safe))
                                  (cons _e90176_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code
                                 __tmp94808)))))
            (if (macro-cfun-conversion-exception? _exn90174_)
                (macro-cfun-conversion-exception-code _exn90174_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94807
                              (let ()
                                (declare (not safe))
                                (cons _exn90174_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code
                               __tmp94807)))))))
    (define cfun-conversion-exception-message
      (lambda (_exn90170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90170_))
            (let ((_e90172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90170_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90172_)
                  (macro-cfun-conversion-exception-message _e90172_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94810
                                (let ()
                                  (declare (not safe))
                                  (cons _e90172_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp94810)))))
            (if (macro-cfun-conversion-exception? _exn90170_)
                (macro-cfun-conversion-exception-message _exn90170_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94809
                              (let ()
                                (declare (not safe))
                                (cons _exn90170_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp94809)))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn90164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90164_))
            (let ((_e90167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90164_ 'exception))))
              (if (macro-cfun-conversion-exception? _e90167_)
                  (macro-cfun-conversion-exception-procedure _e90167_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (let ((__tmp94812
                                (let ()
                                  (declare (not safe))
                                  (cons _e90167_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp94812)))))
            (if (macro-cfun-conversion-exception? _exn90164_)
                (macro-cfun-conversion-exception-procedure _exn90164_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (let ((__tmp94811
                              (let ()
                                (declare (not safe))
                                (cons _exn90164_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp94811)))))))
    (define datum-parsing-exception?
      (lambda (_exn90160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90160_))
            (let ((_e90162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90160_ 'exception))))
              (macro-datum-parsing-exception? _e90162_))
            (macro-datum-parsing-exception? _exn90160_))))
    (define datum-parsing-exception-kind
      (lambda (_exn90156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90156_))
            (let ((_e90158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90156_ 'exception))))
              (if (macro-datum-parsing-exception? _e90158_)
                  (macro-datum-parsing-exception-kind _e90158_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94814
                                (let ()
                                  (declare (not safe))
                                  (cons _e90158_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp94814)))))
            (if (macro-datum-parsing-exception? _exn90156_)
                (macro-datum-parsing-exception-kind _exn90156_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94813
                              (let ()
                                (declare (not safe))
                                (cons _exn90156_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp94813)))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn90152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90152_))
            (let ((_e90154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90152_ 'exception))))
              (if (macro-datum-parsing-exception? _e90154_)
                  (macro-datum-parsing-exception-parameters _e90154_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94816
                                (let ()
                                  (declare (not safe))
                                  (cons _e90154_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp94816)))))
            (if (macro-datum-parsing-exception? _exn90152_)
                (macro-datum-parsing-exception-parameters _exn90152_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94815
                              (let ()
                                (declare (not safe))
                                (cons _exn90152_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp94815)))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn90146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90146_))
            (let ((_e90149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90146_ 'exception))))
              (if (macro-datum-parsing-exception? _e90149_)
                  (macro-datum-parsing-exception-readenv _e90149_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (let ((__tmp94818
                                (let ()
                                  (declare (not safe))
                                  (cons _e90149_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp94818)))))
            (if (macro-datum-parsing-exception? _exn90146_)
                (macro-datum-parsing-exception-readenv _exn90146_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (let ((__tmp94817
                              (let ()
                                (declare (not safe))
                                (cons _exn90146_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv
                               __tmp94817)))))))
    (define deadlock-exception?
      (lambda (_exn90140_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90140_))
            (let ((_e90143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90140_ 'exception))))
              (macro-deadlock-exception? _e90143_))
            (macro-deadlock-exception? _exn90140_))))
    (define divide-by-zero-exception?
      (lambda (_exn90136_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90136_))
            (let ((_e90138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90136_ 'exception))))
              (macro-divide-by-zero-exception? _e90138_))
            (macro-divide-by-zero-exception? _exn90136_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn90132_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90132_))
            (let ((_e90134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90132_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90134_)
                  (macro-divide-by-zero-exception-arguments _e90134_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94820
                                (let ()
                                  (declare (not safe))
                                  (cons _e90134_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp94820)))))
            (if (macro-divide-by-zero-exception? _exn90132_)
                (macro-divide-by-zero-exception-arguments _exn90132_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94819
                              (let ()
                                (declare (not safe))
                                (cons _exn90132_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp94819)))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn90126_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90126_))
            (let ((_e90129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90126_ 'exception))))
              (if (macro-divide-by-zero-exception? _e90129_)
                  (macro-divide-by-zero-exception-procedure _e90129_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (let ((__tmp94822
                                (let ()
                                  (declare (not safe))
                                  (cons _e90129_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp94822)))))
            (if (macro-divide-by-zero-exception? _exn90126_)
                (macro-divide-by-zero-exception-procedure _exn90126_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (let ((__tmp94821
                              (let ()
                                (declare (not safe))
                                (cons _exn90126_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp94821)))))))
    (define error-exception?
      (lambda (_exn90122_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90122_))
            (let ((_e90124_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90122_ 'exception))))
              (macro-error-exception? _e90124_))
            (macro-error-exception? _exn90122_))))
    (define error-exception-message
      (lambda (_exn90118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90118_))
            (let ((_e90120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90118_ 'exception))))
              (if (macro-error-exception? _e90120_)
                  (macro-error-exception-message _e90120_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94824
                                (let ()
                                  (declare (not safe))
                                  (cons _e90120_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp94824)))))
            (if (macro-error-exception? _exn90118_)
                (macro-error-exception-message _exn90118_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94823
                              (let ()
                                (declare (not safe))
                                (cons _exn90118_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp94823)))))))
    (define error-exception-parameters
      (lambda (_exn90112_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90112_))
            (let ((_e90115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90112_ 'exception))))
              (if (macro-error-exception? _e90115_)
                  (macro-error-exception-parameters _e90115_)
                  (error '"not an instance"
                         'error-exception?
                         (let ((__tmp94826
                                (let ()
                                  (declare (not safe))
                                  (cons _e90115_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp94826)))))
            (if (macro-error-exception? _exn90112_)
                (macro-error-exception-parameters _exn90112_)
                (error '"not an instance"
                       'error-exception?
                       (let ((__tmp94825
                              (let ()
                                (declare (not safe))
                                (cons _exn90112_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp94825)))))))
    (define expression-parsing-exception?
      (lambda (_exn90108_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90108_))
            (let ((_e90110_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90108_ 'exception))))
              (macro-expression-parsing-exception? _e90110_))
            (macro-expression-parsing-exception? _exn90108_))))
    (define expression-parsing-exception-kind
      (lambda (_exn90104_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90104_))
            (let ((_e90106_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90104_ 'exception))))
              (if (macro-expression-parsing-exception? _e90106_)
                  (macro-expression-parsing-exception-kind _e90106_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94828
                                (let ()
                                  (declare (not safe))
                                  (cons _e90106_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp94828)))))
            (if (macro-expression-parsing-exception? _exn90104_)
                (macro-expression-parsing-exception-kind _exn90104_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94827
                              (let ()
                                (declare (not safe))
                                (cons _exn90104_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp94827)))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn90100_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90100_))
            (let ((_e90102_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90100_ 'exception))))
              (if (macro-expression-parsing-exception? _e90102_)
                  (macro-expression-parsing-exception-parameters _e90102_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94830
                                (let ()
                                  (declare (not safe))
                                  (cons _e90102_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp94830)))))
            (if (macro-expression-parsing-exception? _exn90100_)
                (macro-expression-parsing-exception-parameters _exn90100_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94829
                              (let ()
                                (declare (not safe))
                                (cons _exn90100_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp94829)))))))
    (define expression-parsing-exception-source
      (lambda (_exn90094_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90094_))
            (let ((_e90097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90094_ 'exception))))
              (if (macro-expression-parsing-exception? _e90097_)
                  (macro-expression-parsing-exception-source _e90097_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (let ((__tmp94832
                                (let ()
                                  (declare (not safe))
                                  (cons _e90097_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp94832)))))
            (if (macro-expression-parsing-exception? _exn90094_)
                (macro-expression-parsing-exception-source _exn90094_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (let ((__tmp94831
                              (let ()
                                (declare (not safe))
                                (cons _exn90094_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp94831)))))))
    (define file-exists-exception?
      (lambda (_exn90090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90090_))
            (let ((_e90092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90090_ 'exception))))
              (macro-file-exists-exception? _e90092_))
            (macro-file-exists-exception? _exn90090_))))
    (define file-exists-exception-arguments
      (lambda (_exn90086_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90086_))
            (let ((_e90088_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90086_ 'exception))))
              (if (macro-file-exists-exception? _e90088_)
                  (macro-file-exists-exception-arguments _e90088_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94834
                                (let ()
                                  (declare (not safe))
                                  (cons _e90088_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp94834)))))
            (if (macro-file-exists-exception? _exn90086_)
                (macro-file-exists-exception-arguments _exn90086_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94833
                              (let ()
                                (declare (not safe))
                                (cons _exn90086_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments
                               __tmp94833)))))))
    (define file-exists-exception-procedure
      (lambda (_exn90080_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90080_))
            (let ((_e90083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90080_ 'exception))))
              (if (macro-file-exists-exception? _e90083_)
                  (macro-file-exists-exception-procedure _e90083_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (let ((__tmp94836
                                (let ()
                                  (declare (not safe))
                                  (cons _e90083_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp94836)))))
            (if (macro-file-exists-exception? _exn90080_)
                (macro-file-exists-exception-procedure _exn90080_)
                (error '"not an instance"
                       'file-exists-exception?
                       (let ((__tmp94835
                              (let ()
                                (declare (not safe))
                                (cons _exn90080_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure
                               __tmp94835)))))))
    (define fixnum-overflow-exception?
      (lambda (_exn90076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90076_))
            (let ((_e90078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90076_ 'exception))))
              (macro-fixnum-overflow-exception? _e90078_))
            (macro-fixnum-overflow-exception? _exn90076_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn90072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90072_))
            (let ((_e90074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90072_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90074_)
                  (macro-fixnum-overflow-exception-arguments _e90074_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94838
                                (let ()
                                  (declare (not safe))
                                  (cons _e90074_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp94838)))))
            (if (macro-fixnum-overflow-exception? _exn90072_)
                (macro-fixnum-overflow-exception-arguments _exn90072_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94837
                              (let ()
                                (declare (not safe))
                                (cons _exn90072_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp94837)))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn90066_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90066_))
            (let ((_e90069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90066_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e90069_)
                  (macro-fixnum-overflow-exception-procedure _e90069_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (let ((__tmp94840
                                (let ()
                                  (declare (not safe))
                                  (cons _e90069_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp94840)))))
            (if (macro-fixnum-overflow-exception? _exn90066_)
                (macro-fixnum-overflow-exception-procedure _exn90066_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (let ((__tmp94839
                              (let ()
                                (declare (not safe))
                                (cons _exn90066_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp94839)))))))
    (define heap-overflow-exception?
      (lambda (_exn90060_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90060_))
            (let ((_e90063_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90060_ 'exception))))
              (macro-heap-overflow-exception? _e90063_))
            (macro-heap-overflow-exception? _exn90060_))))
    (define inactive-thread-exception?
      (lambda (_exn90056_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90056_))
            (let ((_e90058_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90056_ 'exception))))
              (macro-inactive-thread-exception? _e90058_))
            (macro-inactive-thread-exception? _exn90056_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn90052_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90052_))
            (let ((_e90054_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90052_ 'exception))))
              (if (macro-inactive-thread-exception? _e90054_)
                  (macro-inactive-thread-exception-arguments _e90054_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94842
                                (let ()
                                  (declare (not safe))
                                  (cons _e90054_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp94842)))))
            (if (macro-inactive-thread-exception? _exn90052_)
                (macro-inactive-thread-exception-arguments _exn90052_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94841
                              (let ()
                                (declare (not safe))
                                (cons _exn90052_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp94841)))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn90046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90046_))
            (let ((_e90049_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90046_ 'exception))))
              (if (macro-inactive-thread-exception? _e90049_)
                  (macro-inactive-thread-exception-procedure _e90049_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (let ((__tmp94844
                                (let ()
                                  (declare (not safe))
                                  (cons _e90049_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp94844)))))
            (if (macro-inactive-thread-exception? _exn90046_)
                (macro-inactive-thread-exception-procedure _exn90046_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (let ((__tmp94843
                              (let ()
                                (declare (not safe))
                                (cons _exn90046_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp94843)))))))
    (define initialized-thread-exception?
      (lambda (_exn90042_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90042_))
            (let ((_e90044_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90042_ 'exception))))
              (macro-initialized-thread-exception? _e90044_))
            (macro-initialized-thread-exception? _exn90042_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn90038_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90038_))
            (let ((_e90040_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90038_ 'exception))))
              (if (macro-initialized-thread-exception? _e90040_)
                  (macro-initialized-thread-exception-arguments _e90040_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94846
                                (let ()
                                  (declare (not safe))
                                  (cons _e90040_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp94846)))))
            (if (macro-initialized-thread-exception? _exn90038_)
                (macro-initialized-thread-exception-arguments _exn90038_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94845
                              (let ()
                                (declare (not safe))
                                (cons _exn90038_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp94845)))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn90032_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90032_))
            (let ((_e90035_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90032_ 'exception))))
              (if (macro-initialized-thread-exception? _e90035_)
                  (macro-initialized-thread-exception-procedure _e90035_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (let ((__tmp94848
                                (let ()
                                  (declare (not safe))
                                  (cons _e90035_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp94848)))))
            (if (macro-initialized-thread-exception? _exn90032_)
                (macro-initialized-thread-exception-procedure _exn90032_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (let ((__tmp94847
                              (let ()
                                (declare (not safe))
                                (cons _exn90032_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp94847)))))))
    (define invalid-hash-number-exception?
      (lambda (_exn90028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90028_))
            (let ((_e90030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90028_ 'exception))))
              (macro-invalid-hash-number-exception? _e90030_))
            (macro-invalid-hash-number-exception? _exn90028_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn90024_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90024_))
            (let ((_e90026_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90024_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90026_)
                  (macro-invalid-hash-number-exception-arguments _e90026_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94850
                                (let ()
                                  (declare (not safe))
                                  (cons _e90026_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp94850)))))
            (if (macro-invalid-hash-number-exception? _exn90024_)
                (macro-invalid-hash-number-exception-arguments _exn90024_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94849
                              (let ()
                                (declare (not safe))
                                (cons _exn90024_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp94849)))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn90018_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90018_))
            (let ((_e90021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90018_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e90021_)
                  (macro-invalid-hash-number-exception-procedure _e90021_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (let ((__tmp94852
                                (let ()
                                  (declare (not safe))
                                  (cons _e90021_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp94852)))))
            (if (macro-invalid-hash-number-exception? _exn90018_)
                (macro-invalid-hash-number-exception-procedure _exn90018_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (let ((__tmp94851
                              (let ()
                                (declare (not safe))
                                (cons _exn90018_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp94851)))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn90014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90014_))
            (let ((_e90016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90014_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e90016_))
            (macro-invalid-utf8-encoding-exception? _exn90014_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn90010_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90010_))
            (let ((_e90012_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90010_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90012_)
                  (macro-invalid-utf8-encoding-exception-arguments _e90012_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94854
                                (let ()
                                  (declare (not safe))
                                  (cons _e90012_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp94854)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90010_)
                (macro-invalid-utf8-encoding-exception-arguments _exn90010_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94853
                              (let ()
                                (declare (not safe))
                                (cons _exn90010_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp94853)))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn90004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90004_))
            (let ((_e90007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90004_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e90007_)
                  (macro-invalid-utf8-encoding-exception-procedure _e90007_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (let ((__tmp94856
                                (let ()
                                  (declare (not safe))
                                  (cons _e90007_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp94856)))))
            (if (macro-invalid-utf8-encoding-exception? _exn90004_)
                (macro-invalid-utf8-encoding-exception-procedure _exn90004_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (let ((__tmp94855
                              (let ()
                                (declare (not safe))
                                (cons _exn90004_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp94855)))))))
    (define join-timeout-exception?
      (lambda (_exn90000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn90000_))
            (let ((_e90002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn90000_ 'exception))))
              (macro-join-timeout-exception? _e90002_))
            (macro-join-timeout-exception? _exn90000_))))
    (define join-timeout-exception-arguments
      (lambda (_exn89996_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89996_))
            (let ((_e89998_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89996_ 'exception))))
              (if (macro-join-timeout-exception? _e89998_)
                  (macro-join-timeout-exception-arguments _e89998_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94858
                                (let ()
                                  (declare (not safe))
                                  (cons _e89998_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp94858)))))
            (if (macro-join-timeout-exception? _exn89996_)
                (macro-join-timeout-exception-arguments _exn89996_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94857
                              (let ()
                                (declare (not safe))
                                (cons _exn89996_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments
                               __tmp94857)))))))
    (define join-timeout-exception-procedure
      (lambda (_exn89990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89990_))
            (let ((_e89993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89990_ 'exception))))
              (if (macro-join-timeout-exception? _e89993_)
                  (macro-join-timeout-exception-procedure _e89993_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (let ((__tmp94860
                                (let ()
                                  (declare (not safe))
                                  (cons _e89993_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp94860)))))
            (if (macro-join-timeout-exception? _exn89990_)
                (macro-join-timeout-exception-procedure _exn89990_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (let ((__tmp94859
                              (let ()
                                (declare (not safe))
                                (cons _exn89990_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure
                               __tmp94859)))))))
    (define keyword-expected-exception?
      (lambda (_exn89986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89986_))
            (let ((_e89988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89986_ 'exception))))
              (macro-keyword-expected-exception? _e89988_))
            (macro-keyword-expected-exception? _exn89986_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn89982_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89982_))
            (let ((_e89984_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89982_ 'exception))))
              (if (macro-keyword-expected-exception? _e89984_)
                  (macro-keyword-expected-exception-arguments _e89984_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94862
                                (let ()
                                  (declare (not safe))
                                  (cons _e89984_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp94862)))))
            (if (macro-keyword-expected-exception? _exn89982_)
                (macro-keyword-expected-exception-arguments _exn89982_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94861
                              (let ()
                                (declare (not safe))
                                (cons _exn89982_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp94861)))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn89976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89976_))
            (let ((_e89979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89976_ 'exception))))
              (if (macro-keyword-expected-exception? _e89979_)
                  (macro-keyword-expected-exception-procedure _e89979_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (let ((__tmp94864
                                (let ()
                                  (declare (not safe))
                                  (cons _e89979_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp94864)))))
            (if (macro-keyword-expected-exception? _exn89976_)
                (macro-keyword-expected-exception-procedure _exn89976_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (let ((__tmp94863
                              (let ()
                                (declare (not safe))
                                (cons _exn89976_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp94863)))))))
    (define length-mismatch-exception?
      (lambda (_exn89972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89972_))
            (let ((_e89974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89972_ 'exception))))
              (macro-length-mismatch-exception? _e89974_))
            (macro-length-mismatch-exception? _exn89972_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn89968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89968_))
            (let ((_e89970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89968_ 'exception))))
              (if (macro-length-mismatch-exception? _e89970_)
                  (macro-length-mismatch-exception-arg-id _e89970_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94866
                                (let ()
                                  (declare (not safe))
                                  (cons _e89970_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp94866)))))
            (if (macro-length-mismatch-exception? _exn89968_)
                (macro-length-mismatch-exception-arg-id _exn89968_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94865
                              (let ()
                                (declare (not safe))
                                (cons _exn89968_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id
                               __tmp94865)))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn89964_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89964_))
            (let ((_e89966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89964_ 'exception))))
              (if (macro-length-mismatch-exception? _e89966_)
                  (macro-length-mismatch-exception-arguments _e89966_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94868
                                (let ()
                                  (declare (not safe))
                                  (cons _e89966_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp94868)))))
            (if (macro-length-mismatch-exception? _exn89964_)
                (macro-length-mismatch-exception-arguments _exn89964_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94867
                              (let ()
                                (declare (not safe))
                                (cons _exn89964_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp94867)))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn89958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89958_))
            (let ((_e89961_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89958_ 'exception))))
              (if (macro-length-mismatch-exception? _e89961_)
                  (macro-length-mismatch-exception-procedure _e89961_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (let ((__tmp94870
                                (let ()
                                  (declare (not safe))
                                  (cons _e89961_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp94870)))))
            (if (macro-length-mismatch-exception? _exn89958_)
                (macro-length-mismatch-exception-procedure _exn89958_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (let ((__tmp94869
                              (let ()
                                (declare (not safe))
                                (cons _exn89958_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp94869)))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn89954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89954_))
            (let ((_e89956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89954_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e89956_))
            (macro-mailbox-receive-timeout-exception? _exn89954_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn89950_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89950_))
            (let ((_e89952_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89950_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89952_)
                  (macro-mailbox-receive-timeout-exception-arguments _e89952_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94872
                                (let ()
                                  (declare (not safe))
                                  (cons _e89952_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp94872)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89950_)
                (macro-mailbox-receive-timeout-exception-arguments _exn89950_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94871
                              (let ()
                                (declare (not safe))
                                (cons _exn89950_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp94871)))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn89944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89944_))
            (let ((_e89947_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89944_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e89947_)
                  (macro-mailbox-receive-timeout-exception-procedure _e89947_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (let ((__tmp94874
                                (let ()
                                  (declare (not safe))
                                  (cons _e89947_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp94874)))))
            (if (macro-mailbox-receive-timeout-exception? _exn89944_)
                (macro-mailbox-receive-timeout-exception-procedure _exn89944_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (let ((__tmp94873
                              (let ()
                                (declare (not safe))
                                (cons _exn89944_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp94873)))))))
    (define module-not-found-exception?
      (lambda (_exn89940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89940_))
            (let ((_e89942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89940_ 'exception))))
              (macro-module-not-found-exception? _e89942_))
            (macro-module-not-found-exception? _exn89940_))))
    (define module-not-found-exception-arguments
      (lambda (_exn89936_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89936_))
            (let ((_e89938_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89936_ 'exception))))
              (if (macro-module-not-found-exception? _e89938_)
                  (macro-module-not-found-exception-arguments _e89938_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94876
                                (let ()
                                  (declare (not safe))
                                  (cons _e89938_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp94876)))))
            (if (macro-module-not-found-exception? _exn89936_)
                (macro-module-not-found-exception-arguments _exn89936_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94875
                              (let ()
                                (declare (not safe))
                                (cons _exn89936_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp94875)))))))
    (define module-not-found-exception-procedure
      (lambda (_exn89930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89930_))
            (let ((_e89933_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89930_ 'exception))))
              (if (macro-module-not-found-exception? _e89933_)
                  (macro-module-not-found-exception-procedure _e89933_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (let ((__tmp94878
                                (let ()
                                  (declare (not safe))
                                  (cons _e89933_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp94878)))))
            (if (macro-module-not-found-exception? _exn89930_)
                (macro-module-not-found-exception-procedure _exn89930_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (let ((__tmp94877
                              (let ()
                                (declare (not safe))
                                (cons _exn89930_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp94877)))))))
    (define multiple-c-return-exception?
      (lambda (_exn89924_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89924_))
            (let ((_e89927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89924_ 'exception))))
              (macro-multiple-c-return-exception? _e89927_))
            (macro-multiple-c-return-exception? _exn89924_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn89920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89920_))
            (let ((_e89922_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89920_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e89922_))
            (macro-no-such-file-or-directory-exception? _exn89920_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn89916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89916_))
            (let ((_e89918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89916_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89918_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e89918_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94880
                                (let ()
                                  (declare (not safe))
                                  (cons _e89918_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp94880)))))
            (if (macro-no-such-file-or-directory-exception? _exn89916_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn89916_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94879
                              (let ()
                                (declare (not safe))
                                (cons _exn89916_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp94879)))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn89910_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89910_))
            (let ((_e89913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89910_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e89913_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e89913_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (let ((__tmp94882
                                (let ()
                                  (declare (not safe))
                                  (cons _e89913_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp94882)))))
            (if (macro-no-such-file-or-directory-exception? _exn89910_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn89910_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (let ((__tmp94881
                              (let ()
                                (declare (not safe))
                                (cons _exn89910_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp94881)))))))
    (define noncontinuable-exception?
      (lambda (_exn89906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89906_))
            (let ((_e89908_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89906_ 'exception))))
              (macro-noncontinuable-exception? _e89908_))
            (macro-noncontinuable-exception? _exn89906_))))
    (define noncontinuable-exception-reason
      (lambda (_exn89900_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89900_))
            (let ((_e89903_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89900_ 'exception))))
              (if (macro-noncontinuable-exception? _e89903_)
                  (macro-noncontinuable-exception-reason _e89903_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (let ((__tmp94884
                                (let ()
                                  (declare (not safe))
                                  (cons _e89903_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp94884)))))
            (if (macro-noncontinuable-exception? _exn89900_)
                (macro-noncontinuable-exception-reason _exn89900_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (let ((__tmp94883
                              (let ()
                                (declare (not safe))
                                (cons _exn89900_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason
                               __tmp94883)))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn89896_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89896_))
            (let ((_e89898_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89896_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e89898_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn89896_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn89892_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89892_))
            (let ((_e89894_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89892_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89894_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e89894_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94886
                                (let ()
                                  (declare (not safe))
                                  (cons _e89894_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp94886)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89892_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn89892_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94885
                              (let ()
                                (declare (not safe))
                                (cons _exn89892_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp94885)))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn89886_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89886_))
            (let ((_e89889_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89886_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e89889_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e89889_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (let ((__tmp94888
                                (let ()
                                  (declare (not safe))
                                  (cons _e89889_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp94888)))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn89886_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn89886_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (let ((__tmp94887
                              (let ()
                                (declare (not safe))
                                (cons _exn89886_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp94887)))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn89882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89882_))
            (let ((_e89884_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89882_ 'exception))))
              (macro-nonprocedure-operator-exception? _e89884_))
            (macro-nonprocedure-operator-exception? _exn89882_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn89878_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89878_))
            (let ((_e89880_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89878_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89880_)
                  (macro-nonprocedure-operator-exception-arguments _e89880_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94890
                                (let ()
                                  (declare (not safe))
                                  (cons _e89880_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp94890)))))
            (if (macro-nonprocedure-operator-exception? _exn89878_)
                (macro-nonprocedure-operator-exception-arguments _exn89878_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94889
                              (let ()
                                (declare (not safe))
                                (cons _exn89878_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp94889)))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn89874_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89874_))
            (let ((_e89876_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89874_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89876_)
                  (macro-nonprocedure-operator-exception-code _e89876_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94892
                                (let ()
                                  (declare (not safe))
                                  (cons _e89876_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp94892)))))
            (if (macro-nonprocedure-operator-exception? _exn89874_)
                (macro-nonprocedure-operator-exception-code _exn89874_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94891
                              (let ()
                                (declare (not safe))
                                (cons _exn89874_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp94891)))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn89870_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89870_))
            (let ((_e89872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89870_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89872_)
                  (macro-nonprocedure-operator-exception-operator _e89872_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94894
                                (let ()
                                  (declare (not safe))
                                  (cons _e89872_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp94894)))))
            (if (macro-nonprocedure-operator-exception? _exn89870_)
                (macro-nonprocedure-operator-exception-operator _exn89870_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94893
                              (let ()
                                (declare (not safe))
                                (cons _exn89870_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp94893)))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn89864_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89864_))
            (let ((_e89867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89864_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e89867_)
                  (macro-nonprocedure-operator-exception-rte _e89867_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (let ((__tmp94896
                                (let ()
                                  (declare (not safe))
                                  (cons _e89867_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp94896)))))
            (if (macro-nonprocedure-operator-exception? _exn89864_)
                (macro-nonprocedure-operator-exception-rte _exn89864_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (let ((__tmp94895
                              (let ()
                                (declare (not safe))
                                (cons _exn89864_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp94895)))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn89860_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89860_))
            (let ((_e89862_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89860_ 'exception))))
              (macro-not-in-compilation-context-exception? _e89862_))
            (macro-not-in-compilation-context-exception? _exn89860_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn89856_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89856_))
            (let ((_e89858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89856_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89858_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e89858_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94898
                                (let ()
                                  (declare (not safe))
                                  (cons _e89858_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp94898)))))
            (if (macro-not-in-compilation-context-exception? _exn89856_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn89856_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94897
                              (let ()
                                (declare (not safe))
                                (cons _exn89856_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp94897)))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn89850_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89850_))
            (let ((_e89853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89850_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e89853_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e89853_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (let ((__tmp94900
                                (let ()
                                  (declare (not safe))
                                  (cons _e89853_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp94900)))))
            (if (macro-not-in-compilation-context-exception? _exn89850_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn89850_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (let ((__tmp94899
                              (let ()
                                (declare (not safe))
                                (cons _exn89850_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp94899)))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn89846_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89846_))
            (let ((_e89848_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89846_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e89848_))
            (macro-number-of-arguments-limit-exception? _exn89846_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn89842_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89842_))
            (let ((_e89844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89842_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89844_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e89844_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94902
                                (let ()
                                  (declare (not safe))
                                  (cons _e89844_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp94902)))))
            (if (macro-number-of-arguments-limit-exception? _exn89842_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn89842_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94901
                              (let ()
                                (declare (not safe))
                                (cons _exn89842_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp94901)))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn89836_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89836_))
            (let ((_e89839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89836_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e89839_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e89839_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (let ((__tmp94904
                                (let ()
                                  (declare (not safe))
                                  (cons _e89839_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp94904)))))
            (if (macro-number-of-arguments-limit-exception? _exn89836_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn89836_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (let ((__tmp94903
                              (let ()
                                (declare (not safe))
                                (cons _exn89836_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp94903)))))))
    (define os-exception?
      (lambda (_exn89832_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89832_))
            (let ((_e89834_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89832_ 'exception))))
              (macro-os-exception? _e89834_))
            (macro-os-exception? _exn89832_))))
    (define os-exception-arguments
      (lambda (_exn89828_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89828_))
            (let ((_e89830_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89828_ 'exception))))
              (if (macro-os-exception? _e89830_)
                  (macro-os-exception-arguments _e89830_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94906
                                (let ()
                                  (declare (not safe))
                                  (cons _e89830_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp94906)))))
            (if (macro-os-exception? _exn89828_)
                (macro-os-exception-arguments _exn89828_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94905
                              (let ()
                                (declare (not safe))
                                (cons _exn89828_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp94905)))))))
    (define os-exception-code
      (lambda (_exn89824_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89824_))
            (let ((_e89826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89824_ 'exception))))
              (if (macro-os-exception? _e89826_)
                  (macro-os-exception-code _e89826_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94908
                                (let ()
                                  (declare (not safe))
                                  (cons _e89826_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp94908)))))
            (if (macro-os-exception? _exn89824_)
                (macro-os-exception-code _exn89824_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94907
                              (let ()
                                (declare (not safe))
                                (cons _exn89824_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp94907)))))))
    (define os-exception-message
      (lambda (_exn89820_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89820_))
            (let ((_e89822_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89820_ 'exception))))
              (if (macro-os-exception? _e89822_)
                  (macro-os-exception-message _e89822_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94910
                                (let ()
                                  (declare (not safe))
                                  (cons _e89822_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp94910)))))
            (if (macro-os-exception? _exn89820_)
                (macro-os-exception-message _exn89820_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94909
                              (let ()
                                (declare (not safe))
                                (cons _exn89820_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp94909)))))))
    (define os-exception-procedure
      (lambda (_exn89814_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89814_))
            (let ((_e89817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89814_ 'exception))))
              (if (macro-os-exception? _e89817_)
                  (macro-os-exception-procedure _e89817_)
                  (error '"not an instance"
                         'os-exception?
                         (let ((__tmp94912
                                (let ()
                                  (declare (not safe))
                                  (cons _e89817_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp94912)))))
            (if (macro-os-exception? _exn89814_)
                (macro-os-exception-procedure _exn89814_)
                (error '"not an instance"
                       'os-exception?
                       (let ((__tmp94911
                              (let ()
                                (declare (not safe))
                                (cons _exn89814_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp94911)))))))
    (define permission-denied-exception?
      (lambda (_exn89810_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89810_))
            (let ((_e89812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89810_ 'exception))))
              (macro-permission-denied-exception? _e89812_))
            (macro-permission-denied-exception? _exn89810_))))
    (define permission-denied-exception-arguments
      (lambda (_exn89806_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89806_))
            (let ((_e89808_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89806_ 'exception))))
              (if (macro-permission-denied-exception? _e89808_)
                  (macro-permission-denied-exception-arguments _e89808_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94914
                                (let ()
                                  (declare (not safe))
                                  (cons _e89808_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp94914)))))
            (if (macro-permission-denied-exception? _exn89806_)
                (macro-permission-denied-exception-arguments _exn89806_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94913
                              (let ()
                                (declare (not safe))
                                (cons _exn89806_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp94913)))))))
    (define permission-denied-exception-procedure
      (lambda (_exn89800_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89800_))
            (let ((_e89803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89800_ 'exception))))
              (if (macro-permission-denied-exception? _e89803_)
                  (macro-permission-denied-exception-procedure _e89803_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (let ((__tmp94916
                                (let ()
                                  (declare (not safe))
                                  (cons _e89803_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp94916)))))
            (if (macro-permission-denied-exception? _exn89800_)
                (macro-permission-denied-exception-procedure _exn89800_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (let ((__tmp94915
                              (let ()
                                (declare (not safe))
                                (cons _exn89800_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp94915)))))))
    (define range-exception?
      (lambda (_exn89796_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89796_))
            (let ((_e89798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89796_ 'exception))))
              (macro-range-exception? _e89798_))
            (macro-range-exception? _exn89796_))))
    (define range-exception-arg-id
      (lambda (_exn89792_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89792_))
            (let ((_e89794_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89792_ 'exception))))
              (if (macro-range-exception? _e89794_)
                  (macro-range-exception-arg-id _e89794_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94918
                                (let ()
                                  (declare (not safe))
                                  (cons _e89794_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp94918)))))
            (if (macro-range-exception? _exn89792_)
                (macro-range-exception-arg-id _exn89792_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94917
                              (let ()
                                (declare (not safe))
                                (cons _exn89792_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp94917)))))))
    (define range-exception-arguments
      (lambda (_exn89788_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89788_))
            (let ((_e89790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89788_ 'exception))))
              (if (macro-range-exception? _e89790_)
                  (macro-range-exception-arguments _e89790_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94920
                                (let ()
                                  (declare (not safe))
                                  (cons _e89790_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp94920)))))
            (if (macro-range-exception? _exn89788_)
                (macro-range-exception-arguments _exn89788_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94919
                              (let ()
                                (declare (not safe))
                                (cons _exn89788_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp94919)))))))
    (define range-exception-procedure
      (lambda (_exn89782_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89782_))
            (let ((_e89785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89782_ 'exception))))
              (if (macro-range-exception? _e89785_)
                  (macro-range-exception-procedure _e89785_)
                  (error '"not an instance"
                         'range-exception?
                         (let ((__tmp94922
                                (let ()
                                  (declare (not safe))
                                  (cons _e89785_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp94922)))))
            (if (macro-range-exception? _exn89782_)
                (macro-range-exception-procedure _exn89782_)
                (error '"not an instance"
                       'range-exception?
                       (let ((__tmp94921
                              (let ()
                                (declare (not safe))
                                (cons _exn89782_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp94921)))))))
    (define rpc-remote-error-exception?
      (lambda (_exn89778_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89778_))
            (let ((_e89780_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89778_ 'exception))))
              (macro-rpc-remote-error-exception? _e89780_))
            (macro-rpc-remote-error-exception? _exn89778_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn89774_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89774_))
            (let ((_e89776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89774_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89776_)
                  (macro-rpc-remote-error-exception-arguments _e89776_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94924
                                (let ()
                                  (declare (not safe))
                                  (cons _e89776_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp94924)))))
            (if (macro-rpc-remote-error-exception? _exn89774_)
                (macro-rpc-remote-error-exception-arguments _exn89774_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94923
                              (let ()
                                (declare (not safe))
                                (cons _exn89774_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp94923)))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn89770_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89770_))
            (let ((_e89772_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89770_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89772_)
                  (macro-rpc-remote-error-exception-message _e89772_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94926
                                (let ()
                                  (declare (not safe))
                                  (cons _e89772_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp94926)))))
            (if (macro-rpc-remote-error-exception? _exn89770_)
                (macro-rpc-remote-error-exception-message _exn89770_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94925
                              (let ()
                                (declare (not safe))
                                (cons _exn89770_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp94925)))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn89764_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89764_))
            (let ((_e89767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89764_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e89767_)
                  (macro-rpc-remote-error-exception-procedure _e89767_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (let ((__tmp94928
                                (let ()
                                  (declare (not safe))
                                  (cons _e89767_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp94928)))))
            (if (macro-rpc-remote-error-exception? _exn89764_)
                (macro-rpc-remote-error-exception-procedure _exn89764_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (let ((__tmp94927
                              (let ()
                                (declare (not safe))
                                (cons _exn89764_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp94927)))))))
    (define scheduler-exception?
      (lambda (_exn89760_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89760_))
            (let ((_e89762_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89760_ 'exception))))
              (macro-scheduler-exception? _e89762_))
            (macro-scheduler-exception? _exn89760_))))
    (define scheduler-exception-reason
      (lambda (_exn89754_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89754_))
            (let ((_e89757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89754_ 'exception))))
              (if (macro-scheduler-exception? _e89757_)
                  (macro-scheduler-exception-reason _e89757_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (let ((__tmp94930
                                (let ()
                                  (declare (not safe))
                                  (cons _e89757_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp94930)))))
            (if (macro-scheduler-exception? _exn89754_)
                (macro-scheduler-exception-reason _exn89754_)
                (error '"not an instance"
                       'scheduler-exception?
                       (let ((__tmp94929
                              (let ()
                                (declare (not safe))
                                (cons _exn89754_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp94929)))))))
    (define sfun-conversion-exception?
      (lambda (_exn89750_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89750_))
            (let ((_e89752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89750_ 'exception))))
              (macro-sfun-conversion-exception? _e89752_))
            (macro-sfun-conversion-exception? _exn89750_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn89746_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89746_))
            (let ((_e89748_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89746_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89748_)
                  (macro-sfun-conversion-exception-arguments _e89748_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94932
                                (let ()
                                  (declare (not safe))
                                  (cons _e89748_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp94932)))))
            (if (macro-sfun-conversion-exception? _exn89746_)
                (macro-sfun-conversion-exception-arguments _exn89746_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94931
                              (let ()
                                (declare (not safe))
                                (cons _exn89746_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp94931)))))))
    (define sfun-conversion-exception-code
      (lambda (_exn89742_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89742_))
            (let ((_e89744_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89742_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89744_)
                  (macro-sfun-conversion-exception-code _e89744_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94934
                                (let ()
                                  (declare (not safe))
                                  (cons _e89744_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code
                                 __tmp94934)))))
            (if (macro-sfun-conversion-exception? _exn89742_)
                (macro-sfun-conversion-exception-code _exn89742_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94933
                              (let ()
                                (declare (not safe))
                                (cons _exn89742_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code
                               __tmp94933)))))))
    (define sfun-conversion-exception-message
      (lambda (_exn89738_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89738_))
            (let ((_e89740_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89738_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89740_)
                  (macro-sfun-conversion-exception-message _e89740_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94936
                                (let ()
                                  (declare (not safe))
                                  (cons _e89740_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp94936)))))
            (if (macro-sfun-conversion-exception? _exn89738_)
                (macro-sfun-conversion-exception-message _exn89738_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94935
                              (let ()
                                (declare (not safe))
                                (cons _exn89738_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp94935)))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn89732_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89732_))
            (let ((_e89735_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89732_ 'exception))))
              (if (macro-sfun-conversion-exception? _e89735_)
                  (macro-sfun-conversion-exception-procedure _e89735_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (let ((__tmp94938
                                (let ()
                                  (declare (not safe))
                                  (cons _e89735_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp94938)))))
            (if (macro-sfun-conversion-exception? _exn89732_)
                (macro-sfun-conversion-exception-procedure _exn89732_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (let ((__tmp94937
                              (let ()
                                (declare (not safe))
                                (cons _exn89732_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp94937)))))))
    (define stack-overflow-exception?
      (lambda (_exn89726_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89726_))
            (let ((_e89729_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89726_ 'exception))))
              (macro-stack-overflow-exception? _e89729_))
            (macro-stack-overflow-exception? _exn89726_))))
    (define started-thread-exception?
      (lambda (_exn89722_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89722_))
            (let ((_e89724_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89722_ 'exception))))
              (macro-started-thread-exception? _e89724_))
            (macro-started-thread-exception? _exn89722_))))
    (define started-thread-exception-arguments
      (lambda (_exn89718_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89718_))
            (let ((_e89720_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89718_ 'exception))))
              (if (macro-started-thread-exception? _e89720_)
                  (macro-started-thread-exception-arguments _e89720_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp94940
                                (let ()
                                  (declare (not safe))
                                  (cons _e89720_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp94940)))))
            (if (macro-started-thread-exception? _exn89718_)
                (macro-started-thread-exception-arguments _exn89718_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp94939
                              (let ()
                                (declare (not safe))
                                (cons _exn89718_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp94939)))))))
    (define started-thread-exception-procedure
      (lambda (_exn89712_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89712_))
            (let ((_e89715_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89712_ 'exception))))
              (if (macro-started-thread-exception? _e89715_)
                  (macro-started-thread-exception-procedure _e89715_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (let ((__tmp94942
                                (let ()
                                  (declare (not safe))
                                  (cons _e89715_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp94942)))))
            (if (macro-started-thread-exception? _exn89712_)
                (macro-started-thread-exception-procedure _exn89712_)
                (error '"not an instance"
                       'started-thread-exception?
                       (let ((__tmp94941
                              (let ()
                                (declare (not safe))
                                (cons _exn89712_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp94941)))))))
    (define terminated-thread-exception?
      (lambda (_exn89708_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89708_))
            (let ((_e89710_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89708_ 'exception))))
              (macro-terminated-thread-exception? _e89710_))
            (macro-terminated-thread-exception? _exn89708_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn89704_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89704_))
            (let ((_e89706_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89704_ 'exception))))
              (if (macro-terminated-thread-exception? _e89706_)
                  (macro-terminated-thread-exception-arguments _e89706_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp94944
                                (let ()
                                  (declare (not safe))
                                  (cons _e89706_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp94944)))))
            (if (macro-terminated-thread-exception? _exn89704_)
                (macro-terminated-thread-exception-arguments _exn89704_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp94943
                              (let ()
                                (declare (not safe))
                                (cons _exn89704_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp94943)))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn89698_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89698_))
            (let ((_e89701_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89698_ 'exception))))
              (if (macro-terminated-thread-exception? _e89701_)
                  (macro-terminated-thread-exception-procedure _e89701_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (let ((__tmp94946
                                (let ()
                                  (declare (not safe))
                                  (cons _e89701_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp94946)))))
            (if (macro-terminated-thread-exception? _exn89698_)
                (macro-terminated-thread-exception-procedure _exn89698_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (let ((__tmp94945
                              (let ()
                                (declare (not safe))
                                (cons _exn89698_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp94945)))))))
    (define type-exception?
      (lambda (_exn89694_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89694_))
            (let ((_e89696_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89694_ 'exception))))
              (macro-type-exception? _e89696_))
            (macro-type-exception? _exn89694_))))
    (define type-exception-arg-id
      (lambda (_exn89690_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89690_))
            (let ((_e89692_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89690_ 'exception))))
              (if (macro-type-exception? _e89692_)
                  (macro-type-exception-arg-id _e89692_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94948
                                (let ()
                                  (declare (not safe))
                                  (cons _e89692_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp94948)))))
            (if (macro-type-exception? _exn89690_)
                (macro-type-exception-arg-id _exn89690_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94947
                              (let ()
                                (declare (not safe))
                                (cons _exn89690_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp94947)))))))
    (define type-exception-arguments
      (lambda (_exn89686_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89686_))
            (let ((_e89688_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89686_ 'exception))))
              (if (macro-type-exception? _e89688_)
                  (macro-type-exception-arguments _e89688_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94950
                                (let ()
                                  (declare (not safe))
                                  (cons _e89688_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp94950)))))
            (if (macro-type-exception? _exn89686_)
                (macro-type-exception-arguments _exn89686_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94949
                              (let ()
                                (declare (not safe))
                                (cons _exn89686_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp94949)))))))
    (define type-exception-procedure
      (lambda (_exn89682_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89682_))
            (let ((_e89684_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89682_ 'exception))))
              (if (macro-type-exception? _e89684_)
                  (macro-type-exception-procedure _e89684_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94952
                                (let ()
                                  (declare (not safe))
                                  (cons _e89684_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp94952)))))
            (if (macro-type-exception? _exn89682_)
                (macro-type-exception-procedure _exn89682_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94951
                              (let ()
                                (declare (not safe))
                                (cons _exn89682_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp94951)))))))
    (define type-exception-type-id
      (lambda (_exn89676_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89676_))
            (let ((_e89679_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89676_ 'exception))))
              (if (macro-type-exception? _e89679_)
                  (macro-type-exception-type-id _e89679_)
                  (error '"not an instance"
                         'type-exception?
                         (let ((__tmp94954
                                (let ()
                                  (declare (not safe))
                                  (cons _e89679_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp94954)))))
            (if (macro-type-exception? _exn89676_)
                (macro-type-exception-type-id _exn89676_)
                (error '"not an instance"
                       'type-exception?
                       (let ((__tmp94953
                              (let ()
                                (declare (not safe))
                                (cons _exn89676_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp94953)))))))
    (define unbound-global-exception?
      (lambda (_exn89672_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89672_))
            (let ((_e89674_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89672_ 'exception))))
              (macro-unbound-global-exception? _e89674_))
            (macro-unbound-global-exception? _exn89672_))))
    (define unbound-global-exception-code
      (lambda (_exn89668_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89668_))
            (let ((_e89670_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89668_ 'exception))))
              (if (macro-unbound-global-exception? _e89670_)
                  (macro-unbound-global-exception-code _e89670_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94956
                                (let ()
                                  (declare (not safe))
                                  (cons _e89670_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp94956)))))
            (if (macro-unbound-global-exception? _exn89668_)
                (macro-unbound-global-exception-code _exn89668_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94955
                              (let ()
                                (declare (not safe))
                                (cons _exn89668_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp94955)))))))
    (define unbound-global-exception-rte
      (lambda (_exn89664_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89664_))
            (let ((_e89666_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89664_ 'exception))))
              (if (macro-unbound-global-exception? _e89666_)
                  (macro-unbound-global-exception-rte _e89666_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94958
                                (let ()
                                  (declare (not safe))
                                  (cons _e89666_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp94958)))))
            (if (macro-unbound-global-exception? _exn89664_)
                (macro-unbound-global-exception-rte _exn89664_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94957
                              (let ()
                                (declare (not safe))
                                (cons _exn89664_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp94957)))))))
    (define unbound-global-exception-variable
      (lambda (_exn89658_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89658_))
            (let ((_e89661_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89658_ 'exception))))
              (if (macro-unbound-global-exception? _e89661_)
                  (macro-unbound-global-exception-variable _e89661_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (let ((__tmp94960
                                (let ()
                                  (declare (not safe))
                                  (cons _e89661_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp94960)))))
            (if (macro-unbound-global-exception? _exn89658_)
                (macro-unbound-global-exception-variable _exn89658_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (let ((__tmp94959
                              (let ()
                                (declare (not safe))
                                (cons _exn89658_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp94959)))))))
    (define unbound-key-exception?
      (lambda (_exn89654_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89654_))
            (let ((_e89656_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89654_ 'exception))))
              (macro-unbound-key-exception? _e89656_))
            (macro-unbound-key-exception? _exn89654_))))
    (define unbound-key-exception-arguments
      (lambda (_exn89650_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89650_))
            (let ((_e89652_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89650_ 'exception))))
              (if (macro-unbound-key-exception? _e89652_)
                  (macro-unbound-key-exception-arguments _e89652_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp94962
                                (let ()
                                  (declare (not safe))
                                  (cons _e89652_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp94962)))))
            (if (macro-unbound-key-exception? _exn89650_)
                (macro-unbound-key-exception-arguments _exn89650_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp94961
                              (let ()
                                (declare (not safe))
                                (cons _exn89650_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments
                               __tmp94961)))))))
    (define unbound-key-exception-procedure
      (lambda (_exn89644_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89644_))
            (let ((_e89647_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89644_ 'exception))))
              (if (macro-unbound-key-exception? _e89647_)
                  (macro-unbound-key-exception-procedure _e89647_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (let ((__tmp94964
                                (let ()
                                  (declare (not safe))
                                  (cons _e89647_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp94964)))))
            (if (macro-unbound-key-exception? _exn89644_)
                (macro-unbound-key-exception-procedure _exn89644_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (let ((__tmp94963
                              (let ()
                                (declare (not safe))
                                (cons _exn89644_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure
                               __tmp94963)))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn89640_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89640_))
            (let ((_e89642_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89640_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e89642_))
            (macro-unbound-os-environment-variable-exception? _exn89640_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn89636_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89636_))
            (let ((_e89638_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89636_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89638_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e89638_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp94966
                                (let ()
                                  (declare (not safe))
                                  (cons _e89638_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp94966)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89636_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn89636_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp94965
                              (let ()
                                (declare (not safe))
                                (cons _exn89636_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp94965)))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn89630_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89630_))
            (let ((_e89633_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89630_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e89633_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e89633_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (let ((__tmp94968
                                (let ()
                                  (declare (not safe))
                                  (cons _e89633_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp94968)))))
            (if (macro-unbound-os-environment-variable-exception? _exn89630_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn89630_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (let ((__tmp94967
                              (let ()
                                (declare (not safe))
                                (cons _exn89630_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp94967)))))))
    (define unbound-serial-number-exception?
      (lambda (_exn89626_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89626_))
            (let ((_e89628_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89626_ 'exception))))
              (macro-unbound-serial-number-exception? _e89628_))
            (macro-unbound-serial-number-exception? _exn89626_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn89622_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89622_))
            (let ((_e89624_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89622_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89624_)
                  (macro-unbound-serial-number-exception-arguments _e89624_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp94970
                                (let ()
                                  (declare (not safe))
                                  (cons _e89624_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp94970)))))
            (if (macro-unbound-serial-number-exception? _exn89622_)
                (macro-unbound-serial-number-exception-arguments _exn89622_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp94969
                              (let ()
                                (declare (not safe))
                                (cons _exn89622_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp94969)))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn89616_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89616_))
            (let ((_e89619_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89616_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e89619_)
                  (macro-unbound-serial-number-exception-procedure _e89619_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (let ((__tmp94972
                                (let ()
                                  (declare (not safe))
                                  (cons _e89619_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp94972)))))
            (if (macro-unbound-serial-number-exception? _exn89616_)
                (macro-unbound-serial-number-exception-procedure _exn89616_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (let ((__tmp94971
                              (let ()
                                (declare (not safe))
                                (cons _exn89616_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp94971)))))))
    (define uncaught-exception?
      (lambda (_exn89612_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89612_))
            (let ((_e89614_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89612_ 'exception))))
              (macro-uncaught-exception? _e89614_))
            (macro-uncaught-exception? _exn89612_))))
    (define uncaught-exception-arguments
      (lambda (_exn89608_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89608_))
            (let ((_e89610_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89608_ 'exception))))
              (if (macro-uncaught-exception? _e89610_)
                  (macro-uncaught-exception-arguments _e89610_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94974
                                (let ()
                                  (declare (not safe))
                                  (cons _e89610_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp94974)))))
            (if (macro-uncaught-exception? _exn89608_)
                (macro-uncaught-exception-arguments _exn89608_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94973
                              (let ()
                                (declare (not safe))
                                (cons _exn89608_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp94973)))))))
    (define uncaught-exception-procedure
      (lambda (_exn89604_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89604_))
            (let ((_e89606_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89604_ 'exception))))
              (if (macro-uncaught-exception? _e89606_)
                  (macro-uncaught-exception-procedure _e89606_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94976
                                (let ()
                                  (declare (not safe))
                                  (cons _e89606_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp94976)))))
            (if (macro-uncaught-exception? _exn89604_)
                (macro-uncaught-exception-procedure _exn89604_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94975
                              (let ()
                                (declare (not safe))
                                (cons _exn89604_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp94975)))))))
    (define uncaught-exception-reason
      (lambda (_exn89598_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89598_))
            (let ((_e89601_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89598_ 'exception))))
              (if (macro-uncaught-exception? _e89601_)
                  (macro-uncaught-exception-reason _e89601_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (let ((__tmp94978
                                (let ()
                                  (declare (not safe))
                                  (cons _e89601_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp94978)))))
            (if (macro-uncaught-exception? _exn89598_)
                (macro-uncaught-exception-reason _exn89598_)
                (error '"not an instance"
                       'uncaught-exception?
                       (let ((__tmp94977
                              (let ()
                                (declare (not safe))
                                (cons _exn89598_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp94977)))))))
    (define uninitialized-thread-exception?
      (lambda (_exn89594_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89594_))
            (let ((_e89596_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89594_ 'exception))))
              (macro-uninitialized-thread-exception? _e89596_))
            (macro-uninitialized-thread-exception? _exn89594_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn89590_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89590_))
            (let ((_e89592_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89590_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89592_)
                  (macro-uninitialized-thread-exception-arguments _e89592_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp94980
                                (let ()
                                  (declare (not safe))
                                  (cons _e89592_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp94980)))))
            (if (macro-uninitialized-thread-exception? _exn89590_)
                (macro-uninitialized-thread-exception-arguments _exn89590_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp94979
                              (let ()
                                (declare (not safe))
                                (cons _exn89590_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp94979)))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn89584_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89584_))
            (let ((_e89587_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89584_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e89587_)
                  (macro-uninitialized-thread-exception-procedure _e89587_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (let ((__tmp94982
                                (let ()
                                  (declare (not safe))
                                  (cons _e89587_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp94982)))))
            (if (macro-uninitialized-thread-exception? _exn89584_)
                (macro-uninitialized-thread-exception-procedure _exn89584_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (let ((__tmp94981
                              (let ()
                                (declare (not safe))
                                (cons _exn89584_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp94981)))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn89580_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89580_))
            (let ((_e89582_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89580_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e89582_))
            (macro-unknown-keyword-argument-exception? _exn89580_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn89576_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89576_))
            (let ((_e89578_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89576_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89578_)
                  (macro-unknown-keyword-argument-exception-arguments _e89578_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp94984
                                (let ()
                                  (declare (not safe))
                                  (cons _e89578_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp94984)))))
            (if (macro-unknown-keyword-argument-exception? _exn89576_)
                (macro-unknown-keyword-argument-exception-arguments _exn89576_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp94983
                              (let ()
                                (declare (not safe))
                                (cons _exn89576_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp94983)))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn89570_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89570_))
            (let ((_e89573_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89570_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e89573_)
                  (macro-unknown-keyword-argument-exception-procedure _e89573_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (let ((__tmp94986
                                (let ()
                                  (declare (not safe))
                                  (cons _e89573_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp94986)))))
            (if (macro-unknown-keyword-argument-exception? _exn89570_)
                (macro-unknown-keyword-argument-exception-procedure _exn89570_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (let ((__tmp94985
                              (let ()
                                (declare (not safe))
                                (cons _exn89570_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp94985)))))))
    (define unterminated-process-exception?
      (lambda (_exn89566_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89566_))
            (let ((_e89568_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89566_ 'exception))))
              (macro-unterminated-process-exception? _e89568_))
            (macro-unterminated-process-exception? _exn89566_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn89562_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89562_))
            (let ((_e89564_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89562_ 'exception))))
              (if (macro-unterminated-process-exception? _e89564_)
                  (macro-unterminated-process-exception-arguments _e89564_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp94988
                                (let ()
                                  (declare (not safe))
                                  (cons _e89564_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp94988)))))
            (if (macro-unterminated-process-exception? _exn89562_)
                (macro-unterminated-process-exception-arguments _exn89562_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp94987
                              (let ()
                                (declare (not safe))
                                (cons _exn89562_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp94987)))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn89556_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89556_))
            (let ((_e89559_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89556_ 'exception))))
              (if (macro-unterminated-process-exception? _e89559_)
                  (macro-unterminated-process-exception-procedure _e89559_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (let ((__tmp94990
                                (let ()
                                  (declare (not safe))
                                  (cons _e89559_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp94990)))))
            (if (macro-unterminated-process-exception? _exn89556_)
                (macro-unterminated-process-exception-procedure _exn89556_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (let ((__tmp94989
                              (let ()
                                (declare (not safe))
                                (cons _exn89556_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp94989)))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn89552_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89552_))
            (let ((_e89554_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89552_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e89554_))
            (macro-wrong-number-of-arguments-exception? _exn89552_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn89548_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89548_))
            (let ((_e89550_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89548_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89550_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e89550_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp94992
                                (let ()
                                  (declare (not safe))
                                  (cons _e89550_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp94992)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89548_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn89548_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp94991
                              (let ()
                                (declare (not safe))
                                (cons _exn89548_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp94991)))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn89542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89542_))
            (let ((_e89545_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89542_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e89545_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e89545_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (let ((__tmp94994
                                (let ()
                                  (declare (not safe))
                                  (cons _e89545_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp94994)))))
            (if (macro-wrong-number-of-arguments-exception? _exn89542_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn89542_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (let ((__tmp94993
                              (let ()
                                (declare (not safe))
                                (cons _exn89542_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp94993)))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn89538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89538_))
            (let ((_e89540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89538_ 'exception))))
              (macro-wrong-number-of-values-exception? _e89540_))
            (macro-wrong-number-of-values-exception? _exn89538_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn89534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89534_))
            (let ((_e89536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89534_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89536_)
                  (macro-wrong-number-of-values-exception-code _e89536_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94996
                                (let ()
                                  (declare (not safe))
                                  (cons _e89536_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp94996)))))
            (if (macro-wrong-number-of-values-exception? _exn89534_)
                (macro-wrong-number-of-values-exception-code _exn89534_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94995
                              (let ()
                                (declare (not safe))
                                (cons _exn89534_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp94995)))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn89530_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89530_))
            (let ((_e89532_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89530_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89532_)
                  (macro-wrong-number-of-values-exception-rte _e89532_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp94998
                                (let ()
                                  (declare (not safe))
                                  (cons _e89532_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp94998)))))
            (if (macro-wrong-number-of-values-exception? _exn89530_)
                (macro-wrong-number-of-values-exception-rte _exn89530_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94997
                              (let ()
                                (declare (not safe))
                                (cons _exn89530_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp94997)))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn89524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89524_))
            (let ((_e89527_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89524_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e89527_)
                  (macro-wrong-number-of-values-exception-vals _e89527_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (let ((__tmp95000
                                (let ()
                                  (declare (not safe))
                                  (cons _e89527_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp95000)))))
            (if (macro-wrong-number-of-values-exception? _exn89524_)
                (macro-wrong-number-of-values-exception-vals _exn89524_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (let ((__tmp94999
                              (let ()
                                (declare (not safe))
                                (cons _exn89524_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp94999)))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn89518_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn89518_))
            (let ((_e89521_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn89518_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e89521_))
            (macro-wrong-processor-c-return-exception? _exn89518_))))))
