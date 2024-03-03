(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1709457368)
  (begin
    (define Exception::t
      (let ((__tmp66947 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66947
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66915_ (apply make-instance Exception::t _$args66915_)))
    (define StackTrace::t
      (let ((__tmp66948 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66948
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66912_ (apply make-instance StackTrace::t _$args66912_)))
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
      (let ((__tmp66949 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66949
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66909_ (apply make-instance Error::t _$args66909_)))
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
      (let ((__tmp66950 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66950
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66906_
        (apply make-instance RuntimeException::t _$args66906_)))
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
      (lambda (_exn66901_ _continue66902_)
        (let ((_exn66904_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66901_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66904_ _continue66902_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66897_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66897_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66897_ 'continuation))
                '#!void
                (let ((__tmp66951
                       (lambda (_cont66899_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66897_
                            'continuation
                            _cont66899_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66951)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66897_))))
    (define error
      (lambda (_message66894_ . _irritants66895_)
        (raise (let ((__obj66941
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66941
                  _message66894_
                  'irritants:
                  _irritants66895_)
                 __obj66941))))
    (define with-exception-handler
      (lambda (_handler66887_ _thunk66888_)
        (if (let () (declare (not safe)) (procedure? _handler66887_))
            '#!void
            (raise (let ((__obj66942
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66942
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66887_ '())))
                     __obj66942)))
        (if (let () (declare (not safe)) (procedure? _thunk66888_))
            '#!void
            (raise (let ((__obj66943
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66943
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66888_ '())))
                     __obj66943)))
        (let ((__tmp66952
               (lambda (_exn66890_)
                 (let ((_exn66892_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66890_))))
                   (_handler66887_ _exn66892_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66952 _thunk66888_))))
    (define with-catch
      (lambda (_handler66880_ _thunk66881_)
        (if (let () (declare (not safe)) (procedure? _handler66880_))
            '#!void
            (raise (let ((__obj66944
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66944
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66880_ '())))
                     __obj66944)))
        (if (let () (declare (not safe)) (procedure? _thunk66881_))
            '#!void
            (raise (let ((__obj66945
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66945
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66881_ '())))
                     __obj66945)))
        (let ((__tmp66953
               (lambda (_cont66883_)
                 (with-exception-handler
                  (lambda (_exn66885_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont66883_
                       _handler66880_
                       _exn66885_)))
                  _thunk66881_))))
          (declare (not safe))
          (##continuation-capture __tmp66953))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66871_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66871_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66871_)))
            _exn66871_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66871_))
                _exn66871_
                (if (macro-exception? _exn66871_)
                    (let ((_rte66876_
                           (let ((__obj66946
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66946
                                _exn66871_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66946)))
                      (let ((__tmp66954
                             (lambda (_cont66878_)
                               (let ((__tmp66955
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66878_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66876_
                                  'continuation
                                  __tmp66955)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66954))
                      _rte66876_)
                    _exn66871_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj66866_)
        (let ((_$e66868_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj66866_))))
          (if _$e66868_
              _$e66868_
              (let () (declare (not safe)) (error-exception? _obj66866_))))))
    (define error-message
      (lambda (_obj66864_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66864_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66864_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj66864_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj66864_))
                '#f))))
    (define error-irritants
      (lambda (_obj66862_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66862_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66862_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj66862_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj66862_))
                '#f))))
    (define error-trace
      (lambda (_obj66860_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj66860_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj66860_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e66842_ _port66843_)
        (let ((_$e66845_
               (let ()
                 (declare (not safe))
                 (method-ref _e66842_ 'display-exception))))
          (if _$e66845_
              ((lambda (_f66848_) (_f66848_ _e66842_ _port66843_)) _$e66845_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e66842_ _port66843_))))))
    (define display-exception__0
      (lambda (_e66853_)
        (let ((_port66855_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e66853_ _port66855_))))
    (define display-exception
      (lambda _g66957_
        (let ((_g66956_ (let () (declare (not safe)) (##length _g66957_))))
          (cond ((let () (declare (not safe)) (##fx= _g66956_ 1))
                 (apply (lambda (_e66853_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e66853_)))
                        _g66957_))
                ((let () (declare (not safe)) (##fx= _g66956_ 2))
                 (apply (lambda (_e66857_ _port66858_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e66857_ _port66858_)))
                        _g66957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66957_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self66831_ _message66832_ . _rest66833_)
        (let ((_message66839_
               (if (let () (declare (not safe)) (string? _message66832_))
                   _message66832_
                   (call-with-output-string
                    '""
                    (lambda (_g6683466836_)
                      (display _message66832_ _g6683466836_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self66831_ 'message _message66839_))
          (apply class-instance-init! _self66831_ _rest66833_))))
    (define Error:::init!::specialize
      (lambda (__klass66917 __method-table66918)
        (let ((__message66919
               (let ((__slot66920
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66917 'message))))
                 (if __slot66920
                     __slot66920
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self66831_ _message66832_ . _rest66833_)
            (let ((_message66839_
                   (if (let () (declare (not safe)) (string? _message66832_))
                       _message66832_
                       (call-with-output-string
                        '""
                        (lambda (_g6683466836_)
                          (display _message66832_ _g6683466836_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self66831_
                 _message66839_
                 __message66919
                 __klass66917
                 '#f))
              (apply class-instance-init! _self66831_ _rest66833_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self66689_ _port66690_)
        (let ((_tmp-port66692_ (open-output-string))
              (_display-error-newline66693_
               (> (output-port-column _port66690_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66692_))
          (let ((__tmp66958
                 (lambda ()
                   (if _display-error-newline66693_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e66696_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66689_ 'where))))
                     (if _$e66696_ (display _$e66696_) (display '"?")))
                   (let ((__tmp66959
                          (let ((__tmp66960 (object-type _self66689_)))
                            (declare (not safe))
                            (##type-name __tmp66960))))
                     (declare (not safe))
                     (display* '" [" __tmp66959 '"]: "))
                   (let ((__tmp66961
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66689_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66961))
                   (let ((_irritants66699_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self66689_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants66699_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj66701_)
                              (write _obj66701_)
                              (write-char '#\space))
                            _irritants66699_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self66689_))
                            (dump-stack-trace?))
                       (let ((_cont6670266704_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self66689_
                                 'continuation))))
                         (if _cont6670266704_
                             (let ((_cont66707_ _cont6670266704_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont66707_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66958
             current-output-port
             _tmp-port66692_))
          (let ((__tmp66962 (get-output-string _tmp-port66692_)))
            (declare (not safe))
            (##write-string __tmp66962 _port66690_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66921 __method-table66922)
        (let ((__irritants66923
               (let ((__slot66927
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66921 'irritants))))
                 (if __slot66927
                     __slot66927
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message66924
               (let ((__slot66928
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66921 'message))))
                 (if __slot66928
                     __slot66928
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where66925
               (let ((__slot66929
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66921 'where))))
                 (if __slot66929
                     __slot66929
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__continuation66926
               (let ((__slot66930
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66921 'continuation))))
                 (if __slot66930
                     __slot66930
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self66689_ _port66690_)
            (let ((_tmp-port66692_ (open-output-string))
                  (_display-error-newline66693_
                   (> (output-port-column _port66690_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66692_))
              (let ((__tmp66963
                     (lambda ()
                       (if _display-error-newline66693_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e66696_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66689_
                                 __where66925
                                 __klass66921
                                 '#f))))
                         (if _$e66696_ (display _$e66696_) (display '"?")))
                       (let ((__tmp66964
                              (let ((__tmp66965 (object-type _self66689_)))
                                (declare (not safe))
                                (##type-name __tmp66965))))
                         (declare (not safe))
                         (display* '" [" __tmp66964 '"]: "))
                       (let ((__tmp66966
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66689_
                                 __message66924
                                 __klass66921
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66966))
                       (let ((_irritants66699_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self66689_
                                 __irritants66923
                                 __klass66921
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants66699_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj66701_)
                                  (write _obj66701_)
                                  (write-char '#\space))
                                _irritants66699_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self66689_))
                                (dump-stack-trace?))
                           (let ((_cont6670266704_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self66689_
                                     __continuation66926
                                     __klass66921
                                     '#f))))
                             (if _cont6670266704_
                                 (let ((_cont66707_ _cont6670266704_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont66707_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66963
                 current-output-port
                 _tmp-port66692_))
              (let ((__tmp66967 (get-output-string _tmp-port66692_)))
                (declare (not safe))
                (##write-string __tmp66967 _port66690_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_self66556_ _port66557_)
        (let ((_tmp-port66559_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port66559_))
          (let ((__tmp66968
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self66556_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66968 _tmp-port66559_))
          (if (dump-stack-trace?)
              (let ((_cont6656066562_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self66556_ 'continuation))))
                (if _cont6656066562_
                    (let ((_cont66565_ _cont6656066562_))
                      (display '"--- continuation backtrace:" _tmp-port66559_)
                      (newline _tmp-port66559_)
                      (display-continuation-backtrace
                       _cont66565_
                       _tmp-port66559_))
                    '#f))
              '#!void)
          (let ((__tmp66969 (get-output-string _tmp-port66559_)))
            (declare (not safe))
            (##write-string __tmp66969 _port66557_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66931 __method-table66932)
        (let ((__exception66933
               (let ((__slot66935
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66931 'exception))))
                 (if __slot66935
                     __slot66935
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation66934
               (let ((__slot66936
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66931 'continuation))))
                 (if __slot66936
                     __slot66936
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self66556_ _port66557_)
            (let ((_tmp-port66559_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port66559_))
              (let ((__tmp66970
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self66556_
                        __exception66933
                        __klass66931
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66970 _tmp-port66559_))
              (if (dump-stack-trace?)
                  (let ((_cont6656066562_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self66556_
                            __continuation66934
                            __klass66931
                            '#f))))
                    (if _cont6656066562_
                        (let ((_cont66565_ _cont6656066562_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port66559_)
                          (newline _tmp-port66559_)
                          (display-continuation-backtrace
                           _cont66565_
                           _tmp-port66559_))
                        '#f))
                  '#!void)
              (let ((__tmp66971 (get-output-string _tmp-port66559_)))
                (declare (not safe))
                (##write-string __tmp66971 _port66557_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_port66428_)
        (if (macro-character-port? _port66428_)
            (let ((_old-width66430_
                   (macro-character-port-output-width _port66428_)))
              (macro-character-port-output-width-set!
               _port66428_
               (lambda (_port66432_) '256))
              _old-width66430_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port66425_ _old-width66426_)
        (if (macro-character-port? _port66425_)
            (macro-character-port-output-width-set!
             _port66425_
             _old-width66426_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e66423_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e66423_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn66417_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66417_))
            (let ((_e66420_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66417_ 'exception))))
              (macro-abandoned-mutex-exception? _e66420_))
            (macro-abandoned-mutex-exception? _exn66417_))))
    (define cfun-conversion-exception?
      (lambda (_exn66413_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66413_))
            (let ((_e66415_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66413_ 'exception))))
              (macro-cfun-conversion-exception? _e66415_))
            (macro-cfun-conversion-exception? _exn66413_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn66409_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66409_))
            (let ((_e66411_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66409_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66411_)
                  (macro-cfun-conversion-exception-arguments _e66411_)
                  (let ((__tmp66974
                         (let ((__tmp66975
                                (let ()
                                  (declare (not safe))
                                  (cons _e66411_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66975))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66974))))
            (if (macro-cfun-conversion-exception? _exn66409_)
                (macro-cfun-conversion-exception-arguments _exn66409_)
                (let ((__tmp66972
                       (let ((__tmp66973
                              (let ()
                                (declare (not safe))
                                (cons _exn66409_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66973))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66972))))))
    (define cfun-conversion-exception-code
      (lambda (_exn66405_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66405_))
            (let ((_e66407_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66405_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66407_)
                  (macro-cfun-conversion-exception-code _e66407_)
                  (let ((__tmp66978
                         (let ((__tmp66979
                                (let ()
                                  (declare (not safe))
                                  (cons _e66407_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66979))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66978))))
            (if (macro-cfun-conversion-exception? _exn66405_)
                (macro-cfun-conversion-exception-code _exn66405_)
                (let ((__tmp66976
                       (let ((__tmp66977
                              (let ()
                                (declare (not safe))
                                (cons _exn66405_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66977))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66976))))))
    (define cfun-conversion-exception-message
      (lambda (_exn66401_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66401_))
            (let ((_e66403_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66401_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66403_)
                  (macro-cfun-conversion-exception-message _e66403_)
                  (let ((__tmp66982
                         (let ((__tmp66983
                                (let ()
                                  (declare (not safe))
                                  (cons _e66403_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66983))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66982))))
            (if (macro-cfun-conversion-exception? _exn66401_)
                (macro-cfun-conversion-exception-message _exn66401_)
                (let ((__tmp66980
                       (let ((__tmp66981
                              (let ()
                                (declare (not safe))
                                (cons _exn66401_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66981))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66980))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn66395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66395_))
            (let ((_e66398_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66395_ 'exception))))
              (if (macro-cfun-conversion-exception? _e66398_)
                  (macro-cfun-conversion-exception-procedure _e66398_)
                  (let ((__tmp66986
                         (let ((__tmp66987
                                (let ()
                                  (declare (not safe))
                                  (cons _e66398_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66987))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66986))))
            (if (macro-cfun-conversion-exception? _exn66395_)
                (macro-cfun-conversion-exception-procedure _exn66395_)
                (let ((__tmp66984
                       (let ((__tmp66985
                              (let ()
                                (declare (not safe))
                                (cons _exn66395_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66985))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66984))))))
    (define datum-parsing-exception?
      (lambda (_exn66391_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66391_))
            (let ((_e66393_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66391_ 'exception))))
              (macro-datum-parsing-exception? _e66393_))
            (macro-datum-parsing-exception? _exn66391_))))
    (define datum-parsing-exception-kind
      (lambda (_exn66387_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66387_))
            (let ((_e66389_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66387_ 'exception))))
              (if (macro-datum-parsing-exception? _e66389_)
                  (macro-datum-parsing-exception-kind _e66389_)
                  (let ((__tmp66990
                         (let ((__tmp66991
                                (let ()
                                  (declare (not safe))
                                  (cons _e66389_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66991))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66990))))
            (if (macro-datum-parsing-exception? _exn66387_)
                (macro-datum-parsing-exception-kind _exn66387_)
                (let ((__tmp66988
                       (let ((__tmp66989
                              (let ()
                                (declare (not safe))
                                (cons _exn66387_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66989))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66988))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn66383_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66383_))
            (let ((_e66385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66383_ 'exception))))
              (if (macro-datum-parsing-exception? _e66385_)
                  (macro-datum-parsing-exception-parameters _e66385_)
                  (let ((__tmp66994
                         (let ((__tmp66995
                                (let ()
                                  (declare (not safe))
                                  (cons _e66385_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66995))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66994))))
            (if (macro-datum-parsing-exception? _exn66383_)
                (macro-datum-parsing-exception-parameters _exn66383_)
                (let ((__tmp66992
                       (let ((__tmp66993
                              (let ()
                                (declare (not safe))
                                (cons _exn66383_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66993))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66992))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn66377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66377_))
            (let ((_e66380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66377_ 'exception))))
              (if (macro-datum-parsing-exception? _e66380_)
                  (macro-datum-parsing-exception-readenv _e66380_)
                  (let ((__tmp66998
                         (let ((__tmp66999
                                (let ()
                                  (declare (not safe))
                                  (cons _e66380_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66999))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66998))))
            (if (macro-datum-parsing-exception? _exn66377_)
                (macro-datum-parsing-exception-readenv _exn66377_)
                (let ((__tmp66996
                       (let ((__tmp66997
                              (let ()
                                (declare (not safe))
                                (cons _exn66377_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66997))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66996))))))
    (define deadlock-exception?
      (lambda (_exn66371_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66371_))
            (let ((_e66374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66371_ 'exception))))
              (macro-deadlock-exception? _e66374_))
            (macro-deadlock-exception? _exn66371_))))
    (define divide-by-zero-exception?
      (lambda (_exn66367_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66367_))
            (let ((_e66369_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66367_ 'exception))))
              (macro-divide-by-zero-exception? _e66369_))
            (macro-divide-by-zero-exception? _exn66367_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn66363_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66363_))
            (let ((_e66365_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66363_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66365_)
                  (macro-divide-by-zero-exception-arguments _e66365_)
                  (let ((__tmp67002
                         (let ((__tmp67003
                                (let ()
                                  (declare (not safe))
                                  (cons _e66365_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp67003))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67002))))
            (if (macro-divide-by-zero-exception? _exn66363_)
                (macro-divide-by-zero-exception-arguments _exn66363_)
                (let ((__tmp67000
                       (let ((__tmp67001
                              (let ()
                                (declare (not safe))
                                (cons _exn66363_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp67001))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67000))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn66357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66357_))
            (let ((_e66360_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66357_ 'exception))))
              (if (macro-divide-by-zero-exception? _e66360_)
                  (macro-divide-by-zero-exception-procedure _e66360_)
                  (let ((__tmp67006
                         (let ((__tmp67007
                                (let ()
                                  (declare (not safe))
                                  (cons _e66360_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp67007))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67006))))
            (if (macro-divide-by-zero-exception? _exn66357_)
                (macro-divide-by-zero-exception-procedure _exn66357_)
                (let ((__tmp67004
                       (let ((__tmp67005
                              (let ()
                                (declare (not safe))
                                (cons _exn66357_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp67005))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67004))))))
    (define error-exception?
      (lambda (_exn66353_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66353_))
            (let ((_e66355_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66353_ 'exception))))
              (macro-error-exception? _e66355_))
            (macro-error-exception? _exn66353_))))
    (define error-exception-message
      (lambda (_exn66349_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66349_))
            (let ((_e66351_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66349_ 'exception))))
              (if (macro-error-exception? _e66351_)
                  (macro-error-exception-message _e66351_)
                  (let ((__tmp67010
                         (let ((__tmp67011
                                (let ()
                                  (declare (not safe))
                                  (cons _e66351_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp67011))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67010))))
            (if (macro-error-exception? _exn66349_)
                (macro-error-exception-message _exn66349_)
                (let ((__tmp67008
                       (let ((__tmp67009
                              (let ()
                                (declare (not safe))
                                (cons _exn66349_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp67009))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67008))))))
    (define error-exception-parameters
      (lambda (_exn66343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66343_))
            (let ((_e66346_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66343_ 'exception))))
              (if (macro-error-exception? _e66346_)
                  (macro-error-exception-parameters _e66346_)
                  (let ((__tmp67014
                         (let ((__tmp67015
                                (let ()
                                  (declare (not safe))
                                  (cons _e66346_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp67015))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67014))))
            (if (macro-error-exception? _exn66343_)
                (macro-error-exception-parameters _exn66343_)
                (let ((__tmp67012
                       (let ((__tmp67013
                              (let ()
                                (declare (not safe))
                                (cons _exn66343_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp67013))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67012))))))
    (define expression-parsing-exception?
      (lambda (_exn66339_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66339_))
            (let ((_e66341_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66339_ 'exception))))
              (macro-expression-parsing-exception? _e66341_))
            (macro-expression-parsing-exception? _exn66339_))))
    (define expression-parsing-exception-kind
      (lambda (_exn66335_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66335_))
            (let ((_e66337_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66335_ 'exception))))
              (if (macro-expression-parsing-exception? _e66337_)
                  (macro-expression-parsing-exception-kind _e66337_)
                  (let ((__tmp67018
                         (let ((__tmp67019
                                (let ()
                                  (declare (not safe))
                                  (cons _e66337_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp67019))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67018))))
            (if (macro-expression-parsing-exception? _exn66335_)
                (macro-expression-parsing-exception-kind _exn66335_)
                (let ((__tmp67016
                       (let ((__tmp67017
                              (let ()
                                (declare (not safe))
                                (cons _exn66335_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp67017))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67016))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn66331_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66331_))
            (let ((_e66333_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66331_ 'exception))))
              (if (macro-expression-parsing-exception? _e66333_)
                  (macro-expression-parsing-exception-parameters _e66333_)
                  (let ((__tmp67022
                         (let ((__tmp67023
                                (let ()
                                  (declare (not safe))
                                  (cons _e66333_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp67023))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67022))))
            (if (macro-expression-parsing-exception? _exn66331_)
                (macro-expression-parsing-exception-parameters _exn66331_)
                (let ((__tmp67020
                       (let ((__tmp67021
                              (let ()
                                (declare (not safe))
                                (cons _exn66331_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp67021))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67020))))))
    (define expression-parsing-exception-source
      (lambda (_exn66325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66325_))
            (let ((_e66328_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66325_ 'exception))))
              (if (macro-expression-parsing-exception? _e66328_)
                  (macro-expression-parsing-exception-source _e66328_)
                  (let ((__tmp67026
                         (let ((__tmp67027
                                (let ()
                                  (declare (not safe))
                                  (cons _e66328_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp67027))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67026))))
            (if (macro-expression-parsing-exception? _exn66325_)
                (macro-expression-parsing-exception-source _exn66325_)
                (let ((__tmp67024
                       (let ((__tmp67025
                              (let ()
                                (declare (not safe))
                                (cons _exn66325_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp67025))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67024))))))
    (define file-exists-exception?
      (lambda (_exn66321_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66321_))
            (let ((_e66323_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66321_ 'exception))))
              (macro-file-exists-exception? _e66323_))
            (macro-file-exists-exception? _exn66321_))))
    (define file-exists-exception-arguments
      (lambda (_exn66317_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66317_))
            (let ((_e66319_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66317_ 'exception))))
              (if (macro-file-exists-exception? _e66319_)
                  (macro-file-exists-exception-arguments _e66319_)
                  (let ((__tmp67030
                         (let ((__tmp67031
                                (let ()
                                  (declare (not safe))
                                  (cons _e66319_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp67031))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp67030))))
            (if (macro-file-exists-exception? _exn66317_)
                (macro-file-exists-exception-arguments _exn66317_)
                (let ((__tmp67028
                       (let ((__tmp67029
                              (let ()
                                (declare (not safe))
                                (cons _exn66317_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp67029))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp67028))))))
    (define file-exists-exception-procedure
      (lambda (_exn66311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66311_))
            (let ((_e66314_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66311_ 'exception))))
              (if (macro-file-exists-exception? _e66314_)
                  (macro-file-exists-exception-procedure _e66314_)
                  (let ((__tmp67034
                         (let ((__tmp67035
                                (let ()
                                  (declare (not safe))
                                  (cons _e66314_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp67035))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp67034))))
            (if (macro-file-exists-exception? _exn66311_)
                (macro-file-exists-exception-procedure _exn66311_)
                (let ((__tmp67032
                       (let ((__tmp67033
                              (let ()
                                (declare (not safe))
                                (cons _exn66311_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp67033))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp67032))))))
    (define fixnum-overflow-exception?
      (lambda (_exn66307_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66307_))
            (let ((_e66309_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66307_ 'exception))))
              (macro-fixnum-overflow-exception? _e66309_))
            (macro-fixnum-overflow-exception? _exn66307_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn66303_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66303_))
            (let ((_e66305_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66303_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66305_)
                  (macro-fixnum-overflow-exception-arguments _e66305_)
                  (let ((__tmp67038
                         (let ((__tmp67039
                                (let ()
                                  (declare (not safe))
                                  (cons _e66305_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp67039))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp67038))))
            (if (macro-fixnum-overflow-exception? _exn66303_)
                (macro-fixnum-overflow-exception-arguments _exn66303_)
                (let ((__tmp67036
                       (let ((__tmp67037
                              (let ()
                                (declare (not safe))
                                (cons _exn66303_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp67037))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp67036))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn66297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66297_))
            (let ((_e66300_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66297_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e66300_)
                  (macro-fixnum-overflow-exception-procedure _e66300_)
                  (let ((__tmp67042
                         (let ((__tmp67043
                                (let ()
                                  (declare (not safe))
                                  (cons _e66300_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp67043))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp67042))))
            (if (macro-fixnum-overflow-exception? _exn66297_)
                (macro-fixnum-overflow-exception-procedure _exn66297_)
                (let ((__tmp67040
                       (let ((__tmp67041
                              (let ()
                                (declare (not safe))
                                (cons _exn66297_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp67041))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp67040))))))
    (define heap-overflow-exception?
      (lambda (_exn66291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66291_))
            (let ((_e66294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66291_ 'exception))))
              (macro-heap-overflow-exception? _e66294_))
            (macro-heap-overflow-exception? _exn66291_))))
    (define inactive-thread-exception?
      (lambda (_exn66287_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66287_))
            (let ((_e66289_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66287_ 'exception))))
              (macro-inactive-thread-exception? _e66289_))
            (macro-inactive-thread-exception? _exn66287_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn66283_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66283_))
            (let ((_e66285_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66283_ 'exception))))
              (if (macro-inactive-thread-exception? _e66285_)
                  (macro-inactive-thread-exception-arguments _e66285_)
                  (let ((__tmp67046
                         (let ((__tmp67047
                                (let ()
                                  (declare (not safe))
                                  (cons _e66285_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp67047))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp67046))))
            (if (macro-inactive-thread-exception? _exn66283_)
                (macro-inactive-thread-exception-arguments _exn66283_)
                (let ((__tmp67044
                       (let ((__tmp67045
                              (let ()
                                (declare (not safe))
                                (cons _exn66283_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp67045))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp67044))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn66277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66277_))
            (let ((_e66280_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66277_ 'exception))))
              (if (macro-inactive-thread-exception? _e66280_)
                  (macro-inactive-thread-exception-procedure _e66280_)
                  (let ((__tmp67050
                         (let ((__tmp67051
                                (let ()
                                  (declare (not safe))
                                  (cons _e66280_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp67051))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp67050))))
            (if (macro-inactive-thread-exception? _exn66277_)
                (macro-inactive-thread-exception-procedure _exn66277_)
                (let ((__tmp67048
                       (let ((__tmp67049
                              (let ()
                                (declare (not safe))
                                (cons _exn66277_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp67049))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp67048))))))
    (define initialized-thread-exception?
      (lambda (_exn66273_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66273_))
            (let ((_e66275_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66273_ 'exception))))
              (macro-initialized-thread-exception? _e66275_))
            (macro-initialized-thread-exception? _exn66273_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn66269_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66269_))
            (let ((_e66271_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66269_ 'exception))))
              (if (macro-initialized-thread-exception? _e66271_)
                  (macro-initialized-thread-exception-arguments _e66271_)
                  (let ((__tmp67054
                         (let ((__tmp67055
                                (let ()
                                  (declare (not safe))
                                  (cons _e66271_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp67055))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp67054))))
            (if (macro-initialized-thread-exception? _exn66269_)
                (macro-initialized-thread-exception-arguments _exn66269_)
                (let ((__tmp67052
                       (let ((__tmp67053
                              (let ()
                                (declare (not safe))
                                (cons _exn66269_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp67053))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp67052))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn66263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66263_))
            (let ((_e66266_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66263_ 'exception))))
              (if (macro-initialized-thread-exception? _e66266_)
                  (macro-initialized-thread-exception-procedure _e66266_)
                  (let ((__tmp67058
                         (let ((__tmp67059
                                (let ()
                                  (declare (not safe))
                                  (cons _e66266_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp67059))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp67058))))
            (if (macro-initialized-thread-exception? _exn66263_)
                (macro-initialized-thread-exception-procedure _exn66263_)
                (let ((__tmp67056
                       (let ((__tmp67057
                              (let ()
                                (declare (not safe))
                                (cons _exn66263_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp67057))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp67056))))))
    (define invalid-hash-number-exception?
      (lambda (_exn66259_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66259_))
            (let ((_e66261_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66259_ 'exception))))
              (macro-invalid-hash-number-exception? _e66261_))
            (macro-invalid-hash-number-exception? _exn66259_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn66255_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66255_))
            (let ((_e66257_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66255_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e66257_)
                  (macro-invalid-hash-number-exception-arguments _e66257_)
                  (let ((__tmp67062
                         (let ((__tmp67063
                                (let ()
                                  (declare (not safe))
                                  (cons _e66257_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp67063))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp67062))))
            (if (macro-invalid-hash-number-exception? _exn66255_)
                (macro-invalid-hash-number-exception-arguments _exn66255_)
                (let ((__tmp67060
                       (let ((__tmp67061
                              (let ()
                                (declare (not safe))
                                (cons _exn66255_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp67061))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp67060))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn66249_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66249_))
            (let ((_e66252_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66249_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e66252_)
                  (macro-invalid-hash-number-exception-procedure _e66252_)
                  (let ((__tmp67066
                         (let ((__tmp67067
                                (let ()
                                  (declare (not safe))
                                  (cons _e66252_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp67067))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp67066))))
            (if (macro-invalid-hash-number-exception? _exn66249_)
                (macro-invalid-hash-number-exception-procedure _exn66249_)
                (let ((__tmp67064
                       (let ((__tmp67065
                              (let ()
                                (declare (not safe))
                                (cons _exn66249_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp67065))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp67064))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn66245_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66245_))
            (let ((_e66247_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66245_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e66247_))
            (macro-invalid-utf8-encoding-exception? _exn66245_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn66241_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66241_))
            (let ((_e66243_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66241_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e66243_)
                  (macro-invalid-utf8-encoding-exception-arguments _e66243_)
                  (let ((__tmp67070
                         (let ((__tmp67071
                                (let ()
                                  (declare (not safe))
                                  (cons _e66243_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp67071))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp67070))))
            (if (macro-invalid-utf8-encoding-exception? _exn66241_)
                (macro-invalid-utf8-encoding-exception-arguments _exn66241_)
                (let ((__tmp67068
                       (let ((__tmp67069
                              (let ()
                                (declare (not safe))
                                (cons _exn66241_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp67069))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp67068))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn66235_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66235_))
            (let ((_e66238_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66235_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e66238_)
                  (macro-invalid-utf8-encoding-exception-procedure _e66238_)
                  (let ((__tmp67074
                         (let ((__tmp67075
                                (let ()
                                  (declare (not safe))
                                  (cons _e66238_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp67075))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp67074))))
            (if (macro-invalid-utf8-encoding-exception? _exn66235_)
                (macro-invalid-utf8-encoding-exception-procedure _exn66235_)
                (let ((__tmp67072
                       (let ((__tmp67073
                              (let ()
                                (declare (not safe))
                                (cons _exn66235_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp67073))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp67072))))))
    (define join-timeout-exception?
      (lambda (_exn66231_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66231_))
            (let ((_e66233_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66231_ 'exception))))
              (macro-join-timeout-exception? _e66233_))
            (macro-join-timeout-exception? _exn66231_))))
    (define join-timeout-exception-arguments
      (lambda (_exn66227_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66227_))
            (let ((_e66229_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66227_ 'exception))))
              (if (macro-join-timeout-exception? _e66229_)
                  (macro-join-timeout-exception-arguments _e66229_)
                  (let ((__tmp67078
                         (let ((__tmp67079
                                (let ()
                                  (declare (not safe))
                                  (cons _e66229_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp67079))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp67078))))
            (if (macro-join-timeout-exception? _exn66227_)
                (macro-join-timeout-exception-arguments _exn66227_)
                (let ((__tmp67076
                       (let ((__tmp67077
                              (let ()
                                (declare (not safe))
                                (cons _exn66227_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp67077))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp67076))))))
    (define join-timeout-exception-procedure
      (lambda (_exn66221_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66221_))
            (let ((_e66224_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66221_ 'exception))))
              (if (macro-join-timeout-exception? _e66224_)
                  (macro-join-timeout-exception-procedure _e66224_)
                  (let ((__tmp67082
                         (let ((__tmp67083
                                (let ()
                                  (declare (not safe))
                                  (cons _e66224_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp67083))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp67082))))
            (if (macro-join-timeout-exception? _exn66221_)
                (macro-join-timeout-exception-procedure _exn66221_)
                (let ((__tmp67080
                       (let ((__tmp67081
                              (let ()
                                (declare (not safe))
                                (cons _exn66221_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp67081))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp67080))))))
    (define keyword-expected-exception?
      (lambda (_exn66217_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66217_))
            (let ((_e66219_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66217_ 'exception))))
              (macro-keyword-expected-exception? _e66219_))
            (macro-keyword-expected-exception? _exn66217_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn66213_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66213_))
            (let ((_e66215_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66213_ 'exception))))
              (if (macro-keyword-expected-exception? _e66215_)
                  (macro-keyword-expected-exception-arguments _e66215_)
                  (let ((__tmp67086
                         (let ((__tmp67087
                                (let ()
                                  (declare (not safe))
                                  (cons _e66215_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp67087))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp67086))))
            (if (macro-keyword-expected-exception? _exn66213_)
                (macro-keyword-expected-exception-arguments _exn66213_)
                (let ((__tmp67084
                       (let ((__tmp67085
                              (let ()
                                (declare (not safe))
                                (cons _exn66213_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp67085))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp67084))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn66207_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66207_))
            (let ((_e66210_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66207_ 'exception))))
              (if (macro-keyword-expected-exception? _e66210_)
                  (macro-keyword-expected-exception-procedure _e66210_)
                  (let ((__tmp67090
                         (let ((__tmp67091
                                (let ()
                                  (declare (not safe))
                                  (cons _e66210_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp67091))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp67090))))
            (if (macro-keyword-expected-exception? _exn66207_)
                (macro-keyword-expected-exception-procedure _exn66207_)
                (let ((__tmp67088
                       (let ((__tmp67089
                              (let ()
                                (declare (not safe))
                                (cons _exn66207_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp67089))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp67088))))))
    (define length-mismatch-exception?
      (lambda (_exn66203_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66203_))
            (let ((_e66205_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66203_ 'exception))))
              (macro-length-mismatch-exception? _e66205_))
            (macro-length-mismatch-exception? _exn66203_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn66199_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66199_))
            (let ((_e66201_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66199_ 'exception))))
              (if (macro-length-mismatch-exception? _e66201_)
                  (macro-length-mismatch-exception-arg-id _e66201_)
                  (let ((__tmp67094
                         (let ((__tmp67095
                                (let ()
                                  (declare (not safe))
                                  (cons _e66201_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp67095))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67094))))
            (if (macro-length-mismatch-exception? _exn66199_)
                (macro-length-mismatch-exception-arg-id _exn66199_)
                (let ((__tmp67092
                       (let ((__tmp67093
                              (let ()
                                (declare (not safe))
                                (cons _exn66199_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp67093))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67092))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn66195_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66195_))
            (let ((_e66197_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66195_ 'exception))))
              (if (macro-length-mismatch-exception? _e66197_)
                  (macro-length-mismatch-exception-arguments _e66197_)
                  (let ((__tmp67098
                         (let ((__tmp67099
                                (let ()
                                  (declare (not safe))
                                  (cons _e66197_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp67099))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67098))))
            (if (macro-length-mismatch-exception? _exn66195_)
                (macro-length-mismatch-exception-arguments _exn66195_)
                (let ((__tmp67096
                       (let ((__tmp67097
                              (let ()
                                (declare (not safe))
                                (cons _exn66195_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp67097))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67096))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn66189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66189_))
            (let ((_e66192_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66189_ 'exception))))
              (if (macro-length-mismatch-exception? _e66192_)
                  (macro-length-mismatch-exception-procedure _e66192_)
                  (let ((__tmp67102
                         (let ((__tmp67103
                                (let ()
                                  (declare (not safe))
                                  (cons _e66192_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp67103))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp67102))))
            (if (macro-length-mismatch-exception? _exn66189_)
                (macro-length-mismatch-exception-procedure _exn66189_)
                (let ((__tmp67100
                       (let ((__tmp67101
                              (let ()
                                (declare (not safe))
                                (cons _exn66189_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp67101))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp67100))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn66185_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66185_))
            (let ((_e66187_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66185_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e66187_))
            (macro-mailbox-receive-timeout-exception? _exn66185_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn66181_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66181_))
            (let ((_e66183_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66181_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e66183_)
                  (macro-mailbox-receive-timeout-exception-arguments _e66183_)
                  (let ((__tmp67106
                         (let ((__tmp67107
                                (let ()
                                  (declare (not safe))
                                  (cons _e66183_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp67107))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp67106))))
            (if (macro-mailbox-receive-timeout-exception? _exn66181_)
                (macro-mailbox-receive-timeout-exception-arguments _exn66181_)
                (let ((__tmp67104
                       (let ((__tmp67105
                              (let ()
                                (declare (not safe))
                                (cons _exn66181_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp67105))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp67104))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn66175_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66175_))
            (let ((_e66178_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66175_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e66178_)
                  (macro-mailbox-receive-timeout-exception-procedure _e66178_)
                  (let ((__tmp67110
                         (let ((__tmp67111
                                (let ()
                                  (declare (not safe))
                                  (cons _e66178_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp67111))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp67110))))
            (if (macro-mailbox-receive-timeout-exception? _exn66175_)
                (macro-mailbox-receive-timeout-exception-procedure _exn66175_)
                (let ((__tmp67108
                       (let ((__tmp67109
                              (let ()
                                (declare (not safe))
                                (cons _exn66175_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp67109))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp67108))))))
    (define module-not-found-exception?
      (lambda (_exn66171_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66171_))
            (let ((_e66173_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66171_ 'exception))))
              (macro-module-not-found-exception? _e66173_))
            (macro-module-not-found-exception? _exn66171_))))
    (define module-not-found-exception-arguments
      (lambda (_exn66167_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66167_))
            (let ((_e66169_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66167_ 'exception))))
              (if (macro-module-not-found-exception? _e66169_)
                  (macro-module-not-found-exception-arguments _e66169_)
                  (let ((__tmp67114
                         (let ((__tmp67115
                                (let ()
                                  (declare (not safe))
                                  (cons _e66169_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp67115))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp67114))))
            (if (macro-module-not-found-exception? _exn66167_)
                (macro-module-not-found-exception-arguments _exn66167_)
                (let ((__tmp67112
                       (let ((__tmp67113
                              (let ()
                                (declare (not safe))
                                (cons _exn66167_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp67113))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp67112))))))
    (define module-not-found-exception-procedure
      (lambda (_exn66161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66161_))
            (let ((_e66164_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66161_ 'exception))))
              (if (macro-module-not-found-exception? _e66164_)
                  (macro-module-not-found-exception-procedure _e66164_)
                  (let ((__tmp67118
                         (let ((__tmp67119
                                (let ()
                                  (declare (not safe))
                                  (cons _e66164_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp67119))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp67118))))
            (if (macro-module-not-found-exception? _exn66161_)
                (macro-module-not-found-exception-procedure _exn66161_)
                (let ((__tmp67116
                       (let ((__tmp67117
                              (let ()
                                (declare (not safe))
                                (cons _exn66161_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp67117))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp67116))))))
    (define multiple-c-return-exception?
      (lambda (_exn66155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66155_))
            (let ((_e66158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66155_ 'exception))))
              (macro-multiple-c-return-exception? _e66158_))
            (macro-multiple-c-return-exception? _exn66155_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn66151_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66151_))
            (let ((_e66153_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66151_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e66153_))
            (macro-no-such-file-or-directory-exception? _exn66151_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn66147_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66147_))
            (let ((_e66149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66147_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e66149_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e66149_)
                  (let ((__tmp67122
                         (let ((__tmp67123
                                (let ()
                                  (declare (not safe))
                                  (cons _e66149_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp67123))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp67122))))
            (if (macro-no-such-file-or-directory-exception? _exn66147_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn66147_)
                (let ((__tmp67120
                       (let ((__tmp67121
                              (let ()
                                (declare (not safe))
                                (cons _exn66147_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp67121))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp67120))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn66141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66141_))
            (let ((_e66144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66141_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e66144_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e66144_)
                  (let ((__tmp67126
                         (let ((__tmp67127
                                (let ()
                                  (declare (not safe))
                                  (cons _e66144_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp67127))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp67126))))
            (if (macro-no-such-file-or-directory-exception? _exn66141_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn66141_)
                (let ((__tmp67124
                       (let ((__tmp67125
                              (let ()
                                (declare (not safe))
                                (cons _exn66141_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp67125))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp67124))))))
    (define noncontinuable-exception?
      (lambda (_exn66137_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66137_))
            (let ((_e66139_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66137_ 'exception))))
              (macro-noncontinuable-exception? _e66139_))
            (macro-noncontinuable-exception? _exn66137_))))
    (define noncontinuable-exception-reason
      (lambda (_exn66131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66131_))
            (let ((_e66134_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66131_ 'exception))))
              (if (macro-noncontinuable-exception? _e66134_)
                  (macro-noncontinuable-exception-reason _e66134_)
                  (let ((__tmp67130
                         (let ((__tmp67131
                                (let ()
                                  (declare (not safe))
                                  (cons _e66134_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp67131))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp67130))))
            (if (macro-noncontinuable-exception? _exn66131_)
                (macro-noncontinuable-exception-reason _exn66131_)
                (let ((__tmp67128
                       (let ((__tmp67129
                              (let ()
                                (declare (not safe))
                                (cons _exn66131_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp67129))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp67128))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn66127_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66127_))
            (let ((_e66129_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66127_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e66129_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn66127_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn66123_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66123_))
            (let ((_e66125_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66123_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e66125_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e66125_)
                  (let ((__tmp67134
                         (let ((__tmp67135
                                (let ()
                                  (declare (not safe))
                                  (cons _e66125_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp67135))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp67134))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn66123_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn66123_)
                (let ((__tmp67132
                       (let ((__tmp67133
                              (let ()
                                (declare (not safe))
                                (cons _exn66123_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp67133))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp67132))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn66117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66117_))
            (let ((_e66120_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66117_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e66120_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e66120_)
                  (let ((__tmp67138
                         (let ((__tmp67139
                                (let ()
                                  (declare (not safe))
                                  (cons _e66120_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp67139))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp67138))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn66117_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn66117_)
                (let ((__tmp67136
                       (let ((__tmp67137
                              (let ()
                                (declare (not safe))
                                (cons _exn66117_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp67137))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp67136))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn66113_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66113_))
            (let ((_e66115_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66113_ 'exception))))
              (macro-nonprocedure-operator-exception? _e66115_))
            (macro-nonprocedure-operator-exception? _exn66113_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn66109_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66109_))
            (let ((_e66111_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66109_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66111_)
                  (macro-nonprocedure-operator-exception-arguments _e66111_)
                  (let ((__tmp67142
                         (let ((__tmp67143
                                (let ()
                                  (declare (not safe))
                                  (cons _e66111_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp67143))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp67142))))
            (if (macro-nonprocedure-operator-exception? _exn66109_)
                (macro-nonprocedure-operator-exception-arguments _exn66109_)
                (let ((__tmp67140
                       (let ((__tmp67141
                              (let ()
                                (declare (not safe))
                                (cons _exn66109_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp67141))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp67140))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn66105_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66105_))
            (let ((_e66107_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66105_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66107_)
                  (macro-nonprocedure-operator-exception-code _e66107_)
                  (let ((__tmp67146
                         (let ((__tmp67147
                                (let ()
                                  (declare (not safe))
                                  (cons _e66107_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp67147))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp67146))))
            (if (macro-nonprocedure-operator-exception? _exn66105_)
                (macro-nonprocedure-operator-exception-code _exn66105_)
                (let ((__tmp67144
                       (let ((__tmp67145
                              (let ()
                                (declare (not safe))
                                (cons _exn66105_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp67145))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp67144))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn66101_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66101_))
            (let ((_e66103_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66101_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66103_)
                  (macro-nonprocedure-operator-exception-operator _e66103_)
                  (let ((__tmp67150
                         (let ((__tmp67151
                                (let ()
                                  (declare (not safe))
                                  (cons _e66103_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp67151))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp67150))))
            (if (macro-nonprocedure-operator-exception? _exn66101_)
                (macro-nonprocedure-operator-exception-operator _exn66101_)
                (let ((__tmp67148
                       (let ((__tmp67149
                              (let ()
                                (declare (not safe))
                                (cons _exn66101_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp67149))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp67148))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn66095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66095_))
            (let ((_e66098_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66095_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e66098_)
                  (macro-nonprocedure-operator-exception-rte _e66098_)
                  (let ((__tmp67154
                         (let ((__tmp67155
                                (let ()
                                  (declare (not safe))
                                  (cons _e66098_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp67155))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp67154))))
            (if (macro-nonprocedure-operator-exception? _exn66095_)
                (macro-nonprocedure-operator-exception-rte _exn66095_)
                (let ((__tmp67152
                       (let ((__tmp67153
                              (let ()
                                (declare (not safe))
                                (cons _exn66095_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp67153))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp67152))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn66091_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66091_))
            (let ((_e66093_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66091_ 'exception))))
              (macro-not-in-compilation-context-exception? _e66093_))
            (macro-not-in-compilation-context-exception? _exn66091_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn66087_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66087_))
            (let ((_e66089_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66087_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e66089_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e66089_)
                  (let ((__tmp67158
                         (let ((__tmp67159
                                (let ()
                                  (declare (not safe))
                                  (cons _e66089_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp67159))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp67158))))
            (if (macro-not-in-compilation-context-exception? _exn66087_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn66087_)
                (let ((__tmp67156
                       (let ((__tmp67157
                              (let ()
                                (declare (not safe))
                                (cons _exn66087_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp67157))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp67156))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn66081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66081_))
            (let ((_e66084_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66081_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e66084_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e66084_)
                  (let ((__tmp67162
                         (let ((__tmp67163
                                (let ()
                                  (declare (not safe))
                                  (cons _e66084_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp67163))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp67162))))
            (if (macro-not-in-compilation-context-exception? _exn66081_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn66081_)
                (let ((__tmp67160
                       (let ((__tmp67161
                              (let ()
                                (declare (not safe))
                                (cons _exn66081_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp67161))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp67160))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn66077_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66077_))
            (let ((_e66079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66077_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e66079_))
            (macro-number-of-arguments-limit-exception? _exn66077_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn66073_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66073_))
            (let ((_e66075_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66073_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e66075_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e66075_)
                  (let ((__tmp67166
                         (let ((__tmp67167
                                (let ()
                                  (declare (not safe))
                                  (cons _e66075_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp67167))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp67166))))
            (if (macro-number-of-arguments-limit-exception? _exn66073_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn66073_)
                (let ((__tmp67164
                       (let ((__tmp67165
                              (let ()
                                (declare (not safe))
                                (cons _exn66073_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp67165))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp67164))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn66067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66067_))
            (let ((_e66070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66067_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e66070_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e66070_)
                  (let ((__tmp67170
                         (let ((__tmp67171
                                (let ()
                                  (declare (not safe))
                                  (cons _e66070_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp67171))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp67170))))
            (if (macro-number-of-arguments-limit-exception? _exn66067_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn66067_)
                (let ((__tmp67168
                       (let ((__tmp67169
                              (let ()
                                (declare (not safe))
                                (cons _exn66067_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp67169))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp67168))))))
    (define os-exception?
      (lambda (_exn66063_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66063_))
            (let ((_e66065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66063_ 'exception))))
              (macro-os-exception? _e66065_))
            (macro-os-exception? _exn66063_))))
    (define os-exception-arguments
      (lambda (_exn66059_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66059_))
            (let ((_e66061_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66059_ 'exception))))
              (if (macro-os-exception? _e66061_)
                  (macro-os-exception-arguments _e66061_)
                  (let ((__tmp67174
                         (let ((__tmp67175
                                (let ()
                                  (declare (not safe))
                                  (cons _e66061_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp67175))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp67174))))
            (if (macro-os-exception? _exn66059_)
                (macro-os-exception-arguments _exn66059_)
                (let ((__tmp67172
                       (let ((__tmp67173
                              (let ()
                                (declare (not safe))
                                (cons _exn66059_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp67173))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp67172))))))
    (define os-exception-code
      (lambda (_exn66055_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66055_))
            (let ((_e66057_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66055_ 'exception))))
              (if (macro-os-exception? _e66057_)
                  (macro-os-exception-code _e66057_)
                  (let ((__tmp67178
                         (let ((__tmp67179
                                (let ()
                                  (declare (not safe))
                                  (cons _e66057_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp67179))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp67178))))
            (if (macro-os-exception? _exn66055_)
                (macro-os-exception-code _exn66055_)
                (let ((__tmp67176
                       (let ((__tmp67177
                              (let ()
                                (declare (not safe))
                                (cons _exn66055_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp67177))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp67176))))))
    (define os-exception-message
      (lambda (_exn66051_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66051_))
            (let ((_e66053_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66051_ 'exception))))
              (if (macro-os-exception? _e66053_)
                  (macro-os-exception-message _e66053_)
                  (let ((__tmp67182
                         (let ((__tmp67183
                                (let ()
                                  (declare (not safe))
                                  (cons _e66053_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp67183))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp67182))))
            (if (macro-os-exception? _exn66051_)
                (macro-os-exception-message _exn66051_)
                (let ((__tmp67180
                       (let ((__tmp67181
                              (let ()
                                (declare (not safe))
                                (cons _exn66051_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp67181))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp67180))))))
    (define os-exception-procedure
      (lambda (_exn66045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66045_))
            (let ((_e66048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66045_ 'exception))))
              (if (macro-os-exception? _e66048_)
                  (macro-os-exception-procedure _e66048_)
                  (let ((__tmp67186
                         (let ((__tmp67187
                                (let ()
                                  (declare (not safe))
                                  (cons _e66048_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp67187))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp67186))))
            (if (macro-os-exception? _exn66045_)
                (macro-os-exception-procedure _exn66045_)
                (let ((__tmp67184
                       (let ((__tmp67185
                              (let ()
                                (declare (not safe))
                                (cons _exn66045_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp67185))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp67184))))))
    (define permission-denied-exception?
      (lambda (_exn66041_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66041_))
            (let ((_e66043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66041_ 'exception))))
              (macro-permission-denied-exception? _e66043_))
            (macro-permission-denied-exception? _exn66041_))))
    (define permission-denied-exception-arguments
      (lambda (_exn66037_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66037_))
            (let ((_e66039_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66037_ 'exception))))
              (if (macro-permission-denied-exception? _e66039_)
                  (macro-permission-denied-exception-arguments _e66039_)
                  (let ((__tmp67190
                         (let ((__tmp67191
                                (let ()
                                  (declare (not safe))
                                  (cons _e66039_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp67191))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp67190))))
            (if (macro-permission-denied-exception? _exn66037_)
                (macro-permission-denied-exception-arguments _exn66037_)
                (let ((__tmp67188
                       (let ((__tmp67189
                              (let ()
                                (declare (not safe))
                                (cons _exn66037_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp67189))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp67188))))))
    (define permission-denied-exception-procedure
      (lambda (_exn66031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66031_))
            (let ((_e66034_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66031_ 'exception))))
              (if (macro-permission-denied-exception? _e66034_)
                  (macro-permission-denied-exception-procedure _e66034_)
                  (let ((__tmp67194
                         (let ((__tmp67195
                                (let ()
                                  (declare (not safe))
                                  (cons _e66034_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp67195))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp67194))))
            (if (macro-permission-denied-exception? _exn66031_)
                (macro-permission-denied-exception-procedure _exn66031_)
                (let ((__tmp67192
                       (let ((__tmp67193
                              (let ()
                                (declare (not safe))
                                (cons _exn66031_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp67193))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp67192))))))
    (define range-exception?
      (lambda (_exn66027_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66027_))
            (let ((_e66029_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66027_ 'exception))))
              (macro-range-exception? _e66029_))
            (macro-range-exception? _exn66027_))))
    (define range-exception-arg-id
      (lambda (_exn66023_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66023_))
            (let ((_e66025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66023_ 'exception))))
              (if (macro-range-exception? _e66025_)
                  (macro-range-exception-arg-id _e66025_)
                  (let ((__tmp67198
                         (let ((__tmp67199
                                (let ()
                                  (declare (not safe))
                                  (cons _e66025_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp67199))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp67198))))
            (if (macro-range-exception? _exn66023_)
                (macro-range-exception-arg-id _exn66023_)
                (let ((__tmp67196
                       (let ((__tmp67197
                              (let ()
                                (declare (not safe))
                                (cons _exn66023_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp67197))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp67196))))))
    (define range-exception-arguments
      (lambda (_exn66019_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66019_))
            (let ((_e66021_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66019_ 'exception))))
              (if (macro-range-exception? _e66021_)
                  (macro-range-exception-arguments _e66021_)
                  (let ((__tmp67202
                         (let ((__tmp67203
                                (let ()
                                  (declare (not safe))
                                  (cons _e66021_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp67203))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp67202))))
            (if (macro-range-exception? _exn66019_)
                (macro-range-exception-arguments _exn66019_)
                (let ((__tmp67200
                       (let ((__tmp67201
                              (let ()
                                (declare (not safe))
                                (cons _exn66019_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp67201))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp67200))))))
    (define range-exception-procedure
      (lambda (_exn66013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66013_))
            (let ((_e66016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66013_ 'exception))))
              (if (macro-range-exception? _e66016_)
                  (macro-range-exception-procedure _e66016_)
                  (let ((__tmp67206
                         (let ((__tmp67207
                                (let ()
                                  (declare (not safe))
                                  (cons _e66016_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp67207))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp67206))))
            (if (macro-range-exception? _exn66013_)
                (macro-range-exception-procedure _exn66013_)
                (let ((__tmp67204
                       (let ((__tmp67205
                              (let ()
                                (declare (not safe))
                                (cons _exn66013_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp67205))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp67204))))))
    (define rpc-remote-error-exception?
      (lambda (_exn66009_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66009_))
            (let ((_e66011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66009_ 'exception))))
              (macro-rpc-remote-error-exception? _e66011_))
            (macro-rpc-remote-error-exception? _exn66009_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn66005_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66005_))
            (let ((_e66007_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66005_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66007_)
                  (macro-rpc-remote-error-exception-arguments _e66007_)
                  (let ((__tmp67210
                         (let ((__tmp67211
                                (let ()
                                  (declare (not safe))
                                  (cons _e66007_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp67211))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp67210))))
            (if (macro-rpc-remote-error-exception? _exn66005_)
                (macro-rpc-remote-error-exception-arguments _exn66005_)
                (let ((__tmp67208
                       (let ((__tmp67209
                              (let ()
                                (declare (not safe))
                                (cons _exn66005_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp67209))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp67208))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn66001_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66001_))
            (let ((_e66003_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66001_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66003_)
                  (macro-rpc-remote-error-exception-message _e66003_)
                  (let ((__tmp67214
                         (let ((__tmp67215
                                (let ()
                                  (declare (not safe))
                                  (cons _e66003_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp67215))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp67214))))
            (if (macro-rpc-remote-error-exception? _exn66001_)
                (macro-rpc-remote-error-exception-message _exn66001_)
                (let ((__tmp67212
                       (let ((__tmp67213
                              (let ()
                                (declare (not safe))
                                (cons _exn66001_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp67213))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp67212))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65995_))
            (let ((_e65998_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65995_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65998_)
                  (macro-rpc-remote-error-exception-procedure _e65998_)
                  (let ((__tmp67218
                         (let ((__tmp67219
                                (let ()
                                  (declare (not safe))
                                  (cons _e65998_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp67219))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp67218))))
            (if (macro-rpc-remote-error-exception? _exn65995_)
                (macro-rpc-remote-error-exception-procedure _exn65995_)
                (let ((__tmp67216
                       (let ((__tmp67217
                              (let ()
                                (declare (not safe))
                                (cons _exn65995_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp67217))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp67216))))))
    (define scheduler-exception?
      (lambda (_exn65991_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65991_))
            (let ((_e65993_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65991_ 'exception))))
              (macro-scheduler-exception? _e65993_))
            (macro-scheduler-exception? _exn65991_))))
    (define scheduler-exception-reason
      (lambda (_exn65985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65985_))
            (let ((_e65988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65985_ 'exception))))
              (if (macro-scheduler-exception? _e65988_)
                  (macro-scheduler-exception-reason _e65988_)
                  (let ((__tmp67222
                         (let ((__tmp67223
                                (let ()
                                  (declare (not safe))
                                  (cons _e65988_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp67223))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp67222))))
            (if (macro-scheduler-exception? _exn65985_)
                (macro-scheduler-exception-reason _exn65985_)
                (let ((__tmp67220
                       (let ((__tmp67221
                              (let ()
                                (declare (not safe))
                                (cons _exn65985_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp67221))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp67220))))))
    (define sfun-conversion-exception?
      (lambda (_exn65981_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65981_))
            (let ((_e65983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65981_ 'exception))))
              (macro-sfun-conversion-exception? _e65983_))
            (macro-sfun-conversion-exception? _exn65981_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65977_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65977_))
            (let ((_e65979_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65977_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65979_)
                  (macro-sfun-conversion-exception-arguments _e65979_)
                  (let ((__tmp67226
                         (let ((__tmp67227
                                (let ()
                                  (declare (not safe))
                                  (cons _e65979_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp67227))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp67226))))
            (if (macro-sfun-conversion-exception? _exn65977_)
                (macro-sfun-conversion-exception-arguments _exn65977_)
                (let ((__tmp67224
                       (let ((__tmp67225
                              (let ()
                                (declare (not safe))
                                (cons _exn65977_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp67225))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp67224))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65973_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65973_))
            (let ((_e65975_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65973_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65975_)
                  (macro-sfun-conversion-exception-code _e65975_)
                  (let ((__tmp67230
                         (let ((__tmp67231
                                (let ()
                                  (declare (not safe))
                                  (cons _e65975_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp67231))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp67230))))
            (if (macro-sfun-conversion-exception? _exn65973_)
                (macro-sfun-conversion-exception-code _exn65973_)
                (let ((__tmp67228
                       (let ((__tmp67229
                              (let ()
                                (declare (not safe))
                                (cons _exn65973_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp67229))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp67228))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65969_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65969_))
            (let ((_e65971_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65969_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65971_)
                  (macro-sfun-conversion-exception-message _e65971_)
                  (let ((__tmp67234
                         (let ((__tmp67235
                                (let ()
                                  (declare (not safe))
                                  (cons _e65971_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp67235))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp67234))))
            (if (macro-sfun-conversion-exception? _exn65969_)
                (macro-sfun-conversion-exception-message _exn65969_)
                (let ((__tmp67232
                       (let ((__tmp67233
                              (let ()
                                (declare (not safe))
                                (cons _exn65969_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp67233))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp67232))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65963_))
            (let ((_e65966_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65963_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65966_)
                  (macro-sfun-conversion-exception-procedure _e65966_)
                  (let ((__tmp67238
                         (let ((__tmp67239
                                (let ()
                                  (declare (not safe))
                                  (cons _e65966_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp67239))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp67238))))
            (if (macro-sfun-conversion-exception? _exn65963_)
                (macro-sfun-conversion-exception-procedure _exn65963_)
                (let ((__tmp67236
                       (let ((__tmp67237
                              (let ()
                                (declare (not safe))
                                (cons _exn65963_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp67237))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp67236))))))
    (define stack-overflow-exception?
      (lambda (_exn65957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65957_))
            (let ((_e65960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65957_ 'exception))))
              (macro-stack-overflow-exception? _e65960_))
            (macro-stack-overflow-exception? _exn65957_))))
    (define started-thread-exception?
      (lambda (_exn65953_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65953_))
            (let ((_e65955_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65953_ 'exception))))
              (macro-started-thread-exception? _e65955_))
            (macro-started-thread-exception? _exn65953_))))
    (define started-thread-exception-arguments
      (lambda (_exn65949_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65949_))
            (let ((_e65951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65949_ 'exception))))
              (if (macro-started-thread-exception? _e65951_)
                  (macro-started-thread-exception-arguments _e65951_)
                  (let ((__tmp67242
                         (let ((__tmp67243
                                (let ()
                                  (declare (not safe))
                                  (cons _e65951_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp67243))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp67242))))
            (if (macro-started-thread-exception? _exn65949_)
                (macro-started-thread-exception-arguments _exn65949_)
                (let ((__tmp67240
                       (let ((__tmp67241
                              (let ()
                                (declare (not safe))
                                (cons _exn65949_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp67241))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp67240))))))
    (define started-thread-exception-procedure
      (lambda (_exn65943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65943_))
            (let ((_e65946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65943_ 'exception))))
              (if (macro-started-thread-exception? _e65946_)
                  (macro-started-thread-exception-procedure _e65946_)
                  (let ((__tmp67246
                         (let ((__tmp67247
                                (let ()
                                  (declare (not safe))
                                  (cons _e65946_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp67247))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp67246))))
            (if (macro-started-thread-exception? _exn65943_)
                (macro-started-thread-exception-procedure _exn65943_)
                (let ((__tmp67244
                       (let ((__tmp67245
                              (let ()
                                (declare (not safe))
                                (cons _exn65943_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp67245))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp67244))))))
    (define terminated-thread-exception?
      (lambda (_exn65939_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65939_))
            (let ((_e65941_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65939_ 'exception))))
              (macro-terminated-thread-exception? _e65941_))
            (macro-terminated-thread-exception? _exn65939_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65935_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65935_))
            (let ((_e65937_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65935_ 'exception))))
              (if (macro-terminated-thread-exception? _e65937_)
                  (macro-terminated-thread-exception-arguments _e65937_)
                  (let ((__tmp67250
                         (let ((__tmp67251
                                (let ()
                                  (declare (not safe))
                                  (cons _e65937_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp67251))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp67250))))
            (if (macro-terminated-thread-exception? _exn65935_)
                (macro-terminated-thread-exception-arguments _exn65935_)
                (let ((__tmp67248
                       (let ((__tmp67249
                              (let ()
                                (declare (not safe))
                                (cons _exn65935_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp67249))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp67248))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65929_))
            (let ((_e65932_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65929_ 'exception))))
              (if (macro-terminated-thread-exception? _e65932_)
                  (macro-terminated-thread-exception-procedure _e65932_)
                  (let ((__tmp67254
                         (let ((__tmp67255
                                (let ()
                                  (declare (not safe))
                                  (cons _e65932_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp67255))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp67254))))
            (if (macro-terminated-thread-exception? _exn65929_)
                (macro-terminated-thread-exception-procedure _exn65929_)
                (let ((__tmp67252
                       (let ((__tmp67253
                              (let ()
                                (declare (not safe))
                                (cons _exn65929_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp67253))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp67252))))))
    (define type-exception?
      (lambda (_exn65925_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65925_))
            (let ((_e65927_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65925_ 'exception))))
              (macro-type-exception? _e65927_))
            (macro-type-exception? _exn65925_))))
    (define type-exception-arg-id
      (lambda (_exn65921_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65921_))
            (let ((_e65923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65921_ 'exception))))
              (if (macro-type-exception? _e65923_)
                  (macro-type-exception-arg-id _e65923_)
                  (let ((__tmp67258
                         (let ((__tmp67259
                                (let ()
                                  (declare (not safe))
                                  (cons _e65923_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp67259))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67258))))
            (if (macro-type-exception? _exn65921_)
                (macro-type-exception-arg-id _exn65921_)
                (let ((__tmp67256
                       (let ((__tmp67257
                              (let ()
                                (declare (not safe))
                                (cons _exn65921_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp67257))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67256))))))
    (define type-exception-arguments
      (lambda (_exn65917_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65917_))
            (let ((_e65919_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65917_ 'exception))))
              (if (macro-type-exception? _e65919_)
                  (macro-type-exception-arguments _e65919_)
                  (let ((__tmp67262
                         (let ((__tmp67263
                                (let ()
                                  (declare (not safe))
                                  (cons _e65919_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp67263))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67262))))
            (if (macro-type-exception? _exn65917_)
                (macro-type-exception-arguments _exn65917_)
                (let ((__tmp67260
                       (let ((__tmp67261
                              (let ()
                                (declare (not safe))
                                (cons _exn65917_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp67261))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67260))))))
    (define type-exception-procedure
      (lambda (_exn65913_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65913_))
            (let ((_e65915_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65913_ 'exception))))
              (if (macro-type-exception? _e65915_)
                  (macro-type-exception-procedure _e65915_)
                  (let ((__tmp67266
                         (let ((__tmp67267
                                (let ()
                                  (declare (not safe))
                                  (cons _e65915_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp67267))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67266))))
            (if (macro-type-exception? _exn65913_)
                (macro-type-exception-procedure _exn65913_)
                (let ((__tmp67264
                       (let ((__tmp67265
                              (let ()
                                (declare (not safe))
                                (cons _exn65913_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp67265))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67264))))))
    (define type-exception-type-id
      (lambda (_exn65907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65907_))
            (let ((_e65910_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65907_ 'exception))))
              (if (macro-type-exception? _e65910_)
                  (macro-type-exception-type-id _e65910_)
                  (let ((__tmp67270
                         (let ((__tmp67271
                                (let ()
                                  (declare (not safe))
                                  (cons _e65910_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp67271))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp67270))))
            (if (macro-type-exception? _exn65907_)
                (macro-type-exception-type-id _exn65907_)
                (let ((__tmp67268
                       (let ((__tmp67269
                              (let ()
                                (declare (not safe))
                                (cons _exn65907_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp67269))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp67268))))))
    (define unbound-global-exception?
      (lambda (_exn65903_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65903_))
            (let ((_e65905_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65903_ 'exception))))
              (macro-unbound-global-exception? _e65905_))
            (macro-unbound-global-exception? _exn65903_))))
    (define unbound-global-exception-code
      (lambda (_exn65899_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65899_))
            (let ((_e65901_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65899_ 'exception))))
              (if (macro-unbound-global-exception? _e65901_)
                  (macro-unbound-global-exception-code _e65901_)
                  (let ((__tmp67274
                         (let ((__tmp67275
                                (let ()
                                  (declare (not safe))
                                  (cons _e65901_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp67275))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67274))))
            (if (macro-unbound-global-exception? _exn65899_)
                (macro-unbound-global-exception-code _exn65899_)
                (let ((__tmp67272
                       (let ((__tmp67273
                              (let ()
                                (declare (not safe))
                                (cons _exn65899_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp67273))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67272))))))
    (define unbound-global-exception-rte
      (lambda (_exn65895_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65895_))
            (let ((_e65897_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65895_ 'exception))))
              (if (macro-unbound-global-exception? _e65897_)
                  (macro-unbound-global-exception-rte _e65897_)
                  (let ((__tmp67278
                         (let ((__tmp67279
                                (let ()
                                  (declare (not safe))
                                  (cons _e65897_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp67279))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67278))))
            (if (macro-unbound-global-exception? _exn65895_)
                (macro-unbound-global-exception-rte _exn65895_)
                (let ((__tmp67276
                       (let ((__tmp67277
                              (let ()
                                (declare (not safe))
                                (cons _exn65895_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp67277))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67276))))))
    (define unbound-global-exception-variable
      (lambda (_exn65889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65889_))
            (let ((_e65892_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65889_ 'exception))))
              (if (macro-unbound-global-exception? _e65892_)
                  (macro-unbound-global-exception-variable _e65892_)
                  (let ((__tmp67282
                         (let ((__tmp67283
                                (let ()
                                  (declare (not safe))
                                  (cons _e65892_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp67283))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp67282))))
            (if (macro-unbound-global-exception? _exn65889_)
                (macro-unbound-global-exception-variable _exn65889_)
                (let ((__tmp67280
                       (let ((__tmp67281
                              (let ()
                                (declare (not safe))
                                (cons _exn65889_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp67281))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp67280))))))
    (define unbound-key-exception?
      (lambda (_exn65885_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65885_))
            (let ((_e65887_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65885_ 'exception))))
              (macro-unbound-key-exception? _e65887_))
            (macro-unbound-key-exception? _exn65885_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65881_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65881_))
            (let ((_e65883_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65881_ 'exception))))
              (if (macro-unbound-key-exception? _e65883_)
                  (macro-unbound-key-exception-arguments _e65883_)
                  (let ((__tmp67286
                         (let ((__tmp67287
                                (let ()
                                  (declare (not safe))
                                  (cons _e65883_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp67287))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67286))))
            (if (macro-unbound-key-exception? _exn65881_)
                (macro-unbound-key-exception-arguments _exn65881_)
                (let ((__tmp67284
                       (let ((__tmp67285
                              (let ()
                                (declare (not safe))
                                (cons _exn65881_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp67285))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67284))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65875_))
            (let ((_e65878_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65875_ 'exception))))
              (if (macro-unbound-key-exception? _e65878_)
                  (macro-unbound-key-exception-procedure _e65878_)
                  (let ((__tmp67290
                         (let ((__tmp67291
                                (let ()
                                  (declare (not safe))
                                  (cons _e65878_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp67291))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp67290))))
            (if (macro-unbound-key-exception? _exn65875_)
                (macro-unbound-key-exception-procedure _exn65875_)
                (let ((__tmp67288
                       (let ((__tmp67289
                              (let ()
                                (declare (not safe))
                                (cons _exn65875_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp67289))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp67288))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65871_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65871_))
            (let ((_e65873_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65871_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65873_))
            (macro-unbound-os-environment-variable-exception? _exn65871_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65867_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65867_))
            (let ((_e65869_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65867_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65869_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65869_)
                  (let ((__tmp67294
                         (let ((__tmp67295
                                (let ()
                                  (declare (not safe))
                                  (cons _e65869_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp67295))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67294))))
            (if (macro-unbound-os-environment-variable-exception? _exn65867_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65867_)
                (let ((__tmp67292
                       (let ((__tmp67293
                              (let ()
                                (declare (not safe))
                                (cons _exn65867_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp67293))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67292))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn65861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65861_))
            (let ((_e65864_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65861_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65864_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e65864_)
                  (let ((__tmp67298
                         (let ((__tmp67299
                                (let ()
                                  (declare (not safe))
                                  (cons _e65864_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp67299))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp67298))))
            (if (macro-unbound-os-environment-variable-exception? _exn65861_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn65861_)
                (let ((__tmp67296
                       (let ((__tmp67297
                              (let ()
                                (declare (not safe))
                                (cons _exn65861_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp67297))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp67296))))))
    (define unbound-serial-number-exception?
      (lambda (_exn65857_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65857_))
            (let ((_e65859_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65857_ 'exception))))
              (macro-unbound-serial-number-exception? _e65859_))
            (macro-unbound-serial-number-exception? _exn65857_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn65853_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65853_))
            (let ((_e65855_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65853_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65855_)
                  (macro-unbound-serial-number-exception-arguments _e65855_)
                  (let ((__tmp67302
                         (let ((__tmp67303
                                (let ()
                                  (declare (not safe))
                                  (cons _e65855_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp67303))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67302))))
            (if (macro-unbound-serial-number-exception? _exn65853_)
                (macro-unbound-serial-number-exception-arguments _exn65853_)
                (let ((__tmp67300
                       (let ((__tmp67301
                              (let ()
                                (declare (not safe))
                                (cons _exn65853_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp67301))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67300))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn65847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65847_))
            (let ((_e65850_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65847_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e65850_)
                  (macro-unbound-serial-number-exception-procedure _e65850_)
                  (let ((__tmp67306
                         (let ((__tmp67307
                                (let ()
                                  (declare (not safe))
                                  (cons _e65850_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp67307))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp67306))))
            (if (macro-unbound-serial-number-exception? _exn65847_)
                (macro-unbound-serial-number-exception-procedure _exn65847_)
                (let ((__tmp67304
                       (let ((__tmp67305
                              (let ()
                                (declare (not safe))
                                (cons _exn65847_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp67305))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp67304))))))
    (define uncaught-exception?
      (lambda (_exn65843_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65843_))
            (let ((_e65845_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65843_ 'exception))))
              (macro-uncaught-exception? _e65845_))
            (macro-uncaught-exception? _exn65843_))))
    (define uncaught-exception-arguments
      (lambda (_exn65839_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65839_))
            (let ((_e65841_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65839_ 'exception))))
              (if (macro-uncaught-exception? _e65841_)
                  (macro-uncaught-exception-arguments _e65841_)
                  (let ((__tmp67310
                         (let ((__tmp67311
                                (let ()
                                  (declare (not safe))
                                  (cons _e65841_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp67311))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67310))))
            (if (macro-uncaught-exception? _exn65839_)
                (macro-uncaught-exception-arguments _exn65839_)
                (let ((__tmp67308
                       (let ((__tmp67309
                              (let ()
                                (declare (not safe))
                                (cons _exn65839_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp67309))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67308))))))
    (define uncaught-exception-procedure
      (lambda (_exn65835_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65835_))
            (let ((_e65837_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65835_ 'exception))))
              (if (macro-uncaught-exception? _e65837_)
                  (macro-uncaught-exception-procedure _e65837_)
                  (let ((__tmp67314
                         (let ((__tmp67315
                                (let ()
                                  (declare (not safe))
                                  (cons _e65837_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp67315))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67314))))
            (if (macro-uncaught-exception? _exn65835_)
                (macro-uncaught-exception-procedure _exn65835_)
                (let ((__tmp67312
                       (let ((__tmp67313
                              (let ()
                                (declare (not safe))
                                (cons _exn65835_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp67313))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67312))))))
    (define uncaught-exception-reason
      (lambda (_exn65829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65829_))
            (let ((_e65832_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65829_ 'exception))))
              (if (macro-uncaught-exception? _e65832_)
                  (macro-uncaught-exception-reason _e65832_)
                  (let ((__tmp67318
                         (let ((__tmp67319
                                (let ()
                                  (declare (not safe))
                                  (cons _e65832_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp67319))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp67318))))
            (if (macro-uncaught-exception? _exn65829_)
                (macro-uncaught-exception-reason _exn65829_)
                (let ((__tmp67316
                       (let ((__tmp67317
                              (let ()
                                (declare (not safe))
                                (cons _exn65829_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp67317))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp67316))))))
    (define uninitialized-thread-exception?
      (lambda (_exn65825_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65825_))
            (let ((_e65827_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65825_ 'exception))))
              (macro-uninitialized-thread-exception? _e65827_))
            (macro-uninitialized-thread-exception? _exn65825_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn65821_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65821_))
            (let ((_e65823_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65821_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65823_)
                  (macro-uninitialized-thread-exception-arguments _e65823_)
                  (let ((__tmp67322
                         (let ((__tmp67323
                                (let ()
                                  (declare (not safe))
                                  (cons _e65823_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp67323))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67322))))
            (if (macro-uninitialized-thread-exception? _exn65821_)
                (macro-uninitialized-thread-exception-arguments _exn65821_)
                (let ((__tmp67320
                       (let ((__tmp67321
                              (let ()
                                (declare (not safe))
                                (cons _exn65821_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp67321))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67320))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn65815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65815_))
            (let ((_e65818_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65815_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e65818_)
                  (macro-uninitialized-thread-exception-procedure _e65818_)
                  (let ((__tmp67326
                         (let ((__tmp67327
                                (let ()
                                  (declare (not safe))
                                  (cons _e65818_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp67327))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp67326))))
            (if (macro-uninitialized-thread-exception? _exn65815_)
                (macro-uninitialized-thread-exception-procedure _exn65815_)
                (let ((__tmp67324
                       (let ((__tmp67325
                              (let ()
                                (declare (not safe))
                                (cons _exn65815_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp67325))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp67324))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn65811_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65811_))
            (let ((_e65813_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65811_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e65813_))
            (macro-unknown-keyword-argument-exception? _exn65811_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn65807_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65807_))
            (let ((_e65809_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65807_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65809_)
                  (macro-unknown-keyword-argument-exception-arguments _e65809_)
                  (let ((__tmp67330
                         (let ((__tmp67331
                                (let ()
                                  (declare (not safe))
                                  (cons _e65809_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp67331))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67330))))
            (if (macro-unknown-keyword-argument-exception? _exn65807_)
                (macro-unknown-keyword-argument-exception-arguments _exn65807_)
                (let ((__tmp67328
                       (let ((__tmp67329
                              (let ()
                                (declare (not safe))
                                (cons _exn65807_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp67329))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67328))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn65801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65801_))
            (let ((_e65804_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65801_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e65804_)
                  (macro-unknown-keyword-argument-exception-procedure _e65804_)
                  (let ((__tmp67334
                         (let ((__tmp67335
                                (let ()
                                  (declare (not safe))
                                  (cons _e65804_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp67335))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp67334))))
            (if (macro-unknown-keyword-argument-exception? _exn65801_)
                (macro-unknown-keyword-argument-exception-procedure _exn65801_)
                (let ((__tmp67332
                       (let ((__tmp67333
                              (let ()
                                (declare (not safe))
                                (cons _exn65801_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp67333))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp67332))))))
    (define unterminated-process-exception?
      (lambda (_exn65797_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65797_))
            (let ((_e65799_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65797_ 'exception))))
              (macro-unterminated-process-exception? _e65799_))
            (macro-unterminated-process-exception? _exn65797_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn65793_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65793_))
            (let ((_e65795_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65793_ 'exception))))
              (if (macro-unterminated-process-exception? _e65795_)
                  (macro-unterminated-process-exception-arguments _e65795_)
                  (let ((__tmp67338
                         (let ((__tmp67339
                                (let ()
                                  (declare (not safe))
                                  (cons _e65795_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp67339))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67338))))
            (if (macro-unterminated-process-exception? _exn65793_)
                (macro-unterminated-process-exception-arguments _exn65793_)
                (let ((__tmp67336
                       (let ((__tmp67337
                              (let ()
                                (declare (not safe))
                                (cons _exn65793_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp67337))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67336))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn65787_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65787_))
            (let ((_e65790_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65787_ 'exception))))
              (if (macro-unterminated-process-exception? _e65790_)
                  (macro-unterminated-process-exception-procedure _e65790_)
                  (let ((__tmp67342
                         (let ((__tmp67343
                                (let ()
                                  (declare (not safe))
                                  (cons _e65790_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp67343))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp67342))))
            (if (macro-unterminated-process-exception? _exn65787_)
                (macro-unterminated-process-exception-procedure _exn65787_)
                (let ((__tmp67340
                       (let ((__tmp67341
                              (let ()
                                (declare (not safe))
                                (cons _exn65787_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp67341))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp67340))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn65783_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65783_))
            (let ((_e65785_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65783_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e65785_))
            (macro-wrong-number-of-arguments-exception? _exn65783_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn65779_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65779_))
            (let ((_e65781_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65779_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65781_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e65781_)
                  (let ((__tmp67346
                         (let ((__tmp67347
                                (let ()
                                  (declare (not safe))
                                  (cons _e65781_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp67347))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67346))))
            (if (macro-wrong-number-of-arguments-exception? _exn65779_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn65779_)
                (let ((__tmp67344
                       (let ((__tmp67345
                              (let ()
                                (declare (not safe))
                                (cons _exn65779_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp67345))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67344))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn65773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65773_))
            (let ((_e65776_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65773_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e65776_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e65776_)
                  (let ((__tmp67350
                         (let ((__tmp67351
                                (let ()
                                  (declare (not safe))
                                  (cons _e65776_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp67351))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp67350))))
            (if (macro-wrong-number-of-arguments-exception? _exn65773_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn65773_)
                (let ((__tmp67348
                       (let ((__tmp67349
                              (let ()
                                (declare (not safe))
                                (cons _exn65773_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp67349))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp67348))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn65769_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65769_))
            (let ((_e65771_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65769_ 'exception))))
              (macro-wrong-number-of-values-exception? _e65771_))
            (macro-wrong-number-of-values-exception? _exn65769_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn65765_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65765_))
            (let ((_e65767_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65765_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65767_)
                  (macro-wrong-number-of-values-exception-code _e65767_)
                  (let ((__tmp67354
                         (let ((__tmp67355
                                (let ()
                                  (declare (not safe))
                                  (cons _e65767_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp67355))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67354))))
            (if (macro-wrong-number-of-values-exception? _exn65765_)
                (macro-wrong-number-of-values-exception-code _exn65765_)
                (let ((__tmp67352
                       (let ((__tmp67353
                              (let ()
                                (declare (not safe))
                                (cons _exn65765_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp67353))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67352))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn65761_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65761_))
            (let ((_e65763_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65761_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65763_)
                  (macro-wrong-number-of-values-exception-rte _e65763_)
                  (let ((__tmp67358
                         (let ((__tmp67359
                                (let ()
                                  (declare (not safe))
                                  (cons _e65763_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp67359))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67358))))
            (if (macro-wrong-number-of-values-exception? _exn65761_)
                (macro-wrong-number-of-values-exception-rte _exn65761_)
                (let ((__tmp67356
                       (let ((__tmp67357
                              (let ()
                                (declare (not safe))
                                (cons _exn65761_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp67357))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67356))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn65755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65755_))
            (let ((_e65758_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65755_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e65758_)
                  (macro-wrong-number-of-values-exception-vals _e65758_)
                  (let ((__tmp67362
                         (let ((__tmp67363
                                (let ()
                                  (declare (not safe))
                                  (cons _e65758_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp67363))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp67362))))
            (if (macro-wrong-number-of-values-exception? _exn65755_)
                (macro-wrong-number-of-values-exception-vals _exn65755_)
                (let ((__tmp67360
                       (let ((__tmp67361
                              (let ()
                                (declare (not safe))
                                (cons _exn65755_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp67361))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp67360))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn65749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65749_))
            (let ((_e65752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65749_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e65752_))
            (macro-wrong-processor-c-return-exception? _exn65749_))))))
