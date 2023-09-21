(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1695292370)
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
      (lambda _$args11876_
        (apply make-class-instance Exception::t _$args11876_)))
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
      (lambda _$args11873_
        (apply make-class-instance StackTrace::t _$args11873_)))
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
      (let ((__tmp11896
             (let ((__tmp11897
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp11897))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         __tmp11896
         '(message irritants where)
         'Error
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args11870_ (apply make-class-instance Error::t _$args11870_)))
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
      (let ((__tmp11898
             (let ((__tmp11899
                    (let () (declare (not safe)) (cons Exception::t '()))))
               (declare (not safe))
               (cons StackTrace::t __tmp11899))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         __tmp11898
         '(exception)
         'RuntimeException
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args11867_
        (apply make-class-instance RuntimeException::t _$args11867_)))
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
      (lambda (_exn11862_ _continue11863_)
        (let ((_exn11865_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn11862_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn11865_ _continue11863_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn11858_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn11858_))
            (if (let ()
                  (declare (not safe))
                  (slot-ref _exn11858_ 'continuation))
                '#!void
                (let ((__tmp11900
                       (lambda (_cont11860_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn11858_
                            'continuation
                            _cont11860_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp11900)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn11858_))))
    (define error
      (lambda (_message11855_ . _irritants11856_)
        (let ((__tmp11901
               (let ()
                 (declare (not safe))
                 (make-class-instance
                  Error::t
                  _message11855_
                  'irritants:
                  _irritants11856_))))
          (declare (not safe))
          (raise __tmp11901))))
    (define with-exception-handler
      (lambda (_handler11848_ _thunk11849_)
        (if (let () (declare (not safe)) (procedure? _handler11848_))
            '#!void
            (let ((__tmp11902
                   (let ((__tmp11903
                          (let ()
                            (declare (not safe))
                            (cons _handler11848_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp11903))))
              (declare (not safe))
              (raise __tmp11902)))
        (if (let () (declare (not safe)) (procedure? _thunk11849_))
            '#!void
            (let ((__tmp11904
                   (let ((__tmp11905
                          (let ()
                            (declare (not safe))
                            (cons _thunk11849_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp11905))))
              (declare (not safe))
              (raise __tmp11904)))
        (let ((__tmp11906
               (lambda (_exn11851_)
                 (let ((_exn11853_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn11851_))))
                   (_handler11848_ _exn11853_)))))
          (declare (not safe))
          (##with-exception-handler __tmp11906 _thunk11849_))))
    (define with-catch
      (lambda (_handler11841_ _thunk11842_)
        (if (let () (declare (not safe)) (procedure? _handler11841_))
            '#!void
            (let ((__tmp11907
                   (let ((__tmp11908
                          (let ()
                            (declare (not safe))
                            (cons _handler11841_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      __tmp11908))))
              (declare (not safe))
              (raise __tmp11907)))
        (if (let () (declare (not safe)) (procedure? _thunk11842_))
            '#!void
            (let ((__tmp11909
                   (let ((__tmp11910
                          (let ()
                            (declare (not safe))
                            (cons _thunk11842_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      __tmp11910))))
              (declare (not safe))
              (raise __tmp11909)))
        (let ((__tmp11911
               (lambda (_cont11844_)
                 (let ((__tmp11912
                        (lambda (_exn11846_)
                          (let ()
                            (declare (not safe))
                            (##continuation-graft
                             _cont11844_
                             _handler11841_
                             _exn11846_)))))
                   (declare (not safe))
                   (with-exception-handler __tmp11912 _thunk11842_)))))
          (declare (not safe))
          (##continuation-capture __tmp11911))))
    (define wrap-runtime-exception
      (lambda (_exn11832_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn11832_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn11832_)))
            _exn11832_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn11832_))
                _exn11832_
                (if (macro-exception? _exn11832_)
                    (let ((_rte11837_
                           (let ()
                             (declare (not safe))
                             (make-class-instance
                              RuntimeException::t
                              'exception:
                              _exn11832_))))
                      (let ((__tmp11913
                             (lambda (_cont11839_)
                               (let ((__tmp11914
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont11839_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte11837_
                                  'continuation
                                  __tmp11914)))))
                        (declare (not safe))
                        (##continuation-capture __tmp11913))
                      _rte11837_)
                    _exn11832_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj11827_)
        (let ((_$e11829_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj11827_))))
          (if _$e11829_
              _$e11829_
              (let () (declare (not safe)) (error-exception? _obj11827_))))))
    (define error-message
      (lambda (_obj11825_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj11825_))
            (let () (declare (not safe)) (slot-ref _obj11825_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj11825_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj11825_))
                '#f))))
    (define error-irritants
      (lambda (_obj11823_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj11823_))
            (let () (declare (not safe)) (slot-ref _obj11823_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj11823_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj11823_))
                '#f))))
    (define error-trace
      (lambda (_obj11821_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj11821_))
            (let () (declare (not safe)) (slot-ref _obj11821_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e11803_ _port11804_)
        (let ((_$e11806_
               (let ()
                 (declare (not safe))
                 (method-ref _e11803_ 'display-exception))))
          (if _$e11806_
              ((lambda (_f11809_) (_f11809_ _e11803_ _port11804_)) _$e11806_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e11803_ _port11804_))))))
    (define display-exception__0
      (lambda (_e11814_)
        (let ((_port11816_ (let () (declare (not safe)) (current-error-port))))
          (declare (not safe))
          (display-exception__% _e11814_ _port11816_))))
    (define display-exception
      (lambda _g11916_
        (let ((_g11915_ (let () (declare (not safe)) (##length _g11916_))))
          (cond ((let () (declare (not safe)) (##fx= _g11915_ 1))
                 (apply (lambda (_e11814_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e11814_)))
                        _g11916_))
                ((let () (declare (not safe)) (##fx= _g11915_ 2))
                 (apply (lambda (_e11818_ _port11819_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e11818_ _port11819_)))
                        _g11916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g11916_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self11798_ _message11799_ . _rest11800_)
        (let ()
          (declare (not safe))
          (unchecked-slot-set! _self11798_ 'message _message11799_))
        (apply class-instance-init! _self11798_ _rest11800_)))
    (define Error:::init!::specialize
      (lambda (__t11878)
        (let ((__message11879
               (let ((__tmp11880
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t11878 'message))))
                 (if __tmp11880
                     (let () (declare (not safe)) (##fx+ __tmp11880 '1))
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self11798_ _message11799_ . _rest11800_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self11798_
               _message11799_
               __message11879
               __t11878
               '#f))
            (apply class-instance-init! _self11798_ _rest11800_)))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t ':init! Error:::init! '#f))
    (define Error::display-exception
      (lambda (_self11657_ _port11658_)
        (let ((_tmp-port11660_
               (let () (declare (not safe)) (open-output-string))))
          (let () (declare (not safe)) (fix-port-width! _tmp-port11660_))
          (let ((__tmp11917
                 (lambda ()
                   (let () (declare (not safe)) (display '"*** ERROR IN "))
                   (let ((_$e11663_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self11657_ 'where))))
                     (if _$e11663_
                         (let () (declare (not safe)) (display _$e11663_))
                         (let () (declare (not safe)) (display '"?"))))
                   (let ((__tmp11918
                          (let ((__tmp11919
                                 (let ()
                                   (declare (not safe))
                                   (object-type _self11657_))))
                            (declare (not safe))
                            (##type-name __tmp11919))))
                     (declare (not safe))
                     (display* '" [" __tmp11918 '"]: "))
                   (let ((__tmp11920
                          (let ()
                            (declare (not safe))
                            (slot-ref _self11657_ 'message))))
                     (declare (not safe))
                     (displayln __tmp11920))
                   (let ((_irritants11666_
                          (let ()
                            (declare (not safe))
                            (slot-ref _self11657_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants11666_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (display '"--- irritants: "))
                           (let ((__tmp11921
                                  (lambda (_obj11668_)
                                    (let ()
                                      (declare (not safe))
                                      (display* _obj11668_ '" ")))))
                             (declare (not safe))
                             (for-each __tmp11921 _irritants11666_))
                           (let () (declare (not safe)) (newline)))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance? StackTrace::t _self11657_))
                       (let ((_cont1166911671_
                              (let ()
                                (declare (not safe))
                                (slot-ref _self11657_ 'continuation))))
                         (if _cont1166911671_
                             (let ((_cont11674_ _cont1166911671_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (let ()
                                 (declare (not safe))
                                 (display-continuation-backtrace _cont11674_)))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp11917
             current-output-port
             _tmp-port11660_))
          (let ((__tmp11922
                 (let ()
                   (declare (not safe))
                   (get-output-string _tmp-port11660_))))
            (declare (not safe))
            (##write-string __tmp11922 _port11658_)))))
    (define Error::display-exception::specialize
      (lambda (__t11881)
        (let ((__continuation11882
               (let ((__tmp11886
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t11881 'continuation))))
                 (if __tmp11886
                     (let () (declare (not safe)) (##fx+ __tmp11886 '1))
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__irritants11883
               (let ((__tmp11887
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t11881 'irritants))))
                 (if __tmp11887
                     (let () (declare (not safe)) (##fx+ __tmp11887 '1))
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message11884
               (let ((__tmp11888
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t11881 'message))))
                 (if __tmp11888
                     (let () (declare (not safe)) (##fx+ __tmp11888 '1))
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where11885
               (let ((__tmp11889
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t11881 'where))))
                 (if __tmp11889
                     (let () (declare (not safe)) (##fx+ __tmp11889 '1))
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__class11890
               (let ()
                 (declare (not safe))
                 (class-subtype? StackTrace::t __t11881))))
          (lambda (_self11657_ _port11658_)
            (let ((_tmp-port11660_
                   (let () (declare (not safe)) (open-output-string))))
              (let () (declare (not safe)) (fix-port-width! _tmp-port11660_))
              (let ((__tmp11923
                     (lambda ()
                       (let () (declare (not safe)) (display '"*** ERROR IN "))
                       (let ((_$e11663_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self11657_
                                 __where11885
                                 __t11881
                                 '#f))))
                         (if _$e11663_
                             (let () (declare (not safe)) (display _$e11663_))
                             (let () (declare (not safe)) (display '"?"))))
                       (let ((__tmp11924
                              (let ((__tmp11925
                                     (let ()
                                       (declare (not safe))
                                       (object-type _self11657_))))
                                (declare (not safe))
                                (##type-name __tmp11925))))
                         (declare (not safe))
                         (display* '" [" __tmp11924 '"]: "))
                       (let ((__tmp11926
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self11657_
                                 __message11884
                                 __t11881
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp11926))
                       (let ((_irritants11666_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self11657_
                                 __irritants11883
                                 __t11881
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants11666_))
                             '#!void
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (display '"--- irritants: "))
                               (let ((__tmp11927
                                      (lambda (_obj11668_)
                                        (let ()
                                          (declare (not safe))
                                          (display* _obj11668_ '" ")))))
                                 (declare (not safe))
                                 (for-each __tmp11927 _irritants11666_))
                               (let () (declare (not safe)) (newline)))))
                       (if __class11890
                           (let ((_cont1166911671_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self11657_
                                     __continuation11882
                                     __t11881
                                     '#f))))
                             (if _cont1166911671_
                                 (let ((_cont11674_ _cont1166911671_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (let ()
                                     (declare (not safe))
                                     (display-continuation-backtrace
                                      _cont11674_)))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp11923
                 current-output-port
                 _tmp-port11660_))
              (let ((__tmp11928
                     (let ()
                       (declare (not safe))
                       (get-output-string _tmp-port11660_))))
                (declare (not safe))
                (##write-string __tmp11928 _port11658_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method! Error::t 'display-exception Error::display-exception '#t))
    (define RuntimeException::display-exception
      (lambda (_self11524_ _port11525_)
        (let ((_tmp-port11527_
               (let () (declare (not safe)) (open-output-string))))
          (let () (declare (not safe)) (fix-port-width! _tmp-port11527_))
          (let ((__tmp11929
                 (let ()
                   (declare (not safe))
                   (slot-ref _self11524_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp11929 _tmp-port11527_))
          (let ((_cont1152811530_
                 (let ()
                   (declare (not safe))
                   (slot-ref _self11524_ 'continuation))))
            (if _cont1152811530_
                (let ((_cont11533_ _cont1152811530_))
                  (let ()
                    (declare (not safe))
                    (display '"--- continuation backtrace:" _tmp-port11527_))
                  (let () (declare (not safe)) (newline _tmp-port11527_))
                  (let ()
                    (declare (not safe))
                    (display-continuation-backtrace
                     _cont11533_
                     _tmp-port11527_)))
                '#f))
          (let ((__tmp11930
                 (let ()
                   (declare (not safe))
                   (get-output-string _tmp-port11527_))))
            (declare (not safe))
            (##write-string __tmp11930 _port11525_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__t11891)
        (let ((__exception11892
               (let ((__tmp11894
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t11891 'exception))))
                 (if __tmp11894
                     (let () (declare (not safe)) (##fx+ __tmp11894 '1))
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation11893
               (let ((__tmp11895
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t11891 'continuation))))
                 (if __tmp11895
                     (let () (declare (not safe)) (##fx+ __tmp11895 '1))
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self11524_ _port11525_)
            (let ((_tmp-port11527_
                   (let () (declare (not safe)) (open-output-string))))
              (let () (declare (not safe)) (fix-port-width! _tmp-port11527_))
              (let ((__tmp11931
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self11524_
                        __exception11892
                        __t11891
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp11931 _tmp-port11527_))
              (let ((_cont1152811530_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self11524_
                        __continuation11893
                        __t11891
                        '#f))))
                (if _cont1152811530_
                    (let ((_cont11533_ _cont1152811530_))
                      (let ()
                        (declare (not safe))
                        (display '"--- continuation backtrace:"
                                 _tmp-port11527_))
                      (let () (declare (not safe)) (newline _tmp-port11527_))
                      (let ()
                        (declare (not safe))
                        (display-continuation-backtrace
                         _cont11533_
                         _tmp-port11527_)))
                    '#f))
              (let ((__tmp11932
                     (let ()
                       (declare (not safe))
                       (get-output-string _tmp-port11527_))))
                (declare (not safe))
                (##write-string __tmp11932 _port11525_)))))))
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
      (lambda (_port11396_)
        (if (macro-character-port? _port11396_)
            (let ((_old-width11398_
                   (macro-character-port-output-width _port11396_)))
              (macro-character-port-output-width-set!
               _port11396_
               (lambda (_port11400_) '256))
              _old-width11398_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port11393_ _old-width11394_)
        (if (macro-character-port? _port11393_)
            (macro-character-port-output-width-set!
             _port11393_
             _old-width11394_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e11391_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e11391_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn11385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11385_))
            (let ((_e11388_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11385_ 'exception))))
              (macro-abandoned-mutex-exception? _e11388_))
            (macro-abandoned-mutex-exception? _exn11385_))))
    (define cfun-conversion-exception?
      (lambda (_exn11381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11381_))
            (let ((_e11383_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11381_ 'exception))))
              (macro-cfun-conversion-exception? _e11383_))
            (macro-cfun-conversion-exception? _exn11381_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn11377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11377_))
            (let ((_e11379_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11377_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11379_)
                  (macro-cfun-conversion-exception-arguments _e11379_)
                  (let ((__tmp11935
                         (let ((__tmp11936
                                (let ()
                                  (declare (not safe))
                                  (cons _e11379_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp11936))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp11935))))
            (if (macro-cfun-conversion-exception? _exn11377_)
                (macro-cfun-conversion-exception-arguments _exn11377_)
                (let ((__tmp11933
                       (let ((__tmp11934
                              (let ()
                                (declare (not safe))
                                (cons _exn11377_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp11934))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp11933))))))
    (define cfun-conversion-exception-code
      (lambda (_exn11373_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11373_))
            (let ((_e11375_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11373_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11375_)
                  (macro-cfun-conversion-exception-code _e11375_)
                  (let ((__tmp11939
                         (let ((__tmp11940
                                (let ()
                                  (declare (not safe))
                                  (cons _e11375_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp11940))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp11939))))
            (if (macro-cfun-conversion-exception? _exn11373_)
                (macro-cfun-conversion-exception-code _exn11373_)
                (let ((__tmp11937
                       (let ((__tmp11938
                              (let ()
                                (declare (not safe))
                                (cons _exn11373_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp11938))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp11937))))))
    (define cfun-conversion-exception-message
      (lambda (_exn11369_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11369_))
            (let ((_e11371_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11369_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11371_)
                  (macro-cfun-conversion-exception-message _e11371_)
                  (let ((__tmp11943
                         (let ((__tmp11944
                                (let ()
                                  (declare (not safe))
                                  (cons _e11371_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp11944))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp11943))))
            (if (macro-cfun-conversion-exception? _exn11369_)
                (macro-cfun-conversion-exception-message _exn11369_)
                (let ((__tmp11941
                       (let ((__tmp11942
                              (let ()
                                (declare (not safe))
                                (cons _exn11369_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp11942))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp11941))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn11363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11363_))
            (let ((_e11366_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11363_ 'exception))))
              (if (macro-cfun-conversion-exception? _e11366_)
                  (macro-cfun-conversion-exception-procedure _e11366_)
                  (let ((__tmp11947
                         (let ((__tmp11948
                                (let ()
                                  (declare (not safe))
                                  (cons _e11366_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp11948))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp11947))))
            (if (macro-cfun-conversion-exception? _exn11363_)
                (macro-cfun-conversion-exception-procedure _exn11363_)
                (let ((__tmp11945
                       (let ((__tmp11946
                              (let ()
                                (declare (not safe))
                                (cons _exn11363_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp11946))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp11945))))))
    (define datum-parsing-exception?
      (lambda (_exn11359_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11359_))
            (let ((_e11361_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11359_ 'exception))))
              (macro-datum-parsing-exception? _e11361_))
            (macro-datum-parsing-exception? _exn11359_))))
    (define datum-parsing-exception-kind
      (lambda (_exn11355_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11355_))
            (let ((_e11357_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11355_ 'exception))))
              (if (macro-datum-parsing-exception? _e11357_)
                  (macro-datum-parsing-exception-kind _e11357_)
                  (let ((__tmp11951
                         (let ((__tmp11952
                                (let ()
                                  (declare (not safe))
                                  (cons _e11357_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp11952))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp11951))))
            (if (macro-datum-parsing-exception? _exn11355_)
                (macro-datum-parsing-exception-kind _exn11355_)
                (let ((__tmp11949
                       (let ((__tmp11950
                              (let ()
                                (declare (not safe))
                                (cons _exn11355_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp11950))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp11949))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn11351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11351_))
            (let ((_e11353_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11351_ 'exception))))
              (if (macro-datum-parsing-exception? _e11353_)
                  (macro-datum-parsing-exception-parameters _e11353_)
                  (let ((__tmp11955
                         (let ((__tmp11956
                                (let ()
                                  (declare (not safe))
                                  (cons _e11353_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp11956))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp11955))))
            (if (macro-datum-parsing-exception? _exn11351_)
                (macro-datum-parsing-exception-parameters _exn11351_)
                (let ((__tmp11953
                       (let ((__tmp11954
                              (let ()
                                (declare (not safe))
                                (cons _exn11351_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp11954))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp11953))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn11345_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11345_))
            (let ((_e11348_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11345_ 'exception))))
              (if (macro-datum-parsing-exception? _e11348_)
                  (macro-datum-parsing-exception-readenv _e11348_)
                  (let ((__tmp11959
                         (let ((__tmp11960
                                (let ()
                                  (declare (not safe))
                                  (cons _e11348_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp11960))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp11959))))
            (if (macro-datum-parsing-exception? _exn11345_)
                (macro-datum-parsing-exception-readenv _exn11345_)
                (let ((__tmp11957
                       (let ((__tmp11958
                              (let ()
                                (declare (not safe))
                                (cons _exn11345_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp11958))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp11957))))))
    (define deadlock-exception?
      (lambda (_exn11339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11339_))
            (let ((_e11342_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11339_ 'exception))))
              (macro-deadlock-exception? _e11342_))
            (macro-deadlock-exception? _exn11339_))))
    (define divide-by-zero-exception?
      (lambda (_exn11335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11335_))
            (let ((_e11337_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11335_ 'exception))))
              (macro-divide-by-zero-exception? _e11337_))
            (macro-divide-by-zero-exception? _exn11335_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn11331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11331_))
            (let ((_e11333_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11331_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11333_)
                  (macro-divide-by-zero-exception-arguments _e11333_)
                  (let ((__tmp11963
                         (let ((__tmp11964
                                (let ()
                                  (declare (not safe))
                                  (cons _e11333_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp11964))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp11963))))
            (if (macro-divide-by-zero-exception? _exn11331_)
                (macro-divide-by-zero-exception-arguments _exn11331_)
                (let ((__tmp11961
                       (let ((__tmp11962
                              (let ()
                                (declare (not safe))
                                (cons _exn11331_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp11962))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp11961))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn11325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11325_))
            (let ((_e11328_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11325_ 'exception))))
              (if (macro-divide-by-zero-exception? _e11328_)
                  (macro-divide-by-zero-exception-procedure _e11328_)
                  (let ((__tmp11967
                         (let ((__tmp11968
                                (let ()
                                  (declare (not safe))
                                  (cons _e11328_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp11968))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp11967))))
            (if (macro-divide-by-zero-exception? _exn11325_)
                (macro-divide-by-zero-exception-procedure _exn11325_)
                (let ((__tmp11965
                       (let ((__tmp11966
                              (let ()
                                (declare (not safe))
                                (cons _exn11325_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp11966))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp11965))))))
    (define error-exception?
      (lambda (_exn11321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11321_))
            (let ((_e11323_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11321_ 'exception))))
              (macro-error-exception? _e11323_))
            (macro-error-exception? _exn11321_))))
    (define error-exception-message
      (lambda (_exn11317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11317_))
            (let ((_e11319_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11317_ 'exception))))
              (if (macro-error-exception? _e11319_)
                  (macro-error-exception-message _e11319_)
                  (let ((__tmp11971
                         (let ((__tmp11972
                                (let ()
                                  (declare (not safe))
                                  (cons _e11319_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp11972))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp11971))))
            (if (macro-error-exception? _exn11317_)
                (macro-error-exception-message _exn11317_)
                (let ((__tmp11969
                       (let ((__tmp11970
                              (let ()
                                (declare (not safe))
                                (cons _exn11317_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp11970))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp11969))))))
    (define error-exception-parameters
      (lambda (_exn11311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11311_))
            (let ((_e11314_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11311_ 'exception))))
              (if (macro-error-exception? _e11314_)
                  (macro-error-exception-parameters _e11314_)
                  (let ((__tmp11975
                         (let ((__tmp11976
                                (let ()
                                  (declare (not safe))
                                  (cons _e11314_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp11976))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp11975))))
            (if (macro-error-exception? _exn11311_)
                (macro-error-exception-parameters _exn11311_)
                (let ((__tmp11973
                       (let ((__tmp11974
                              (let ()
                                (declare (not safe))
                                (cons _exn11311_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp11974))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp11973))))))
    (define expression-parsing-exception?
      (lambda (_exn11307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11307_))
            (let ((_e11309_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11307_ 'exception))))
              (macro-expression-parsing-exception? _e11309_))
            (macro-expression-parsing-exception? _exn11307_))))
    (define expression-parsing-exception-kind
      (lambda (_exn11303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11303_))
            (let ((_e11305_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11303_ 'exception))))
              (if (macro-expression-parsing-exception? _e11305_)
                  (macro-expression-parsing-exception-kind _e11305_)
                  (let ((__tmp11979
                         (let ((__tmp11980
                                (let ()
                                  (declare (not safe))
                                  (cons _e11305_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp11980))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp11979))))
            (if (macro-expression-parsing-exception? _exn11303_)
                (macro-expression-parsing-exception-kind _exn11303_)
                (let ((__tmp11977
                       (let ((__tmp11978
                              (let ()
                                (declare (not safe))
                                (cons _exn11303_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp11978))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp11977))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn11299_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11299_))
            (let ((_e11301_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11299_ 'exception))))
              (if (macro-expression-parsing-exception? _e11301_)
                  (macro-expression-parsing-exception-parameters _e11301_)
                  (let ((__tmp11983
                         (let ((__tmp11984
                                (let ()
                                  (declare (not safe))
                                  (cons _e11301_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp11984))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp11983))))
            (if (macro-expression-parsing-exception? _exn11299_)
                (macro-expression-parsing-exception-parameters _exn11299_)
                (let ((__tmp11981
                       (let ((__tmp11982
                              (let ()
                                (declare (not safe))
                                (cons _exn11299_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp11982))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp11981))))))
    (define expression-parsing-exception-source
      (lambda (_exn11293_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11293_))
            (let ((_e11296_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11293_ 'exception))))
              (if (macro-expression-parsing-exception? _e11296_)
                  (macro-expression-parsing-exception-source _e11296_)
                  (let ((__tmp11987
                         (let ((__tmp11988
                                (let ()
                                  (declare (not safe))
                                  (cons _e11296_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp11988))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp11987))))
            (if (macro-expression-parsing-exception? _exn11293_)
                (macro-expression-parsing-exception-source _exn11293_)
                (let ((__tmp11985
                       (let ((__tmp11986
                              (let ()
                                (declare (not safe))
                                (cons _exn11293_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp11986))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp11985))))))
    (define file-exists-exception?
      (lambda (_exn11289_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11289_))
            (let ((_e11291_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11289_ 'exception))))
              (macro-file-exists-exception? _e11291_))
            (macro-file-exists-exception? _exn11289_))))
    (define file-exists-exception-arguments
      (lambda (_exn11285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11285_))
            (let ((_e11287_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11285_ 'exception))))
              (if (macro-file-exists-exception? _e11287_)
                  (macro-file-exists-exception-arguments _e11287_)
                  (let ((__tmp11991
                         (let ((__tmp11992
                                (let ()
                                  (declare (not safe))
                                  (cons _e11287_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp11992))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp11991))))
            (if (macro-file-exists-exception? _exn11285_)
                (macro-file-exists-exception-arguments _exn11285_)
                (let ((__tmp11989
                       (let ((__tmp11990
                              (let ()
                                (declare (not safe))
                                (cons _exn11285_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp11990))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp11989))))))
    (define file-exists-exception-procedure
      (lambda (_exn11279_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11279_))
            (let ((_e11282_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11279_ 'exception))))
              (if (macro-file-exists-exception? _e11282_)
                  (macro-file-exists-exception-procedure _e11282_)
                  (let ((__tmp11995
                         (let ((__tmp11996
                                (let ()
                                  (declare (not safe))
                                  (cons _e11282_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp11996))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp11995))))
            (if (macro-file-exists-exception? _exn11279_)
                (macro-file-exists-exception-procedure _exn11279_)
                (let ((__tmp11993
                       (let ((__tmp11994
                              (let ()
                                (declare (not safe))
                                (cons _exn11279_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp11994))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp11993))))))
    (define fixnum-overflow-exception?
      (lambda (_exn11275_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11275_))
            (let ((_e11277_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11275_ 'exception))))
              (macro-fixnum-overflow-exception? _e11277_))
            (macro-fixnum-overflow-exception? _exn11275_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn11271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11271_))
            (let ((_e11273_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11271_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11273_)
                  (macro-fixnum-overflow-exception-arguments _e11273_)
                  (let ((__tmp11999
                         (let ((__tmp12000
                                (let ()
                                  (declare (not safe))
                                  (cons _e11273_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp12000))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp11999))))
            (if (macro-fixnum-overflow-exception? _exn11271_)
                (macro-fixnum-overflow-exception-arguments _exn11271_)
                (let ((__tmp11997
                       (let ((__tmp11998
                              (let ()
                                (declare (not safe))
                                (cons _exn11271_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp11998))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp11997))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn11265_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11265_))
            (let ((_e11268_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11265_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e11268_)
                  (macro-fixnum-overflow-exception-procedure _e11268_)
                  (let ((__tmp12003
                         (let ((__tmp12004
                                (let ()
                                  (declare (not safe))
                                  (cons _e11268_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp12004))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp12003))))
            (if (macro-fixnum-overflow-exception? _exn11265_)
                (macro-fixnum-overflow-exception-procedure _exn11265_)
                (let ((__tmp12001
                       (let ((__tmp12002
                              (let ()
                                (declare (not safe))
                                (cons _exn11265_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp12002))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp12001))))))
    (define heap-overflow-exception?
      (lambda (_exn11259_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11259_))
            (let ((_e11262_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11259_ 'exception))))
              (macro-heap-overflow-exception? _e11262_))
            (macro-heap-overflow-exception? _exn11259_))))
    (define inactive-thread-exception?
      (lambda (_exn11255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11255_))
            (let ((_e11257_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11255_ 'exception))))
              (macro-inactive-thread-exception? _e11257_))
            (macro-inactive-thread-exception? _exn11255_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn11251_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11251_))
            (let ((_e11253_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11251_ 'exception))))
              (if (macro-inactive-thread-exception? _e11253_)
                  (macro-inactive-thread-exception-arguments _e11253_)
                  (let ((__tmp12007
                         (let ((__tmp12008
                                (let ()
                                  (declare (not safe))
                                  (cons _e11253_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp12008))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp12007))))
            (if (macro-inactive-thread-exception? _exn11251_)
                (macro-inactive-thread-exception-arguments _exn11251_)
                (let ((__tmp12005
                       (let ((__tmp12006
                              (let ()
                                (declare (not safe))
                                (cons _exn11251_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp12006))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp12005))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn11245_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11245_))
            (let ((_e11248_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11245_ 'exception))))
              (if (macro-inactive-thread-exception? _e11248_)
                  (macro-inactive-thread-exception-procedure _e11248_)
                  (let ((__tmp12011
                         (let ((__tmp12012
                                (let ()
                                  (declare (not safe))
                                  (cons _e11248_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp12012))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp12011))))
            (if (macro-inactive-thread-exception? _exn11245_)
                (macro-inactive-thread-exception-procedure _exn11245_)
                (let ((__tmp12009
                       (let ((__tmp12010
                              (let ()
                                (declare (not safe))
                                (cons _exn11245_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp12010))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp12009))))))
    (define initialized-thread-exception?
      (lambda (_exn11241_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11241_))
            (let ((_e11243_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11241_ 'exception))))
              (macro-initialized-thread-exception? _e11243_))
            (macro-initialized-thread-exception? _exn11241_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn11237_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11237_))
            (let ((_e11239_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11237_ 'exception))))
              (if (macro-initialized-thread-exception? _e11239_)
                  (macro-initialized-thread-exception-arguments _e11239_)
                  (let ((__tmp12015
                         (let ((__tmp12016
                                (let ()
                                  (declare (not safe))
                                  (cons _e11239_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp12016))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp12015))))
            (if (macro-initialized-thread-exception? _exn11237_)
                (macro-initialized-thread-exception-arguments _exn11237_)
                (let ((__tmp12013
                       (let ((__tmp12014
                              (let ()
                                (declare (not safe))
                                (cons _exn11237_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp12014))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp12013))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn11231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11231_))
            (let ((_e11234_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11231_ 'exception))))
              (if (macro-initialized-thread-exception? _e11234_)
                  (macro-initialized-thread-exception-procedure _e11234_)
                  (let ((__tmp12019
                         (let ((__tmp12020
                                (let ()
                                  (declare (not safe))
                                  (cons _e11234_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp12020))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp12019))))
            (if (macro-initialized-thread-exception? _exn11231_)
                (macro-initialized-thread-exception-procedure _exn11231_)
                (let ((__tmp12017
                       (let ((__tmp12018
                              (let ()
                                (declare (not safe))
                                (cons _exn11231_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp12018))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp12017))))))
    (define invalid-hash-number-exception?
      (lambda (_exn11227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11227_))
            (let ((_e11229_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11227_ 'exception))))
              (macro-invalid-hash-number-exception? _e11229_))
            (macro-invalid-hash-number-exception? _exn11227_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn11223_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11223_))
            (let ((_e11225_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11223_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11225_)
                  (macro-invalid-hash-number-exception-arguments _e11225_)
                  (let ((__tmp12023
                         (let ((__tmp12024
                                (let ()
                                  (declare (not safe))
                                  (cons _e11225_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp12024))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp12023))))
            (if (macro-invalid-hash-number-exception? _exn11223_)
                (macro-invalid-hash-number-exception-arguments _exn11223_)
                (let ((__tmp12021
                       (let ((__tmp12022
                              (let ()
                                (declare (not safe))
                                (cons _exn11223_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp12022))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp12021))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn11217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11217_))
            (let ((_e11220_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11217_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e11220_)
                  (macro-invalid-hash-number-exception-procedure _e11220_)
                  (let ((__tmp12027
                         (let ((__tmp12028
                                (let ()
                                  (declare (not safe))
                                  (cons _e11220_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp12028))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp12027))))
            (if (macro-invalid-hash-number-exception? _exn11217_)
                (macro-invalid-hash-number-exception-procedure _exn11217_)
                (let ((__tmp12025
                       (let ((__tmp12026
                              (let ()
                                (declare (not safe))
                                (cons _exn11217_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp12026))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp12025))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn11213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11213_))
            (let ((_e11215_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11213_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e11215_))
            (macro-invalid-utf8-encoding-exception? _exn11213_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn11209_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11209_))
            (let ((_e11211_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11209_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11211_)
                  (macro-invalid-utf8-encoding-exception-arguments _e11211_)
                  (let ((__tmp12031
                         (let ((__tmp12032
                                (let ()
                                  (declare (not safe))
                                  (cons _e11211_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp12032))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp12031))))
            (if (macro-invalid-utf8-encoding-exception? _exn11209_)
                (macro-invalid-utf8-encoding-exception-arguments _exn11209_)
                (let ((__tmp12029
                       (let ((__tmp12030
                              (let ()
                                (declare (not safe))
                                (cons _exn11209_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp12030))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp12029))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn11203_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11203_))
            (let ((_e11206_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11203_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e11206_)
                  (macro-invalid-utf8-encoding-exception-procedure _e11206_)
                  (let ((__tmp12035
                         (let ((__tmp12036
                                (let ()
                                  (declare (not safe))
                                  (cons _e11206_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp12036))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp12035))))
            (if (macro-invalid-utf8-encoding-exception? _exn11203_)
                (macro-invalid-utf8-encoding-exception-procedure _exn11203_)
                (let ((__tmp12033
                       (let ((__tmp12034
                              (let ()
                                (declare (not safe))
                                (cons _exn11203_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp12034))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp12033))))))
    (define join-timeout-exception?
      (lambda (_exn11199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11199_))
            (let ((_e11201_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11199_ 'exception))))
              (macro-join-timeout-exception? _e11201_))
            (macro-join-timeout-exception? _exn11199_))))
    (define join-timeout-exception-arguments
      (lambda (_exn11195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11195_))
            (let ((_e11197_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11195_ 'exception))))
              (if (macro-join-timeout-exception? _e11197_)
                  (macro-join-timeout-exception-arguments _e11197_)
                  (let ((__tmp12039
                         (let ((__tmp12040
                                (let ()
                                  (declare (not safe))
                                  (cons _e11197_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp12040))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp12039))))
            (if (macro-join-timeout-exception? _exn11195_)
                (macro-join-timeout-exception-arguments _exn11195_)
                (let ((__tmp12037
                       (let ((__tmp12038
                              (let ()
                                (declare (not safe))
                                (cons _exn11195_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp12038))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp12037))))))
    (define join-timeout-exception-procedure
      (lambda (_exn11189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11189_))
            (let ((_e11192_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11189_ 'exception))))
              (if (macro-join-timeout-exception? _e11192_)
                  (macro-join-timeout-exception-procedure _e11192_)
                  (let ((__tmp12043
                         (let ((__tmp12044
                                (let ()
                                  (declare (not safe))
                                  (cons _e11192_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp12044))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp12043))))
            (if (macro-join-timeout-exception? _exn11189_)
                (macro-join-timeout-exception-procedure _exn11189_)
                (let ((__tmp12041
                       (let ((__tmp12042
                              (let ()
                                (declare (not safe))
                                (cons _exn11189_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp12042))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp12041))))))
    (define keyword-expected-exception?
      (lambda (_exn11185_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11185_))
            (let ((_e11187_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11185_ 'exception))))
              (macro-keyword-expected-exception? _e11187_))
            (macro-keyword-expected-exception? _exn11185_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn11181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11181_))
            (let ((_e11183_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11181_ 'exception))))
              (if (macro-keyword-expected-exception? _e11183_)
                  (macro-keyword-expected-exception-arguments _e11183_)
                  (let ((__tmp12047
                         (let ((__tmp12048
                                (let ()
                                  (declare (not safe))
                                  (cons _e11183_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp12048))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp12047))))
            (if (macro-keyword-expected-exception? _exn11181_)
                (macro-keyword-expected-exception-arguments _exn11181_)
                (let ((__tmp12045
                       (let ((__tmp12046
                              (let ()
                                (declare (not safe))
                                (cons _exn11181_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp12046))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp12045))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn11175_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11175_))
            (let ((_e11178_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11175_ 'exception))))
              (if (macro-keyword-expected-exception? _e11178_)
                  (macro-keyword-expected-exception-procedure _e11178_)
                  (let ((__tmp12051
                         (let ((__tmp12052
                                (let ()
                                  (declare (not safe))
                                  (cons _e11178_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp12052))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp12051))))
            (if (macro-keyword-expected-exception? _exn11175_)
                (macro-keyword-expected-exception-procedure _exn11175_)
                (let ((__tmp12049
                       (let ((__tmp12050
                              (let ()
                                (declare (not safe))
                                (cons _exn11175_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp12050))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp12049))))))
    (define length-mismatch-exception?
      (lambda (_exn11171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11171_))
            (let ((_e11173_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11171_ 'exception))))
              (macro-length-mismatch-exception? _e11173_))
            (macro-length-mismatch-exception? _exn11171_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn11167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11167_))
            (let ((_e11169_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11167_ 'exception))))
              (if (macro-length-mismatch-exception? _e11169_)
                  (macro-length-mismatch-exception-arg-id _e11169_)
                  (let ((__tmp12055
                         (let ((__tmp12056
                                (let ()
                                  (declare (not safe))
                                  (cons _e11169_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp12056))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp12055))))
            (if (macro-length-mismatch-exception? _exn11167_)
                (macro-length-mismatch-exception-arg-id _exn11167_)
                (let ((__tmp12053
                       (let ((__tmp12054
                              (let ()
                                (declare (not safe))
                                (cons _exn11167_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp12054))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp12053))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn11163_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11163_))
            (let ((_e11165_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11163_ 'exception))))
              (if (macro-length-mismatch-exception? _e11165_)
                  (macro-length-mismatch-exception-arguments _e11165_)
                  (let ((__tmp12059
                         (let ((__tmp12060
                                (let ()
                                  (declare (not safe))
                                  (cons _e11165_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp12060))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp12059))))
            (if (macro-length-mismatch-exception? _exn11163_)
                (macro-length-mismatch-exception-arguments _exn11163_)
                (let ((__tmp12057
                       (let ((__tmp12058
                              (let ()
                                (declare (not safe))
                                (cons _exn11163_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp12058))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp12057))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn11157_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11157_))
            (let ((_e11160_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11157_ 'exception))))
              (if (macro-length-mismatch-exception? _e11160_)
                  (macro-length-mismatch-exception-procedure _e11160_)
                  (let ((__tmp12063
                         (let ((__tmp12064
                                (let ()
                                  (declare (not safe))
                                  (cons _e11160_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp12064))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp12063))))
            (if (macro-length-mismatch-exception? _exn11157_)
                (macro-length-mismatch-exception-procedure _exn11157_)
                (let ((__tmp12061
                       (let ((__tmp12062
                              (let ()
                                (declare (not safe))
                                (cons _exn11157_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp12062))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp12061))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn11153_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11153_))
            (let ((_e11155_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11153_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e11155_))
            (macro-mailbox-receive-timeout-exception? _exn11153_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn11149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11149_))
            (let ((_e11151_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11149_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11151_)
                  (macro-mailbox-receive-timeout-exception-arguments _e11151_)
                  (let ((__tmp12067
                         (let ((__tmp12068
                                (let ()
                                  (declare (not safe))
                                  (cons _e11151_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp12068))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp12067))))
            (if (macro-mailbox-receive-timeout-exception? _exn11149_)
                (macro-mailbox-receive-timeout-exception-arguments _exn11149_)
                (let ((__tmp12065
                       (let ((__tmp12066
                              (let ()
                                (declare (not safe))
                                (cons _exn11149_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp12066))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp12065))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn11143_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11143_))
            (let ((_e11146_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11143_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e11146_)
                  (macro-mailbox-receive-timeout-exception-procedure _e11146_)
                  (let ((__tmp12071
                         (let ((__tmp12072
                                (let ()
                                  (declare (not safe))
                                  (cons _e11146_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp12072))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp12071))))
            (if (macro-mailbox-receive-timeout-exception? _exn11143_)
                (macro-mailbox-receive-timeout-exception-procedure _exn11143_)
                (let ((__tmp12069
                       (let ((__tmp12070
                              (let ()
                                (declare (not safe))
                                (cons _exn11143_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp12070))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp12069))))))
    (define module-not-found-exception?
      (lambda (_exn11139_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11139_))
            (let ((_e11141_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11139_ 'exception))))
              (macro-module-not-found-exception? _e11141_))
            (macro-module-not-found-exception? _exn11139_))))
    (define module-not-found-exception-arguments
      (lambda (_exn11135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11135_))
            (let ((_e11137_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11135_ 'exception))))
              (if (macro-module-not-found-exception? _e11137_)
                  (macro-module-not-found-exception-arguments _e11137_)
                  (let ((__tmp12075
                         (let ((__tmp12076
                                (let ()
                                  (declare (not safe))
                                  (cons _e11137_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp12076))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp12075))))
            (if (macro-module-not-found-exception? _exn11135_)
                (macro-module-not-found-exception-arguments _exn11135_)
                (let ((__tmp12073
                       (let ((__tmp12074
                              (let ()
                                (declare (not safe))
                                (cons _exn11135_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp12074))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp12073))))))
    (define module-not-found-exception-procedure
      (lambda (_exn11129_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11129_))
            (let ((_e11132_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11129_ 'exception))))
              (if (macro-module-not-found-exception? _e11132_)
                  (macro-module-not-found-exception-procedure _e11132_)
                  (let ((__tmp12079
                         (let ((__tmp12080
                                (let ()
                                  (declare (not safe))
                                  (cons _e11132_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp12080))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp12079))))
            (if (macro-module-not-found-exception? _exn11129_)
                (macro-module-not-found-exception-procedure _exn11129_)
                (let ((__tmp12077
                       (let ((__tmp12078
                              (let ()
                                (declare (not safe))
                                (cons _exn11129_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp12078))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp12077))))))
    (define multiple-c-return-exception?
      (lambda (_exn11123_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11123_))
            (let ((_e11126_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11123_ 'exception))))
              (macro-multiple-c-return-exception? _e11126_))
            (macro-multiple-c-return-exception? _exn11123_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn11119_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11119_))
            (let ((_e11121_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11119_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e11121_))
            (macro-no-such-file-or-directory-exception? _exn11119_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn11115_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11115_))
            (let ((_e11117_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11115_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11117_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e11117_)
                  (let ((__tmp12083
                         (let ((__tmp12084
                                (let ()
                                  (declare (not safe))
                                  (cons _e11117_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp12084))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp12083))))
            (if (macro-no-such-file-or-directory-exception? _exn11115_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn11115_)
                (let ((__tmp12081
                       (let ((__tmp12082
                              (let ()
                                (declare (not safe))
                                (cons _exn11115_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp12082))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp12081))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn11109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11109_))
            (let ((_e11112_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11109_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e11112_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e11112_)
                  (let ((__tmp12087
                         (let ((__tmp12088
                                (let ()
                                  (declare (not safe))
                                  (cons _e11112_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp12088))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp12087))))
            (if (macro-no-such-file-or-directory-exception? _exn11109_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn11109_)
                (let ((__tmp12085
                       (let ((__tmp12086
                              (let ()
                                (declare (not safe))
                                (cons _exn11109_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp12086))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp12085))))))
    (define noncontinuable-exception?
      (lambda (_exn11105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11105_))
            (let ((_e11107_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11105_ 'exception))))
              (macro-noncontinuable-exception? _e11107_))
            (macro-noncontinuable-exception? _exn11105_))))
    (define noncontinuable-exception-reason
      (lambda (_exn11099_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11099_))
            (let ((_e11102_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11099_ 'exception))))
              (if (macro-noncontinuable-exception? _e11102_)
                  (macro-noncontinuable-exception-reason _e11102_)
                  (let ((__tmp12091
                         (let ((__tmp12092
                                (let ()
                                  (declare (not safe))
                                  (cons _e11102_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp12092))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp12091))))
            (if (macro-noncontinuable-exception? _exn11099_)
                (macro-noncontinuable-exception-reason _exn11099_)
                (let ((__tmp12089
                       (let ((__tmp12090
                              (let ()
                                (declare (not safe))
                                (cons _exn11099_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp12090))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp12089))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn11095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11095_))
            (let ((_e11097_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11095_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e11097_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn11095_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn11091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11091_))
            (let ((_e11093_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11091_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11093_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e11093_)
                  (let ((__tmp12095
                         (let ((__tmp12096
                                (let ()
                                  (declare (not safe))
                                  (cons _e11093_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp12096))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp12095))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11091_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn11091_)
                (let ((__tmp12093
                       (let ((__tmp12094
                              (let ()
                                (declare (not safe))
                                (cons _exn11091_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp12094))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp12093))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn11085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11085_))
            (let ((_e11088_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11085_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e11088_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e11088_)
                  (let ((__tmp12099
                         (let ((__tmp12100
                                (let ()
                                  (declare (not safe))
                                  (cons _e11088_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp12100))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp12099))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn11085_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn11085_)
                (let ((__tmp12097
                       (let ((__tmp12098
                              (let ()
                                (declare (not safe))
                                (cons _exn11085_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp12098))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp12097))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn11081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11081_))
            (let ((_e11083_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11081_ 'exception))))
              (macro-nonprocedure-operator-exception? _e11083_))
            (macro-nonprocedure-operator-exception? _exn11081_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn11077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11077_))
            (let ((_e11079_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11077_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11079_)
                  (macro-nonprocedure-operator-exception-arguments _e11079_)
                  (let ((__tmp12103
                         (let ((__tmp12104
                                (let ()
                                  (declare (not safe))
                                  (cons _e11079_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp12104))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp12103))))
            (if (macro-nonprocedure-operator-exception? _exn11077_)
                (macro-nonprocedure-operator-exception-arguments _exn11077_)
                (let ((__tmp12101
                       (let ((__tmp12102
                              (let ()
                                (declare (not safe))
                                (cons _exn11077_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp12102))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp12101))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn11073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11073_))
            (let ((_e11075_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11073_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11075_)
                  (macro-nonprocedure-operator-exception-code _e11075_)
                  (let ((__tmp12107
                         (let ((__tmp12108
                                (let ()
                                  (declare (not safe))
                                  (cons _e11075_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp12108))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp12107))))
            (if (macro-nonprocedure-operator-exception? _exn11073_)
                (macro-nonprocedure-operator-exception-code _exn11073_)
                (let ((__tmp12105
                       (let ((__tmp12106
                              (let ()
                                (declare (not safe))
                                (cons _exn11073_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp12106))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp12105))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn11069_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11069_))
            (let ((_e11071_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11069_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11071_)
                  (macro-nonprocedure-operator-exception-operator _e11071_)
                  (let ((__tmp12111
                         (let ((__tmp12112
                                (let ()
                                  (declare (not safe))
                                  (cons _e11071_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp12112))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp12111))))
            (if (macro-nonprocedure-operator-exception? _exn11069_)
                (macro-nonprocedure-operator-exception-operator _exn11069_)
                (let ((__tmp12109
                       (let ((__tmp12110
                              (let ()
                                (declare (not safe))
                                (cons _exn11069_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp12110))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp12109))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn11063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11063_))
            (let ((_e11066_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11063_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e11066_)
                  (macro-nonprocedure-operator-exception-rte _e11066_)
                  (let ((__tmp12115
                         (let ((__tmp12116
                                (let ()
                                  (declare (not safe))
                                  (cons _e11066_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp12116))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp12115))))
            (if (macro-nonprocedure-operator-exception? _exn11063_)
                (macro-nonprocedure-operator-exception-rte _exn11063_)
                (let ((__tmp12113
                       (let ((__tmp12114
                              (let ()
                                (declare (not safe))
                                (cons _exn11063_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp12114))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp12113))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn11059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11059_))
            (let ((_e11061_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11059_ 'exception))))
              (macro-not-in-compilation-context-exception? _e11061_))
            (macro-not-in-compilation-context-exception? _exn11059_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn11055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11055_))
            (let ((_e11057_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11055_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11057_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e11057_)
                  (let ((__tmp12119
                         (let ((__tmp12120
                                (let ()
                                  (declare (not safe))
                                  (cons _e11057_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp12120))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp12119))))
            (if (macro-not-in-compilation-context-exception? _exn11055_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn11055_)
                (let ((__tmp12117
                       (let ((__tmp12118
                              (let ()
                                (declare (not safe))
                                (cons _exn11055_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp12118))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp12117))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn11049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11049_))
            (let ((_e11052_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11049_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e11052_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e11052_)
                  (let ((__tmp12123
                         (let ((__tmp12124
                                (let ()
                                  (declare (not safe))
                                  (cons _e11052_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp12124))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp12123))))
            (if (macro-not-in-compilation-context-exception? _exn11049_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn11049_)
                (let ((__tmp12121
                       (let ((__tmp12122
                              (let ()
                                (declare (not safe))
                                (cons _exn11049_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp12122))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp12121))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn11045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11045_))
            (let ((_e11047_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11045_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e11047_))
            (macro-number-of-arguments-limit-exception? _exn11045_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn11041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11041_))
            (let ((_e11043_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11041_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11043_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e11043_)
                  (let ((__tmp12127
                         (let ((__tmp12128
                                (let ()
                                  (declare (not safe))
                                  (cons _e11043_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp12128))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp12127))))
            (if (macro-number-of-arguments-limit-exception? _exn11041_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn11041_)
                (let ((__tmp12125
                       (let ((__tmp12126
                              (let ()
                                (declare (not safe))
                                (cons _exn11041_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp12126))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp12125))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn11035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11035_))
            (let ((_e11038_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11035_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e11038_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e11038_)
                  (let ((__tmp12131
                         (let ((__tmp12132
                                (let ()
                                  (declare (not safe))
                                  (cons _e11038_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp12132))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp12131))))
            (if (macro-number-of-arguments-limit-exception? _exn11035_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn11035_)
                (let ((__tmp12129
                       (let ((__tmp12130
                              (let ()
                                (declare (not safe))
                                (cons _exn11035_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp12130))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp12129))))))
    (define os-exception?
      (lambda (_exn11031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11031_))
            (let ((_e11033_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11031_ 'exception))))
              (macro-os-exception? _e11033_))
            (macro-os-exception? _exn11031_))))
    (define os-exception-arguments
      (lambda (_exn11027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11027_))
            (let ((_e11029_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11027_ 'exception))))
              (if (macro-os-exception? _e11029_)
                  (macro-os-exception-arguments _e11029_)
                  (let ((__tmp12135
                         (let ((__tmp12136
                                (let ()
                                  (declare (not safe))
                                  (cons _e11029_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp12136))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp12135))))
            (if (macro-os-exception? _exn11027_)
                (macro-os-exception-arguments _exn11027_)
                (let ((__tmp12133
                       (let ((__tmp12134
                              (let ()
                                (declare (not safe))
                                (cons _exn11027_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp12134))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp12133))))))
    (define os-exception-code
      (lambda (_exn11023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11023_))
            (let ((_e11025_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11023_ 'exception))))
              (if (macro-os-exception? _e11025_)
                  (macro-os-exception-code _e11025_)
                  (let ((__tmp12139
                         (let ((__tmp12140
                                (let ()
                                  (declare (not safe))
                                  (cons _e11025_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp12140))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp12139))))
            (if (macro-os-exception? _exn11023_)
                (macro-os-exception-code _exn11023_)
                (let ((__tmp12137
                       (let ((__tmp12138
                              (let ()
                                (declare (not safe))
                                (cons _exn11023_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp12138))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp12137))))))
    (define os-exception-message
      (lambda (_exn11019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11019_))
            (let ((_e11021_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11019_ 'exception))))
              (if (macro-os-exception? _e11021_)
                  (macro-os-exception-message _e11021_)
                  (let ((__tmp12143
                         (let ((__tmp12144
                                (let ()
                                  (declare (not safe))
                                  (cons _e11021_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp12144))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp12143))))
            (if (macro-os-exception? _exn11019_)
                (macro-os-exception-message _exn11019_)
                (let ((__tmp12141
                       (let ((__tmp12142
                              (let ()
                                (declare (not safe))
                                (cons _exn11019_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp12142))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp12141))))))
    (define os-exception-procedure
      (lambda (_exn11013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11013_))
            (let ((_e11016_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11013_ 'exception))))
              (if (macro-os-exception? _e11016_)
                  (macro-os-exception-procedure _e11016_)
                  (let ((__tmp12147
                         (let ((__tmp12148
                                (let ()
                                  (declare (not safe))
                                  (cons _e11016_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp12148))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp12147))))
            (if (macro-os-exception? _exn11013_)
                (macro-os-exception-procedure _exn11013_)
                (let ((__tmp12145
                       (let ((__tmp12146
                              (let ()
                                (declare (not safe))
                                (cons _exn11013_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp12146))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp12145))))))
    (define permission-denied-exception?
      (lambda (_exn11009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11009_))
            (let ((_e11011_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11009_ 'exception))))
              (macro-permission-denied-exception? _e11011_))
            (macro-permission-denied-exception? _exn11009_))))
    (define permission-denied-exception-arguments
      (lambda (_exn11005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn11005_))
            (let ((_e11007_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn11005_ 'exception))))
              (if (macro-permission-denied-exception? _e11007_)
                  (macro-permission-denied-exception-arguments _e11007_)
                  (let ((__tmp12151
                         (let ((__tmp12152
                                (let ()
                                  (declare (not safe))
                                  (cons _e11007_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp12152))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp12151))))
            (if (macro-permission-denied-exception? _exn11005_)
                (macro-permission-denied-exception-arguments _exn11005_)
                (let ((__tmp12149
                       (let ((__tmp12150
                              (let ()
                                (declare (not safe))
                                (cons _exn11005_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp12150))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp12149))))))
    (define permission-denied-exception-procedure
      (lambda (_exn10999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10999_))
            (let ((_e11002_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10999_ 'exception))))
              (if (macro-permission-denied-exception? _e11002_)
                  (macro-permission-denied-exception-procedure _e11002_)
                  (let ((__tmp12155
                         (let ((__tmp12156
                                (let ()
                                  (declare (not safe))
                                  (cons _e11002_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp12156))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp12155))))
            (if (macro-permission-denied-exception? _exn10999_)
                (macro-permission-denied-exception-procedure _exn10999_)
                (let ((__tmp12153
                       (let ((__tmp12154
                              (let ()
                                (declare (not safe))
                                (cons _exn10999_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp12154))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp12153))))))
    (define range-exception?
      (lambda (_exn10995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10995_))
            (let ((_e10997_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10995_ 'exception))))
              (macro-range-exception? _e10997_))
            (macro-range-exception? _exn10995_))))
    (define range-exception-arg-id
      (lambda (_exn10991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10991_))
            (let ((_e10993_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10991_ 'exception))))
              (if (macro-range-exception? _e10993_)
                  (macro-range-exception-arg-id _e10993_)
                  (let ((__tmp12159
                         (let ((__tmp12160
                                (let ()
                                  (declare (not safe))
                                  (cons _e10993_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp12160))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp12159))))
            (if (macro-range-exception? _exn10991_)
                (macro-range-exception-arg-id _exn10991_)
                (let ((__tmp12157
                       (let ((__tmp12158
                              (let ()
                                (declare (not safe))
                                (cons _exn10991_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp12158))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp12157))))))
    (define range-exception-arguments
      (lambda (_exn10987_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10987_))
            (let ((_e10989_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10987_ 'exception))))
              (if (macro-range-exception? _e10989_)
                  (macro-range-exception-arguments _e10989_)
                  (let ((__tmp12163
                         (let ((__tmp12164
                                (let ()
                                  (declare (not safe))
                                  (cons _e10989_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp12164))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp12163))))
            (if (macro-range-exception? _exn10987_)
                (macro-range-exception-arguments _exn10987_)
                (let ((__tmp12161
                       (let ((__tmp12162
                              (let ()
                                (declare (not safe))
                                (cons _exn10987_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp12162))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp12161))))))
    (define range-exception-procedure
      (lambda (_exn10981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10981_))
            (let ((_e10984_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10981_ 'exception))))
              (if (macro-range-exception? _e10984_)
                  (macro-range-exception-procedure _e10984_)
                  (let ((__tmp12167
                         (let ((__tmp12168
                                (let ()
                                  (declare (not safe))
                                  (cons _e10984_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp12168))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp12167))))
            (if (macro-range-exception? _exn10981_)
                (macro-range-exception-procedure _exn10981_)
                (let ((__tmp12165
                       (let ((__tmp12166
                              (let ()
                                (declare (not safe))
                                (cons _exn10981_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp12166))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp12165))))))
    (define rpc-remote-error-exception?
      (lambda (_exn10977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10977_))
            (let ((_e10979_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10977_ 'exception))))
              (macro-rpc-remote-error-exception? _e10979_))
            (macro-rpc-remote-error-exception? _exn10977_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn10973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10973_))
            (let ((_e10975_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10973_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e10975_)
                  (macro-rpc-remote-error-exception-arguments _e10975_)
                  (let ((__tmp12171
                         (let ((__tmp12172
                                (let ()
                                  (declare (not safe))
                                  (cons _e10975_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp12172))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp12171))))
            (if (macro-rpc-remote-error-exception? _exn10973_)
                (macro-rpc-remote-error-exception-arguments _exn10973_)
                (let ((__tmp12169
                       (let ((__tmp12170
                              (let ()
                                (declare (not safe))
                                (cons _exn10973_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp12170))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp12169))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn10969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10969_))
            (let ((_e10971_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10969_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e10971_)
                  (macro-rpc-remote-error-exception-message _e10971_)
                  (let ((__tmp12175
                         (let ((__tmp12176
                                (let ()
                                  (declare (not safe))
                                  (cons _e10971_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp12176))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp12175))))
            (if (macro-rpc-remote-error-exception? _exn10969_)
                (macro-rpc-remote-error-exception-message _exn10969_)
                (let ((__tmp12173
                       (let ((__tmp12174
                              (let ()
                                (declare (not safe))
                                (cons _exn10969_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp12174))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp12173))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn10963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10963_))
            (let ((_e10966_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10963_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e10966_)
                  (macro-rpc-remote-error-exception-procedure _e10966_)
                  (let ((__tmp12179
                         (let ((__tmp12180
                                (let ()
                                  (declare (not safe))
                                  (cons _e10966_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp12180))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp12179))))
            (if (macro-rpc-remote-error-exception? _exn10963_)
                (macro-rpc-remote-error-exception-procedure _exn10963_)
                (let ((__tmp12177
                       (let ((__tmp12178
                              (let ()
                                (declare (not safe))
                                (cons _exn10963_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp12178))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp12177))))))
    (define scheduler-exception?
      (lambda (_exn10959_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10959_))
            (let ((_e10961_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10959_ 'exception))))
              (macro-scheduler-exception? _e10961_))
            (macro-scheduler-exception? _exn10959_))))
    (define scheduler-exception-reason
      (lambda (_exn10953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10953_))
            (let ((_e10956_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10953_ 'exception))))
              (if (macro-scheduler-exception? _e10956_)
                  (macro-scheduler-exception-reason _e10956_)
                  (let ((__tmp12183
                         (let ((__tmp12184
                                (let ()
                                  (declare (not safe))
                                  (cons _e10956_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp12184))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp12183))))
            (if (macro-scheduler-exception? _exn10953_)
                (macro-scheduler-exception-reason _exn10953_)
                (let ((__tmp12181
                       (let ((__tmp12182
                              (let ()
                                (declare (not safe))
                                (cons _exn10953_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp12182))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp12181))))))
    (define sfun-conversion-exception?
      (lambda (_exn10949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10949_))
            (let ((_e10951_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10949_ 'exception))))
              (macro-sfun-conversion-exception? _e10951_))
            (macro-sfun-conversion-exception? _exn10949_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn10945_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10945_))
            (let ((_e10947_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10945_ 'exception))))
              (if (macro-sfun-conversion-exception? _e10947_)
                  (macro-sfun-conversion-exception-arguments _e10947_)
                  (let ((__tmp12187
                         (let ((__tmp12188
                                (let ()
                                  (declare (not safe))
                                  (cons _e10947_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp12188))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp12187))))
            (if (macro-sfun-conversion-exception? _exn10945_)
                (macro-sfun-conversion-exception-arguments _exn10945_)
                (let ((__tmp12185
                       (let ((__tmp12186
                              (let ()
                                (declare (not safe))
                                (cons _exn10945_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp12186))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp12185))))))
    (define sfun-conversion-exception-code
      (lambda (_exn10941_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10941_))
            (let ((_e10943_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10941_ 'exception))))
              (if (macro-sfun-conversion-exception? _e10943_)
                  (macro-sfun-conversion-exception-code _e10943_)
                  (let ((__tmp12191
                         (let ((__tmp12192
                                (let ()
                                  (declare (not safe))
                                  (cons _e10943_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp12192))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp12191))))
            (if (macro-sfun-conversion-exception? _exn10941_)
                (macro-sfun-conversion-exception-code _exn10941_)
                (let ((__tmp12189
                       (let ((__tmp12190
                              (let ()
                                (declare (not safe))
                                (cons _exn10941_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp12190))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp12189))))))
    (define sfun-conversion-exception-message
      (lambda (_exn10937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10937_))
            (let ((_e10939_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10937_ 'exception))))
              (if (macro-sfun-conversion-exception? _e10939_)
                  (macro-sfun-conversion-exception-message _e10939_)
                  (let ((__tmp12195
                         (let ((__tmp12196
                                (let ()
                                  (declare (not safe))
                                  (cons _e10939_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp12196))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp12195))))
            (if (macro-sfun-conversion-exception? _exn10937_)
                (macro-sfun-conversion-exception-message _exn10937_)
                (let ((__tmp12193
                       (let ((__tmp12194
                              (let ()
                                (declare (not safe))
                                (cons _exn10937_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp12194))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp12193))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn10931_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10931_))
            (let ((_e10934_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10931_ 'exception))))
              (if (macro-sfun-conversion-exception? _e10934_)
                  (macro-sfun-conversion-exception-procedure _e10934_)
                  (let ((__tmp12199
                         (let ((__tmp12200
                                (let ()
                                  (declare (not safe))
                                  (cons _e10934_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp12200))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp12199))))
            (if (macro-sfun-conversion-exception? _exn10931_)
                (macro-sfun-conversion-exception-procedure _exn10931_)
                (let ((__tmp12197
                       (let ((__tmp12198
                              (let ()
                                (declare (not safe))
                                (cons _exn10931_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp12198))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp12197))))))
    (define stack-overflow-exception?
      (lambda (_exn10925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10925_))
            (let ((_e10928_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10925_ 'exception))))
              (macro-stack-overflow-exception? _e10928_))
            (macro-stack-overflow-exception? _exn10925_))))
    (define started-thread-exception?
      (lambda (_exn10921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10921_))
            (let ((_e10923_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10921_ 'exception))))
              (macro-started-thread-exception? _e10923_))
            (macro-started-thread-exception? _exn10921_))))
    (define started-thread-exception-arguments
      (lambda (_exn10917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10917_))
            (let ((_e10919_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10917_ 'exception))))
              (if (macro-started-thread-exception? _e10919_)
                  (macro-started-thread-exception-arguments _e10919_)
                  (let ((__tmp12203
                         (let ((__tmp12204
                                (let ()
                                  (declare (not safe))
                                  (cons _e10919_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp12204))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp12203))))
            (if (macro-started-thread-exception? _exn10917_)
                (macro-started-thread-exception-arguments _exn10917_)
                (let ((__tmp12201
                       (let ((__tmp12202
                              (let ()
                                (declare (not safe))
                                (cons _exn10917_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp12202))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp12201))))))
    (define started-thread-exception-procedure
      (lambda (_exn10911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10911_))
            (let ((_e10914_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10911_ 'exception))))
              (if (macro-started-thread-exception? _e10914_)
                  (macro-started-thread-exception-procedure _e10914_)
                  (let ((__tmp12207
                         (let ((__tmp12208
                                (let ()
                                  (declare (not safe))
                                  (cons _e10914_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp12208))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp12207))))
            (if (macro-started-thread-exception? _exn10911_)
                (macro-started-thread-exception-procedure _exn10911_)
                (let ((__tmp12205
                       (let ((__tmp12206
                              (let ()
                                (declare (not safe))
                                (cons _exn10911_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp12206))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp12205))))))
    (define terminated-thread-exception?
      (lambda (_exn10907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10907_))
            (let ((_e10909_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10907_ 'exception))))
              (macro-terminated-thread-exception? _e10909_))
            (macro-terminated-thread-exception? _exn10907_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn10903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10903_))
            (let ((_e10905_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10903_ 'exception))))
              (if (macro-terminated-thread-exception? _e10905_)
                  (macro-terminated-thread-exception-arguments _e10905_)
                  (let ((__tmp12211
                         (let ((__tmp12212
                                (let ()
                                  (declare (not safe))
                                  (cons _e10905_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp12212))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp12211))))
            (if (macro-terminated-thread-exception? _exn10903_)
                (macro-terminated-thread-exception-arguments _exn10903_)
                (let ((__tmp12209
                       (let ((__tmp12210
                              (let ()
                                (declare (not safe))
                                (cons _exn10903_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp12210))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp12209))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn10897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10897_))
            (let ((_e10900_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10897_ 'exception))))
              (if (macro-terminated-thread-exception? _e10900_)
                  (macro-terminated-thread-exception-procedure _e10900_)
                  (let ((__tmp12215
                         (let ((__tmp12216
                                (let ()
                                  (declare (not safe))
                                  (cons _e10900_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp12216))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp12215))))
            (if (macro-terminated-thread-exception? _exn10897_)
                (macro-terminated-thread-exception-procedure _exn10897_)
                (let ((__tmp12213
                       (let ((__tmp12214
                              (let ()
                                (declare (not safe))
                                (cons _exn10897_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp12214))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp12213))))))
    (define type-exception?
      (lambda (_exn10893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10893_))
            (let ((_e10895_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10893_ 'exception))))
              (macro-type-exception? _e10895_))
            (macro-type-exception? _exn10893_))))
    (define type-exception-arg-id
      (lambda (_exn10889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10889_))
            (let ((_e10891_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10889_ 'exception))))
              (if (macro-type-exception? _e10891_)
                  (macro-type-exception-arg-id _e10891_)
                  (let ((__tmp12219
                         (let ((__tmp12220
                                (let ()
                                  (declare (not safe))
                                  (cons _e10891_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp12220))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp12219))))
            (if (macro-type-exception? _exn10889_)
                (macro-type-exception-arg-id _exn10889_)
                (let ((__tmp12217
                       (let ((__tmp12218
                              (let ()
                                (declare (not safe))
                                (cons _exn10889_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp12218))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp12217))))))
    (define type-exception-arguments
      (lambda (_exn10885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10885_))
            (let ((_e10887_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10885_ 'exception))))
              (if (macro-type-exception? _e10887_)
                  (macro-type-exception-arguments _e10887_)
                  (let ((__tmp12223
                         (let ((__tmp12224
                                (let ()
                                  (declare (not safe))
                                  (cons _e10887_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp12224))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp12223))))
            (if (macro-type-exception? _exn10885_)
                (macro-type-exception-arguments _exn10885_)
                (let ((__tmp12221
                       (let ((__tmp12222
                              (let ()
                                (declare (not safe))
                                (cons _exn10885_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp12222))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp12221))))))
    (define type-exception-procedure
      (lambda (_exn10881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10881_))
            (let ((_e10883_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10881_ 'exception))))
              (if (macro-type-exception? _e10883_)
                  (macro-type-exception-procedure _e10883_)
                  (let ((__tmp12227
                         (let ((__tmp12228
                                (let ()
                                  (declare (not safe))
                                  (cons _e10883_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp12228))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp12227))))
            (if (macro-type-exception? _exn10881_)
                (macro-type-exception-procedure _exn10881_)
                (let ((__tmp12225
                       (let ((__tmp12226
                              (let ()
                                (declare (not safe))
                                (cons _exn10881_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp12226))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp12225))))))
    (define type-exception-type-id
      (lambda (_exn10875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10875_))
            (let ((_e10878_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10875_ 'exception))))
              (if (macro-type-exception? _e10878_)
                  (macro-type-exception-type-id _e10878_)
                  (let ((__tmp12231
                         (let ((__tmp12232
                                (let ()
                                  (declare (not safe))
                                  (cons _e10878_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp12232))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp12231))))
            (if (macro-type-exception? _exn10875_)
                (macro-type-exception-type-id _exn10875_)
                (let ((__tmp12229
                       (let ((__tmp12230
                              (let ()
                                (declare (not safe))
                                (cons _exn10875_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp12230))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp12229))))))
    (define unbound-global-exception?
      (lambda (_exn10871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10871_))
            (let ((_e10873_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10871_ 'exception))))
              (macro-unbound-global-exception? _e10873_))
            (macro-unbound-global-exception? _exn10871_))))
    (define unbound-global-exception-code
      (lambda (_exn10867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10867_))
            (let ((_e10869_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10867_ 'exception))))
              (if (macro-unbound-global-exception? _e10869_)
                  (macro-unbound-global-exception-code _e10869_)
                  (let ((__tmp12235
                         (let ((__tmp12236
                                (let ()
                                  (declare (not safe))
                                  (cons _e10869_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp12236))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp12235))))
            (if (macro-unbound-global-exception? _exn10867_)
                (macro-unbound-global-exception-code _exn10867_)
                (let ((__tmp12233
                       (let ((__tmp12234
                              (let ()
                                (declare (not safe))
                                (cons _exn10867_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp12234))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp12233))))))
    (define unbound-global-exception-rte
      (lambda (_exn10863_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10863_))
            (let ((_e10865_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10863_ 'exception))))
              (if (macro-unbound-global-exception? _e10865_)
                  (macro-unbound-global-exception-rte _e10865_)
                  (let ((__tmp12239
                         (let ((__tmp12240
                                (let ()
                                  (declare (not safe))
                                  (cons _e10865_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp12240))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp12239))))
            (if (macro-unbound-global-exception? _exn10863_)
                (macro-unbound-global-exception-rte _exn10863_)
                (let ((__tmp12237
                       (let ((__tmp12238
                              (let ()
                                (declare (not safe))
                                (cons _exn10863_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp12238))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp12237))))))
    (define unbound-global-exception-variable
      (lambda (_exn10857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10857_))
            (let ((_e10860_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10857_ 'exception))))
              (if (macro-unbound-global-exception? _e10860_)
                  (macro-unbound-global-exception-variable _e10860_)
                  (let ((__tmp12243
                         (let ((__tmp12244
                                (let ()
                                  (declare (not safe))
                                  (cons _e10860_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp12244))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp12243))))
            (if (macro-unbound-global-exception? _exn10857_)
                (macro-unbound-global-exception-variable _exn10857_)
                (let ((__tmp12241
                       (let ((__tmp12242
                              (let ()
                                (declare (not safe))
                                (cons _exn10857_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp12242))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp12241))))))
    (define unbound-key-exception?
      (lambda (_exn10853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10853_))
            (let ((_e10855_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10853_ 'exception))))
              (macro-unbound-key-exception? _e10855_))
            (macro-unbound-key-exception? _exn10853_))))
    (define unbound-key-exception-arguments
      (lambda (_exn10849_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10849_))
            (let ((_e10851_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10849_ 'exception))))
              (if (macro-unbound-key-exception? _e10851_)
                  (macro-unbound-key-exception-arguments _e10851_)
                  (let ((__tmp12247
                         (let ((__tmp12248
                                (let ()
                                  (declare (not safe))
                                  (cons _e10851_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp12248))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp12247))))
            (if (macro-unbound-key-exception? _exn10849_)
                (macro-unbound-key-exception-arguments _exn10849_)
                (let ((__tmp12245
                       (let ((__tmp12246
                              (let ()
                                (declare (not safe))
                                (cons _exn10849_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp12246))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp12245))))))
    (define unbound-key-exception-procedure
      (lambda (_exn10843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10843_))
            (let ((_e10846_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10843_ 'exception))))
              (if (macro-unbound-key-exception? _e10846_)
                  (macro-unbound-key-exception-procedure _e10846_)
                  (let ((__tmp12251
                         (let ((__tmp12252
                                (let ()
                                  (declare (not safe))
                                  (cons _e10846_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp12252))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp12251))))
            (if (macro-unbound-key-exception? _exn10843_)
                (macro-unbound-key-exception-procedure _exn10843_)
                (let ((__tmp12249
                       (let ((__tmp12250
                              (let ()
                                (declare (not safe))
                                (cons _exn10843_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp12250))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp12249))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn10839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10839_))
            (let ((_e10841_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10839_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e10841_))
            (macro-unbound-os-environment-variable-exception? _exn10839_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn10835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10835_))
            (let ((_e10837_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10835_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e10837_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e10837_)
                  (let ((__tmp12255
                         (let ((__tmp12256
                                (let ()
                                  (declare (not safe))
                                  (cons _e10837_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp12256))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp12255))))
            (if (macro-unbound-os-environment-variable-exception? _exn10835_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn10835_)
                (let ((__tmp12253
                       (let ((__tmp12254
                              (let ()
                                (declare (not safe))
                                (cons _exn10835_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp12254))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp12253))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn10829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10829_))
            (let ((_e10832_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10829_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e10832_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e10832_)
                  (let ((__tmp12259
                         (let ((__tmp12260
                                (let ()
                                  (declare (not safe))
                                  (cons _e10832_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp12260))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp12259))))
            (if (macro-unbound-os-environment-variable-exception? _exn10829_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn10829_)
                (let ((__tmp12257
                       (let ((__tmp12258
                              (let ()
                                (declare (not safe))
                                (cons _exn10829_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp12258))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp12257))))))
    (define unbound-serial-number-exception?
      (lambda (_exn10825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10825_))
            (let ((_e10827_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10825_ 'exception))))
              (macro-unbound-serial-number-exception? _e10827_))
            (macro-unbound-serial-number-exception? _exn10825_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn10821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10821_))
            (let ((_e10823_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10821_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e10823_)
                  (macro-unbound-serial-number-exception-arguments _e10823_)
                  (let ((__tmp12263
                         (let ((__tmp12264
                                (let ()
                                  (declare (not safe))
                                  (cons _e10823_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp12264))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp12263))))
            (if (macro-unbound-serial-number-exception? _exn10821_)
                (macro-unbound-serial-number-exception-arguments _exn10821_)
                (let ((__tmp12261
                       (let ((__tmp12262
                              (let ()
                                (declare (not safe))
                                (cons _exn10821_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp12262))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp12261))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn10815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10815_))
            (let ((_e10818_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10815_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e10818_)
                  (macro-unbound-serial-number-exception-procedure _e10818_)
                  (let ((__tmp12267
                         (let ((__tmp12268
                                (let ()
                                  (declare (not safe))
                                  (cons _e10818_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp12268))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp12267))))
            (if (macro-unbound-serial-number-exception? _exn10815_)
                (macro-unbound-serial-number-exception-procedure _exn10815_)
                (let ((__tmp12265
                       (let ((__tmp12266
                              (let ()
                                (declare (not safe))
                                (cons _exn10815_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp12266))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp12265))))))
    (define uncaught-exception?
      (lambda (_exn10811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10811_))
            (let ((_e10813_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10811_ 'exception))))
              (macro-uncaught-exception? _e10813_))
            (macro-uncaught-exception? _exn10811_))))
    (define uncaught-exception-arguments
      (lambda (_exn10807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10807_))
            (let ((_e10809_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10807_ 'exception))))
              (if (macro-uncaught-exception? _e10809_)
                  (macro-uncaught-exception-arguments _e10809_)
                  (let ((__tmp12271
                         (let ((__tmp12272
                                (let ()
                                  (declare (not safe))
                                  (cons _e10809_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp12272))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp12271))))
            (if (macro-uncaught-exception? _exn10807_)
                (macro-uncaught-exception-arguments _exn10807_)
                (let ((__tmp12269
                       (let ((__tmp12270
                              (let ()
                                (declare (not safe))
                                (cons _exn10807_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp12270))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp12269))))))
    (define uncaught-exception-procedure
      (lambda (_exn10803_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10803_))
            (let ((_e10805_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10803_ 'exception))))
              (if (macro-uncaught-exception? _e10805_)
                  (macro-uncaught-exception-procedure _e10805_)
                  (let ((__tmp12275
                         (let ((__tmp12276
                                (let ()
                                  (declare (not safe))
                                  (cons _e10805_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp12276))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp12275))))
            (if (macro-uncaught-exception? _exn10803_)
                (macro-uncaught-exception-procedure _exn10803_)
                (let ((__tmp12273
                       (let ((__tmp12274
                              (let ()
                                (declare (not safe))
                                (cons _exn10803_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp12274))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp12273))))))
    (define uncaught-exception-reason
      (lambda (_exn10797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10797_))
            (let ((_e10800_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10797_ 'exception))))
              (if (macro-uncaught-exception? _e10800_)
                  (macro-uncaught-exception-reason _e10800_)
                  (let ((__tmp12279
                         (let ((__tmp12280
                                (let ()
                                  (declare (not safe))
                                  (cons _e10800_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp12280))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp12279))))
            (if (macro-uncaught-exception? _exn10797_)
                (macro-uncaught-exception-reason _exn10797_)
                (let ((__tmp12277
                       (let ((__tmp12278
                              (let ()
                                (declare (not safe))
                                (cons _exn10797_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp12278))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp12277))))))
    (define uninitialized-thread-exception?
      (lambda (_exn10793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10793_))
            (let ((_e10795_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10793_ 'exception))))
              (macro-uninitialized-thread-exception? _e10795_))
            (macro-uninitialized-thread-exception? _exn10793_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn10789_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10789_))
            (let ((_e10791_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10789_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e10791_)
                  (macro-uninitialized-thread-exception-arguments _e10791_)
                  (let ((__tmp12283
                         (let ((__tmp12284
                                (let ()
                                  (declare (not safe))
                                  (cons _e10791_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp12284))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp12283))))
            (if (macro-uninitialized-thread-exception? _exn10789_)
                (macro-uninitialized-thread-exception-arguments _exn10789_)
                (let ((__tmp12281
                       (let ((__tmp12282
                              (let ()
                                (declare (not safe))
                                (cons _exn10789_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp12282))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp12281))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn10783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10783_))
            (let ((_e10786_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10783_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e10786_)
                  (macro-uninitialized-thread-exception-procedure _e10786_)
                  (let ((__tmp12287
                         (let ((__tmp12288
                                (let ()
                                  (declare (not safe))
                                  (cons _e10786_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp12288))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp12287))))
            (if (macro-uninitialized-thread-exception? _exn10783_)
                (macro-uninitialized-thread-exception-procedure _exn10783_)
                (let ((__tmp12285
                       (let ((__tmp12286
                              (let ()
                                (declare (not safe))
                                (cons _exn10783_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp12286))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp12285))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn10779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10779_))
            (let ((_e10781_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10779_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e10781_))
            (macro-unknown-keyword-argument-exception? _exn10779_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn10775_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10775_))
            (let ((_e10777_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10775_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e10777_)
                  (macro-unknown-keyword-argument-exception-arguments _e10777_)
                  (let ((__tmp12291
                         (let ((__tmp12292
                                (let ()
                                  (declare (not safe))
                                  (cons _e10777_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp12292))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp12291))))
            (if (macro-unknown-keyword-argument-exception? _exn10775_)
                (macro-unknown-keyword-argument-exception-arguments _exn10775_)
                (let ((__tmp12289
                       (let ((__tmp12290
                              (let ()
                                (declare (not safe))
                                (cons _exn10775_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp12290))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp12289))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn10769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10769_))
            (let ((_e10772_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10769_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e10772_)
                  (macro-unknown-keyword-argument-exception-procedure _e10772_)
                  (let ((__tmp12295
                         (let ((__tmp12296
                                (let ()
                                  (declare (not safe))
                                  (cons _e10772_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp12296))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp12295))))
            (if (macro-unknown-keyword-argument-exception? _exn10769_)
                (macro-unknown-keyword-argument-exception-procedure _exn10769_)
                (let ((__tmp12293
                       (let ((__tmp12294
                              (let ()
                                (declare (not safe))
                                (cons _exn10769_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp12294))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp12293))))))
    (define unterminated-process-exception?
      (lambda (_exn10765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10765_))
            (let ((_e10767_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10765_ 'exception))))
              (macro-unterminated-process-exception? _e10767_))
            (macro-unterminated-process-exception? _exn10765_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn10761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10761_))
            (let ((_e10763_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10761_ 'exception))))
              (if (macro-unterminated-process-exception? _e10763_)
                  (macro-unterminated-process-exception-arguments _e10763_)
                  (let ((__tmp12299
                         (let ((__tmp12300
                                (let ()
                                  (declare (not safe))
                                  (cons _e10763_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp12300))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp12299))))
            (if (macro-unterminated-process-exception? _exn10761_)
                (macro-unterminated-process-exception-arguments _exn10761_)
                (let ((__tmp12297
                       (let ((__tmp12298
                              (let ()
                                (declare (not safe))
                                (cons _exn10761_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp12298))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp12297))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn10755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10755_))
            (let ((_e10758_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10755_ 'exception))))
              (if (macro-unterminated-process-exception? _e10758_)
                  (macro-unterminated-process-exception-procedure _e10758_)
                  (let ((__tmp12303
                         (let ((__tmp12304
                                (let ()
                                  (declare (not safe))
                                  (cons _e10758_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp12304))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp12303))))
            (if (macro-unterminated-process-exception? _exn10755_)
                (macro-unterminated-process-exception-procedure _exn10755_)
                (let ((__tmp12301
                       (let ((__tmp12302
                              (let ()
                                (declare (not safe))
                                (cons _exn10755_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp12302))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp12301))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn10751_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10751_))
            (let ((_e10753_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10751_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e10753_))
            (macro-wrong-number-of-arguments-exception? _exn10751_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn10747_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10747_))
            (let ((_e10749_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10747_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e10749_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e10749_)
                  (let ((__tmp12307
                         (let ((__tmp12308
                                (let ()
                                  (declare (not safe))
                                  (cons _e10749_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp12308))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp12307))))
            (if (macro-wrong-number-of-arguments-exception? _exn10747_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn10747_)
                (let ((__tmp12305
                       (let ((__tmp12306
                              (let ()
                                (declare (not safe))
                                (cons _exn10747_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp12306))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp12305))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn10741_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10741_))
            (let ((_e10744_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10741_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e10744_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e10744_)
                  (let ((__tmp12311
                         (let ((__tmp12312
                                (let ()
                                  (declare (not safe))
                                  (cons _e10744_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp12312))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp12311))))
            (if (macro-wrong-number-of-arguments-exception? _exn10741_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn10741_)
                (let ((__tmp12309
                       (let ((__tmp12310
                              (let ()
                                (declare (not safe))
                                (cons _exn10741_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp12310))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp12309))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn10737_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10737_))
            (let ((_e10739_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10737_ 'exception))))
              (macro-wrong-number-of-values-exception? _e10739_))
            (macro-wrong-number-of-values-exception? _exn10737_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn10733_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10733_))
            (let ((_e10735_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10733_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e10735_)
                  (macro-wrong-number-of-values-exception-code _e10735_)
                  (let ((__tmp12315
                         (let ((__tmp12316
                                (let ()
                                  (declare (not safe))
                                  (cons _e10735_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp12316))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp12315))))
            (if (macro-wrong-number-of-values-exception? _exn10733_)
                (macro-wrong-number-of-values-exception-code _exn10733_)
                (let ((__tmp12313
                       (let ((__tmp12314
                              (let ()
                                (declare (not safe))
                                (cons _exn10733_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp12314))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp12313))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn10729_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10729_))
            (let ((_e10731_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10729_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e10731_)
                  (macro-wrong-number-of-values-exception-rte _e10731_)
                  (let ((__tmp12319
                         (let ((__tmp12320
                                (let ()
                                  (declare (not safe))
                                  (cons _e10731_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp12320))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp12319))))
            (if (macro-wrong-number-of-values-exception? _exn10729_)
                (macro-wrong-number-of-values-exception-rte _exn10729_)
                (let ((__tmp12317
                       (let ((__tmp12318
                              (let ()
                                (declare (not safe))
                                (cons _exn10729_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp12318))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp12317))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn10723_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10723_))
            (let ((_e10726_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10723_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e10726_)
                  (macro-wrong-number-of-values-exception-vals _e10726_)
                  (let ((__tmp12323
                         (let ((__tmp12324
                                (let ()
                                  (declare (not safe))
                                  (cons _e10726_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp12324))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp12323))))
            (if (macro-wrong-number-of-values-exception? _exn10723_)
                (macro-wrong-number-of-values-exception-vals _exn10723_)
                (let ((__tmp12321
                       (let ((__tmp12322
                              (let ()
                                (declare (not safe))
                                (cons _exn10723_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp12322))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp12321))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn10717_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn10717_))
            (let ((_e10720_
                   (let ()
                     (declare (not safe))
                     (slot-ref _exn10717_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e10720_))
            (macro-wrong-processor-c-return-exception? _exn10717_))))))
