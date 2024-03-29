(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1711709196)
  (begin
    (define Exception::t
      (let ((__tmp67945 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp67945
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args67917_ (apply make-instance Exception::t _$args67917_)))
    (define StackTrace::t
      (let ((__tmp67946 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp67946
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args67914_ (apply make-instance StackTrace::t _$args67914_)))
    (define StackTrace-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor StackTrace::t 'continuation)))
    (define StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator StackTrace::t 'continuation)))
    (define &StackTrace-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor StackTrace::t 'continuation)))
    (define &StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator StackTrace::t 'continuation)))
    (define Error::t
      (let ((__tmp67947 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp67947
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args67911_ (apply make-instance Error::t _$args67911_)))
    (define Error-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'message)))
    (define Error-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'irritants)))
    (define Error-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'where)))
    (define Error-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'continuation)))
    (define Error-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'message)))
    (define Error-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'irritants)))
    (define Error-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'where)))
    (define Error-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'continuation)))
    (define &Error-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'message)))
    (define &Error-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'irritants)))
    (define &Error-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'where)))
    (define &Error-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'continuation)))
    (define &Error-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'message)))
    (define &Error-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'irritants)))
    (define &Error-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'where)))
    (define &Error-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'continuation)))
    (define RuntimeException::t
      (let ((__tmp67948 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp67948
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args67908_
        (apply make-instance RuntimeException::t _$args67908_)))
    (define RuntimeException-exception
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor RuntimeException::t 'exception)))
    (define RuntimeException-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor RuntimeException::t 'continuation)))
    (define RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator RuntimeException::t 'exception)))
    (define RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator RuntimeException::t 'continuation)))
    (define &RuntimeException-exception
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor RuntimeException::t 'exception)))
    (define &RuntimeException-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         RuntimeException::t
         'continuation)))
    (define &RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator RuntimeException::t 'exception)))
    (define &RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         RuntimeException::t
         'continuation)))
    (define gerbil-exception-handler-hook
      (lambda (_exn67903_ _continue67904_)
        (let ((_exn67906_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn67903_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn67906_ _continue67904_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn67899_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn67899_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn67899_ 'continuation))
                '#!void
                (let ((__tmp67949
                       (lambda (_cont67901_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn67899_
                            'continuation
                            _cont67901_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp67949)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn67899_))))
    (define error
      (lambda (_message67896_ . _irritants67897_)
        (let ((__tmp67950
               (let ((__obj67943
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj67943
                  _message67896_
                  'irritants:
                  _irritants67897_)
                 __obj67943)))
          (declare (not safe))
          (raise __tmp67950))))
    (define with-exception-handler
      (lambda (_handler67893_ _thunk67894_)
        (if (let () (declare (not safe)) (procedure? _handler67893_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _handler67893_)))
        (if (let () (declare (not safe)) (procedure? _thunk67894_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _thunk67894_)))
        (let ()
          (declare (not safe))
          (__with-exception-handler _handler67893_ _thunk67894_))))
    (define __with-exception-handler
      (lambda (_handler67885_ _thunk67886_)
        (let ()
          (let ((__tmp67951
                 (lambda (_exn67889_)
                   (let ((_exn67891_
                          (let ()
                            (declare (not safe))
                            (wrap-runtime-exception _exn67889_))))
                     (declare (not safe))
                     (_handler67885_ _exn67891_)))))
            (declare (not safe))
            (##with-exception-handler __tmp67951 _thunk67886_)))))
    (define with-catch
      (lambda (_handler67882_ _thunk67883_)
        (if (let () (declare (not safe)) (procedure? _handler67882_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _handler67882_)))
        (if (let () (declare (not safe)) (procedure? _thunk67883_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _thunk67883_)))
        (let ()
          (declare (not safe))
          (__with-catch _handler67882_ _thunk67883_))))
    (define __with-catch
      (lambda (_handler67874_ _thunk67875_)
        (let ()
          (let ((__tmp67952
                 (lambda (_cont67878_)
                   (let ((__tmp67953
                          (lambda (_exn67880_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _cont67878_
                               _handler67874_
                               _exn67880_)))))
                     (declare (not safe))
                     (__with-exception-handler __tmp67953 _thunk67875_)))))
            (declare (not safe))
            (##continuation-capture __tmp67952)))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn67865_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn67865_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn67865_)))
            _exn67865_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn67865_))
                _exn67865_
                (if (macro-exception? _exn67865_)
                    (let ((_rte67870_
                           (let ((__obj67944
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj67944
                                _exn67865_
                                '2
                                '#f
                                '#f))
                             __obj67944)))
                      (let ((__tmp67954
                             (lambda (_cont67872_)
                               (let ((__tmp67955
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont67872_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte67870_
                                  'continuation
                                  __tmp67955)))))
                        (declare (not safe))
                        (##continuation-capture __tmp67954))
                      _rte67870_)
                    _exn67865_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj67860_)
        (let ((_$e67862_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj67860_))))
          (if _$e67862_
              _$e67862_
              (let () (declare (not safe)) (error-exception? _obj67860_))))))
    (define error-message
      (lambda (_obj67858_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67858_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67858_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj67858_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj67858_))
                '#f))))
    (define error-irritants
      (lambda (_obj67856_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67856_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67856_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj67856_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj67856_))
                '#f))))
    (define error-trace
      (lambda (_obj67854_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj67854_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj67854_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e67836_ _port67837_)
        (let ((_$e67839_
               (let ()
                 (declare (not safe))
                 (__method-ref _e67836_ 'display-exception))))
          (if _$e67839_
              ((lambda (_f67842_) (_f67842_ _e67836_ _port67837_)) _$e67839_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e67836_ _port67837_))))))
    (define display-exception__0
      (lambda (_e67847_)
        (let ((_port67849_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e67847_ _port67849_))))
    (define display-exception
      (lambda _g67957_
        (let ((_g67956_ (let () (declare (not safe)) (##length _g67957_))))
          (cond ((let () (declare (not safe)) (##fx= _g67956_ 1))
                 (apply (lambda (_e67847_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e67847_)))
                        _g67957_))
                ((let () (declare (not safe)) (##fx= _g67956_ 2))
                 (apply (lambda (_e67851_ _port67852_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e67851_ _port67852_)))
                        _g67957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g67957_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self67825_ _message67826_ . _rest67827_)
        (let ((_message67833_
               (if (let () (declare (not safe)) (string? _message67826_))
                   _message67826_
                   (call-with-output-string
                    '""
                    (lambda (_g6782867830_)
                      (display _message67826_ _g6782867830_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self67825_ 'message _message67833_))
          (apply class-instance-init! _self67825_ _rest67827_))))
    (define Error:::init!::specialize
      (lambda (__klass67919 __method-table67920)
        (let ((__message67921
               (let ((__slot67922
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67919 'message))))
                 (if __slot67922
                     __slot67922
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self67825_ _message67826_ . _rest67827_)
            (let ((_message67833_
                   (if (let () (declare (not safe)) (string? _message67826_))
                       _message67826_
                       (call-with-output-string
                        '""
                        (lambda (_g6782867830_)
                          (display _message67826_ _g6782867830_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self67825_
                 _message67833_
                 __message67921
                 '#f
                 '#f))
              (apply class-instance-init! _self67825_ _rest67827_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (__bind-method! Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_self67683_ _port67684_)
        (let ((_tmp-port67686_ (open-output-string))
              (_display-error-newline67687_
               (> (output-port-column _port67684_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67686_))
          (let ((__tmp67958
                 (lambda ()
                   (if _display-error-newline67687_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e67690_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67683_ 'where))))
                     (if _$e67690_ (display _$e67690_) (display '"?")))
                   (let ((__tmp67959
                          (let ((__tmp67960
                                 (let ()
                                   (declare (not safe))
                                   (__object-type _self67683_))))
                            (declare (not safe))
                            (##type-name __tmp67960))))
                     (declare (not safe))
                     (__display* '" [" __tmp67959 '"]: "))
                   (let ((__tmp67961
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67683_ 'message))))
                     (declare (not safe))
                     (__displayln __tmp67961))
                   (let ((_irritants67693_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self67683_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants67693_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj67695_)
                              (let ()
                                (declare (not safe))
                                (##write _obj67695_))
                              (let ()
                                (declare (not safe))
                                (##write-char '#\space)))
                            _irritants67693_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self67683_))
                            (dump-stack-trace?))
                       (let ((_cont6769667698_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self67683_
                                 'continuation))))
                         (if _cont6769667698_
                             (let ((_cont67701_ _cont6769667698_))
                               (let ()
                                 (declare (not safe))
                                 (__displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont67701_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (__call-with-parameters
             __tmp67958
             current-output-port
             _tmp-port67686_))
          (let ((__tmp67962 (get-output-string _tmp-port67686_)))
            (declare (not safe))
            (##write-string __tmp67962 _port67684_)))))
    (define Error::display-exception::specialize
      (lambda (__klass67923 __method-table67924)
        (let ((__irritants67925
               (let ((__slot67929
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67923 'irritants))))
                 (if __slot67929
                     __slot67929
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message67926
               (let ((__slot67930
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67923 'message))))
                 (if __slot67930
                     __slot67930
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message)))))
              (__where67927
               (let ((__slot67931
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67923 'where))))
                 (if __slot67931
                     __slot67931
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__continuation67928
               (let ((__slot67932
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67923 'continuation))))
                 (if __slot67932
                     __slot67932
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67683_ _port67684_)
            (let ((_tmp-port67686_ (open-output-string))
                  (_display-error-newline67687_
                   (> (output-port-column _port67684_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67686_))
              (let ((__tmp67963
                     (lambda ()
                       (if _display-error-newline67687_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e67690_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67683_
                                 __where67927
                                 '#f
                                 '#f))))
                         (if _$e67690_ (display _$e67690_) (display '"?")))
                       (let ((__tmp67964
                              (let ((__tmp67965
                                     (let ()
                                       (declare (not safe))
                                       (__object-type _self67683_))))
                                (declare (not safe))
                                (##type-name __tmp67965))))
                         (declare (not safe))
                         (__display* '" [" __tmp67964 '"]: "))
                       (let ((__tmp67966
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67683_
                                 __message67926
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (__displayln __tmp67966))
                       (let ((_irritants67693_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self67683_
                                 __irritants67925
                                 '#f
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants67693_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj67695_)
                                  (let ()
                                    (declare (not safe))
                                    (##write _obj67695_))
                                  (let ()
                                    (declare (not safe))
                                    (##write-char '#\space)))
                                _irritants67693_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self67683_))
                                (dump-stack-trace?))
                           (let ((_cont6769667698_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self67683_
                                     __continuation67928
                                     '#f
                                     '#f))))
                             (if _cont6769667698_
                                 (let ((_cont67701_ _cont6769667698_))
                                   (let ()
                                     (declare (not safe))
                                     (__displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont67701_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (__call-with-parameters
                 __tmp67963
                 current-output-port
                 _tmp-port67686_))
              (let ((__tmp67967 (get-output-string _tmp-port67686_)))
                (declare (not safe))
                (##write-string __tmp67967 _port67684_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_self67550_ _port67551_)
        (let ((_tmp-port67553_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port67553_))
          (let ((__tmp67968
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self67550_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp67968 _tmp-port67553_))
          (if (dump-stack-trace?)
              (let ((_cont6755467556_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self67550_ 'continuation))))
                (if _cont6755467556_
                    (let ((_cont67559_ _cont6755467556_))
                      (display '"--- continuation backtrace:" _tmp-port67553_)
                      (newline _tmp-port67553_)
                      (display-continuation-backtrace
                       _cont67559_
                       _tmp-port67553_))
                    '#f))
              '#!void)
          (let ((__tmp67969 (get-output-string _tmp-port67553_)))
            (declare (not safe))
            (##write-string __tmp67969 _port67551_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass67933 __method-table67934)
        (let ((__exception67935
               (let ((__slot67937
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67933 'exception))))
                 (if __slot67937
                     __slot67937
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation67936
               (let ((__slot67938
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass67933 'continuation))))
                 (if __slot67938
                     __slot67938
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self67550_ _port67551_)
            (let ((_tmp-port67553_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port67553_))
              (let ((__tmp67970
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self67550_
                        __exception67935
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp67970 _tmp-port67553_))
              (if (dump-stack-trace?)
                  (let ((_cont6755467556_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self67550_
                            __continuation67936
                            '#f
                            '#f))))
                    (if _cont6755467556_
                        (let ((_cont67559_ _cont6755467556_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port67553_)
                          (newline _tmp-port67553_)
                          (display-continuation-backtrace
                           _cont67559_
                           _tmp-port67553_))
                        '#f))
                  '#!void)
              (let ((__tmp67971 (get-output-string _tmp-port67553_)))
                (declare (not safe))
                (##write-string __tmp67971 _port67551_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_port67422_)
        (if (macro-character-port? _port67422_)
            (let ((_old-width67424_
                   (macro-character-port-output-width _port67422_)))
              (macro-character-port-output-width-set!
               _port67422_
               (lambda (_port67426_) '256))
              _old-width67424_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port67419_ _old-width67420_)
        (if (macro-character-port? _port67419_)
            (macro-character-port-output-width-set!
             _port67419_
             _old-width67420_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e67417_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e67417_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn67411_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67411_))
            (let ((_e67414_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67411_ 'exception))))
              (macro-abandoned-mutex-exception? _e67414_))
            (macro-abandoned-mutex-exception? _exn67411_))))
    (define cfun-conversion-exception?
      (lambda (_exn67407_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67407_))
            (let ((_e67409_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67407_ 'exception))))
              (macro-cfun-conversion-exception? _e67409_))
            (macro-cfun-conversion-exception? _exn67407_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn67403_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67403_))
            (let ((_e67405_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67403_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67405_)
                  (macro-cfun-conversion-exception-arguments _e67405_)
                  (let ((__tmp67972
                         (cons 'cfun-conversion-exception-arguments
                               (cons _e67405_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67972))))
            (if (macro-cfun-conversion-exception? _exn67403_)
                (macro-cfun-conversion-exception-arguments _exn67403_)
                (let ((__tmp67973
                       (cons 'cfun-conversion-exception-arguments
                             (cons _exn67403_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67973))))))
    (define cfun-conversion-exception-code
      (lambda (_exn67399_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67399_))
            (let ((_e67401_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67399_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67401_)
                  (macro-cfun-conversion-exception-code _e67401_)
                  (let ((__tmp67974
                         (cons 'cfun-conversion-exception-code
                               (cons _e67401_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67974))))
            (if (macro-cfun-conversion-exception? _exn67399_)
                (macro-cfun-conversion-exception-code _exn67399_)
                (let ((__tmp67975
                       (cons 'cfun-conversion-exception-code
                             (cons _exn67399_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67975))))))
    (define cfun-conversion-exception-message
      (lambda (_exn67395_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67395_))
            (let ((_e67397_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67395_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67397_)
                  (macro-cfun-conversion-exception-message _e67397_)
                  (let ((__tmp67976
                         (cons 'cfun-conversion-exception-message
                               (cons _e67397_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67976))))
            (if (macro-cfun-conversion-exception? _exn67395_)
                (macro-cfun-conversion-exception-message _exn67395_)
                (let ((__tmp67977
                       (cons 'cfun-conversion-exception-message
                             (cons _exn67395_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67977))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn67389_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67389_))
            (let ((_e67392_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67389_ 'exception))))
              (if (macro-cfun-conversion-exception? _e67392_)
                  (macro-cfun-conversion-exception-procedure _e67392_)
                  (let ((__tmp67978
                         (cons 'cfun-conversion-exception-procedure
                               (cons _e67392_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp67978))))
            (if (macro-cfun-conversion-exception? _exn67389_)
                (macro-cfun-conversion-exception-procedure _exn67389_)
                (let ((__tmp67979
                       (cons 'cfun-conversion-exception-procedure
                             (cons _exn67389_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp67979))))))
    (define datum-parsing-exception?
      (lambda (_exn67385_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67385_))
            (let ((_e67387_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67385_ 'exception))))
              (macro-datum-parsing-exception? _e67387_))
            (macro-datum-parsing-exception? _exn67385_))))
    (define datum-parsing-exception-kind
      (lambda (_exn67381_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67381_))
            (let ((_e67383_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67381_ 'exception))))
              (if (macro-datum-parsing-exception? _e67383_)
                  (macro-datum-parsing-exception-kind _e67383_)
                  (let ((__tmp67980
                         (cons 'datum-parsing-exception-kind
                               (cons _e67383_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67980))))
            (if (macro-datum-parsing-exception? _exn67381_)
                (macro-datum-parsing-exception-kind _exn67381_)
                (let ((__tmp67981
                       (cons 'datum-parsing-exception-kind
                             (cons _exn67381_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67981))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn67377_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67377_))
            (let ((_e67379_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67377_ 'exception))))
              (if (macro-datum-parsing-exception? _e67379_)
                  (macro-datum-parsing-exception-parameters _e67379_)
                  (let ((__tmp67982
                         (cons 'datum-parsing-exception-parameters
                               (cons _e67379_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67982))))
            (if (macro-datum-parsing-exception? _exn67377_)
                (macro-datum-parsing-exception-parameters _exn67377_)
                (let ((__tmp67983
                       (cons 'datum-parsing-exception-parameters
                             (cons _exn67377_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67983))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn67371_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67371_))
            (let ((_e67374_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67371_ 'exception))))
              (if (macro-datum-parsing-exception? _e67374_)
                  (macro-datum-parsing-exception-readenv _e67374_)
                  (let ((__tmp67984
                         (cons 'datum-parsing-exception-readenv
                               (cons _e67374_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp67984))))
            (if (macro-datum-parsing-exception? _exn67371_)
                (macro-datum-parsing-exception-readenv _exn67371_)
                (let ((__tmp67985
                       (cons 'datum-parsing-exception-readenv
                             (cons _exn67371_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp67985))))))
    (define deadlock-exception?
      (lambda (_exn67365_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67365_))
            (let ((_e67368_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67365_ 'exception))))
              (macro-deadlock-exception? _e67368_))
            (macro-deadlock-exception? _exn67365_))))
    (define divide-by-zero-exception?
      (lambda (_exn67361_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67361_))
            (let ((_e67363_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67361_ 'exception))))
              (macro-divide-by-zero-exception? _e67363_))
            (macro-divide-by-zero-exception? _exn67361_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn67357_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67357_))
            (let ((_e67359_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67357_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67359_)
                  (macro-divide-by-zero-exception-arguments _e67359_)
                  (let ((__tmp67986
                         (cons 'divide-by-zero-exception-arguments
                               (cons _e67359_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67986))))
            (if (macro-divide-by-zero-exception? _exn67357_)
                (macro-divide-by-zero-exception-arguments _exn67357_)
                (let ((__tmp67987
                       (cons 'divide-by-zero-exception-arguments
                             (cons _exn67357_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67987))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn67351_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67351_))
            (let ((_e67354_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67351_ 'exception))))
              (if (macro-divide-by-zero-exception? _e67354_)
                  (macro-divide-by-zero-exception-procedure _e67354_)
                  (let ((__tmp67988
                         (cons 'divide-by-zero-exception-procedure
                               (cons _e67354_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp67988))))
            (if (macro-divide-by-zero-exception? _exn67351_)
                (macro-divide-by-zero-exception-procedure _exn67351_)
                (let ((__tmp67989
                       (cons 'divide-by-zero-exception-procedure
                             (cons _exn67351_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp67989))))))
    (define error-exception?
      (lambda (_exn67347_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67347_))
            (let ((_e67349_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67347_ 'exception))))
              (macro-error-exception? _e67349_))
            (macro-error-exception? _exn67347_))))
    (define error-exception-message
      (lambda (_exn67343_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67343_))
            (let ((_e67345_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67343_ 'exception))))
              (if (macro-error-exception? _e67345_)
                  (macro-error-exception-message _e67345_)
                  (let ((__tmp67990
                         (cons 'error-exception-message (cons _e67345_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67990))))
            (if (macro-error-exception? _exn67343_)
                (macro-error-exception-message _exn67343_)
                (let ((__tmp67991
                       (cons 'error-exception-message (cons _exn67343_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67991))))))
    (define error-exception-parameters
      (lambda (_exn67337_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67337_))
            (let ((_e67340_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67337_ 'exception))))
              (if (macro-error-exception? _e67340_)
                  (macro-error-exception-parameters _e67340_)
                  (let ((__tmp67992
                         (cons 'error-exception-parameters
                               (cons _e67340_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp67992))))
            (if (macro-error-exception? _exn67337_)
                (macro-error-exception-parameters _exn67337_)
                (let ((__tmp67993
                       (cons 'error-exception-parameters
                             (cons _exn67337_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp67993))))))
    (define expression-parsing-exception?
      (lambda (_exn67333_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67333_))
            (let ((_e67335_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67333_ 'exception))))
              (macro-expression-parsing-exception? _e67335_))
            (macro-expression-parsing-exception? _exn67333_))))
    (define expression-parsing-exception-kind
      (lambda (_exn67329_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67329_))
            (let ((_e67331_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67329_ 'exception))))
              (if (macro-expression-parsing-exception? _e67331_)
                  (macro-expression-parsing-exception-kind _e67331_)
                  (let ((__tmp67994
                         (cons 'expression-parsing-exception-kind
                               (cons _e67331_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67994))))
            (if (macro-expression-parsing-exception? _exn67329_)
                (macro-expression-parsing-exception-kind _exn67329_)
                (let ((__tmp67995
                       (cons 'expression-parsing-exception-kind
                             (cons _exn67329_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67995))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn67325_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67325_))
            (let ((_e67327_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67325_ 'exception))))
              (if (macro-expression-parsing-exception? _e67327_)
                  (macro-expression-parsing-exception-parameters _e67327_)
                  (let ((__tmp67996
                         (cons 'expression-parsing-exception-parameters
                               (cons _e67327_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67996))))
            (if (macro-expression-parsing-exception? _exn67325_)
                (macro-expression-parsing-exception-parameters _exn67325_)
                (let ((__tmp67997
                       (cons 'expression-parsing-exception-parameters
                             (cons _exn67325_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67997))))))
    (define expression-parsing-exception-source
      (lambda (_exn67319_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67319_))
            (let ((_e67322_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67319_ 'exception))))
              (if (macro-expression-parsing-exception? _e67322_)
                  (macro-expression-parsing-exception-source _e67322_)
                  (let ((__tmp67998
                         (cons 'expression-parsing-exception-source
                               (cons _e67322_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp67998))))
            (if (macro-expression-parsing-exception? _exn67319_)
                (macro-expression-parsing-exception-source _exn67319_)
                (let ((__tmp67999
                       (cons 'expression-parsing-exception-source
                             (cons _exn67319_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp67999))))))
    (define file-exists-exception?
      (lambda (_exn67315_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67315_))
            (let ((_e67317_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67315_ 'exception))))
              (macro-file-exists-exception? _e67317_))
            (macro-file-exists-exception? _exn67315_))))
    (define file-exists-exception-arguments
      (lambda (_exn67311_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67311_))
            (let ((_e67313_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67311_ 'exception))))
              (if (macro-file-exists-exception? _e67313_)
                  (macro-file-exists-exception-arguments _e67313_)
                  (let ((__tmp68000
                         (cons 'file-exists-exception-arguments
                               (cons _e67313_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68000))))
            (if (macro-file-exists-exception? _exn67311_)
                (macro-file-exists-exception-arguments _exn67311_)
                (let ((__tmp68001
                       (cons 'file-exists-exception-arguments
                             (cons _exn67311_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68001))))))
    (define file-exists-exception-procedure
      (lambda (_exn67305_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67305_))
            (let ((_e67308_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67305_ 'exception))))
              (if (macro-file-exists-exception? _e67308_)
                  (macro-file-exists-exception-procedure _e67308_)
                  (let ((__tmp68002
                         (cons 'file-exists-exception-procedure
                               (cons _e67308_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp68002))))
            (if (macro-file-exists-exception? _exn67305_)
                (macro-file-exists-exception-procedure _exn67305_)
                (let ((__tmp68003
                       (cons 'file-exists-exception-procedure
                             (cons _exn67305_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp68003))))))
    (define fixnum-overflow-exception?
      (lambda (_exn67301_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67301_))
            (let ((_e67303_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67301_ 'exception))))
              (macro-fixnum-overflow-exception? _e67303_))
            (macro-fixnum-overflow-exception? _exn67301_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn67297_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67297_))
            (let ((_e67299_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67297_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67299_)
                  (macro-fixnum-overflow-exception-arguments _e67299_)
                  (let ((__tmp68004
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _e67299_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68004))))
            (if (macro-fixnum-overflow-exception? _exn67297_)
                (macro-fixnum-overflow-exception-arguments _exn67297_)
                (let ((__tmp68005
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _exn67297_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68005))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn67291_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67291_))
            (let ((_e67294_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67291_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e67294_)
                  (macro-fixnum-overflow-exception-procedure _e67294_)
                  (let ((__tmp68006
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _e67294_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp68006))))
            (if (macro-fixnum-overflow-exception? _exn67291_)
                (macro-fixnum-overflow-exception-procedure _exn67291_)
                (let ((__tmp68007
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _exn67291_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp68007))))))
    (define heap-overflow-exception?
      (lambda (_exn67285_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67285_))
            (let ((_e67288_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67285_ 'exception))))
              (macro-heap-overflow-exception? _e67288_))
            (macro-heap-overflow-exception? _exn67285_))))
    (define inactive-thread-exception?
      (lambda (_exn67281_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67281_))
            (let ((_e67283_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67281_ 'exception))))
              (macro-inactive-thread-exception? _e67283_))
            (macro-inactive-thread-exception? _exn67281_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn67277_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67277_))
            (let ((_e67279_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67277_ 'exception))))
              (if (macro-inactive-thread-exception? _e67279_)
                  (macro-inactive-thread-exception-arguments _e67279_)
                  (let ((__tmp68008
                         (cons 'inactive-thread-exception-arguments
                               (cons _e67279_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68008))))
            (if (macro-inactive-thread-exception? _exn67277_)
                (macro-inactive-thread-exception-arguments _exn67277_)
                (let ((__tmp68009
                       (cons 'inactive-thread-exception-arguments
                             (cons _exn67277_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68009))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn67271_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67271_))
            (let ((_e67274_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67271_ 'exception))))
              (if (macro-inactive-thread-exception? _e67274_)
                  (macro-inactive-thread-exception-procedure _e67274_)
                  (let ((__tmp68010
                         (cons 'inactive-thread-exception-procedure
                               (cons _e67274_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp68010))))
            (if (macro-inactive-thread-exception? _exn67271_)
                (macro-inactive-thread-exception-procedure _exn67271_)
                (let ((__tmp68011
                       (cons 'inactive-thread-exception-procedure
                             (cons _exn67271_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp68011))))))
    (define initialized-thread-exception?
      (lambda (_exn67267_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67267_))
            (let ((_e67269_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67267_ 'exception))))
              (macro-initialized-thread-exception? _e67269_))
            (macro-initialized-thread-exception? _exn67267_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn67263_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67263_))
            (let ((_e67265_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67263_ 'exception))))
              (if (macro-initialized-thread-exception? _e67265_)
                  (macro-initialized-thread-exception-arguments _e67265_)
                  (let ((__tmp68012
                         (cons 'initialized-thread-exception-arguments
                               (cons _e67265_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68012))))
            (if (macro-initialized-thread-exception? _exn67263_)
                (macro-initialized-thread-exception-arguments _exn67263_)
                (let ((__tmp68013
                       (cons 'initialized-thread-exception-arguments
                             (cons _exn67263_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68013))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn67257_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67257_))
            (let ((_e67260_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67257_ 'exception))))
              (if (macro-initialized-thread-exception? _e67260_)
                  (macro-initialized-thread-exception-procedure _e67260_)
                  (let ((__tmp68014
                         (cons 'initialized-thread-exception-procedure
                               (cons _e67260_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp68014))))
            (if (macro-initialized-thread-exception? _exn67257_)
                (macro-initialized-thread-exception-procedure _exn67257_)
                (let ((__tmp68015
                       (cons 'initialized-thread-exception-procedure
                             (cons _exn67257_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp68015))))))
    (define invalid-hash-number-exception?
      (lambda (_exn67253_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67253_))
            (let ((_e67255_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67253_ 'exception))))
              (macro-invalid-hash-number-exception? _e67255_))
            (macro-invalid-hash-number-exception? _exn67253_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn67249_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67249_))
            (let ((_e67251_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67249_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67251_)
                  (macro-invalid-hash-number-exception-arguments _e67251_)
                  (let ((__tmp68016
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _e67251_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68016))))
            (if (macro-invalid-hash-number-exception? _exn67249_)
                (macro-invalid-hash-number-exception-arguments _exn67249_)
                (let ((__tmp68017
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _exn67249_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68017))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn67243_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67243_))
            (let ((_e67246_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67243_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e67246_)
                  (macro-invalid-hash-number-exception-procedure _e67246_)
                  (let ((__tmp68018
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _e67246_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp68018))))
            (if (macro-invalid-hash-number-exception? _exn67243_)
                (macro-invalid-hash-number-exception-procedure _exn67243_)
                (let ((__tmp68019
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _exn67243_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp68019))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn67239_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67239_))
            (let ((_e67241_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67239_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e67241_))
            (macro-invalid-utf8-encoding-exception? _exn67239_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn67235_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67235_))
            (let ((_e67237_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67235_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67237_)
                  (macro-invalid-utf8-encoding-exception-arguments _e67237_)
                  (let ((__tmp68020
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _e67237_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68020))))
            (if (macro-invalid-utf8-encoding-exception? _exn67235_)
                (macro-invalid-utf8-encoding-exception-arguments _exn67235_)
                (let ((__tmp68021
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _exn67235_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68021))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn67229_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67229_))
            (let ((_e67232_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67229_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e67232_)
                  (macro-invalid-utf8-encoding-exception-procedure _e67232_)
                  (let ((__tmp68022
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _e67232_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp68022))))
            (if (macro-invalid-utf8-encoding-exception? _exn67229_)
                (macro-invalid-utf8-encoding-exception-procedure _exn67229_)
                (let ((__tmp68023
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _exn67229_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp68023))))))
    (define join-timeout-exception?
      (lambda (_exn67225_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67225_))
            (let ((_e67227_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67225_ 'exception))))
              (macro-join-timeout-exception? _e67227_))
            (macro-join-timeout-exception? _exn67225_))))
    (define join-timeout-exception-arguments
      (lambda (_exn67221_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67221_))
            (let ((_e67223_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67221_ 'exception))))
              (if (macro-join-timeout-exception? _e67223_)
                  (macro-join-timeout-exception-arguments _e67223_)
                  (let ((__tmp68024
                         (cons 'join-timeout-exception-arguments
                               (cons _e67223_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68024))))
            (if (macro-join-timeout-exception? _exn67221_)
                (macro-join-timeout-exception-arguments _exn67221_)
                (let ((__tmp68025
                       (cons 'join-timeout-exception-arguments
                             (cons _exn67221_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68025))))))
    (define join-timeout-exception-procedure
      (lambda (_exn67215_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67215_))
            (let ((_e67218_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67215_ 'exception))))
              (if (macro-join-timeout-exception? _e67218_)
                  (macro-join-timeout-exception-procedure _e67218_)
                  (let ((__tmp68026
                         (cons 'join-timeout-exception-procedure
                               (cons _e67218_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp68026))))
            (if (macro-join-timeout-exception? _exn67215_)
                (macro-join-timeout-exception-procedure _exn67215_)
                (let ((__tmp68027
                       (cons 'join-timeout-exception-procedure
                             (cons _exn67215_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp68027))))))
    (define keyword-expected-exception?
      (lambda (_exn67211_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67211_))
            (let ((_e67213_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67211_ 'exception))))
              (macro-keyword-expected-exception? _e67213_))
            (macro-keyword-expected-exception? _exn67211_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn67207_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67207_))
            (let ((_e67209_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67207_ 'exception))))
              (if (macro-keyword-expected-exception? _e67209_)
                  (macro-keyword-expected-exception-arguments _e67209_)
                  (let ((__tmp68028
                         (cons 'keyword-expected-exception-arguments
                               (cons _e67209_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68028))))
            (if (macro-keyword-expected-exception? _exn67207_)
                (macro-keyword-expected-exception-arguments _exn67207_)
                (let ((__tmp68029
                       (cons 'keyword-expected-exception-arguments
                             (cons _exn67207_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68029))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn67201_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67201_))
            (let ((_e67204_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67201_ 'exception))))
              (if (macro-keyword-expected-exception? _e67204_)
                  (macro-keyword-expected-exception-procedure _e67204_)
                  (let ((__tmp68030
                         (cons 'keyword-expected-exception-procedure
                               (cons _e67204_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp68030))))
            (if (macro-keyword-expected-exception? _exn67201_)
                (macro-keyword-expected-exception-procedure _exn67201_)
                (let ((__tmp68031
                       (cons 'keyword-expected-exception-procedure
                             (cons _exn67201_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp68031))))))
    (define length-mismatch-exception?
      (lambda (_exn67197_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67197_))
            (let ((_e67199_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67197_ 'exception))))
              (macro-length-mismatch-exception? _e67199_))
            (macro-length-mismatch-exception? _exn67197_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn67193_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67193_))
            (let ((_e67195_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67193_ 'exception))))
              (if (macro-length-mismatch-exception? _e67195_)
                  (macro-length-mismatch-exception-arg-id _e67195_)
                  (let ((__tmp68032
                         (cons 'length-mismatch-exception-arg-id
                               (cons _e67195_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68032))))
            (if (macro-length-mismatch-exception? _exn67193_)
                (macro-length-mismatch-exception-arg-id _exn67193_)
                (let ((__tmp68033
                       (cons 'length-mismatch-exception-arg-id
                             (cons _exn67193_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68033))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn67189_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67189_))
            (let ((_e67191_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67189_ 'exception))))
              (if (macro-length-mismatch-exception? _e67191_)
                  (macro-length-mismatch-exception-arguments _e67191_)
                  (let ((__tmp68034
                         (cons 'length-mismatch-exception-arguments
                               (cons _e67191_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68034))))
            (if (macro-length-mismatch-exception? _exn67189_)
                (macro-length-mismatch-exception-arguments _exn67189_)
                (let ((__tmp68035
                       (cons 'length-mismatch-exception-arguments
                             (cons _exn67189_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68035))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn67183_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67183_))
            (let ((_e67186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67183_ 'exception))))
              (if (macro-length-mismatch-exception? _e67186_)
                  (macro-length-mismatch-exception-procedure _e67186_)
                  (let ((__tmp68036
                         (cons 'length-mismatch-exception-procedure
                               (cons _e67186_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp68036))))
            (if (macro-length-mismatch-exception? _exn67183_)
                (macro-length-mismatch-exception-procedure _exn67183_)
                (let ((__tmp68037
                       (cons 'length-mismatch-exception-procedure
                             (cons _exn67183_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp68037))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn67179_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67179_))
            (let ((_e67181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67179_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e67181_))
            (macro-mailbox-receive-timeout-exception? _exn67179_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn67175_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67175_))
            (let ((_e67177_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67175_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67177_)
                  (macro-mailbox-receive-timeout-exception-arguments _e67177_)
                  (let ((__tmp68038
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _e67177_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68038))))
            (if (macro-mailbox-receive-timeout-exception? _exn67175_)
                (macro-mailbox-receive-timeout-exception-arguments _exn67175_)
                (let ((__tmp68039
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _exn67175_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68039))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn67169_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67169_))
            (let ((_e67172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67169_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e67172_)
                  (macro-mailbox-receive-timeout-exception-procedure _e67172_)
                  (let ((__tmp68040
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _e67172_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp68040))))
            (if (macro-mailbox-receive-timeout-exception? _exn67169_)
                (macro-mailbox-receive-timeout-exception-procedure _exn67169_)
                (let ((__tmp68041
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _exn67169_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp68041))))))
    (define module-not-found-exception?
      (lambda (_exn67165_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67165_))
            (let ((_e67167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67165_ 'exception))))
              (macro-module-not-found-exception? _e67167_))
            (macro-module-not-found-exception? _exn67165_))))
    (define module-not-found-exception-arguments
      (lambda (_exn67161_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67161_))
            (let ((_e67163_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67161_ 'exception))))
              (if (macro-module-not-found-exception? _e67163_)
                  (macro-module-not-found-exception-arguments _e67163_)
                  (let ((__tmp68042
                         (cons 'module-not-found-exception-arguments
                               (cons _e67163_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68042))))
            (if (macro-module-not-found-exception? _exn67161_)
                (macro-module-not-found-exception-arguments _exn67161_)
                (let ((__tmp68043
                       (cons 'module-not-found-exception-arguments
                             (cons _exn67161_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68043))))))
    (define module-not-found-exception-procedure
      (lambda (_exn67155_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67155_))
            (let ((_e67158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67155_ 'exception))))
              (if (macro-module-not-found-exception? _e67158_)
                  (macro-module-not-found-exception-procedure _e67158_)
                  (let ((__tmp68044
                         (cons 'module-not-found-exception-procedure
                               (cons _e67158_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp68044))))
            (if (macro-module-not-found-exception? _exn67155_)
                (macro-module-not-found-exception-procedure _exn67155_)
                (let ((__tmp68045
                       (cons 'module-not-found-exception-procedure
                             (cons _exn67155_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp68045))))))
    (define multiple-c-return-exception?
      (lambda (_exn67149_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67149_))
            (let ((_e67152_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67149_ 'exception))))
              (macro-multiple-c-return-exception? _e67152_))
            (macro-multiple-c-return-exception? _exn67149_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn67145_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67145_))
            (let ((_e67147_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67145_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e67147_))
            (macro-no-such-file-or-directory-exception? _exn67145_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn67141_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67141_))
            (let ((_e67143_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67141_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67143_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e67143_)
                  (let ((__tmp68046
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _e67143_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68046))))
            (if (macro-no-such-file-or-directory-exception? _exn67141_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn67141_)
                (let ((__tmp68047
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _exn67141_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68047))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn67135_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67135_))
            (let ((_e67138_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67135_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e67138_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e67138_)
                  (let ((__tmp68048
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _e67138_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp68048))))
            (if (macro-no-such-file-or-directory-exception? _exn67135_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn67135_)
                (let ((__tmp68049
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _exn67135_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp68049))))))
    (define noncontinuable-exception?
      (lambda (_exn67131_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67131_))
            (let ((_e67133_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67131_ 'exception))))
              (macro-noncontinuable-exception? _e67133_))
            (macro-noncontinuable-exception? _exn67131_))))
    (define noncontinuable-exception-reason
      (lambda (_exn67125_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67125_))
            (let ((_e67128_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67125_ 'exception))))
              (if (macro-noncontinuable-exception? _e67128_)
                  (macro-noncontinuable-exception-reason _e67128_)
                  (let ((__tmp68050
                         (cons 'noncontinuable-exception-reason
                               (cons _e67128_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp68050))))
            (if (macro-noncontinuable-exception? _exn67125_)
                (macro-noncontinuable-exception-reason _exn67125_)
                (let ((__tmp68051
                       (cons 'noncontinuable-exception-reason
                             (cons _exn67125_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp68051))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn67121_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67121_))
            (let ((_e67123_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67121_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e67123_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn67121_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn67117_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67117_))
            (let ((_e67119_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67117_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67119_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e67119_)
                  (let ((__tmp68052
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _e67119_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68052))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67117_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn67117_)
                (let ((__tmp68053
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _exn67117_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68053))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn67111_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67111_))
            (let ((_e67114_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67111_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e67114_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e67114_)
                  (let ((__tmp68054
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _e67114_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp68054))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn67111_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn67111_)
                (let ((__tmp68055
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _exn67111_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp68055))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn67107_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67107_))
            (let ((_e67109_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67107_ 'exception))))
              (macro-nonprocedure-operator-exception? _e67109_))
            (macro-nonprocedure-operator-exception? _exn67107_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn67103_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67103_))
            (let ((_e67105_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67103_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67105_)
                  (macro-nonprocedure-operator-exception-arguments _e67105_)
                  (let ((__tmp68056
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _e67105_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68056))))
            (if (macro-nonprocedure-operator-exception? _exn67103_)
                (macro-nonprocedure-operator-exception-arguments _exn67103_)
                (let ((__tmp68057
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _exn67103_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68057))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn67099_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67099_))
            (let ((_e67101_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67099_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67101_)
                  (macro-nonprocedure-operator-exception-code _e67101_)
                  (let ((__tmp68058
                         (cons 'nonprocedure-operator-exception-code
                               (cons _e67101_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68058))))
            (if (macro-nonprocedure-operator-exception? _exn67099_)
                (macro-nonprocedure-operator-exception-code _exn67099_)
                (let ((__tmp68059
                       (cons 'nonprocedure-operator-exception-code
                             (cons _exn67099_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68059))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn67095_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67095_))
            (let ((_e67097_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67095_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67097_)
                  (macro-nonprocedure-operator-exception-operator _e67097_)
                  (let ((__tmp68060
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _e67097_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68060))))
            (if (macro-nonprocedure-operator-exception? _exn67095_)
                (macro-nonprocedure-operator-exception-operator _exn67095_)
                (let ((__tmp68061
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _exn67095_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68061))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn67089_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67089_))
            (let ((_e67092_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67089_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e67092_)
                  (macro-nonprocedure-operator-exception-rte _e67092_)
                  (let ((__tmp68062
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _e67092_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp68062))))
            (if (macro-nonprocedure-operator-exception? _exn67089_)
                (macro-nonprocedure-operator-exception-rte _exn67089_)
                (let ((__tmp68063
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _exn67089_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp68063))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn67085_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67085_))
            (let ((_e67087_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67085_ 'exception))))
              (macro-not-in-compilation-context-exception? _e67087_))
            (macro-not-in-compilation-context-exception? _exn67085_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn67081_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67081_))
            (let ((_e67083_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67081_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67083_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e67083_)
                  (let ((__tmp68064
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _e67083_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68064))))
            (if (macro-not-in-compilation-context-exception? _exn67081_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn67081_)
                (let ((__tmp68065
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _exn67081_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68065))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn67075_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67075_))
            (let ((_e67078_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67075_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e67078_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e67078_)
                  (let ((__tmp68066
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _e67078_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp68066))))
            (if (macro-not-in-compilation-context-exception? _exn67075_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn67075_)
                (let ((__tmp68067
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _exn67075_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp68067))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn67071_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67071_))
            (let ((_e67073_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67071_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e67073_))
            (macro-number-of-arguments-limit-exception? _exn67071_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn67067_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67067_))
            (let ((_e67069_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67067_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67069_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e67069_)
                  (let ((__tmp68068
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _e67069_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68068))))
            (if (macro-number-of-arguments-limit-exception? _exn67067_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn67067_)
                (let ((__tmp68069
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _exn67067_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68069))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn67061_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67061_))
            (let ((_e67064_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67061_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e67064_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e67064_)
                  (let ((__tmp68070
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _e67064_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp68070))))
            (if (macro-number-of-arguments-limit-exception? _exn67061_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn67061_)
                (let ((__tmp68071
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _exn67061_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp68071))))))
    (define os-exception?
      (lambda (_exn67057_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67057_))
            (let ((_e67059_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67057_ 'exception))))
              (macro-os-exception? _e67059_))
            (macro-os-exception? _exn67057_))))
    (define os-exception-arguments
      (lambda (_exn67053_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67053_))
            (let ((_e67055_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67053_ 'exception))))
              (if (macro-os-exception? _e67055_)
                  (macro-os-exception-arguments _e67055_)
                  (let ((__tmp68072
                         (cons 'os-exception-arguments (cons _e67055_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68072))))
            (if (macro-os-exception? _exn67053_)
                (macro-os-exception-arguments _exn67053_)
                (let ((__tmp68073
                       (cons 'os-exception-arguments (cons _exn67053_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68073))))))
    (define os-exception-code
      (lambda (_exn67049_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67049_))
            (let ((_e67051_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67049_ 'exception))))
              (if (macro-os-exception? _e67051_)
                  (macro-os-exception-code _e67051_)
                  (let ((__tmp68074
                         (cons 'os-exception-code (cons _e67051_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68074))))
            (if (macro-os-exception? _exn67049_)
                (macro-os-exception-code _exn67049_)
                (let ((__tmp68075
                       (cons 'os-exception-code (cons _exn67049_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68075))))))
    (define os-exception-message
      (lambda (_exn67045_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67045_))
            (let ((_e67047_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67045_ 'exception))))
              (if (macro-os-exception? _e67047_)
                  (macro-os-exception-message _e67047_)
                  (let ((__tmp68076
                         (cons 'os-exception-message (cons _e67047_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68076))))
            (if (macro-os-exception? _exn67045_)
                (macro-os-exception-message _exn67045_)
                (let ((__tmp68077
                       (cons 'os-exception-message (cons _exn67045_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68077))))))
    (define os-exception-procedure
      (lambda (_exn67039_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67039_))
            (let ((_e67042_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67039_ 'exception))))
              (if (macro-os-exception? _e67042_)
                  (macro-os-exception-procedure _e67042_)
                  (let ((__tmp68078
                         (cons 'os-exception-procedure (cons _e67042_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp68078))))
            (if (macro-os-exception? _exn67039_)
                (macro-os-exception-procedure _exn67039_)
                (let ((__tmp68079
                       (cons 'os-exception-procedure (cons _exn67039_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp68079))))))
    (define permission-denied-exception?
      (lambda (_exn67035_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67035_))
            (let ((_e67037_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67035_ 'exception))))
              (macro-permission-denied-exception? _e67037_))
            (macro-permission-denied-exception? _exn67035_))))
    (define permission-denied-exception-arguments
      (lambda (_exn67031_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67031_))
            (let ((_e67033_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67031_ 'exception))))
              (if (macro-permission-denied-exception? _e67033_)
                  (macro-permission-denied-exception-arguments _e67033_)
                  (let ((__tmp68080
                         (cons 'permission-denied-exception-arguments
                               (cons _e67033_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68080))))
            (if (macro-permission-denied-exception? _exn67031_)
                (macro-permission-denied-exception-arguments _exn67031_)
                (let ((__tmp68081
                       (cons 'permission-denied-exception-arguments
                             (cons _exn67031_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68081))))))
    (define permission-denied-exception-procedure
      (lambda (_exn67025_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67025_))
            (let ((_e67028_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67025_ 'exception))))
              (if (macro-permission-denied-exception? _e67028_)
                  (macro-permission-denied-exception-procedure _e67028_)
                  (let ((__tmp68082
                         (cons 'permission-denied-exception-procedure
                               (cons _e67028_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp68082))))
            (if (macro-permission-denied-exception? _exn67025_)
                (macro-permission-denied-exception-procedure _exn67025_)
                (let ((__tmp68083
                       (cons 'permission-denied-exception-procedure
                             (cons _exn67025_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp68083))))))
    (define range-exception?
      (lambda (_exn67021_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67021_))
            (let ((_e67023_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67021_ 'exception))))
              (macro-range-exception? _e67023_))
            (macro-range-exception? _exn67021_))))
    (define range-exception-arg-id
      (lambda (_exn67017_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67017_))
            (let ((_e67019_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67017_ 'exception))))
              (if (macro-range-exception? _e67019_)
                  (macro-range-exception-arg-id _e67019_)
                  (let ((__tmp68084
                         (cons 'range-exception-arg-id (cons _e67019_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68084))))
            (if (macro-range-exception? _exn67017_)
                (macro-range-exception-arg-id _exn67017_)
                (let ((__tmp68085
                       (cons 'range-exception-arg-id (cons _exn67017_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68085))))))
    (define range-exception-arguments
      (lambda (_exn67013_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67013_))
            (let ((_e67015_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67013_ 'exception))))
              (if (macro-range-exception? _e67015_)
                  (macro-range-exception-arguments _e67015_)
                  (let ((__tmp68086
                         (cons 'range-exception-arguments
                               (cons _e67015_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68086))))
            (if (macro-range-exception? _exn67013_)
                (macro-range-exception-arguments _exn67013_)
                (let ((__tmp68087
                       (cons 'range-exception-arguments
                             (cons _exn67013_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68087))))))
    (define range-exception-procedure
      (lambda (_exn67007_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67007_))
            (let ((_e67010_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67007_ 'exception))))
              (if (macro-range-exception? _e67010_)
                  (macro-range-exception-procedure _e67010_)
                  (let ((__tmp68088
                         (cons 'range-exception-procedure
                               (cons _e67010_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp68088))))
            (if (macro-range-exception? _exn67007_)
                (macro-range-exception-procedure _exn67007_)
                (let ((__tmp68089
                       (cons 'range-exception-procedure
                             (cons _exn67007_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp68089))))))
    (define rpc-remote-error-exception?
      (lambda (_exn67003_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn67003_))
            (let ((_e67005_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn67003_ 'exception))))
              (macro-rpc-remote-error-exception? _e67005_))
            (macro-rpc-remote-error-exception? _exn67003_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn66999_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66999_))
            (let ((_e67001_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66999_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e67001_)
                  (macro-rpc-remote-error-exception-arguments _e67001_)
                  (let ((__tmp68090
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _e67001_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68090))))
            (if (macro-rpc-remote-error-exception? _exn66999_)
                (macro-rpc-remote-error-exception-arguments _exn66999_)
                (let ((__tmp68091
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _exn66999_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68091))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn66995_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66995_))
            (let ((_e66997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66995_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66997_)
                  (macro-rpc-remote-error-exception-message _e66997_)
                  (let ((__tmp68092
                         (cons 'rpc-remote-error-exception-message
                               (cons _e66997_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68092))))
            (if (macro-rpc-remote-error-exception? _exn66995_)
                (macro-rpc-remote-error-exception-message _exn66995_)
                (let ((__tmp68093
                       (cons 'rpc-remote-error-exception-message
                             (cons _exn66995_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68093))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn66989_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66989_))
            (let ((_e66992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66989_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e66992_)
                  (macro-rpc-remote-error-exception-procedure _e66992_)
                  (let ((__tmp68094
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _e66992_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp68094))))
            (if (macro-rpc-remote-error-exception? _exn66989_)
                (macro-rpc-remote-error-exception-procedure _exn66989_)
                (let ((__tmp68095
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _exn66989_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp68095))))))
    (define scheduler-exception?
      (lambda (_exn66985_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66985_))
            (let ((_e66987_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66985_ 'exception))))
              (macro-scheduler-exception? _e66987_))
            (macro-scheduler-exception? _exn66985_))))
    (define scheduler-exception-reason
      (lambda (_exn66979_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66979_))
            (let ((_e66982_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66979_ 'exception))))
              (if (macro-scheduler-exception? _e66982_)
                  (macro-scheduler-exception-reason _e66982_)
                  (let ((__tmp68096
                         (cons 'scheduler-exception-reason
                               (cons _e66982_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp68096))))
            (if (macro-scheduler-exception? _exn66979_)
                (macro-scheduler-exception-reason _exn66979_)
                (let ((__tmp68097
                       (cons 'scheduler-exception-reason
                             (cons _exn66979_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp68097))))))
    (define sfun-conversion-exception?
      (lambda (_exn66975_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66975_))
            (let ((_e66977_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66975_ 'exception))))
              (macro-sfun-conversion-exception? _e66977_))
            (macro-sfun-conversion-exception? _exn66975_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn66971_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66971_))
            (let ((_e66973_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66971_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66973_)
                  (macro-sfun-conversion-exception-arguments _e66973_)
                  (let ((__tmp68098
                         (cons 'sfun-conversion-exception-arguments
                               (cons _e66973_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68098))))
            (if (macro-sfun-conversion-exception? _exn66971_)
                (macro-sfun-conversion-exception-arguments _exn66971_)
                (let ((__tmp68099
                       (cons 'sfun-conversion-exception-arguments
                             (cons _exn66971_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68099))))))
    (define sfun-conversion-exception-code
      (lambda (_exn66967_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66967_))
            (let ((_e66969_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66967_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66969_)
                  (macro-sfun-conversion-exception-code _e66969_)
                  (let ((__tmp68100
                         (cons 'sfun-conversion-exception-code
                               (cons _e66969_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68100))))
            (if (macro-sfun-conversion-exception? _exn66967_)
                (macro-sfun-conversion-exception-code _exn66967_)
                (let ((__tmp68101
                       (cons 'sfun-conversion-exception-code
                             (cons _exn66967_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68101))))))
    (define sfun-conversion-exception-message
      (lambda (_exn66963_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66963_))
            (let ((_e66965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66963_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66965_)
                  (macro-sfun-conversion-exception-message _e66965_)
                  (let ((__tmp68102
                         (cons 'sfun-conversion-exception-message
                               (cons _e66965_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68102))))
            (if (macro-sfun-conversion-exception? _exn66963_)
                (macro-sfun-conversion-exception-message _exn66963_)
                (let ((__tmp68103
                       (cons 'sfun-conversion-exception-message
                             (cons _exn66963_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68103))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn66957_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66957_))
            (let ((_e66960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66957_ 'exception))))
              (if (macro-sfun-conversion-exception? _e66960_)
                  (macro-sfun-conversion-exception-procedure _e66960_)
                  (let ((__tmp68104
                         (cons 'sfun-conversion-exception-procedure
                               (cons _e66960_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp68104))))
            (if (macro-sfun-conversion-exception? _exn66957_)
                (macro-sfun-conversion-exception-procedure _exn66957_)
                (let ((__tmp68105
                       (cons 'sfun-conversion-exception-procedure
                             (cons _exn66957_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp68105))))))
    (define stack-overflow-exception?
      (lambda (_exn66951_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66951_))
            (let ((_e66954_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66951_ 'exception))))
              (macro-stack-overflow-exception? _e66954_))
            (macro-stack-overflow-exception? _exn66951_))))
    (define started-thread-exception?
      (lambda (_exn66947_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66947_))
            (let ((_e66949_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66947_ 'exception))))
              (macro-started-thread-exception? _e66949_))
            (macro-started-thread-exception? _exn66947_))))
    (define started-thread-exception-arguments
      (lambda (_exn66943_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66943_))
            (let ((_e66945_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66943_ 'exception))))
              (if (macro-started-thread-exception? _e66945_)
                  (macro-started-thread-exception-arguments _e66945_)
                  (let ((__tmp68106
                         (cons 'started-thread-exception-arguments
                               (cons _e66945_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68106))))
            (if (macro-started-thread-exception? _exn66943_)
                (macro-started-thread-exception-arguments _exn66943_)
                (let ((__tmp68107
                       (cons 'started-thread-exception-arguments
                             (cons _exn66943_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68107))))))
    (define started-thread-exception-procedure
      (lambda (_exn66937_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66937_))
            (let ((_e66940_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66937_ 'exception))))
              (if (macro-started-thread-exception? _e66940_)
                  (macro-started-thread-exception-procedure _e66940_)
                  (let ((__tmp68108
                         (cons 'started-thread-exception-procedure
                               (cons _e66940_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp68108))))
            (if (macro-started-thread-exception? _exn66937_)
                (macro-started-thread-exception-procedure _exn66937_)
                (let ((__tmp68109
                       (cons 'started-thread-exception-procedure
                             (cons _exn66937_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp68109))))))
    (define terminated-thread-exception?
      (lambda (_exn66933_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66933_))
            (let ((_e66935_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66933_ 'exception))))
              (macro-terminated-thread-exception? _e66935_))
            (macro-terminated-thread-exception? _exn66933_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn66929_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66929_))
            (let ((_e66931_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66929_ 'exception))))
              (if (macro-terminated-thread-exception? _e66931_)
                  (macro-terminated-thread-exception-arguments _e66931_)
                  (let ((__tmp68110
                         (cons 'terminated-thread-exception-arguments
                               (cons _e66931_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68110))))
            (if (macro-terminated-thread-exception? _exn66929_)
                (macro-terminated-thread-exception-arguments _exn66929_)
                (let ((__tmp68111
                       (cons 'terminated-thread-exception-arguments
                             (cons _exn66929_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68111))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn66923_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66923_))
            (let ((_e66926_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66923_ 'exception))))
              (if (macro-terminated-thread-exception? _e66926_)
                  (macro-terminated-thread-exception-procedure _e66926_)
                  (let ((__tmp68112
                         (cons 'terminated-thread-exception-procedure
                               (cons _e66926_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp68112))))
            (if (macro-terminated-thread-exception? _exn66923_)
                (macro-terminated-thread-exception-procedure _exn66923_)
                (let ((__tmp68113
                       (cons 'terminated-thread-exception-procedure
                             (cons _exn66923_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp68113))))))
    (define type-exception?
      (lambda (_exn66919_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66919_))
            (let ((_e66921_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66919_ 'exception))))
              (macro-type-exception? _e66921_))
            (macro-type-exception? _exn66919_))))
    (define type-exception-arg-id
      (lambda (_exn66915_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66915_))
            (let ((_e66917_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66915_ 'exception))))
              (if (macro-type-exception? _e66917_)
                  (macro-type-exception-arg-id _e66917_)
                  (let ((__tmp68114
                         (cons 'type-exception-arg-id (cons _e66917_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68114))))
            (if (macro-type-exception? _exn66915_)
                (macro-type-exception-arg-id _exn66915_)
                (let ((__tmp68115
                       (cons 'type-exception-arg-id (cons _exn66915_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68115))))))
    (define type-exception-arguments
      (lambda (_exn66911_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66911_))
            (let ((_e66913_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66911_ 'exception))))
              (if (macro-type-exception? _e66913_)
                  (macro-type-exception-arguments _e66913_)
                  (let ((__tmp68116
                         (cons 'type-exception-arguments (cons _e66913_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68116))))
            (if (macro-type-exception? _exn66911_)
                (macro-type-exception-arguments _exn66911_)
                (let ((__tmp68117
                       (cons 'type-exception-arguments (cons _exn66911_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68117))))))
    (define type-exception-procedure
      (lambda (_exn66907_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66907_))
            (let ((_e66909_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66907_ 'exception))))
              (if (macro-type-exception? _e66909_)
                  (macro-type-exception-procedure _e66909_)
                  (let ((__tmp68118
                         (cons 'type-exception-procedure (cons _e66909_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68118))))
            (if (macro-type-exception? _exn66907_)
                (macro-type-exception-procedure _exn66907_)
                (let ((__tmp68119
                       (cons 'type-exception-procedure (cons _exn66907_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68119))))))
    (define type-exception-type-id
      (lambda (_exn66901_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66901_))
            (let ((_e66904_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66901_ 'exception))))
              (if (macro-type-exception? _e66904_)
                  (macro-type-exception-type-id _e66904_)
                  (let ((__tmp68120
                         (cons 'type-exception-type-id (cons _e66904_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp68120))))
            (if (macro-type-exception? _exn66901_)
                (macro-type-exception-type-id _exn66901_)
                (let ((__tmp68121
                       (cons 'type-exception-type-id (cons _exn66901_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp68121))))))
    (define unbound-global-exception?
      (lambda (_exn66897_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66897_))
            (let ((_e66899_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66897_ 'exception))))
              (macro-unbound-global-exception? _e66899_))
            (macro-unbound-global-exception? _exn66897_))))
    (define unbound-global-exception-code
      (lambda (_exn66893_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66893_))
            (let ((_e66895_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66893_ 'exception))))
              (if (macro-unbound-global-exception? _e66895_)
                  (macro-unbound-global-exception-code _e66895_)
                  (let ((__tmp68122
                         (cons 'unbound-global-exception-code
                               (cons _e66895_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68122))))
            (if (macro-unbound-global-exception? _exn66893_)
                (macro-unbound-global-exception-code _exn66893_)
                (let ((__tmp68123
                       (cons 'unbound-global-exception-code
                             (cons _exn66893_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68123))))))
    (define unbound-global-exception-rte
      (lambda (_exn66889_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66889_))
            (let ((_e66891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66889_ 'exception))))
              (if (macro-unbound-global-exception? _e66891_)
                  (macro-unbound-global-exception-rte _e66891_)
                  (let ((__tmp68124
                         (cons 'unbound-global-exception-rte
                               (cons _e66891_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68124))))
            (if (macro-unbound-global-exception? _exn66889_)
                (macro-unbound-global-exception-rte _exn66889_)
                (let ((__tmp68125
                       (cons 'unbound-global-exception-rte
                             (cons _exn66889_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68125))))))
    (define unbound-global-exception-variable
      (lambda (_exn66883_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66883_))
            (let ((_e66886_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66883_ 'exception))))
              (if (macro-unbound-global-exception? _e66886_)
                  (macro-unbound-global-exception-variable _e66886_)
                  (let ((__tmp68126
                         (cons 'unbound-global-exception-variable
                               (cons _e66886_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp68126))))
            (if (macro-unbound-global-exception? _exn66883_)
                (macro-unbound-global-exception-variable _exn66883_)
                (let ((__tmp68127
                       (cons 'unbound-global-exception-variable
                             (cons _exn66883_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp68127))))))
    (define unbound-key-exception?
      (lambda (_exn66879_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66879_))
            (let ((_e66881_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66879_ 'exception))))
              (macro-unbound-key-exception? _e66881_))
            (macro-unbound-key-exception? _exn66879_))))
    (define unbound-key-exception-arguments
      (lambda (_exn66875_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66875_))
            (let ((_e66877_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66875_ 'exception))))
              (if (macro-unbound-key-exception? _e66877_)
                  (macro-unbound-key-exception-arguments _e66877_)
                  (let ((__tmp68128
                         (cons 'unbound-key-exception-arguments
                               (cons _e66877_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68128))))
            (if (macro-unbound-key-exception? _exn66875_)
                (macro-unbound-key-exception-arguments _exn66875_)
                (let ((__tmp68129
                       (cons 'unbound-key-exception-arguments
                             (cons _exn66875_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68129))))))
    (define unbound-key-exception-procedure
      (lambda (_exn66869_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66869_))
            (let ((_e66872_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66869_ 'exception))))
              (if (macro-unbound-key-exception? _e66872_)
                  (macro-unbound-key-exception-procedure _e66872_)
                  (let ((__tmp68130
                         (cons 'unbound-key-exception-procedure
                               (cons _e66872_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp68130))))
            (if (macro-unbound-key-exception? _exn66869_)
                (macro-unbound-key-exception-procedure _exn66869_)
                (let ((__tmp68131
                       (cons 'unbound-key-exception-procedure
                             (cons _exn66869_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp68131))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn66865_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66865_))
            (let ((_e66867_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66865_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e66867_))
            (macro-unbound-os-environment-variable-exception? _exn66865_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn66861_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66861_))
            (let ((_e66863_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66861_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e66863_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e66863_)
                  (let ((__tmp68132
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _e66863_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68132))))
            (if (macro-unbound-os-environment-variable-exception? _exn66861_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn66861_)
                (let ((__tmp68133
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _exn66861_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68133))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn66855_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66855_))
            (let ((_e66858_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66855_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e66858_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e66858_)
                  (let ((__tmp68134
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _e66858_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp68134))))
            (if (macro-unbound-os-environment-variable-exception? _exn66855_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn66855_)
                (let ((__tmp68135
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _exn66855_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp68135))))))
    (define unbound-serial-number-exception?
      (lambda (_exn66851_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66851_))
            (let ((_e66853_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66851_ 'exception))))
              (macro-unbound-serial-number-exception? _e66853_))
            (macro-unbound-serial-number-exception? _exn66851_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn66847_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66847_))
            (let ((_e66849_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66847_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e66849_)
                  (macro-unbound-serial-number-exception-arguments _e66849_)
                  (let ((__tmp68136
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _e66849_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68136))))
            (if (macro-unbound-serial-number-exception? _exn66847_)
                (macro-unbound-serial-number-exception-arguments _exn66847_)
                (let ((__tmp68137
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _exn66847_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68137))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn66841_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66841_))
            (let ((_e66844_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66841_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e66844_)
                  (macro-unbound-serial-number-exception-procedure _e66844_)
                  (let ((__tmp68138
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _e66844_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp68138))))
            (if (macro-unbound-serial-number-exception? _exn66841_)
                (macro-unbound-serial-number-exception-procedure _exn66841_)
                (let ((__tmp68139
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _exn66841_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp68139))))))
    (define uncaught-exception?
      (lambda (_exn66837_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66837_))
            (let ((_e66839_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66837_ 'exception))))
              (macro-uncaught-exception? _e66839_))
            (macro-uncaught-exception? _exn66837_))))
    (define uncaught-exception-arguments
      (lambda (_exn66833_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66833_))
            (let ((_e66835_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66833_ 'exception))))
              (if (macro-uncaught-exception? _e66835_)
                  (macro-uncaught-exception-arguments _e66835_)
                  (let ((__tmp68140
                         (cons 'uncaught-exception-arguments
                               (cons _e66835_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68140))))
            (if (macro-uncaught-exception? _exn66833_)
                (macro-uncaught-exception-arguments _exn66833_)
                (let ((__tmp68141
                       (cons 'uncaught-exception-arguments
                             (cons _exn66833_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68141))))))
    (define uncaught-exception-procedure
      (lambda (_exn66829_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66829_))
            (let ((_e66831_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66829_ 'exception))))
              (if (macro-uncaught-exception? _e66831_)
                  (macro-uncaught-exception-procedure _e66831_)
                  (let ((__tmp68142
                         (cons 'uncaught-exception-procedure
                               (cons _e66831_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68142))))
            (if (macro-uncaught-exception? _exn66829_)
                (macro-uncaught-exception-procedure _exn66829_)
                (let ((__tmp68143
                       (cons 'uncaught-exception-procedure
                             (cons _exn66829_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68143))))))
    (define uncaught-exception-reason
      (lambda (_exn66823_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66823_))
            (let ((_e66826_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66823_ 'exception))))
              (if (macro-uncaught-exception? _e66826_)
                  (macro-uncaught-exception-reason _e66826_)
                  (let ((__tmp68144
                         (cons 'uncaught-exception-reason
                               (cons _e66826_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp68144))))
            (if (macro-uncaught-exception? _exn66823_)
                (macro-uncaught-exception-reason _exn66823_)
                (let ((__tmp68145
                       (cons 'uncaught-exception-reason
                             (cons _exn66823_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp68145))))))
    (define uninitialized-thread-exception?
      (lambda (_exn66819_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66819_))
            (let ((_e66821_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66819_ 'exception))))
              (macro-uninitialized-thread-exception? _e66821_))
            (macro-uninitialized-thread-exception? _exn66819_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn66815_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66815_))
            (let ((_e66817_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66815_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e66817_)
                  (macro-uninitialized-thread-exception-arguments _e66817_)
                  (let ((__tmp68146
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _e66817_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68146))))
            (if (macro-uninitialized-thread-exception? _exn66815_)
                (macro-uninitialized-thread-exception-arguments _exn66815_)
                (let ((__tmp68147
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _exn66815_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68147))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn66809_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66809_))
            (let ((_e66812_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66809_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e66812_)
                  (macro-uninitialized-thread-exception-procedure _e66812_)
                  (let ((__tmp68148
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _e66812_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp68148))))
            (if (macro-uninitialized-thread-exception? _exn66809_)
                (macro-uninitialized-thread-exception-procedure _exn66809_)
                (let ((__tmp68149
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _exn66809_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp68149))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn66805_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66805_))
            (let ((_e66807_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66805_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e66807_))
            (macro-unknown-keyword-argument-exception? _exn66805_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn66801_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66801_))
            (let ((_e66803_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66801_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e66803_)
                  (macro-unknown-keyword-argument-exception-arguments _e66803_)
                  (let ((__tmp68150
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _e66803_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68150))))
            (if (macro-unknown-keyword-argument-exception? _exn66801_)
                (macro-unknown-keyword-argument-exception-arguments _exn66801_)
                (let ((__tmp68151
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _exn66801_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68151))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn66795_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66795_))
            (let ((_e66798_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66795_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e66798_)
                  (macro-unknown-keyword-argument-exception-procedure _e66798_)
                  (let ((__tmp68152
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _e66798_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp68152))))
            (if (macro-unknown-keyword-argument-exception? _exn66795_)
                (macro-unknown-keyword-argument-exception-procedure _exn66795_)
                (let ((__tmp68153
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _exn66795_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp68153))))))
    (define unterminated-process-exception?
      (lambda (_exn66791_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66791_))
            (let ((_e66793_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66791_ 'exception))))
              (macro-unterminated-process-exception? _e66793_))
            (macro-unterminated-process-exception? _exn66791_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn66787_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66787_))
            (let ((_e66789_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66787_ 'exception))))
              (if (macro-unterminated-process-exception? _e66789_)
                  (macro-unterminated-process-exception-arguments _e66789_)
                  (let ((__tmp68154
                         (cons 'unterminated-process-exception-arguments
                               (cons _e66789_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68154))))
            (if (macro-unterminated-process-exception? _exn66787_)
                (macro-unterminated-process-exception-arguments _exn66787_)
                (let ((__tmp68155
                       (cons 'unterminated-process-exception-arguments
                             (cons _exn66787_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68155))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn66781_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66781_))
            (let ((_e66784_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66781_ 'exception))))
              (if (macro-unterminated-process-exception? _e66784_)
                  (macro-unterminated-process-exception-procedure _e66784_)
                  (let ((__tmp68156
                         (cons 'unterminated-process-exception-procedure
                               (cons _e66784_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp68156))))
            (if (macro-unterminated-process-exception? _exn66781_)
                (macro-unterminated-process-exception-procedure _exn66781_)
                (let ((__tmp68157
                       (cons 'unterminated-process-exception-procedure
                             (cons _exn66781_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp68157))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn66777_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66777_))
            (let ((_e66779_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66777_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e66779_))
            (macro-wrong-number-of-arguments-exception? _exn66777_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn66773_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66773_))
            (let ((_e66775_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66773_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66775_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e66775_)
                  (let ((__tmp68158
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _e66775_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68158))))
            (if (macro-wrong-number-of-arguments-exception? _exn66773_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn66773_)
                (let ((__tmp68159
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _exn66773_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68159))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn66767_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66767_))
            (let ((_e66770_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66767_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e66770_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e66770_)
                  (let ((__tmp68160
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _e66770_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp68160))))
            (if (macro-wrong-number-of-arguments-exception? _exn66767_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn66767_)
                (let ((__tmp68161
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _exn66767_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp68161))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn66763_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66763_))
            (let ((_e66765_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66763_ 'exception))))
              (macro-wrong-number-of-values-exception? _e66765_))
            (macro-wrong-number-of-values-exception? _exn66763_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn66759_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66759_))
            (let ((_e66761_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66759_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66761_)
                  (macro-wrong-number-of-values-exception-code _e66761_)
                  (let ((__tmp68162
                         (cons 'wrong-number-of-values-exception-code
                               (cons _e66761_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68162))))
            (if (macro-wrong-number-of-values-exception? _exn66759_)
                (macro-wrong-number-of-values-exception-code _exn66759_)
                (let ((__tmp68163
                       (cons 'wrong-number-of-values-exception-code
                             (cons _exn66759_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68163))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn66755_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66755_))
            (let ((_e66757_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66755_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66757_)
                  (macro-wrong-number-of-values-exception-rte _e66757_)
                  (let ((__tmp68164
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _e66757_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68164))))
            (if (macro-wrong-number-of-values-exception? _exn66755_)
                (macro-wrong-number-of-values-exception-rte _exn66755_)
                (let ((__tmp68165
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _exn66755_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68165))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn66749_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66749_))
            (let ((_e66752_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66749_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e66752_)
                  (macro-wrong-number-of-values-exception-vals _e66752_)
                  (let ((__tmp68166
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _e66752_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp68166))))
            (if (macro-wrong-number-of-values-exception? _exn66749_)
                (macro-wrong-number-of-values-exception-vals _exn66749_)
                (let ((__tmp68167
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _exn66749_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp68167))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn66743_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn66743_))
            (let ((_e66746_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn66743_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e66746_))
            (macro-wrong-processor-c-return-exception? _exn66743_))))))
