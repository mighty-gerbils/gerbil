(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707773068)
  (begin
    (define spawn
      (lambda (_f96706_ . _args96707_)
        (if (let () (declare (not safe)) (procedure? _f96706_))
            '#!void
            (raise (let ((__obj101276
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101276
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96706_ '())))
                     __obj101276)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96706_ _args96707_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96702_ _f96703_ . _args96704_)
        (if (let () (declare (not safe)) (procedure? _f96703_))
            '#!void
            (raise (let ((__obj101277
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101277
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96703_ '())))
                     __obj101277)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96703_ _args96704_ _name96702_ '#f))))
    (define spawn/group
      (lambda (_name96696_ _f96697_ . _args96698_)
        (if (let () (declare (not safe)) (procedure? _f96697_))
            '#!void
            (raise (let ((__obj101278
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101278
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96697_ '())))
                     __obj101278)))
        (let ((_tgroup96700_ (make-thread-group _name96696_)))
          (declare (not safe))
          (spawn-actor _f96697_ _args96698_ _name96696_ _tgroup96700_))))
    (define spawn-actor
      (lambda (_f96669_ _args96670_ _name96671_ _tgroup96672_)
        (letrec ((_thread-main96674_
                  (lambda (_thunk96688_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96691_)
                         (let ((__tmp101280
                                (lambda (_cont96693_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp101281
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96693_
                                                _exn96691_))))
                                        (declare (not safe))
                                        (with-catch void __tmp101281))
                                      '#!void)
                                  (let ((__tmp101282
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96693_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp101282
                                     ##primordial-exception-handler
                                     _exn96691_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp101280)))
                       _thunk96688_)))))
          (let* ((_thunk96677_
                  (if (let () (declare (not safe)) (null? _args96670_))
                      _f96669_
                      (lambda () (apply _f96669_ _args96670_))))
                 (_thunk96680_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96677_))))
                 (_tgroup96685_
                  (let ((_$e96682_ _tgroup96672_))
                    (if _$e96682_
                        _$e96682_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96674_ _thunk96680_))
              _name96671_
              _tgroup96685_))))))
    (define spawn-thread__%
      (lambda (_thunk96647_ _name96648_ _tgroup96649_)
        (thread-start! (make-thread _thunk96647_ _name96648_ _tgroup96649_))))
    (define spawn-thread__0
      (lambda (_thunk96654_)
        (let* ((_name96656_ absent-obj) (_tgroup96658_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96654_ _name96656_ _tgroup96658_))))
    (define spawn-thread__1
      (lambda (_thunk96660_ _name96661_)
        (let ((_tgroup96663_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96660_ _name96661_ _tgroup96663_))))
    (define spawn-thread
      (lambda _g101284_
        (let ((_g101283_ (let () (declare (not safe)) (##length _g101284_))))
          (cond ((let () (declare (not safe)) (##fx= _g101283_ 1))
                 (apply (lambda (_thunk96654_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96654_)))
                        _g101284_))
                ((let () (declare (not safe)) (##fx= _g101283_ 2))
                 (apply (lambda (_thunk96660_ _name96661_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96660_ _name96661_)))
                        _g101284_))
                ((let () (declare (not safe)) (##fx= _g101283_ 3))
                 (apply (lambda (_thunk96665_ _name96666_ _tgroup96667_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96665_
                             _name96666_
                             _tgroup96667_)))
                        _g101284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g101284_))))))
    (define thread-local-ref__%
      (lambda (_key96631_ _default96632_)
        (let ((_tab96634_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab96634_ _key96631_ _default96632_))))
    (define thread-local-ref__0
      (lambda (_key96639_)
        (let ((_default96641_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key96639_ _default96641_))))
    (define thread-local-ref
      (lambda _g101286_
        (let ((_g101285_ (let () (declare (not safe)) (##length _g101286_))))
          (cond ((let () (declare (not safe)) (##fx= _g101285_ 1))
                 (apply (lambda (_key96639_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key96639_)))
                        _g101286_))
                ((let () (declare (not safe)) (##fx= _g101285_ 2))
                 (apply (lambda (_key96643_ _default96644_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key96643_ _default96644_)))
                        _g101286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g101286_))))))
    (define thread-local-get
      (lambda (_key96628_)
        (let () (declare (not safe)) (thread-local-ref _key96628_ '#f))))
    (define thread-local-set!
      (lambda (_key96623_ _value96624_)
        (let ((_tab96626_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96626_ _key96623_ _value96624_))))
    (define thread-local-clear!
      (lambda (_key96619_)
        (let ((_tab96621_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96621_ _key96619_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr96605_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr96605_))
              (let ((_$e96607_ (actor-thread-locals _thr96605_)))
                (if _$e96607_
                    (values _$e96607_)
                    (let ((_tab96610_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr96605_ _tab96610_)
                      _tab96610_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr96605_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e96612_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr96605_ '#f))))
                      (if _$e96612_
                          ((lambda (_tab96615_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab96615_)
                           _$e96612_)
                          (let ((_tab96617_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr96605_
                               _tab96617_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab96617_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc96602_)
        (if (let () (declare (not safe)) (procedure? _proc96602_))
            '#!void
            (raise (let ((__obj101279
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101279
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc96602_ '())))
                     __obj101279)))
        (set! __unhandled-actor-exception-hook _proc96602_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx96590_ _proc96591_)
        (let ((_handler96593_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e96595_)
             (let ((__tmp101287
                    (lambda ()
                      (mutex-unlock! _mx96590_)
                      (_handler96593_ _e96595_))))
               (declare (not safe))
               (with-catch void __tmp101287))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e96595_)))
           (lambda ()
             (mutex-lock! _mx96590_)
             (let ((_result96599_ (_proc96591_)))
               (mutex-unlock! _mx96590_)
               _result96599_))))))
    (define with-dynamic-lock
      (lambda (_mx96585_ _proc96586_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx96585_))
         _proc96586_
         (lambda () (mutex-unlock! _mx96585_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk96566_ _error-port96567_)
        (with-exception-handler
         (let ((_E96569_ (current-exception-handler)))
           (lambda (_exn96571_)
             (continuation-capture
              (lambda (_cont96573_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont96573_
                       _exn96571_
                       _error-port96567_))
                    '#!void)
                (_E96569_ _exn96571_)))))
         _thunk96566_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk96578_)
        (let ((_error-port96580_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk96578_ _error-port96580_))))
    (define with-exception-stack-trace
      (lambda _g101289_
        (let ((_g101288_ (let () (declare (not safe)) (##length _g101289_))))
          (cond ((let () (declare (not safe)) (##fx= _g101288_ 1))
                 (apply (lambda (_thunk96578_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk96578_)))
                        _g101289_))
                ((let () (declare (not safe)) (##fx= _g101288_ 2))
                 (apply (lambda (_thunk96582_ _error-port96583_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk96582_
                             _error-port96583_)))
                        _g101289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g101289_))))))
    (define dump-stack-trace!__%
      (lambda (_cont96547_ _exn96548_ _error-port96549_)
        (let ((_out96551_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out96551_))
          (display '"*** Unhandled exception in " _out96551_)
          (display (current-thread) _out96551_)
          (newline _out96551_)
          (display-exception _exn96548_ _out96551_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn96548_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out96551_)
                (newline _out96551_)
                (display-continuation-backtrace _cont96547_ _out96551_)))
          (let ((__tmp101290 (get-output-string _out96551_)))
            (declare (not safe))
            (##write-string __tmp101290 _error-port96549_)))))
    (define dump-stack-trace!__0
      (lambda (_cont96556_ _exn96557_)
        (let ((_error-port96559_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont96556_ _exn96557_ _error-port96559_))))
    (define dump-stack-trace!
      (lambda _g101292_
        (let ((_g101291_ (let () (declare (not safe)) (##length _g101292_))))
          (cond ((let () (declare (not safe)) (##fx= _g101291_ 2))
                 (apply (lambda (_cont96556_ _exn96557_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont96556_ _exn96557_)))
                        _g101292_))
                ((let () (declare (not safe)) (##fx= _g101291_ 3))
                 (apply (lambda (_cont96561_ _exn96562_ _error-port96563_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont96561_
                             _exn96562_
                             _error-port96563_)))
                        _g101292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g101292_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
