(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707647931)
  (begin
    (define spawn
      (lambda (_f95758_ . _args95759_)
        (if (let () (declare (not safe)) (procedure? _f95758_))
            '#!void
            (raise (let ((__obj100228
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100228
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95758_ '())))
                     __obj100228)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95758_ _args95759_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95754_ _f95755_ . _args95756_)
        (if (let () (declare (not safe)) (procedure? _f95755_))
            '#!void
            (raise (let ((__obj100229
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100229
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95755_ '())))
                     __obj100229)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95755_ _args95756_ _name95754_ '#f))))
    (define spawn/group
      (lambda (_name95748_ _f95749_ . _args95750_)
        (if (let () (declare (not safe)) (procedure? _f95749_))
            '#!void
            (raise (let ((__obj100230
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100230
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95749_ '())))
                     __obj100230)))
        (let ((_tgroup95752_ (make-thread-group _name95748_)))
          (declare (not safe))
          (spawn-actor _f95749_ _args95750_ _name95748_ _tgroup95752_))))
    (define spawn-actor
      (lambda (_f95721_ _args95722_ _name95723_ _tgroup95724_)
        (letrec ((_thread-main95726_
                  (lambda (_thunk95740_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95743_)
                         (let ((__tmp100232
                                (lambda (_cont95745_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100233
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95745_
                                                _exn95743_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100233))
                                      '#!void)
                                  (let ((__tmp100234
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95745_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100234
                                     ##primordial-exception-handler
                                     _exn95743_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100232)))
                       _thunk95740_)))))
          (let* ((_thunk95729_
                  (if (let () (declare (not safe)) (null? _args95722_))
                      _f95721_
                      (lambda () (apply _f95721_ _args95722_))))
                 (_thunk95732_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95729_))))
                 (_tgroup95737_
                  (let ((_$e95734_ _tgroup95724_))
                    (if _$e95734_
                        _$e95734_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95726_ _thunk95732_))
              _name95723_
              _tgroup95737_))))))
    (define spawn-thread__%
      (lambda (_thunk95699_ _name95700_ _tgroup95701_)
        (thread-start! (make-thread _thunk95699_ _name95700_ _tgroup95701_))))
    (define spawn-thread__0
      (lambda (_thunk95706_)
        (let* ((_name95708_ absent-obj) (_tgroup95710_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95706_ _name95708_ _tgroup95710_))))
    (define spawn-thread__1
      (lambda (_thunk95712_ _name95713_)
        (let ((_tgroup95715_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95712_ _name95713_ _tgroup95715_))))
    (define spawn-thread
      (lambda _g100236_
        (let ((_g100235_ (let () (declare (not safe)) (##length _g100236_))))
          (cond ((let () (declare (not safe)) (##fx= _g100235_ 1))
                 (apply (lambda (_thunk95706_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95706_)))
                        _g100236_))
                ((let () (declare (not safe)) (##fx= _g100235_ 2))
                 (apply (lambda (_thunk95712_ _name95713_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95712_ _name95713_)))
                        _g100236_))
                ((let () (declare (not safe)) (##fx= _g100235_ 3))
                 (apply (lambda (_thunk95717_ _name95718_ _tgroup95719_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95717_
                             _name95718_
                             _tgroup95719_)))
                        _g100236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100236_))))))
    (define thread-local-ref__%
      (lambda (_key95683_ _default95684_)
        (let ((_tab95686_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95686_ _key95683_ _default95684_))))
    (define thread-local-ref__0
      (lambda (_key95691_)
        (let ((_default95693_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95691_ _default95693_))))
    (define thread-local-ref
      (lambda _g100238_
        (let ((_g100237_ (let () (declare (not safe)) (##length _g100238_))))
          (cond ((let () (declare (not safe)) (##fx= _g100237_ 1))
                 (apply (lambda (_key95691_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95691_)))
                        _g100238_))
                ((let () (declare (not safe)) (##fx= _g100237_ 2))
                 (apply (lambda (_key95695_ _default95696_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95695_ _default95696_)))
                        _g100238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100238_))))))
    (define thread-local-get
      (lambda (_key95680_)
        (let () (declare (not safe)) (thread-local-ref _key95680_ '#f))))
    (define thread-local-set!
      (lambda (_key95675_ _value95676_)
        (let ((_tab95678_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95678_ _key95675_ _value95676_))))
    (define thread-local-clear!
      (lambda (_key95671_)
        (let ((_tab95673_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95673_ _key95671_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95657_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95657_))
              (let ((_$e95659_ (actor-thread-locals _thr95657_)))
                (if _$e95659_
                    (values _$e95659_)
                    (let ((_tab95662_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95657_ _tab95662_)
                      _tab95662_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95657_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95664_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95657_ '#f))))
                      (if _$e95664_
                          ((lambda (_tab95667_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95667_)
                           _$e95664_)
                          (let ((_tab95669_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95657_
                               _tab95669_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95669_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95654_)
        (if (let () (declare (not safe)) (procedure? _proc95654_))
            '#!void
            (raise (let ((__obj100231
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100231
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95654_ '())))
                     __obj100231)))
        (set! __unhandled-actor-exception-hook _proc95654_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95642_ _proc95643_)
        (let ((_handler95645_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95647_)
             (let ((__tmp100239
                    (lambda ()
                      (mutex-unlock! _mx95642_)
                      (_handler95645_ _e95647_))))
               (declare (not safe))
               (with-catch void __tmp100239))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95647_)))
           (lambda ()
             (mutex-lock! _mx95642_)
             (let ((_result95651_ (_proc95643_)))
               (mutex-unlock! _mx95642_)
               _result95651_))))))
    (define with-dynamic-lock
      (lambda (_mx95637_ _proc95638_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95637_))
         _proc95638_
         (lambda () (mutex-unlock! _mx95637_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95618_ _error-port95619_)
        (with-exception-handler
         (let ((_E95621_ (current-exception-handler)))
           (lambda (_exn95623_)
             (continuation-capture
              (lambda (_cont95625_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95625_
                       _exn95623_
                       _error-port95619_))
                    '#!void)
                (_E95621_ _exn95623_)))))
         _thunk95618_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95630_)
        (let ((_error-port95632_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95630_ _error-port95632_))))
    (define with-exception-stack-trace
      (lambda _g100241_
        (let ((_g100240_ (let () (declare (not safe)) (##length _g100241_))))
          (cond ((let () (declare (not safe)) (##fx= _g100240_ 1))
                 (apply (lambda (_thunk95630_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95630_)))
                        _g100241_))
                ((let () (declare (not safe)) (##fx= _g100240_ 2))
                 (apply (lambda (_thunk95634_ _error-port95635_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95634_
                             _error-port95635_)))
                        _g100241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100241_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95599_ _exn95600_ _error-port95601_)
        (let ((_out95603_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95603_))
          (display '"*** Unhandled exception in " _out95603_)
          (display (current-thread) _out95603_)
          (newline _out95603_)
          (display-exception _exn95600_ _out95603_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95600_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95603_)
                (newline _out95603_)
                (display-continuation-backtrace _cont95599_ _out95603_)))
          (let ((__tmp100242 (get-output-string _out95603_)))
            (declare (not safe))
            (##write-string __tmp100242 _error-port95601_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95608_ _exn95609_)
        (let ((_error-port95611_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95608_ _exn95609_ _error-port95611_))))
    (define dump-stack-trace!
      (lambda _g100244_
        (let ((_g100243_ (let () (declare (not safe)) (##length _g100244_))))
          (cond ((let () (declare (not safe)) (##fx= _g100243_ 2))
                 (apply (lambda (_cont95608_ _exn95609_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95608_ _exn95609_)))
                        _g100244_))
                ((let () (declare (not safe)) (##fx= _g100243_ 3))
                 (apply (lambda (_cont95613_ _exn95614_ _error-port95615_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95613_
                             _exn95614_
                             _error-port95615_)))
                        _g100244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100244_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
