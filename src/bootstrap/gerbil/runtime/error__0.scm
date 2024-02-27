(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1709038441)
  (begin
    (define Exception::t
      (let ((__tmp66080 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp66080
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _$args66048_ (apply make-instance Exception::t _$args66048_)))
    (define StackTrace::t
      (let ((__tmp66081 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp66081
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _$args66045_ (apply make-instance StackTrace::t _$args66045_)))
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
      (let ((__tmp66082 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp66082
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (make-class-predicate Error::t)))
    (define make-Error
      (lambda _$args66042_ (apply make-instance Error::t _$args66042_)))
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
      (let ((__tmp66083 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp66083
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let () (declare (not safe)) (make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _$args66039_
        (apply make-instance RuntimeException::t _$args66039_)))
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
      (lambda (_exn66034_ _continue66035_)
        (let ((_exn66037_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _exn66034_))))
          (declare (not safe))
          (##repl-exception-handler-hook _exn66037_ _continue66035_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_exn66030_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _exn66030_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _exn66030_ 'continuation))
                '#!void
                (let ((__tmp66084
                       (lambda (_cont66032_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _exn66030_
                            'continuation
                            _cont66032_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp66084)))
            '#!void)
        (let () (declare (not safe)) (##raise _exn66030_))))
    (define error
      (lambda (_message66027_ . _irritants66028_)
        (raise (let ((__obj66074
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj66074
                  _message66027_
                  'irritants:
                  _irritants66028_)
                 __obj66074))))
    (define with-exception-handler
      (lambda (_handler66020_ _thunk66021_)
        (if (let () (declare (not safe)) (procedure? _handler66020_))
            '#!void
            (raise (let ((__obj66075
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66075
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66020_ '())))
                     __obj66075)))
        (if (let () (declare (not safe)) (procedure? _thunk66021_))
            '#!void
            (raise (let ((__obj66076
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66076
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66021_ '())))
                     __obj66076)))
        (let ((__tmp66085
               (lambda (_exn66023_)
                 (let ((_exn66025_
                        (let ()
                          (declare (not safe))
                          (wrap-runtime-exception _exn66023_))))
                   (_handler66020_ _exn66025_)))))
          (declare (not safe))
          (##with-exception-handler __tmp66085 _thunk66021_))))
    (define with-catch
      (lambda (_handler66013_ _thunk66014_)
        (if (let () (declare (not safe)) (procedure? _handler66013_))
            '#!void
            (raise (let ((__obj66077
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66077
                      '"expected procedure"
                      'where:
                      'with-exception-handler
                      'irritants:
                      (let () (declare (not safe)) (cons _handler66013_ '())))
                     __obj66077)))
        (if (let () (declare (not safe)) (procedure? _thunk66014_))
            '#!void
            (raise (let ((__obj66078
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj66078
                      '"expected procedure"
                      'where:
                      'with-exception-hander
                      'irritants:
                      (let () (declare (not safe)) (cons _thunk66014_ '())))
                     __obj66078)))
        (let ((__tmp66086
               (lambda (_cont66016_)
                 (with-exception-handler
                  (lambda (_exn66018_)
                    (let ()
                      (declare (not safe))
                      (##continuation-graft
                       _cont66016_
                       _handler66013_
                       _exn66018_)))
                  _thunk66014_))))
          (declare (not safe))
          (##continuation-capture __tmp66086))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_exn66004_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _exn66004_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _exn66004_)))
            _exn66004_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _exn66004_))
                _exn66004_
                (if (macro-exception? _exn66004_)
                    (let ((_rte66009_
                           (let ((__obj66079
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj66079
                                _exn66004_
                                '2
                                RuntimeException::t
                                '#f))
                             __obj66079)))
                      (let ((__tmp66087
                             (lambda (_cont66011_)
                               (let ((__tmp66088
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _cont66011_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _rte66009_
                                  'continuation
                                  __tmp66088)))))
                        (declare (not safe))
                        (##continuation-capture __tmp66087))
                      _rte66009_)
                    _exn66004_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_obj65999_)
        (let ((_$e66001_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _obj65999_))))
          (if _$e66001_
              _$e66001_
              (let () (declare (not safe)) (error-exception? _obj65999_))))))
    (define error-message
      (lambda (_obj65997_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65997_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65997_ 'message))
            (if (let () (declare (not safe)) (error-exception? _obj65997_))
                (let ()
                  (declare (not safe))
                  (error-exception-message _obj65997_))
                '#f))))
    (define error-irritants
      (lambda (_obj65995_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65995_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65995_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _obj65995_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _obj65995_))
                '#f))))
    (define error-trace
      (lambda (_obj65993_)
        (if (let () (declare (not safe)) (class-instance? Error::t _obj65993_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _obj65993_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_e65975_ _port65976_)
        (let ((_$e65978_
               (let ()
                 (declare (not safe))
                 (method-ref _e65975_ 'display-exception))))
          (if _$e65978_
              ((lambda (_f65981_) (_f65981_ _e65975_ _port65976_)) _$e65978_)
              (let ()
                (declare (not safe))
                (##default-display-exception _e65975_ _port65976_))))))
    (define display-exception__0
      (lambda (_e65986_)
        (let ((_port65988_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _e65986_ _port65988_))))
    (define display-exception
      (lambda _g66090_
        (let ((_g66089_ (let () (declare (not safe)) (##length _g66090_))))
          (cond ((let () (declare (not safe)) (##fx= _g66089_ 1))
                 (apply (lambda (_e65986_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _e65986_)))
                        _g66090_))
                ((let () (declare (not safe)) (##fx= _g66089_ 2))
                 (apply (lambda (_e65990_ _port65991_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _e65990_ _port65991_)))
                        _g66090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g66090_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_self65964_ _message65965_ . _rest65966_)
        (let ((_message65972_
               (if (let () (declare (not safe)) (string? _message65965_))
                   _message65965_
                   (call-with-output-string
                    '""
                    (lambda (_g6596765969_)
                      (display _message65965_ _g6596765969_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _self65964_ 'message _message65972_))
          (apply class-instance-init! _self65964_ _rest65966_))))
    (define Error:::init!::specialize
      (lambda (__klass66050 __method-table66051)
        (let ((__message66052
               (let ((__slot66053
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66050 'message))))
                 (if __slot66053
                     __slot66053
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65964_ _message65965_ . _rest65966_)
            (let ((_message65972_
                   (if (let () (declare (not safe)) (string? _message65965_))
                       _message65965_
                       (call-with-output-string
                        '""
                        (lambda (_g6596765969_)
                          (display _message65965_ _g6596765969_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _self65964_
                 _message65972_
                 __message66052
                 __klass66050
                 '#f))
              (apply class-instance-init! _self65964_ _rest65966_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% Error::t ':init! Error:::init! '#f))
    (define dump-stack-trace? (make-parameter '#t))
    (define Error::display-exception
      (lambda (_self65822_ _port65823_)
        (let ((_tmp-port65825_ (open-output-string))
              (_display-error-newline65826_
               (> (output-port-column _port65823_) '0)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65825_))
          (let ((__tmp66091
                 (lambda ()
                   (if _display-error-newline65826_ (newline) '#!void)
                   (display '"*** ERROR IN ")
                   (let ((_$e65829_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65822_ 'where))))
                     (if _$e65829_ (display _$e65829_) (display '"?")))
                   (let ((__tmp66092
                          (let ((__tmp66093 (object-type _self65822_)))
                            (declare (not safe))
                            (##type-name __tmp66093))))
                     (declare (not safe))
                     (display* '" [" __tmp66092 '"]: "))
                   (let ((__tmp66094
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65822_ 'message))))
                     (declare (not safe))
                     (displayln __tmp66094))
                   (let ((_irritants65832_
                          (let ()
                            (declare (not safe))
                            (unchecked-slot-ref _self65822_ 'irritants))))
                     (if (let () (declare (not safe)) (null? _irritants65832_))
                         '#!void
                         (begin
                           (display '"--- irritants: ")
                           (for-each
                            (lambda (_obj65834_)
                              (write _obj65834_)
                              (write-char '#\space))
                            _irritants65832_)
                           (newline))))
                   (if (and (let ()
                              (declare (not safe))
                              (class-instance? StackTrace::t _self65822_))
                            (dump-stack-trace?))
                       (let ((_cont6583565837_
                              (let ()
                                (declare (not safe))
                                (unchecked-slot-ref
                                 _self65822_
                                 'continuation))))
                         (if _cont6583565837_
                             (let ((_cont65840_ _cont6583565837_))
                               (let ()
                                 (declare (not safe))
                                 (displayln '"--- continuation backtrace:"))
                               (display-continuation-backtrace _cont65840_))
                             '#f))
                       '#!void))))
            (declare (not safe))
            (call-with-parameters
             __tmp66091
             current-output-port
             _tmp-port65825_))
          (let ((__tmp66095 (get-output-string _tmp-port65825_)))
            (declare (not safe))
            (##write-string __tmp66095 _port65823_)))))
    (define Error::display-exception::specialize
      (lambda (__klass66054 __method-table66055)
        (let ((__continuation66056
               (let ((__slot66060
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66054 'continuation))))
                 (if __slot66060
                     __slot66060
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation)))))
              (__where66057
               (let ((__slot66061
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66054 'where))))
                 (if __slot66061
                     __slot66061
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'where)))))
              (__irritants66058
               (let ((__slot66062
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66054 'irritants))))
                 (if __slot66062
                     __slot66062
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'irritants)))))
              (__message66059
               (let ((__slot66063
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66054 'message))))
                 (if __slot66063
                     __slot66063
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'message))))))
          (lambda (_self65822_ _port65823_)
            (let ((_tmp-port65825_ (open-output-string))
                  (_display-error-newline65826_
                   (> (output-port-column _port65823_) '0)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65825_))
              (let ((__tmp66096
                     (lambda ()
                       (if _display-error-newline65826_ (newline) '#!void)
                       (display '"*** ERROR IN ")
                       (let ((_$e65829_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65822_
                                 __where66057
                                 __klass66054
                                 '#f))))
                         (if _$e65829_ (display _$e65829_) (display '"?")))
                       (let ((__tmp66097
                              (let ((__tmp66098 (object-type _self65822_)))
                                (declare (not safe))
                                (##type-name __tmp66098))))
                         (declare (not safe))
                         (display* '" [" __tmp66097 '"]: "))
                       (let ((__tmp66099
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65822_
                                 __message66059
                                 __klass66054
                                 '#f))))
                         (declare (not safe))
                         (displayln __tmp66099))
                       (let ((_irritants65832_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self65822_
                                 __irritants66058
                                 __klass66054
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (null? _irritants65832_))
                             '#!void
                             (begin
                               (display '"--- irritants: ")
                               (for-each
                                (lambda (_obj65834_)
                                  (write _obj65834_)
                                  (write-char '#\space))
                                _irritants65832_)
                               (newline))))
                       (if (and (let ()
                                  (declare (not safe))
                                  (class-instance? StackTrace::t _self65822_))
                                (dump-stack-trace?))
                           (let ((_cont6583565837_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self65822_
                                     __continuation66056
                                     __klass66054
                                     '#f))))
                             (if _cont6583565837_
                                 (let ((_cont65840_ _cont6583565837_))
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"--- continuation backtrace:"))
                                   (display-continuation-backtrace
                                    _cont65840_))
                                 '#f))
                           '#!void))))
                (declare (not safe))
                (call-with-parameters
                 __tmp66096
                 current-output-port
                 _tmp-port65825_))
              (let ((__tmp66100 (get-output-string _tmp-port65825_)))
                (declare (not safe))
                (##write-string __tmp66100 _port65823_)))))))
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
      (lambda (_self65689_ _port65690_)
        (let ((_tmp-port65692_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _tmp-port65692_))
          (let ((__tmp66101
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _self65689_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp66101 _tmp-port65692_))
          (if (dump-stack-trace?)
              (let ((_cont6569365695_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _self65689_ 'continuation))))
                (if _cont6569365695_
                    (let ((_cont65698_ _cont6569365695_))
                      (display '"--- continuation backtrace:" _tmp-port65692_)
                      (newline _tmp-port65692_)
                      (display-continuation-backtrace
                       _cont65698_
                       _tmp-port65692_))
                    '#f))
              '#!void)
          (let ((__tmp66102 (get-output-string _tmp-port65692_)))
            (declare (not safe))
            (##write-string __tmp66102 _port65690_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass66064 __method-table66065)
        (let ((__exception66066
               (let ((__slot66068
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66064 'exception))))
                 (if __slot66068
                     __slot66068
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'exception)))))
              (__continuation66067
               (let ((__slot66069
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass66064 'continuation))))
                 (if __slot66069
                     __slot66069
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'continuation))))))
          (lambda (_self65689_ _port65690_)
            (let ((_tmp-port65692_ (open-output-string)))
              (let () (declare (not safe)) (fix-port-width! _tmp-port65692_))
              (let ((__tmp66103
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _self65689_
                        __exception66066
                        __klass66064
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp66103 _tmp-port65692_))
              (if (dump-stack-trace?)
                  (let ((_cont6569365695_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self65689_
                            __continuation66067
                            __klass66064
                            '#f))))
                    (if _cont6569365695_
                        (let ((_cont65698_ _cont6569365695_))
                          (display '"--- continuation backtrace:"
                                   _tmp-port65692_)
                          (newline _tmp-port65692_)
                          (display-continuation-backtrace
                           _cont65698_
                           _tmp-port65692_))
                        '#f))
                  '#!void)
              (let ((__tmp66104 (get-output-string _tmp-port65692_)))
                (declare (not safe))
                (##write-string __tmp66104 _port65690_)))))))
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
      (lambda (_port65561_)
        (if (macro-character-port? _port65561_)
            (let ((_old-width65563_
                   (macro-character-port-output-width _port65561_)))
              (macro-character-port-output-width-set!
               _port65561_
               (lambda (_port65565_) '256))
              _old-width65563_)
            '#!void)))
    (define reset-port-width!
      (lambda (_port65558_ _old-width65559_)
        (if (macro-character-port? _port65558_)
            (macro-character-port-output-width-set!
             _port65558_
             _old-width65559_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_e65556_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _e65556_)))))
    (define abandoned-mutex-exception?
      (lambda (_exn65550_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65550_))
            (let ((_e65553_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65550_ 'exception))))
              (macro-abandoned-mutex-exception? _e65553_))
            (macro-abandoned-mutex-exception? _exn65550_))))
    (define cfun-conversion-exception?
      (lambda (_exn65546_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65546_))
            (let ((_e65548_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65546_ 'exception))))
              (macro-cfun-conversion-exception? _e65548_))
            (macro-cfun-conversion-exception? _exn65546_))))
    (define cfun-conversion-exception-arguments
      (lambda (_exn65542_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65542_))
            (let ((_e65544_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65542_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65544_)
                  (macro-cfun-conversion-exception-arguments _e65544_)
                  (let ((__tmp66107
                         (let ((__tmp66108
                                (let ()
                                  (declare (not safe))
                                  (cons _e65544_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-arguments
                                 __tmp66108))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66107))))
            (if (macro-cfun-conversion-exception? _exn65542_)
                (macro-cfun-conversion-exception-arguments _exn65542_)
                (let ((__tmp66105
                       (let ((__tmp66106
                              (let ()
                                (declare (not safe))
                                (cons _exn65542_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-arguments
                               __tmp66106))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66105))))))
    (define cfun-conversion-exception-code
      (lambda (_exn65538_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65538_))
            (let ((_e65540_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65538_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65540_)
                  (macro-cfun-conversion-exception-code _e65540_)
                  (let ((__tmp66111
                         (let ((__tmp66112
                                (let ()
                                  (declare (not safe))
                                  (cons _e65540_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-code __tmp66112))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66111))))
            (if (macro-cfun-conversion-exception? _exn65538_)
                (macro-cfun-conversion-exception-code _exn65538_)
                (let ((__tmp66109
                       (let ((__tmp66110
                              (let ()
                                (declare (not safe))
                                (cons _exn65538_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-code __tmp66110))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66109))))))
    (define cfun-conversion-exception-message
      (lambda (_exn65534_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65534_))
            (let ((_e65536_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65534_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65536_)
                  (macro-cfun-conversion-exception-message _e65536_)
                  (let ((__tmp66115
                         (let ((__tmp66116
                                (let ()
                                  (declare (not safe))
                                  (cons _e65536_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-message
                                 __tmp66116))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66115))))
            (if (macro-cfun-conversion-exception? _exn65534_)
                (macro-cfun-conversion-exception-message _exn65534_)
                (let ((__tmp66113
                       (let ((__tmp66114
                              (let ()
                                (declare (not safe))
                                (cons _exn65534_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-message
                               __tmp66114))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66113))))))
    (define cfun-conversion-exception-procedure
      (lambda (_exn65528_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65528_))
            (let ((_e65531_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65528_ 'exception))))
              (if (macro-cfun-conversion-exception? _e65531_)
                  (macro-cfun-conversion-exception-procedure _e65531_)
                  (let ((__tmp66119
                         (let ((__tmp66120
                                (let ()
                                  (declare (not safe))
                                  (cons _e65531_ '()))))
                           (declare (not safe))
                           (cons 'cfun-conversion-exception-procedure
                                 __tmp66120))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp66119))))
            (if (macro-cfun-conversion-exception? _exn65528_)
                (macro-cfun-conversion-exception-procedure _exn65528_)
                (let ((__tmp66117
                       (let ((__tmp66118
                              (let ()
                                (declare (not safe))
                                (cons _exn65528_ '()))))
                         (declare (not safe))
                         (cons 'cfun-conversion-exception-procedure
                               __tmp66118))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp66117))))))
    (define datum-parsing-exception?
      (lambda (_exn65524_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65524_))
            (let ((_e65526_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65524_ 'exception))))
              (macro-datum-parsing-exception? _e65526_))
            (macro-datum-parsing-exception? _exn65524_))))
    (define datum-parsing-exception-kind
      (lambda (_exn65520_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65520_))
            (let ((_e65522_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65520_ 'exception))))
              (if (macro-datum-parsing-exception? _e65522_)
                  (macro-datum-parsing-exception-kind _e65522_)
                  (let ((__tmp66123
                         (let ((__tmp66124
                                (let ()
                                  (declare (not safe))
                                  (cons _e65522_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-kind __tmp66124))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66123))))
            (if (macro-datum-parsing-exception? _exn65520_)
                (macro-datum-parsing-exception-kind _exn65520_)
                (let ((__tmp66121
                       (let ((__tmp66122
                              (let ()
                                (declare (not safe))
                                (cons _exn65520_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-kind __tmp66122))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66121))))))
    (define datum-parsing-exception-parameters
      (lambda (_exn65516_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65516_))
            (let ((_e65518_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65516_ 'exception))))
              (if (macro-datum-parsing-exception? _e65518_)
                  (macro-datum-parsing-exception-parameters _e65518_)
                  (let ((__tmp66127
                         (let ((__tmp66128
                                (let ()
                                  (declare (not safe))
                                  (cons _e65518_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-parameters
                                 __tmp66128))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66127))))
            (if (macro-datum-parsing-exception? _exn65516_)
                (macro-datum-parsing-exception-parameters _exn65516_)
                (let ((__tmp66125
                       (let ((__tmp66126
                              (let ()
                                (declare (not safe))
                                (cons _exn65516_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-parameters
                               __tmp66126))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66125))))))
    (define datum-parsing-exception-readenv
      (lambda (_exn65510_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65510_))
            (let ((_e65513_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65510_ 'exception))))
              (if (macro-datum-parsing-exception? _e65513_)
                  (macro-datum-parsing-exception-readenv _e65513_)
                  (let ((__tmp66131
                         (let ((__tmp66132
                                (let ()
                                  (declare (not safe))
                                  (cons _e65513_ '()))))
                           (declare (not safe))
                           (cons 'datum-parsing-exception-readenv
                                 __tmp66132))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp66131))))
            (if (macro-datum-parsing-exception? _exn65510_)
                (macro-datum-parsing-exception-readenv _exn65510_)
                (let ((__tmp66129
                       (let ((__tmp66130
                              (let ()
                                (declare (not safe))
                                (cons _exn65510_ '()))))
                         (declare (not safe))
                         (cons 'datum-parsing-exception-readenv __tmp66130))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp66129))))))
    (define deadlock-exception?
      (lambda (_exn65504_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65504_))
            (let ((_e65507_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65504_ 'exception))))
              (macro-deadlock-exception? _e65507_))
            (macro-deadlock-exception? _exn65504_))))
    (define divide-by-zero-exception?
      (lambda (_exn65500_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65500_))
            (let ((_e65502_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65500_ 'exception))))
              (macro-divide-by-zero-exception? _e65502_))
            (macro-divide-by-zero-exception? _exn65500_))))
    (define divide-by-zero-exception-arguments
      (lambda (_exn65496_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65496_))
            (let ((_e65498_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65496_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65498_)
                  (macro-divide-by-zero-exception-arguments _e65498_)
                  (let ((__tmp66135
                         (let ((__tmp66136
                                (let ()
                                  (declare (not safe))
                                  (cons _e65498_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-arguments
                                 __tmp66136))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66135))))
            (if (macro-divide-by-zero-exception? _exn65496_)
                (macro-divide-by-zero-exception-arguments _exn65496_)
                (let ((__tmp66133
                       (let ((__tmp66134
                              (let ()
                                (declare (not safe))
                                (cons _exn65496_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-arguments
                               __tmp66134))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66133))))))
    (define divide-by-zero-exception-procedure
      (lambda (_exn65490_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65490_))
            (let ((_e65493_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65490_ 'exception))))
              (if (macro-divide-by-zero-exception? _e65493_)
                  (macro-divide-by-zero-exception-procedure _e65493_)
                  (let ((__tmp66139
                         (let ((__tmp66140
                                (let ()
                                  (declare (not safe))
                                  (cons _e65493_ '()))))
                           (declare (not safe))
                           (cons 'divide-by-zero-exception-procedure
                                 __tmp66140))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp66139))))
            (if (macro-divide-by-zero-exception? _exn65490_)
                (macro-divide-by-zero-exception-procedure _exn65490_)
                (let ((__tmp66137
                       (let ((__tmp66138
                              (let ()
                                (declare (not safe))
                                (cons _exn65490_ '()))))
                         (declare (not safe))
                         (cons 'divide-by-zero-exception-procedure
                               __tmp66138))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp66137))))))
    (define error-exception?
      (lambda (_exn65486_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65486_))
            (let ((_e65488_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65486_ 'exception))))
              (macro-error-exception? _e65488_))
            (macro-error-exception? _exn65486_))))
    (define error-exception-message
      (lambda (_exn65482_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65482_))
            (let ((_e65484_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65482_ 'exception))))
              (if (macro-error-exception? _e65484_)
                  (macro-error-exception-message _e65484_)
                  (let ((__tmp66143
                         (let ((__tmp66144
                                (let ()
                                  (declare (not safe))
                                  (cons _e65484_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-message __tmp66144))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66143))))
            (if (macro-error-exception? _exn65482_)
                (macro-error-exception-message _exn65482_)
                (let ((__tmp66141
                       (let ((__tmp66142
                              (let ()
                                (declare (not safe))
                                (cons _exn65482_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-message __tmp66142))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66141))))))
    (define error-exception-parameters
      (lambda (_exn65476_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65476_))
            (let ((_e65479_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65476_ 'exception))))
              (if (macro-error-exception? _e65479_)
                  (macro-error-exception-parameters _e65479_)
                  (let ((__tmp66147
                         (let ((__tmp66148
                                (let ()
                                  (declare (not safe))
                                  (cons _e65479_ '()))))
                           (declare (not safe))
                           (cons 'error-exception-parameters __tmp66148))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp66147))))
            (if (macro-error-exception? _exn65476_)
                (macro-error-exception-parameters _exn65476_)
                (let ((__tmp66145
                       (let ((__tmp66146
                              (let ()
                                (declare (not safe))
                                (cons _exn65476_ '()))))
                         (declare (not safe))
                         (cons 'error-exception-parameters __tmp66146))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp66145))))))
    (define expression-parsing-exception?
      (lambda (_exn65472_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65472_))
            (let ((_e65474_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65472_ 'exception))))
              (macro-expression-parsing-exception? _e65474_))
            (macro-expression-parsing-exception? _exn65472_))))
    (define expression-parsing-exception-kind
      (lambda (_exn65468_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65468_))
            (let ((_e65470_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65468_ 'exception))))
              (if (macro-expression-parsing-exception? _e65470_)
                  (macro-expression-parsing-exception-kind _e65470_)
                  (let ((__tmp66151
                         (let ((__tmp66152
                                (let ()
                                  (declare (not safe))
                                  (cons _e65470_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-kind
                                 __tmp66152))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66151))))
            (if (macro-expression-parsing-exception? _exn65468_)
                (macro-expression-parsing-exception-kind _exn65468_)
                (let ((__tmp66149
                       (let ((__tmp66150
                              (let ()
                                (declare (not safe))
                                (cons _exn65468_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-kind
                               __tmp66150))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66149))))))
    (define expression-parsing-exception-parameters
      (lambda (_exn65464_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65464_))
            (let ((_e65466_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65464_ 'exception))))
              (if (macro-expression-parsing-exception? _e65466_)
                  (macro-expression-parsing-exception-parameters _e65466_)
                  (let ((__tmp66155
                         (let ((__tmp66156
                                (let ()
                                  (declare (not safe))
                                  (cons _e65466_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-parameters
                                 __tmp66156))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66155))))
            (if (macro-expression-parsing-exception? _exn65464_)
                (macro-expression-parsing-exception-parameters _exn65464_)
                (let ((__tmp66153
                       (let ((__tmp66154
                              (let ()
                                (declare (not safe))
                                (cons _exn65464_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-parameters
                               __tmp66154))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66153))))))
    (define expression-parsing-exception-source
      (lambda (_exn65458_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65458_))
            (let ((_e65461_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65458_ 'exception))))
              (if (macro-expression-parsing-exception? _e65461_)
                  (macro-expression-parsing-exception-source _e65461_)
                  (let ((__tmp66159
                         (let ((__tmp66160
                                (let ()
                                  (declare (not safe))
                                  (cons _e65461_ '()))))
                           (declare (not safe))
                           (cons 'expression-parsing-exception-source
                                 __tmp66160))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp66159))))
            (if (macro-expression-parsing-exception? _exn65458_)
                (macro-expression-parsing-exception-source _exn65458_)
                (let ((__tmp66157
                       (let ((__tmp66158
                              (let ()
                                (declare (not safe))
                                (cons _exn65458_ '()))))
                         (declare (not safe))
                         (cons 'expression-parsing-exception-source
                               __tmp66158))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp66157))))))
    (define file-exists-exception?
      (lambda (_exn65454_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65454_))
            (let ((_e65456_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65454_ 'exception))))
              (macro-file-exists-exception? _e65456_))
            (macro-file-exists-exception? _exn65454_))))
    (define file-exists-exception-arguments
      (lambda (_exn65450_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65450_))
            (let ((_e65452_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65450_ 'exception))))
              (if (macro-file-exists-exception? _e65452_)
                  (macro-file-exists-exception-arguments _e65452_)
                  (let ((__tmp66163
                         (let ((__tmp66164
                                (let ()
                                  (declare (not safe))
                                  (cons _e65452_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-arguments
                                 __tmp66164))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66163))))
            (if (macro-file-exists-exception? _exn65450_)
                (macro-file-exists-exception-arguments _exn65450_)
                (let ((__tmp66161
                       (let ((__tmp66162
                              (let ()
                                (declare (not safe))
                                (cons _exn65450_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-arguments __tmp66162))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66161))))))
    (define file-exists-exception-procedure
      (lambda (_exn65444_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65444_))
            (let ((_e65447_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65444_ 'exception))))
              (if (macro-file-exists-exception? _e65447_)
                  (macro-file-exists-exception-procedure _e65447_)
                  (let ((__tmp66167
                         (let ((__tmp66168
                                (let ()
                                  (declare (not safe))
                                  (cons _e65447_ '()))))
                           (declare (not safe))
                           (cons 'file-exists-exception-procedure
                                 __tmp66168))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp66167))))
            (if (macro-file-exists-exception? _exn65444_)
                (macro-file-exists-exception-procedure _exn65444_)
                (let ((__tmp66165
                       (let ((__tmp66166
                              (let ()
                                (declare (not safe))
                                (cons _exn65444_ '()))))
                         (declare (not safe))
                         (cons 'file-exists-exception-procedure __tmp66166))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp66165))))))
    (define fixnum-overflow-exception?
      (lambda (_exn65440_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65440_))
            (let ((_e65442_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65440_ 'exception))))
              (macro-fixnum-overflow-exception? _e65442_))
            (macro-fixnum-overflow-exception? _exn65440_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_exn65436_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65436_))
            (let ((_e65438_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65436_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65438_)
                  (macro-fixnum-overflow-exception-arguments _e65438_)
                  (let ((__tmp66171
                         (let ((__tmp66172
                                (let ()
                                  (declare (not safe))
                                  (cons _e65438_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-arguments
                                 __tmp66172))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66171))))
            (if (macro-fixnum-overflow-exception? _exn65436_)
                (macro-fixnum-overflow-exception-arguments _exn65436_)
                (let ((__tmp66169
                       (let ((__tmp66170
                              (let ()
                                (declare (not safe))
                                (cons _exn65436_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-arguments
                               __tmp66170))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66169))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_exn65430_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65430_))
            (let ((_e65433_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65430_ 'exception))))
              (if (macro-fixnum-overflow-exception? _e65433_)
                  (macro-fixnum-overflow-exception-procedure _e65433_)
                  (let ((__tmp66175
                         (let ((__tmp66176
                                (let ()
                                  (declare (not safe))
                                  (cons _e65433_ '()))))
                           (declare (not safe))
                           (cons 'fixnum-overflow-exception-procedure
                                 __tmp66176))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp66175))))
            (if (macro-fixnum-overflow-exception? _exn65430_)
                (macro-fixnum-overflow-exception-procedure _exn65430_)
                (let ((__tmp66173
                       (let ((__tmp66174
                              (let ()
                                (declare (not safe))
                                (cons _exn65430_ '()))))
                         (declare (not safe))
                         (cons 'fixnum-overflow-exception-procedure
                               __tmp66174))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp66173))))))
    (define heap-overflow-exception?
      (lambda (_exn65424_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65424_))
            (let ((_e65427_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65424_ 'exception))))
              (macro-heap-overflow-exception? _e65427_))
            (macro-heap-overflow-exception? _exn65424_))))
    (define inactive-thread-exception?
      (lambda (_exn65420_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65420_))
            (let ((_e65422_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65420_ 'exception))))
              (macro-inactive-thread-exception? _e65422_))
            (macro-inactive-thread-exception? _exn65420_))))
    (define inactive-thread-exception-arguments
      (lambda (_exn65416_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65416_))
            (let ((_e65418_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65416_ 'exception))))
              (if (macro-inactive-thread-exception? _e65418_)
                  (macro-inactive-thread-exception-arguments _e65418_)
                  (let ((__tmp66179
                         (let ((__tmp66180
                                (let ()
                                  (declare (not safe))
                                  (cons _e65418_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-arguments
                                 __tmp66180))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66179))))
            (if (macro-inactive-thread-exception? _exn65416_)
                (macro-inactive-thread-exception-arguments _exn65416_)
                (let ((__tmp66177
                       (let ((__tmp66178
                              (let ()
                                (declare (not safe))
                                (cons _exn65416_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-arguments
                               __tmp66178))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66177))))))
    (define inactive-thread-exception-procedure
      (lambda (_exn65410_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65410_))
            (let ((_e65413_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65410_ 'exception))))
              (if (macro-inactive-thread-exception? _e65413_)
                  (macro-inactive-thread-exception-procedure _e65413_)
                  (let ((__tmp66183
                         (let ((__tmp66184
                                (let ()
                                  (declare (not safe))
                                  (cons _e65413_ '()))))
                           (declare (not safe))
                           (cons 'inactive-thread-exception-procedure
                                 __tmp66184))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp66183))))
            (if (macro-inactive-thread-exception? _exn65410_)
                (macro-inactive-thread-exception-procedure _exn65410_)
                (let ((__tmp66181
                       (let ((__tmp66182
                              (let ()
                                (declare (not safe))
                                (cons _exn65410_ '()))))
                         (declare (not safe))
                         (cons 'inactive-thread-exception-procedure
                               __tmp66182))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp66181))))))
    (define initialized-thread-exception?
      (lambda (_exn65406_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65406_))
            (let ((_e65408_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65406_ 'exception))))
              (macro-initialized-thread-exception? _e65408_))
            (macro-initialized-thread-exception? _exn65406_))))
    (define initialized-thread-exception-arguments
      (lambda (_exn65402_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65402_))
            (let ((_e65404_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65402_ 'exception))))
              (if (macro-initialized-thread-exception? _e65404_)
                  (macro-initialized-thread-exception-arguments _e65404_)
                  (let ((__tmp66187
                         (let ((__tmp66188
                                (let ()
                                  (declare (not safe))
                                  (cons _e65404_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-arguments
                                 __tmp66188))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66187))))
            (if (macro-initialized-thread-exception? _exn65402_)
                (macro-initialized-thread-exception-arguments _exn65402_)
                (let ((__tmp66185
                       (let ((__tmp66186
                              (let ()
                                (declare (not safe))
                                (cons _exn65402_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-arguments
                               __tmp66186))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66185))))))
    (define initialized-thread-exception-procedure
      (lambda (_exn65396_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65396_))
            (let ((_e65399_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65396_ 'exception))))
              (if (macro-initialized-thread-exception? _e65399_)
                  (macro-initialized-thread-exception-procedure _e65399_)
                  (let ((__tmp66191
                         (let ((__tmp66192
                                (let ()
                                  (declare (not safe))
                                  (cons _e65399_ '()))))
                           (declare (not safe))
                           (cons 'initialized-thread-exception-procedure
                                 __tmp66192))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp66191))))
            (if (macro-initialized-thread-exception? _exn65396_)
                (macro-initialized-thread-exception-procedure _exn65396_)
                (let ((__tmp66189
                       (let ((__tmp66190
                              (let ()
                                (declare (not safe))
                                (cons _exn65396_ '()))))
                         (declare (not safe))
                         (cons 'initialized-thread-exception-procedure
                               __tmp66190))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp66189))))))
    (define invalid-hash-number-exception?
      (lambda (_exn65392_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65392_))
            (let ((_e65394_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65392_ 'exception))))
              (macro-invalid-hash-number-exception? _e65394_))
            (macro-invalid-hash-number-exception? _exn65392_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_exn65388_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65388_))
            (let ((_e65390_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65388_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65390_)
                  (macro-invalid-hash-number-exception-arguments _e65390_)
                  (let ((__tmp66195
                         (let ((__tmp66196
                                (let ()
                                  (declare (not safe))
                                  (cons _e65390_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-arguments
                                 __tmp66196))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66195))))
            (if (macro-invalid-hash-number-exception? _exn65388_)
                (macro-invalid-hash-number-exception-arguments _exn65388_)
                (let ((__tmp66193
                       (let ((__tmp66194
                              (let ()
                                (declare (not safe))
                                (cons _exn65388_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-arguments
                               __tmp66194))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66193))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_exn65382_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65382_))
            (let ((_e65385_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65382_ 'exception))))
              (if (macro-invalid-hash-number-exception? _e65385_)
                  (macro-invalid-hash-number-exception-procedure _e65385_)
                  (let ((__tmp66199
                         (let ((__tmp66200
                                (let ()
                                  (declare (not safe))
                                  (cons _e65385_ '()))))
                           (declare (not safe))
                           (cons 'invalid-hash-number-exception-procedure
                                 __tmp66200))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp66199))))
            (if (macro-invalid-hash-number-exception? _exn65382_)
                (macro-invalid-hash-number-exception-procedure _exn65382_)
                (let ((__tmp66197
                       (let ((__tmp66198
                              (let ()
                                (declare (not safe))
                                (cons _exn65382_ '()))))
                         (declare (not safe))
                         (cons 'invalid-hash-number-exception-procedure
                               __tmp66198))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp66197))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_exn65378_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65378_))
            (let ((_e65380_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65378_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _e65380_))
            (macro-invalid-utf8-encoding-exception? _exn65378_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_exn65374_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65374_))
            (let ((_e65376_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65374_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65376_)
                  (macro-invalid-utf8-encoding-exception-arguments _e65376_)
                  (let ((__tmp66203
                         (let ((__tmp66204
                                (let ()
                                  (declare (not safe))
                                  (cons _e65376_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-arguments
                                 __tmp66204))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66203))))
            (if (macro-invalid-utf8-encoding-exception? _exn65374_)
                (macro-invalid-utf8-encoding-exception-arguments _exn65374_)
                (let ((__tmp66201
                       (let ((__tmp66202
                              (let ()
                                (declare (not safe))
                                (cons _exn65374_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-arguments
                               __tmp66202))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66201))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_exn65368_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65368_))
            (let ((_e65371_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65368_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _e65371_)
                  (macro-invalid-utf8-encoding-exception-procedure _e65371_)
                  (let ((__tmp66207
                         (let ((__tmp66208
                                (let ()
                                  (declare (not safe))
                                  (cons _e65371_ '()))))
                           (declare (not safe))
                           (cons 'invalid-utf8-encoding-exception-procedure
                                 __tmp66208))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp66207))))
            (if (macro-invalid-utf8-encoding-exception? _exn65368_)
                (macro-invalid-utf8-encoding-exception-procedure _exn65368_)
                (let ((__tmp66205
                       (let ((__tmp66206
                              (let ()
                                (declare (not safe))
                                (cons _exn65368_ '()))))
                         (declare (not safe))
                         (cons 'invalid-utf8-encoding-exception-procedure
                               __tmp66206))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp66205))))))
    (define join-timeout-exception?
      (lambda (_exn65364_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65364_))
            (let ((_e65366_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65364_ 'exception))))
              (macro-join-timeout-exception? _e65366_))
            (macro-join-timeout-exception? _exn65364_))))
    (define join-timeout-exception-arguments
      (lambda (_exn65360_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65360_))
            (let ((_e65362_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65360_ 'exception))))
              (if (macro-join-timeout-exception? _e65362_)
                  (macro-join-timeout-exception-arguments _e65362_)
                  (let ((__tmp66211
                         (let ((__tmp66212
                                (let ()
                                  (declare (not safe))
                                  (cons _e65362_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-arguments
                                 __tmp66212))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66211))))
            (if (macro-join-timeout-exception? _exn65360_)
                (macro-join-timeout-exception-arguments _exn65360_)
                (let ((__tmp66209
                       (let ((__tmp66210
                              (let ()
                                (declare (not safe))
                                (cons _exn65360_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-arguments __tmp66210))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66209))))))
    (define join-timeout-exception-procedure
      (lambda (_exn65354_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65354_))
            (let ((_e65357_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65354_ 'exception))))
              (if (macro-join-timeout-exception? _e65357_)
                  (macro-join-timeout-exception-procedure _e65357_)
                  (let ((__tmp66215
                         (let ((__tmp66216
                                (let ()
                                  (declare (not safe))
                                  (cons _e65357_ '()))))
                           (declare (not safe))
                           (cons 'join-timeout-exception-procedure
                                 __tmp66216))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp66215))))
            (if (macro-join-timeout-exception? _exn65354_)
                (macro-join-timeout-exception-procedure _exn65354_)
                (let ((__tmp66213
                       (let ((__tmp66214
                              (let ()
                                (declare (not safe))
                                (cons _exn65354_ '()))))
                         (declare (not safe))
                         (cons 'join-timeout-exception-procedure __tmp66214))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp66213))))))
    (define keyword-expected-exception?
      (lambda (_exn65350_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65350_))
            (let ((_e65352_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65350_ 'exception))))
              (macro-keyword-expected-exception? _e65352_))
            (macro-keyword-expected-exception? _exn65350_))))
    (define keyword-expected-exception-arguments
      (lambda (_exn65346_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65346_))
            (let ((_e65348_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65346_ 'exception))))
              (if (macro-keyword-expected-exception? _e65348_)
                  (macro-keyword-expected-exception-arguments _e65348_)
                  (let ((__tmp66219
                         (let ((__tmp66220
                                (let ()
                                  (declare (not safe))
                                  (cons _e65348_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-arguments
                                 __tmp66220))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66219))))
            (if (macro-keyword-expected-exception? _exn65346_)
                (macro-keyword-expected-exception-arguments _exn65346_)
                (let ((__tmp66217
                       (let ((__tmp66218
                              (let ()
                                (declare (not safe))
                                (cons _exn65346_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-arguments
                               __tmp66218))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66217))))))
    (define keyword-expected-exception-procedure
      (lambda (_exn65340_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65340_))
            (let ((_e65343_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65340_ 'exception))))
              (if (macro-keyword-expected-exception? _e65343_)
                  (macro-keyword-expected-exception-procedure _e65343_)
                  (let ((__tmp66223
                         (let ((__tmp66224
                                (let ()
                                  (declare (not safe))
                                  (cons _e65343_ '()))))
                           (declare (not safe))
                           (cons 'keyword-expected-exception-procedure
                                 __tmp66224))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp66223))))
            (if (macro-keyword-expected-exception? _exn65340_)
                (macro-keyword-expected-exception-procedure _exn65340_)
                (let ((__tmp66221
                       (let ((__tmp66222
                              (let ()
                                (declare (not safe))
                                (cons _exn65340_ '()))))
                         (declare (not safe))
                         (cons 'keyword-expected-exception-procedure
                               __tmp66222))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp66221))))))
    (define length-mismatch-exception?
      (lambda (_exn65336_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65336_))
            (let ((_e65338_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65336_ 'exception))))
              (macro-length-mismatch-exception? _e65338_))
            (macro-length-mismatch-exception? _exn65336_))))
    (define length-mismatch-exception-arg-id
      (lambda (_exn65332_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65332_))
            (let ((_e65334_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65332_ 'exception))))
              (if (macro-length-mismatch-exception? _e65334_)
                  (macro-length-mismatch-exception-arg-id _e65334_)
                  (let ((__tmp66227
                         (let ((__tmp66228
                                (let ()
                                  (declare (not safe))
                                  (cons _e65334_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arg-id
                                 __tmp66228))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66227))))
            (if (macro-length-mismatch-exception? _exn65332_)
                (macro-length-mismatch-exception-arg-id _exn65332_)
                (let ((__tmp66225
                       (let ((__tmp66226
                              (let ()
                                (declare (not safe))
                                (cons _exn65332_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arg-id __tmp66226))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66225))))))
    (define length-mismatch-exception-arguments
      (lambda (_exn65328_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65328_))
            (let ((_e65330_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65328_ 'exception))))
              (if (macro-length-mismatch-exception? _e65330_)
                  (macro-length-mismatch-exception-arguments _e65330_)
                  (let ((__tmp66231
                         (let ((__tmp66232
                                (let ()
                                  (declare (not safe))
                                  (cons _e65330_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-arguments
                                 __tmp66232))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66231))))
            (if (macro-length-mismatch-exception? _exn65328_)
                (macro-length-mismatch-exception-arguments _exn65328_)
                (let ((__tmp66229
                       (let ((__tmp66230
                              (let ()
                                (declare (not safe))
                                (cons _exn65328_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-arguments
                               __tmp66230))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66229))))))
    (define length-mismatch-exception-procedure
      (lambda (_exn65322_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65322_))
            (let ((_e65325_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65322_ 'exception))))
              (if (macro-length-mismatch-exception? _e65325_)
                  (macro-length-mismatch-exception-procedure _e65325_)
                  (let ((__tmp66235
                         (let ((__tmp66236
                                (let ()
                                  (declare (not safe))
                                  (cons _e65325_ '()))))
                           (declare (not safe))
                           (cons 'length-mismatch-exception-procedure
                                 __tmp66236))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp66235))))
            (if (macro-length-mismatch-exception? _exn65322_)
                (macro-length-mismatch-exception-procedure _exn65322_)
                (let ((__tmp66233
                       (let ((__tmp66234
                              (let ()
                                (declare (not safe))
                                (cons _exn65322_ '()))))
                         (declare (not safe))
                         (cons 'length-mismatch-exception-procedure
                               __tmp66234))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp66233))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_exn65318_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65318_))
            (let ((_e65320_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65318_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _e65320_))
            (macro-mailbox-receive-timeout-exception? _exn65318_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_exn65314_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65314_))
            (let ((_e65316_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65314_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65316_)
                  (macro-mailbox-receive-timeout-exception-arguments _e65316_)
                  (let ((__tmp66239
                         (let ((__tmp66240
                                (let ()
                                  (declare (not safe))
                                  (cons _e65316_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-arguments
                                 __tmp66240))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66239))))
            (if (macro-mailbox-receive-timeout-exception? _exn65314_)
                (macro-mailbox-receive-timeout-exception-arguments _exn65314_)
                (let ((__tmp66237
                       (let ((__tmp66238
                              (let ()
                                (declare (not safe))
                                (cons _exn65314_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-arguments
                               __tmp66238))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66237))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_exn65308_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65308_))
            (let ((_e65311_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65308_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _e65311_)
                  (macro-mailbox-receive-timeout-exception-procedure _e65311_)
                  (let ((__tmp66243
                         (let ((__tmp66244
                                (let ()
                                  (declare (not safe))
                                  (cons _e65311_ '()))))
                           (declare (not safe))
                           (cons 'mailbox-receive-timeout-exception-procedure
                                 __tmp66244))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp66243))))
            (if (macro-mailbox-receive-timeout-exception? _exn65308_)
                (macro-mailbox-receive-timeout-exception-procedure _exn65308_)
                (let ((__tmp66241
                       (let ((__tmp66242
                              (let ()
                                (declare (not safe))
                                (cons _exn65308_ '()))))
                         (declare (not safe))
                         (cons 'mailbox-receive-timeout-exception-procedure
                               __tmp66242))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp66241))))))
    (define module-not-found-exception?
      (lambda (_exn65304_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65304_))
            (let ((_e65306_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65304_ 'exception))))
              (macro-module-not-found-exception? _e65306_))
            (macro-module-not-found-exception? _exn65304_))))
    (define module-not-found-exception-arguments
      (lambda (_exn65300_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65300_))
            (let ((_e65302_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65300_ 'exception))))
              (if (macro-module-not-found-exception? _e65302_)
                  (macro-module-not-found-exception-arguments _e65302_)
                  (let ((__tmp66247
                         (let ((__tmp66248
                                (let ()
                                  (declare (not safe))
                                  (cons _e65302_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-arguments
                                 __tmp66248))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66247))))
            (if (macro-module-not-found-exception? _exn65300_)
                (macro-module-not-found-exception-arguments _exn65300_)
                (let ((__tmp66245
                       (let ((__tmp66246
                              (let ()
                                (declare (not safe))
                                (cons _exn65300_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-arguments
                               __tmp66246))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66245))))))
    (define module-not-found-exception-procedure
      (lambda (_exn65294_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65294_))
            (let ((_e65297_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65294_ 'exception))))
              (if (macro-module-not-found-exception? _e65297_)
                  (macro-module-not-found-exception-procedure _e65297_)
                  (let ((__tmp66251
                         (let ((__tmp66252
                                (let ()
                                  (declare (not safe))
                                  (cons _e65297_ '()))))
                           (declare (not safe))
                           (cons 'module-not-found-exception-procedure
                                 __tmp66252))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp66251))))
            (if (macro-module-not-found-exception? _exn65294_)
                (macro-module-not-found-exception-procedure _exn65294_)
                (let ((__tmp66249
                       (let ((__tmp66250
                              (let ()
                                (declare (not safe))
                                (cons _exn65294_ '()))))
                         (declare (not safe))
                         (cons 'module-not-found-exception-procedure
                               __tmp66250))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp66249))))))
    (define multiple-c-return-exception?
      (lambda (_exn65288_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65288_))
            (let ((_e65291_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65288_ 'exception))))
              (macro-multiple-c-return-exception? _e65291_))
            (macro-multiple-c-return-exception? _exn65288_))))
    (define no-such-file-or-directory-exception?
      (lambda (_exn65284_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65284_))
            (let ((_e65286_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65284_ 'exception))))
              (macro-no-such-file-or-directory-exception? _e65286_))
            (macro-no-such-file-or-directory-exception? _exn65284_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_exn65280_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65280_))
            (let ((_e65282_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65280_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65282_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _e65282_)
                  (let ((__tmp66255
                         (let ((__tmp66256
                                (let ()
                                  (declare (not safe))
                                  (cons _e65282_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-arguments
                                 __tmp66256))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66255))))
            (if (macro-no-such-file-or-directory-exception? _exn65280_)
                (macro-no-such-file-or-directory-exception-arguments
                 _exn65280_)
                (let ((__tmp66253
                       (let ((__tmp66254
                              (let ()
                                (declare (not safe))
                                (cons _exn65280_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-arguments
                               __tmp66254))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66253))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_exn65274_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65274_))
            (let ((_e65277_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65274_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _e65277_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _e65277_)
                  (let ((__tmp66259
                         (let ((__tmp66260
                                (let ()
                                  (declare (not safe))
                                  (cons _e65277_ '()))))
                           (declare (not safe))
                           (cons 'no-such-file-or-directory-exception-procedure
                                 __tmp66260))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp66259))))
            (if (macro-no-such-file-or-directory-exception? _exn65274_)
                (macro-no-such-file-or-directory-exception-procedure
                 _exn65274_)
                (let ((__tmp66257
                       (let ((__tmp66258
                              (let ()
                                (declare (not safe))
                                (cons _exn65274_ '()))))
                         (declare (not safe))
                         (cons 'no-such-file-or-directory-exception-procedure
                               __tmp66258))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp66257))))))
    (define noncontinuable-exception?
      (lambda (_exn65270_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65270_))
            (let ((_e65272_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65270_ 'exception))))
              (macro-noncontinuable-exception? _e65272_))
            (macro-noncontinuable-exception? _exn65270_))))
    (define noncontinuable-exception-reason
      (lambda (_exn65264_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65264_))
            (let ((_e65267_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65264_ 'exception))))
              (if (macro-noncontinuable-exception? _e65267_)
                  (macro-noncontinuable-exception-reason _e65267_)
                  (let ((__tmp66263
                         (let ((__tmp66264
                                (let ()
                                  (declare (not safe))
                                  (cons _e65267_ '()))))
                           (declare (not safe))
                           (cons 'noncontinuable-exception-reason
                                 __tmp66264))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp66263))))
            (if (macro-noncontinuable-exception? _exn65264_)
                (macro-noncontinuable-exception-reason _exn65264_)
                (let ((__tmp66261
                       (let ((__tmp66262
                              (let ()
                                (declare (not safe))
                                (cons _exn65264_ '()))))
                         (declare (not safe))
                         (cons 'noncontinuable-exception-reason __tmp66262))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp66261))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_exn65260_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65260_))
            (let ((_e65262_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65260_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception? _e65262_))
            (macro-nonempty-input-port-character-buffer-exception?
             _exn65260_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_exn65256_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65256_))
            (let ((_e65258_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65256_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65258_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _e65258_)
                  (let ((__tmp66267
                         (let ((__tmp66268
                                (let ()
                                  (declare (not safe))
                                  (cons _e65258_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-arguments
                                 __tmp66268))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66267))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65256_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _exn65256_)
                (let ((__tmp66265
                       (let ((__tmp66266
                              (let ()
                                (declare (not safe))
                                (cons _exn65256_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               __tmp66266))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66265))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_exn65250_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65250_))
            (let ((_e65253_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65250_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _e65253_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _e65253_)
                  (let ((__tmp66271
                         (let ((__tmp66272
                                (let ()
                                  (declare (not safe))
                                  (cons _e65253_ '()))))
                           (declare (not safe))
                           (cons 'nonempty-input-port-character-buffer-exception-procedure
                                 __tmp66272))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp66271))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _exn65250_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _exn65250_)
                (let ((__tmp66269
                       (let ((__tmp66270
                              (let ()
                                (declare (not safe))
                                (cons _exn65250_ '()))))
                         (declare (not safe))
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               __tmp66270))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp66269))))))
    (define nonprocedure-operator-exception?
      (lambda (_exn65246_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65246_))
            (let ((_e65248_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65246_ 'exception))))
              (macro-nonprocedure-operator-exception? _e65248_))
            (macro-nonprocedure-operator-exception? _exn65246_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_exn65242_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65242_))
            (let ((_e65244_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65242_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65244_)
                  (macro-nonprocedure-operator-exception-arguments _e65244_)
                  (let ((__tmp66275
                         (let ((__tmp66276
                                (let ()
                                  (declare (not safe))
                                  (cons _e65244_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-arguments
                                 __tmp66276))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66275))))
            (if (macro-nonprocedure-operator-exception? _exn65242_)
                (macro-nonprocedure-operator-exception-arguments _exn65242_)
                (let ((__tmp66273
                       (let ((__tmp66274
                              (let ()
                                (declare (not safe))
                                (cons _exn65242_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-arguments
                               __tmp66274))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66273))))))
    (define nonprocedure-operator-exception-code
      (lambda (_exn65238_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65238_))
            (let ((_e65240_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65238_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65240_)
                  (macro-nonprocedure-operator-exception-code _e65240_)
                  (let ((__tmp66279
                         (let ((__tmp66280
                                (let ()
                                  (declare (not safe))
                                  (cons _e65240_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-code
                                 __tmp66280))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66279))))
            (if (macro-nonprocedure-operator-exception? _exn65238_)
                (macro-nonprocedure-operator-exception-code _exn65238_)
                (let ((__tmp66277
                       (let ((__tmp66278
                              (let ()
                                (declare (not safe))
                                (cons _exn65238_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-code
                               __tmp66278))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66277))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_exn65234_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65234_))
            (let ((_e65236_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65234_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65236_)
                  (macro-nonprocedure-operator-exception-operator _e65236_)
                  (let ((__tmp66283
                         (let ((__tmp66284
                                (let ()
                                  (declare (not safe))
                                  (cons _e65236_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-operator
                                 __tmp66284))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66283))))
            (if (macro-nonprocedure-operator-exception? _exn65234_)
                (macro-nonprocedure-operator-exception-operator _exn65234_)
                (let ((__tmp66281
                       (let ((__tmp66282
                              (let ()
                                (declare (not safe))
                                (cons _exn65234_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-operator
                               __tmp66282))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66281))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_exn65228_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65228_))
            (let ((_e65231_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65228_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _e65231_)
                  (macro-nonprocedure-operator-exception-rte _e65231_)
                  (let ((__tmp66287
                         (let ((__tmp66288
                                (let ()
                                  (declare (not safe))
                                  (cons _e65231_ '()))))
                           (declare (not safe))
                           (cons 'nonprocedure-operator-exception-rte
                                 __tmp66288))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp66287))))
            (if (macro-nonprocedure-operator-exception? _exn65228_)
                (macro-nonprocedure-operator-exception-rte _exn65228_)
                (let ((__tmp66285
                       (let ((__tmp66286
                              (let ()
                                (declare (not safe))
                                (cons _exn65228_ '()))))
                         (declare (not safe))
                         (cons 'nonprocedure-operator-exception-rte
                               __tmp66286))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp66285))))))
    (define not-in-compilation-context-exception?
      (lambda (_exn65224_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65224_))
            (let ((_e65226_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65224_ 'exception))))
              (macro-not-in-compilation-context-exception? _e65226_))
            (macro-not-in-compilation-context-exception? _exn65224_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_exn65220_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65220_))
            (let ((_e65222_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65220_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65222_)
                  (macro-not-in-compilation-context-exception-arguments
                   _e65222_)
                  (let ((__tmp66291
                         (let ((__tmp66292
                                (let ()
                                  (declare (not safe))
                                  (cons _e65222_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-arguments
                                 __tmp66292))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66291))))
            (if (macro-not-in-compilation-context-exception? _exn65220_)
                (macro-not-in-compilation-context-exception-arguments
                 _exn65220_)
                (let ((__tmp66289
                       (let ((__tmp66290
                              (let ()
                                (declare (not safe))
                                (cons _exn65220_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-arguments
                               __tmp66290))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66289))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_exn65214_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65214_))
            (let ((_e65217_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65214_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _e65217_)
                  (macro-not-in-compilation-context-exception-procedure
                   _e65217_)
                  (let ((__tmp66295
                         (let ((__tmp66296
                                (let ()
                                  (declare (not safe))
                                  (cons _e65217_ '()))))
                           (declare (not safe))
                           (cons 'not-in-compilation-context-exception-procedure
                                 __tmp66296))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp66295))))
            (if (macro-not-in-compilation-context-exception? _exn65214_)
                (macro-not-in-compilation-context-exception-procedure
                 _exn65214_)
                (let ((__tmp66293
                       (let ((__tmp66294
                              (let ()
                                (declare (not safe))
                                (cons _exn65214_ '()))))
                         (declare (not safe))
                         (cons 'not-in-compilation-context-exception-procedure
                               __tmp66294))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp66293))))))
    (define number-of-arguments-limit-exception?
      (lambda (_exn65210_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65210_))
            (let ((_e65212_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65210_ 'exception))))
              (macro-number-of-arguments-limit-exception? _e65212_))
            (macro-number-of-arguments-limit-exception? _exn65210_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_exn65206_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65206_))
            (let ((_e65208_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65206_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65208_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _e65208_)
                  (let ((__tmp66299
                         (let ((__tmp66300
                                (let ()
                                  (declare (not safe))
                                  (cons _e65208_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-arguments
                                 __tmp66300))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66299))))
            (if (macro-number-of-arguments-limit-exception? _exn65206_)
                (macro-number-of-arguments-limit-exception-arguments
                 _exn65206_)
                (let ((__tmp66297
                       (let ((__tmp66298
                              (let ()
                                (declare (not safe))
                                (cons _exn65206_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-arguments
                               __tmp66298))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66297))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_exn65200_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65200_))
            (let ((_e65203_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65200_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _e65203_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _e65203_)
                  (let ((__tmp66303
                         (let ((__tmp66304
                                (let ()
                                  (declare (not safe))
                                  (cons _e65203_ '()))))
                           (declare (not safe))
                           (cons 'number-of-arguments-limit-exception-procedure
                                 __tmp66304))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp66303))))
            (if (macro-number-of-arguments-limit-exception? _exn65200_)
                (macro-number-of-arguments-limit-exception-procedure
                 _exn65200_)
                (let ((__tmp66301
                       (let ((__tmp66302
                              (let ()
                                (declare (not safe))
                                (cons _exn65200_ '()))))
                         (declare (not safe))
                         (cons 'number-of-arguments-limit-exception-procedure
                               __tmp66302))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp66301))))))
    (define os-exception?
      (lambda (_exn65196_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65196_))
            (let ((_e65198_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65196_ 'exception))))
              (macro-os-exception? _e65198_))
            (macro-os-exception? _exn65196_))))
    (define os-exception-arguments
      (lambda (_exn65192_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65192_))
            (let ((_e65194_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65192_ 'exception))))
              (if (macro-os-exception? _e65194_)
                  (macro-os-exception-arguments _e65194_)
                  (let ((__tmp66307
                         (let ((__tmp66308
                                (let ()
                                  (declare (not safe))
                                  (cons _e65194_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-arguments __tmp66308))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66307))))
            (if (macro-os-exception? _exn65192_)
                (macro-os-exception-arguments _exn65192_)
                (let ((__tmp66305
                       (let ((__tmp66306
                              (let ()
                                (declare (not safe))
                                (cons _exn65192_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-arguments __tmp66306))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66305))))))
    (define os-exception-code
      (lambda (_exn65188_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65188_))
            (let ((_e65190_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65188_ 'exception))))
              (if (macro-os-exception? _e65190_)
                  (macro-os-exception-code _e65190_)
                  (let ((__tmp66311
                         (let ((__tmp66312
                                (let ()
                                  (declare (not safe))
                                  (cons _e65190_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-code __tmp66312))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66311))))
            (if (macro-os-exception? _exn65188_)
                (macro-os-exception-code _exn65188_)
                (let ((__tmp66309
                       (let ((__tmp66310
                              (let ()
                                (declare (not safe))
                                (cons _exn65188_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-code __tmp66310))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66309))))))
    (define os-exception-message
      (lambda (_exn65184_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65184_))
            (let ((_e65186_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65184_ 'exception))))
              (if (macro-os-exception? _e65186_)
                  (macro-os-exception-message _e65186_)
                  (let ((__tmp66315
                         (let ((__tmp66316
                                (let ()
                                  (declare (not safe))
                                  (cons _e65186_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-message __tmp66316))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66315))))
            (if (macro-os-exception? _exn65184_)
                (macro-os-exception-message _exn65184_)
                (let ((__tmp66313
                       (let ((__tmp66314
                              (let ()
                                (declare (not safe))
                                (cons _exn65184_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-message __tmp66314))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66313))))))
    (define os-exception-procedure
      (lambda (_exn65178_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65178_))
            (let ((_e65181_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65178_ 'exception))))
              (if (macro-os-exception? _e65181_)
                  (macro-os-exception-procedure _e65181_)
                  (let ((__tmp66319
                         (let ((__tmp66320
                                (let ()
                                  (declare (not safe))
                                  (cons _e65181_ '()))))
                           (declare (not safe))
                           (cons 'os-exception-procedure __tmp66320))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp66319))))
            (if (macro-os-exception? _exn65178_)
                (macro-os-exception-procedure _exn65178_)
                (let ((__tmp66317
                       (let ((__tmp66318
                              (let ()
                                (declare (not safe))
                                (cons _exn65178_ '()))))
                         (declare (not safe))
                         (cons 'os-exception-procedure __tmp66318))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp66317))))))
    (define permission-denied-exception?
      (lambda (_exn65174_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65174_))
            (let ((_e65176_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65174_ 'exception))))
              (macro-permission-denied-exception? _e65176_))
            (macro-permission-denied-exception? _exn65174_))))
    (define permission-denied-exception-arguments
      (lambda (_exn65170_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65170_))
            (let ((_e65172_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65170_ 'exception))))
              (if (macro-permission-denied-exception? _e65172_)
                  (macro-permission-denied-exception-arguments _e65172_)
                  (let ((__tmp66323
                         (let ((__tmp66324
                                (let ()
                                  (declare (not safe))
                                  (cons _e65172_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-arguments
                                 __tmp66324))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66323))))
            (if (macro-permission-denied-exception? _exn65170_)
                (macro-permission-denied-exception-arguments _exn65170_)
                (let ((__tmp66321
                       (let ((__tmp66322
                              (let ()
                                (declare (not safe))
                                (cons _exn65170_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-arguments
                               __tmp66322))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66321))))))
    (define permission-denied-exception-procedure
      (lambda (_exn65164_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65164_))
            (let ((_e65167_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65164_ 'exception))))
              (if (macro-permission-denied-exception? _e65167_)
                  (macro-permission-denied-exception-procedure _e65167_)
                  (let ((__tmp66327
                         (let ((__tmp66328
                                (let ()
                                  (declare (not safe))
                                  (cons _e65167_ '()))))
                           (declare (not safe))
                           (cons 'permission-denied-exception-procedure
                                 __tmp66328))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp66327))))
            (if (macro-permission-denied-exception? _exn65164_)
                (macro-permission-denied-exception-procedure _exn65164_)
                (let ((__tmp66325
                       (let ((__tmp66326
                              (let ()
                                (declare (not safe))
                                (cons _exn65164_ '()))))
                         (declare (not safe))
                         (cons 'permission-denied-exception-procedure
                               __tmp66326))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp66325))))))
    (define range-exception?
      (lambda (_exn65160_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65160_))
            (let ((_e65162_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65160_ 'exception))))
              (macro-range-exception? _e65162_))
            (macro-range-exception? _exn65160_))))
    (define range-exception-arg-id
      (lambda (_exn65156_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65156_))
            (let ((_e65158_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65156_ 'exception))))
              (if (macro-range-exception? _e65158_)
                  (macro-range-exception-arg-id _e65158_)
                  (let ((__tmp66331
                         (let ((__tmp66332
                                (let ()
                                  (declare (not safe))
                                  (cons _e65158_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arg-id __tmp66332))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66331))))
            (if (macro-range-exception? _exn65156_)
                (macro-range-exception-arg-id _exn65156_)
                (let ((__tmp66329
                       (let ((__tmp66330
                              (let ()
                                (declare (not safe))
                                (cons _exn65156_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arg-id __tmp66330))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66329))))))
    (define range-exception-arguments
      (lambda (_exn65152_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65152_))
            (let ((_e65154_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65152_ 'exception))))
              (if (macro-range-exception? _e65154_)
                  (macro-range-exception-arguments _e65154_)
                  (let ((__tmp66335
                         (let ((__tmp66336
                                (let ()
                                  (declare (not safe))
                                  (cons _e65154_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-arguments __tmp66336))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66335))))
            (if (macro-range-exception? _exn65152_)
                (macro-range-exception-arguments _exn65152_)
                (let ((__tmp66333
                       (let ((__tmp66334
                              (let ()
                                (declare (not safe))
                                (cons _exn65152_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-arguments __tmp66334))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66333))))))
    (define range-exception-procedure
      (lambda (_exn65146_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65146_))
            (let ((_e65149_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65146_ 'exception))))
              (if (macro-range-exception? _e65149_)
                  (macro-range-exception-procedure _e65149_)
                  (let ((__tmp66339
                         (let ((__tmp66340
                                (let ()
                                  (declare (not safe))
                                  (cons _e65149_ '()))))
                           (declare (not safe))
                           (cons 'range-exception-procedure __tmp66340))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp66339))))
            (if (macro-range-exception? _exn65146_)
                (macro-range-exception-procedure _exn65146_)
                (let ((__tmp66337
                       (let ((__tmp66338
                              (let ()
                                (declare (not safe))
                                (cons _exn65146_ '()))))
                         (declare (not safe))
                         (cons 'range-exception-procedure __tmp66338))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp66337))))))
    (define rpc-remote-error-exception?
      (lambda (_exn65142_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65142_))
            (let ((_e65144_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65142_ 'exception))))
              (macro-rpc-remote-error-exception? _e65144_))
            (macro-rpc-remote-error-exception? _exn65142_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_exn65138_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65138_))
            (let ((_e65140_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65138_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65140_)
                  (macro-rpc-remote-error-exception-arguments _e65140_)
                  (let ((__tmp66343
                         (let ((__tmp66344
                                (let ()
                                  (declare (not safe))
                                  (cons _e65140_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-arguments
                                 __tmp66344))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66343))))
            (if (macro-rpc-remote-error-exception? _exn65138_)
                (macro-rpc-remote-error-exception-arguments _exn65138_)
                (let ((__tmp66341
                       (let ((__tmp66342
                              (let ()
                                (declare (not safe))
                                (cons _exn65138_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-arguments
                               __tmp66342))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66341))))))
    (define rpc-remote-error-exception-message
      (lambda (_exn65134_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65134_))
            (let ((_e65136_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65134_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65136_)
                  (macro-rpc-remote-error-exception-message _e65136_)
                  (let ((__tmp66347
                         (let ((__tmp66348
                                (let ()
                                  (declare (not safe))
                                  (cons _e65136_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-message
                                 __tmp66348))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66347))))
            (if (macro-rpc-remote-error-exception? _exn65134_)
                (macro-rpc-remote-error-exception-message _exn65134_)
                (let ((__tmp66345
                       (let ((__tmp66346
                              (let ()
                                (declare (not safe))
                                (cons _exn65134_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-message
                               __tmp66346))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66345))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_exn65128_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65128_))
            (let ((_e65131_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65128_ 'exception))))
              (if (macro-rpc-remote-error-exception? _e65131_)
                  (macro-rpc-remote-error-exception-procedure _e65131_)
                  (let ((__tmp66351
                         (let ((__tmp66352
                                (let ()
                                  (declare (not safe))
                                  (cons _e65131_ '()))))
                           (declare (not safe))
                           (cons 'rpc-remote-error-exception-procedure
                                 __tmp66352))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp66351))))
            (if (macro-rpc-remote-error-exception? _exn65128_)
                (macro-rpc-remote-error-exception-procedure _exn65128_)
                (let ((__tmp66349
                       (let ((__tmp66350
                              (let ()
                                (declare (not safe))
                                (cons _exn65128_ '()))))
                         (declare (not safe))
                         (cons 'rpc-remote-error-exception-procedure
                               __tmp66350))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp66349))))))
    (define scheduler-exception?
      (lambda (_exn65124_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65124_))
            (let ((_e65126_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65124_ 'exception))))
              (macro-scheduler-exception? _e65126_))
            (macro-scheduler-exception? _exn65124_))))
    (define scheduler-exception-reason
      (lambda (_exn65118_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65118_))
            (let ((_e65121_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65118_ 'exception))))
              (if (macro-scheduler-exception? _e65121_)
                  (macro-scheduler-exception-reason _e65121_)
                  (let ((__tmp66355
                         (let ((__tmp66356
                                (let ()
                                  (declare (not safe))
                                  (cons _e65121_ '()))))
                           (declare (not safe))
                           (cons 'scheduler-exception-reason __tmp66356))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp66355))))
            (if (macro-scheduler-exception? _exn65118_)
                (macro-scheduler-exception-reason _exn65118_)
                (let ((__tmp66353
                       (let ((__tmp66354
                              (let ()
                                (declare (not safe))
                                (cons _exn65118_ '()))))
                         (declare (not safe))
                         (cons 'scheduler-exception-reason __tmp66354))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp66353))))))
    (define sfun-conversion-exception?
      (lambda (_exn65114_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65114_))
            (let ((_e65116_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65114_ 'exception))))
              (macro-sfun-conversion-exception? _e65116_))
            (macro-sfun-conversion-exception? _exn65114_))))
    (define sfun-conversion-exception-arguments
      (lambda (_exn65110_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65110_))
            (let ((_e65112_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65110_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65112_)
                  (macro-sfun-conversion-exception-arguments _e65112_)
                  (let ((__tmp66359
                         (let ((__tmp66360
                                (let ()
                                  (declare (not safe))
                                  (cons _e65112_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-arguments
                                 __tmp66360))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66359))))
            (if (macro-sfun-conversion-exception? _exn65110_)
                (macro-sfun-conversion-exception-arguments _exn65110_)
                (let ((__tmp66357
                       (let ((__tmp66358
                              (let ()
                                (declare (not safe))
                                (cons _exn65110_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-arguments
                               __tmp66358))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66357))))))
    (define sfun-conversion-exception-code
      (lambda (_exn65106_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65106_))
            (let ((_e65108_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65106_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65108_)
                  (macro-sfun-conversion-exception-code _e65108_)
                  (let ((__tmp66363
                         (let ((__tmp66364
                                (let ()
                                  (declare (not safe))
                                  (cons _e65108_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-code __tmp66364))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66363))))
            (if (macro-sfun-conversion-exception? _exn65106_)
                (macro-sfun-conversion-exception-code _exn65106_)
                (let ((__tmp66361
                       (let ((__tmp66362
                              (let ()
                                (declare (not safe))
                                (cons _exn65106_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-code __tmp66362))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66361))))))
    (define sfun-conversion-exception-message
      (lambda (_exn65102_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65102_))
            (let ((_e65104_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65102_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65104_)
                  (macro-sfun-conversion-exception-message _e65104_)
                  (let ((__tmp66367
                         (let ((__tmp66368
                                (let ()
                                  (declare (not safe))
                                  (cons _e65104_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-message
                                 __tmp66368))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66367))))
            (if (macro-sfun-conversion-exception? _exn65102_)
                (macro-sfun-conversion-exception-message _exn65102_)
                (let ((__tmp66365
                       (let ((__tmp66366
                              (let ()
                                (declare (not safe))
                                (cons _exn65102_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-message
                               __tmp66366))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66365))))))
    (define sfun-conversion-exception-procedure
      (lambda (_exn65096_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65096_))
            (let ((_e65099_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65096_ 'exception))))
              (if (macro-sfun-conversion-exception? _e65099_)
                  (macro-sfun-conversion-exception-procedure _e65099_)
                  (let ((__tmp66371
                         (let ((__tmp66372
                                (let ()
                                  (declare (not safe))
                                  (cons _e65099_ '()))))
                           (declare (not safe))
                           (cons 'sfun-conversion-exception-procedure
                                 __tmp66372))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp66371))))
            (if (macro-sfun-conversion-exception? _exn65096_)
                (macro-sfun-conversion-exception-procedure _exn65096_)
                (let ((__tmp66369
                       (let ((__tmp66370
                              (let ()
                                (declare (not safe))
                                (cons _exn65096_ '()))))
                         (declare (not safe))
                         (cons 'sfun-conversion-exception-procedure
                               __tmp66370))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp66369))))))
    (define stack-overflow-exception?
      (lambda (_exn65090_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65090_))
            (let ((_e65093_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65090_ 'exception))))
              (macro-stack-overflow-exception? _e65093_))
            (macro-stack-overflow-exception? _exn65090_))))
    (define started-thread-exception?
      (lambda (_exn65086_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65086_))
            (let ((_e65088_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65086_ 'exception))))
              (macro-started-thread-exception? _e65088_))
            (macro-started-thread-exception? _exn65086_))))
    (define started-thread-exception-arguments
      (lambda (_exn65082_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65082_))
            (let ((_e65084_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65082_ 'exception))))
              (if (macro-started-thread-exception? _e65084_)
                  (macro-started-thread-exception-arguments _e65084_)
                  (let ((__tmp66375
                         (let ((__tmp66376
                                (let ()
                                  (declare (not safe))
                                  (cons _e65084_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-arguments
                                 __tmp66376))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66375))))
            (if (macro-started-thread-exception? _exn65082_)
                (macro-started-thread-exception-arguments _exn65082_)
                (let ((__tmp66373
                       (let ((__tmp66374
                              (let ()
                                (declare (not safe))
                                (cons _exn65082_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-arguments
                               __tmp66374))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66373))))))
    (define started-thread-exception-procedure
      (lambda (_exn65076_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65076_))
            (let ((_e65079_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65076_ 'exception))))
              (if (macro-started-thread-exception? _e65079_)
                  (macro-started-thread-exception-procedure _e65079_)
                  (let ((__tmp66379
                         (let ((__tmp66380
                                (let ()
                                  (declare (not safe))
                                  (cons _e65079_ '()))))
                           (declare (not safe))
                           (cons 'started-thread-exception-procedure
                                 __tmp66380))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp66379))))
            (if (macro-started-thread-exception? _exn65076_)
                (macro-started-thread-exception-procedure _exn65076_)
                (let ((__tmp66377
                       (let ((__tmp66378
                              (let ()
                                (declare (not safe))
                                (cons _exn65076_ '()))))
                         (declare (not safe))
                         (cons 'started-thread-exception-procedure
                               __tmp66378))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp66377))))))
    (define terminated-thread-exception?
      (lambda (_exn65072_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65072_))
            (let ((_e65074_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65072_ 'exception))))
              (macro-terminated-thread-exception? _e65074_))
            (macro-terminated-thread-exception? _exn65072_))))
    (define terminated-thread-exception-arguments
      (lambda (_exn65068_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65068_))
            (let ((_e65070_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65068_ 'exception))))
              (if (macro-terminated-thread-exception? _e65070_)
                  (macro-terminated-thread-exception-arguments _e65070_)
                  (let ((__tmp66383
                         (let ((__tmp66384
                                (let ()
                                  (declare (not safe))
                                  (cons _e65070_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-arguments
                                 __tmp66384))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66383))))
            (if (macro-terminated-thread-exception? _exn65068_)
                (macro-terminated-thread-exception-arguments _exn65068_)
                (let ((__tmp66381
                       (let ((__tmp66382
                              (let ()
                                (declare (not safe))
                                (cons _exn65068_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-arguments
                               __tmp66382))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66381))))))
    (define terminated-thread-exception-procedure
      (lambda (_exn65062_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65062_))
            (let ((_e65065_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65062_ 'exception))))
              (if (macro-terminated-thread-exception? _e65065_)
                  (macro-terminated-thread-exception-procedure _e65065_)
                  (let ((__tmp66387
                         (let ((__tmp66388
                                (let ()
                                  (declare (not safe))
                                  (cons _e65065_ '()))))
                           (declare (not safe))
                           (cons 'terminated-thread-exception-procedure
                                 __tmp66388))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp66387))))
            (if (macro-terminated-thread-exception? _exn65062_)
                (macro-terminated-thread-exception-procedure _exn65062_)
                (let ((__tmp66385
                       (let ((__tmp66386
                              (let ()
                                (declare (not safe))
                                (cons _exn65062_ '()))))
                         (declare (not safe))
                         (cons 'terminated-thread-exception-procedure
                               __tmp66386))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp66385))))))
    (define type-exception?
      (lambda (_exn65058_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65058_))
            (let ((_e65060_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65058_ 'exception))))
              (macro-type-exception? _e65060_))
            (macro-type-exception? _exn65058_))))
    (define type-exception-arg-id
      (lambda (_exn65054_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65054_))
            (let ((_e65056_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65054_ 'exception))))
              (if (macro-type-exception? _e65056_)
                  (macro-type-exception-arg-id _e65056_)
                  (let ((__tmp66391
                         (let ((__tmp66392
                                (let ()
                                  (declare (not safe))
                                  (cons _e65056_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arg-id __tmp66392))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66391))))
            (if (macro-type-exception? _exn65054_)
                (macro-type-exception-arg-id _exn65054_)
                (let ((__tmp66389
                       (let ((__tmp66390
                              (let ()
                                (declare (not safe))
                                (cons _exn65054_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arg-id __tmp66390))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66389))))))
    (define type-exception-arguments
      (lambda (_exn65050_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65050_))
            (let ((_e65052_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65050_ 'exception))))
              (if (macro-type-exception? _e65052_)
                  (macro-type-exception-arguments _e65052_)
                  (let ((__tmp66395
                         (let ((__tmp66396
                                (let ()
                                  (declare (not safe))
                                  (cons _e65052_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-arguments __tmp66396))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66395))))
            (if (macro-type-exception? _exn65050_)
                (macro-type-exception-arguments _exn65050_)
                (let ((__tmp66393
                       (let ((__tmp66394
                              (let ()
                                (declare (not safe))
                                (cons _exn65050_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-arguments __tmp66394))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66393))))))
    (define type-exception-procedure
      (lambda (_exn65046_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65046_))
            (let ((_e65048_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65046_ 'exception))))
              (if (macro-type-exception? _e65048_)
                  (macro-type-exception-procedure _e65048_)
                  (let ((__tmp66399
                         (let ((__tmp66400
                                (let ()
                                  (declare (not safe))
                                  (cons _e65048_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-procedure __tmp66400))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66399))))
            (if (macro-type-exception? _exn65046_)
                (macro-type-exception-procedure _exn65046_)
                (let ((__tmp66397
                       (let ((__tmp66398
                              (let ()
                                (declare (not safe))
                                (cons _exn65046_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-procedure __tmp66398))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66397))))))
    (define type-exception-type-id
      (lambda (_exn65040_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65040_))
            (let ((_e65043_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65040_ 'exception))))
              (if (macro-type-exception? _e65043_)
                  (macro-type-exception-type-id _e65043_)
                  (let ((__tmp66403
                         (let ((__tmp66404
                                (let ()
                                  (declare (not safe))
                                  (cons _e65043_ '()))))
                           (declare (not safe))
                           (cons 'type-exception-type-id __tmp66404))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp66403))))
            (if (macro-type-exception? _exn65040_)
                (macro-type-exception-type-id _exn65040_)
                (let ((__tmp66401
                       (let ((__tmp66402
                              (let ()
                                (declare (not safe))
                                (cons _exn65040_ '()))))
                         (declare (not safe))
                         (cons 'type-exception-type-id __tmp66402))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp66401))))))
    (define unbound-global-exception?
      (lambda (_exn65036_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65036_))
            (let ((_e65038_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65036_ 'exception))))
              (macro-unbound-global-exception? _e65038_))
            (macro-unbound-global-exception? _exn65036_))))
    (define unbound-global-exception-code
      (lambda (_exn65032_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65032_))
            (let ((_e65034_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65032_ 'exception))))
              (if (macro-unbound-global-exception? _e65034_)
                  (macro-unbound-global-exception-code _e65034_)
                  (let ((__tmp66407
                         (let ((__tmp66408
                                (let ()
                                  (declare (not safe))
                                  (cons _e65034_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-code __tmp66408))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66407))))
            (if (macro-unbound-global-exception? _exn65032_)
                (macro-unbound-global-exception-code _exn65032_)
                (let ((__tmp66405
                       (let ((__tmp66406
                              (let ()
                                (declare (not safe))
                                (cons _exn65032_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-code __tmp66406))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66405))))))
    (define unbound-global-exception-rte
      (lambda (_exn65028_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65028_))
            (let ((_e65030_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65028_ 'exception))))
              (if (macro-unbound-global-exception? _e65030_)
                  (macro-unbound-global-exception-rte _e65030_)
                  (let ((__tmp66411
                         (let ((__tmp66412
                                (let ()
                                  (declare (not safe))
                                  (cons _e65030_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-rte __tmp66412))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66411))))
            (if (macro-unbound-global-exception? _exn65028_)
                (macro-unbound-global-exception-rte _exn65028_)
                (let ((__tmp66409
                       (let ((__tmp66410
                              (let ()
                                (declare (not safe))
                                (cons _exn65028_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-rte __tmp66410))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66409))))))
    (define unbound-global-exception-variable
      (lambda (_exn65022_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65022_))
            (let ((_e65025_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65022_ 'exception))))
              (if (macro-unbound-global-exception? _e65025_)
                  (macro-unbound-global-exception-variable _e65025_)
                  (let ((__tmp66415
                         (let ((__tmp66416
                                (let ()
                                  (declare (not safe))
                                  (cons _e65025_ '()))))
                           (declare (not safe))
                           (cons 'unbound-global-exception-variable
                                 __tmp66416))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp66415))))
            (if (macro-unbound-global-exception? _exn65022_)
                (macro-unbound-global-exception-variable _exn65022_)
                (let ((__tmp66413
                       (let ((__tmp66414
                              (let ()
                                (declare (not safe))
                                (cons _exn65022_ '()))))
                         (declare (not safe))
                         (cons 'unbound-global-exception-variable
                               __tmp66414))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp66413))))))
    (define unbound-key-exception?
      (lambda (_exn65018_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65018_))
            (let ((_e65020_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65018_ 'exception))))
              (macro-unbound-key-exception? _e65020_))
            (macro-unbound-key-exception? _exn65018_))))
    (define unbound-key-exception-arguments
      (lambda (_exn65014_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65014_))
            (let ((_e65016_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65014_ 'exception))))
              (if (macro-unbound-key-exception? _e65016_)
                  (macro-unbound-key-exception-arguments _e65016_)
                  (let ((__tmp66419
                         (let ((__tmp66420
                                (let ()
                                  (declare (not safe))
                                  (cons _e65016_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-arguments
                                 __tmp66420))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66419))))
            (if (macro-unbound-key-exception? _exn65014_)
                (macro-unbound-key-exception-arguments _exn65014_)
                (let ((__tmp66417
                       (let ((__tmp66418
                              (let ()
                                (declare (not safe))
                                (cons _exn65014_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-arguments __tmp66418))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66417))))))
    (define unbound-key-exception-procedure
      (lambda (_exn65008_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65008_))
            (let ((_e65011_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65008_ 'exception))))
              (if (macro-unbound-key-exception? _e65011_)
                  (macro-unbound-key-exception-procedure _e65011_)
                  (let ((__tmp66423
                         (let ((__tmp66424
                                (let ()
                                  (declare (not safe))
                                  (cons _e65011_ '()))))
                           (declare (not safe))
                           (cons 'unbound-key-exception-procedure
                                 __tmp66424))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp66423))))
            (if (macro-unbound-key-exception? _exn65008_)
                (macro-unbound-key-exception-procedure _exn65008_)
                (let ((__tmp66421
                       (let ((__tmp66422
                              (let ()
                                (declare (not safe))
                                (cons _exn65008_ '()))))
                         (declare (not safe))
                         (cons 'unbound-key-exception-procedure __tmp66422))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp66421))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_exn65004_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65004_))
            (let ((_e65006_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65004_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _e65006_))
            (macro-unbound-os-environment-variable-exception? _exn65004_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_exn65000_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn65000_))
            (let ((_e65002_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn65000_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e65002_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _e65002_)
                  (let ((__tmp66427
                         (let ((__tmp66428
                                (let ()
                                  (declare (not safe))
                                  (cons _e65002_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-arguments
                                 __tmp66428))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66427))))
            (if (macro-unbound-os-environment-variable-exception? _exn65000_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _exn65000_)
                (let ((__tmp66425
                       (let ((__tmp66426
                              (let ()
                                (declare (not safe))
                                (cons _exn65000_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-arguments
                               __tmp66426))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66425))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_exn64994_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64994_))
            (let ((_e64997_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64994_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _e64997_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _e64997_)
                  (let ((__tmp66431
                         (let ((__tmp66432
                                (let ()
                                  (declare (not safe))
                                  (cons _e64997_ '()))))
                           (declare (not safe))
                           (cons 'unbound-os-environment-variable-exception-procedure
                                 __tmp66432))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp66431))))
            (if (macro-unbound-os-environment-variable-exception? _exn64994_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _exn64994_)
                (let ((__tmp66429
                       (let ((__tmp66430
                              (let ()
                                (declare (not safe))
                                (cons _exn64994_ '()))))
                         (declare (not safe))
                         (cons 'unbound-os-environment-variable-exception-procedure
                               __tmp66430))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp66429))))))
    (define unbound-serial-number-exception?
      (lambda (_exn64990_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64990_))
            (let ((_e64992_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64990_ 'exception))))
              (macro-unbound-serial-number-exception? _e64992_))
            (macro-unbound-serial-number-exception? _exn64990_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_exn64986_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64986_))
            (let ((_e64988_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64986_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64988_)
                  (macro-unbound-serial-number-exception-arguments _e64988_)
                  (let ((__tmp66435
                         (let ((__tmp66436
                                (let ()
                                  (declare (not safe))
                                  (cons _e64988_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-arguments
                                 __tmp66436))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66435))))
            (if (macro-unbound-serial-number-exception? _exn64986_)
                (macro-unbound-serial-number-exception-arguments _exn64986_)
                (let ((__tmp66433
                       (let ((__tmp66434
                              (let ()
                                (declare (not safe))
                                (cons _exn64986_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-arguments
                               __tmp66434))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66433))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_exn64980_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64980_))
            (let ((_e64983_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64980_ 'exception))))
              (if (macro-unbound-serial-number-exception? _e64983_)
                  (macro-unbound-serial-number-exception-procedure _e64983_)
                  (let ((__tmp66439
                         (let ((__tmp66440
                                (let ()
                                  (declare (not safe))
                                  (cons _e64983_ '()))))
                           (declare (not safe))
                           (cons 'unbound-serial-number-exception-procedure
                                 __tmp66440))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp66439))))
            (if (macro-unbound-serial-number-exception? _exn64980_)
                (macro-unbound-serial-number-exception-procedure _exn64980_)
                (let ((__tmp66437
                       (let ((__tmp66438
                              (let ()
                                (declare (not safe))
                                (cons _exn64980_ '()))))
                         (declare (not safe))
                         (cons 'unbound-serial-number-exception-procedure
                               __tmp66438))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp66437))))))
    (define uncaught-exception?
      (lambda (_exn64976_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64976_))
            (let ((_e64978_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64976_ 'exception))))
              (macro-uncaught-exception? _e64978_))
            (macro-uncaught-exception? _exn64976_))))
    (define uncaught-exception-arguments
      (lambda (_exn64972_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64972_))
            (let ((_e64974_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64972_ 'exception))))
              (if (macro-uncaught-exception? _e64974_)
                  (macro-uncaught-exception-arguments _e64974_)
                  (let ((__tmp66443
                         (let ((__tmp66444
                                (let ()
                                  (declare (not safe))
                                  (cons _e64974_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-arguments __tmp66444))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66443))))
            (if (macro-uncaught-exception? _exn64972_)
                (macro-uncaught-exception-arguments _exn64972_)
                (let ((__tmp66441
                       (let ((__tmp66442
                              (let ()
                                (declare (not safe))
                                (cons _exn64972_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-arguments __tmp66442))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66441))))))
    (define uncaught-exception-procedure
      (lambda (_exn64968_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64968_))
            (let ((_e64970_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64968_ 'exception))))
              (if (macro-uncaught-exception? _e64970_)
                  (macro-uncaught-exception-procedure _e64970_)
                  (let ((__tmp66447
                         (let ((__tmp66448
                                (let ()
                                  (declare (not safe))
                                  (cons _e64970_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-procedure __tmp66448))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66447))))
            (if (macro-uncaught-exception? _exn64968_)
                (macro-uncaught-exception-procedure _exn64968_)
                (let ((__tmp66445
                       (let ((__tmp66446
                              (let ()
                                (declare (not safe))
                                (cons _exn64968_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-procedure __tmp66446))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66445))))))
    (define uncaught-exception-reason
      (lambda (_exn64962_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64962_))
            (let ((_e64965_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64962_ 'exception))))
              (if (macro-uncaught-exception? _e64965_)
                  (macro-uncaught-exception-reason _e64965_)
                  (let ((__tmp66451
                         (let ((__tmp66452
                                (let ()
                                  (declare (not safe))
                                  (cons _e64965_ '()))))
                           (declare (not safe))
                           (cons 'uncaught-exception-reason __tmp66452))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp66451))))
            (if (macro-uncaught-exception? _exn64962_)
                (macro-uncaught-exception-reason _exn64962_)
                (let ((__tmp66449
                       (let ((__tmp66450
                              (let ()
                                (declare (not safe))
                                (cons _exn64962_ '()))))
                         (declare (not safe))
                         (cons 'uncaught-exception-reason __tmp66450))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp66449))))))
    (define uninitialized-thread-exception?
      (lambda (_exn64958_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64958_))
            (let ((_e64960_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64958_ 'exception))))
              (macro-uninitialized-thread-exception? _e64960_))
            (macro-uninitialized-thread-exception? _exn64958_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_exn64954_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64954_))
            (let ((_e64956_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64954_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64956_)
                  (macro-uninitialized-thread-exception-arguments _e64956_)
                  (let ((__tmp66455
                         (let ((__tmp66456
                                (let ()
                                  (declare (not safe))
                                  (cons _e64956_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-arguments
                                 __tmp66456))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66455))))
            (if (macro-uninitialized-thread-exception? _exn64954_)
                (macro-uninitialized-thread-exception-arguments _exn64954_)
                (let ((__tmp66453
                       (let ((__tmp66454
                              (let ()
                                (declare (not safe))
                                (cons _exn64954_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-arguments
                               __tmp66454))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66453))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_exn64948_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64948_))
            (let ((_e64951_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64948_ 'exception))))
              (if (macro-uninitialized-thread-exception? _e64951_)
                  (macro-uninitialized-thread-exception-procedure _e64951_)
                  (let ((__tmp66459
                         (let ((__tmp66460
                                (let ()
                                  (declare (not safe))
                                  (cons _e64951_ '()))))
                           (declare (not safe))
                           (cons 'uninitialized-thread-exception-procedure
                                 __tmp66460))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp66459))))
            (if (macro-uninitialized-thread-exception? _exn64948_)
                (macro-uninitialized-thread-exception-procedure _exn64948_)
                (let ((__tmp66457
                       (let ((__tmp66458
                              (let ()
                                (declare (not safe))
                                (cons _exn64948_ '()))))
                         (declare (not safe))
                         (cons 'uninitialized-thread-exception-procedure
                               __tmp66458))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp66457))))))
    (define unknown-keyword-argument-exception?
      (lambda (_exn64944_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64944_))
            (let ((_e64946_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64944_ 'exception))))
              (macro-unknown-keyword-argument-exception? _e64946_))
            (macro-unknown-keyword-argument-exception? _exn64944_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_exn64940_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64940_))
            (let ((_e64942_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64940_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64942_)
                  (macro-unknown-keyword-argument-exception-arguments _e64942_)
                  (let ((__tmp66463
                         (let ((__tmp66464
                                (let ()
                                  (declare (not safe))
                                  (cons _e64942_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-arguments
                                 __tmp66464))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66463))))
            (if (macro-unknown-keyword-argument-exception? _exn64940_)
                (macro-unknown-keyword-argument-exception-arguments _exn64940_)
                (let ((__tmp66461
                       (let ((__tmp66462
                              (let ()
                                (declare (not safe))
                                (cons _exn64940_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-arguments
                               __tmp66462))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66461))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_exn64934_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64934_))
            (let ((_e64937_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64934_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _e64937_)
                  (macro-unknown-keyword-argument-exception-procedure _e64937_)
                  (let ((__tmp66467
                         (let ((__tmp66468
                                (let ()
                                  (declare (not safe))
                                  (cons _e64937_ '()))))
                           (declare (not safe))
                           (cons 'unknown-keyword-argument-exception-procedure
                                 __tmp66468))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp66467))))
            (if (macro-unknown-keyword-argument-exception? _exn64934_)
                (macro-unknown-keyword-argument-exception-procedure _exn64934_)
                (let ((__tmp66465
                       (let ((__tmp66466
                              (let ()
                                (declare (not safe))
                                (cons _exn64934_ '()))))
                         (declare (not safe))
                         (cons 'unknown-keyword-argument-exception-procedure
                               __tmp66466))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp66465))))))
    (define unterminated-process-exception?
      (lambda (_exn64930_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64930_))
            (let ((_e64932_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64930_ 'exception))))
              (macro-unterminated-process-exception? _e64932_))
            (macro-unterminated-process-exception? _exn64930_))))
    (define unterminated-process-exception-arguments
      (lambda (_exn64926_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64926_))
            (let ((_e64928_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64926_ 'exception))))
              (if (macro-unterminated-process-exception? _e64928_)
                  (macro-unterminated-process-exception-arguments _e64928_)
                  (let ((__tmp66471
                         (let ((__tmp66472
                                (let ()
                                  (declare (not safe))
                                  (cons _e64928_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-arguments
                                 __tmp66472))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66471))))
            (if (macro-unterminated-process-exception? _exn64926_)
                (macro-unterminated-process-exception-arguments _exn64926_)
                (let ((__tmp66469
                       (let ((__tmp66470
                              (let ()
                                (declare (not safe))
                                (cons _exn64926_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-arguments
                               __tmp66470))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66469))))))
    (define unterminated-process-exception-procedure
      (lambda (_exn64920_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64920_))
            (let ((_e64923_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64920_ 'exception))))
              (if (macro-unterminated-process-exception? _e64923_)
                  (macro-unterminated-process-exception-procedure _e64923_)
                  (let ((__tmp66475
                         (let ((__tmp66476
                                (let ()
                                  (declare (not safe))
                                  (cons _e64923_ '()))))
                           (declare (not safe))
                           (cons 'unterminated-process-exception-procedure
                                 __tmp66476))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp66475))))
            (if (macro-unterminated-process-exception? _exn64920_)
                (macro-unterminated-process-exception-procedure _exn64920_)
                (let ((__tmp66473
                       (let ((__tmp66474
                              (let ()
                                (declare (not safe))
                                (cons _exn64920_ '()))))
                         (declare (not safe))
                         (cons 'unterminated-process-exception-procedure
                               __tmp66474))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp66473))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_exn64916_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64916_))
            (let ((_e64918_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64916_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _e64918_))
            (macro-wrong-number-of-arguments-exception? _exn64916_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_exn64912_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64912_))
            (let ((_e64914_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64912_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64914_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _e64914_)
                  (let ((__tmp66479
                         (let ((__tmp66480
                                (let ()
                                  (declare (not safe))
                                  (cons _e64914_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-arguments
                                 __tmp66480))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66479))))
            (if (macro-wrong-number-of-arguments-exception? _exn64912_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _exn64912_)
                (let ((__tmp66477
                       (let ((__tmp66478
                              (let ()
                                (declare (not safe))
                                (cons _exn64912_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-arguments
                               __tmp66478))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66477))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_exn64906_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64906_))
            (let ((_e64909_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64906_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _e64909_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _e64909_)
                  (let ((__tmp66483
                         (let ((__tmp66484
                                (let ()
                                  (declare (not safe))
                                  (cons _e64909_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-arguments-exception-procedure
                                 __tmp66484))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp66483))))
            (if (macro-wrong-number-of-arguments-exception? _exn64906_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _exn64906_)
                (let ((__tmp66481
                       (let ((__tmp66482
                              (let ()
                                (declare (not safe))
                                (cons _exn64906_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-arguments-exception-procedure
                               __tmp66482))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp66481))))))
    (define wrong-number-of-values-exception?
      (lambda (_exn64902_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64902_))
            (let ((_e64904_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64902_ 'exception))))
              (macro-wrong-number-of-values-exception? _e64904_))
            (macro-wrong-number-of-values-exception? _exn64902_))))
    (define wrong-number-of-values-exception-code
      (lambda (_exn64898_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64898_))
            (let ((_e64900_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64898_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64900_)
                  (macro-wrong-number-of-values-exception-code _e64900_)
                  (let ((__tmp66487
                         (let ((__tmp66488
                                (let ()
                                  (declare (not safe))
                                  (cons _e64900_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-code
                                 __tmp66488))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66487))))
            (if (macro-wrong-number-of-values-exception? _exn64898_)
                (macro-wrong-number-of-values-exception-code _exn64898_)
                (let ((__tmp66485
                       (let ((__tmp66486
                              (let ()
                                (declare (not safe))
                                (cons _exn64898_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-code
                               __tmp66486))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66485))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_exn64894_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64894_))
            (let ((_e64896_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64894_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64896_)
                  (macro-wrong-number-of-values-exception-rte _e64896_)
                  (let ((__tmp66491
                         (let ((__tmp66492
                                (let ()
                                  (declare (not safe))
                                  (cons _e64896_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-rte
                                 __tmp66492))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66491))))
            (if (macro-wrong-number-of-values-exception? _exn64894_)
                (macro-wrong-number-of-values-exception-rte _exn64894_)
                (let ((__tmp66489
                       (let ((__tmp66490
                              (let ()
                                (declare (not safe))
                                (cons _exn64894_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-rte
                               __tmp66490))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66489))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_exn64888_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64888_))
            (let ((_e64891_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64888_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _e64891_)
                  (macro-wrong-number-of-values-exception-vals _e64891_)
                  (let ((__tmp66495
                         (let ((__tmp66496
                                (let ()
                                  (declare (not safe))
                                  (cons _e64891_ '()))))
                           (declare (not safe))
                           (cons 'wrong-number-of-values-exception-vals
                                 __tmp66496))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp66495))))
            (if (macro-wrong-number-of-values-exception? _exn64888_)
                (macro-wrong-number-of-values-exception-vals _exn64888_)
                (let ((__tmp66493
                       (let ((__tmp66494
                              (let ()
                                (declare (not safe))
                                (cons _exn64888_ '()))))
                         (declare (not safe))
                         (cons 'wrong-number-of-values-exception-vals
                               __tmp66494))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp66493))))))
    (define wrong-processor-c-return-exception?
      (lambda (_exn64882_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _exn64882_))
            (let ((_e64885_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _exn64882_ 'exception))))
              (macro-wrong-processor-c-return-exception? _e64885_))
            (macro-wrong-processor-c-return-exception? _exn64882_))))))
