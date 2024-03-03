(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709457369)
  (begin
    (define spawn
      (lambda (_f73706_ . _args73707_)
        (if (let () (declare (not safe)) (procedure? _f73706_))
            '#!void
            (raise (let ((__obj73708
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73708
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73706_ '())))
                     __obj73708)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73706_ _args73707_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73702_ _f73703_ . _args73704_)
        (if (let () (declare (not safe)) (procedure? _f73703_))
            '#!void
            (raise (let ((__obj73709
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73709
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73703_ '())))
                     __obj73709)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73703_ _args73704_ _name73702_ '#f))))
    (define spawn/group
      (lambda (_name73696_ _f73697_ . _args73698_)
        (if (let () (declare (not safe)) (procedure? _f73697_))
            '#!void
            (raise (let ((__obj73710
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73710
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73697_ '())))
                     __obj73710)))
        (let ((_tgroup73700_ (make-thread-group _name73696_)))
          (declare (not safe))
          (spawn-actor _f73697_ _args73698_ _name73696_ _tgroup73700_))))
    (define spawn-actor
      (lambda (_f73669_ _args73670_ _name73671_ _tgroup73672_)
        (letrec ((_thread-main73674_
                  (lambda (_thunk73688_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn73691_)
                         (let ((__tmp73712
                                (lambda (_cont73693_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp73713
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont73693_
                                                _exn73691_))))
                                        (declare (not safe))
                                        (with-catch void __tmp73713))
                                      '#!void)
                                  (let ((__tmp73714
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont73693_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp73714
                                     ##primordial-exception-handler
                                     _exn73691_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp73712)))
                       _thunk73688_)))))
          (let* ((_thunk73677_
                  (if (let () (declare (not safe)) (null? _args73670_))
                      _f73669_
                      (lambda () (apply _f73669_ _args73670_))))
                 (_thunk73680_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73677_))))
                 (_tgroup73685_
                  (let ((_$e73682_ _tgroup73672_))
                    (if _$e73682_
                        _$e73682_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73674_ _thunk73680_))
              _name73671_
              _tgroup73685_))))))
    (define spawn-thread__%
      (lambda (_thunk73647_ _name73648_ _tgroup73649_)
        (thread-start! (make-thread _thunk73647_ _name73648_ _tgroup73649_))))
    (define spawn-thread__0
      (lambda (_thunk73654_)
        (let* ((_name73656_ absent-obj) (_tgroup73658_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73654_ _name73656_ _tgroup73658_))))
    (define spawn-thread__1
      (lambda (_thunk73660_ _name73661_)
        (let ((_tgroup73663_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73660_ _name73661_ _tgroup73663_))))
    (define spawn-thread
      (lambda _g73716_
        (let ((_g73715_ (let () (declare (not safe)) (##length _g73716_))))
          (cond ((let () (declare (not safe)) (##fx= _g73715_ 1))
                 (apply (lambda (_thunk73654_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk73654_)))
                        _g73716_))
                ((let () (declare (not safe)) (##fx= _g73715_ 2))
                 (apply (lambda (_thunk73660_ _name73661_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk73660_ _name73661_)))
                        _g73716_))
                ((let () (declare (not safe)) (##fx= _g73715_ 3))
                 (apply (lambda (_thunk73665_ _name73666_ _tgroup73667_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk73665_
                             _name73666_
                             _tgroup73667_)))
                        _g73716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73716_))))))
    (define thread-local-ref__%
      (lambda (_key73631_ _default73632_)
        (let ((_tab73634_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab73634_ _key73631_ _default73632_))))
    (define thread-local-ref__0
      (lambda (_key73639_)
        (let ((_default73641_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key73639_ _default73641_))))
    (define thread-local-ref
      (lambda _g73718_
        (let ((_g73717_ (let () (declare (not safe)) (##length _g73718_))))
          (cond ((let () (declare (not safe)) (##fx= _g73717_ 1))
                 (apply (lambda (_key73639_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key73639_)))
                        _g73718_))
                ((let () (declare (not safe)) (##fx= _g73717_ 2))
                 (apply (lambda (_key73643_ _default73644_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key73643_ _default73644_)))
                        _g73718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73718_))))))
    (define thread-local-get
      (lambda (_key73628_)
        (let () (declare (not safe)) (thread-local-ref__% _key73628_ '#f))))
    (define thread-local-set!
      (lambda (_key73623_ _value73624_)
        (let ((_tab73626_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab73626_ _key73623_ _value73624_))))
    (define thread-local-clear!
      (lambda (_key73619_)
        (let ((_tab73621_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab73621_ _key73619_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr73605_ (current-thread)))
          (if (actor-thread? _thr73605_)
              (let ((_$e73607_ (actor-thread-locals _thr73605_)))
                (if _$e73607_
                    (values _$e73607_)
                    (let ((_tab73610_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr73605_ _tab73610_)
                      _tab73610_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr73605_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e73612_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr73605_))))
                      (if _$e73612_
                          ((lambda (_tab73615_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab73615_)
                           _$e73612_)
                          (let ((_tab73617_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr73605_
                               _tab73617_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab73617_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc73602_)
        (if (let () (declare (not safe)) (procedure? _proc73602_))
            '#!void
            (raise (let ((__obj73711
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73711
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc73602_ '())))
                     __obj73711)))
        (set! __unhandled-actor-exception-hook _proc73602_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx73590_ _proc73591_)
        (let ((_handler73593_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e73595_)
             (let ((__tmp73719
                    (lambda ()
                      (mutex-unlock! _mx73590_)
                      (_handler73593_ _e73595_))))
               (declare (not safe))
               (with-catch void __tmp73719))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e73595_)))
           (lambda ()
             (mutex-lock! _mx73590_)
             (let ((_result73599_ (_proc73591_)))
               (mutex-unlock! _mx73590_)
               _result73599_))))))
    (define with-dynamic-lock
      (lambda (_mx73585_ _proc73586_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx73585_))
         _proc73586_
         (lambda () (mutex-unlock! _mx73585_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk73566_ _error-port73567_)
        (with-exception-handler
         (let ((_E73569_ (current-exception-handler)))
           (lambda (_exn73571_)
             (continuation-capture
              (lambda (_cont73573_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont73573_
                       _exn73571_
                       _error-port73567_))
                    '#!void)
                (_E73569_ _exn73571_)))))
         _thunk73566_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk73578_)
        (let ((_error-port73580_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk73578_ _error-port73580_))))
    (define with-exception-stack-trace
      (lambda _g73721_
        (let ((_g73720_ (let () (declare (not safe)) (##length _g73721_))))
          (cond ((let () (declare (not safe)) (##fx= _g73720_ 1))
                 (apply (lambda (_thunk73578_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk73578_)))
                        _g73721_))
                ((let () (declare (not safe)) (##fx= _g73720_ 2))
                 (apply (lambda (_thunk73582_ _error-port73583_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk73582_
                             _error-port73583_)))
                        _g73721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73721_))))))
    (define dump-stack-trace!__%
      (lambda (_cont73547_ _exn73548_ _error-port73549_)
        (let ((_out73551_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out73551_))
          (display '"*** Unhandled exception in " _out73551_)
          (display (current-thread) _out73551_)
          (newline _out73551_)
          (display-exception _exn73548_ _out73551_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn73548_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out73551_)
                (newline _out73551_)
                (display-continuation-backtrace _cont73547_ _out73551_)))
          (let ((__tmp73722 (get-output-string _out73551_)))
            (declare (not safe))
            (##write-string __tmp73722 _error-port73549_)))))
    (define dump-stack-trace!__0
      (lambda (_cont73556_ _exn73557_)
        (let ((_error-port73559_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont73556_ _exn73557_ _error-port73559_))))
    (define dump-stack-trace!
      (lambda _g73724_
        (let ((_g73723_ (let () (declare (not safe)) (##length _g73724_))))
          (cond ((let () (declare (not safe)) (##fx= _g73723_ 2))
                 (apply (lambda (_cont73556_ _exn73557_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont73556_ _exn73557_)))
                        _g73724_))
                ((let () (declare (not safe)) (##fx= _g73723_ 3))
                 (apply (lambda (_cont73561_ _exn73562_ _error-port73563_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont73561_
                             _exn73562_
                             _error-port73563_)))
                        _g73724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73724_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
