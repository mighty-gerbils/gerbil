(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707830009)
  (begin
    (define spawn
      (lambda (_f97215_ . _args97216_)
        (if (let () (declare (not safe)) (procedure? _f97215_))
            '#!void
            (raise (let ((__obj101785
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101785
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f97215_ '())))
                     __obj101785)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97215_ _args97216_ '#!void '#f))))
    (define spawn/name
      (lambda (_name97211_ _f97212_ . _args97213_)
        (if (let () (declare (not safe)) (procedure? _f97212_))
            '#!void
            (raise (let ((__obj101786
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101786
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f97212_ '())))
                     __obj101786)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97212_ _args97213_ _name97211_ '#f))))
    (define spawn/group
      (lambda (_name97205_ _f97206_ . _args97207_)
        (if (let () (declare (not safe)) (procedure? _f97206_))
            '#!void
            (raise (let ((__obj101787
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101787
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f97206_ '())))
                     __obj101787)))
        (let ((_tgroup97209_ (make-thread-group _name97205_)))
          (declare (not safe))
          (spawn-actor _f97206_ _args97207_ _name97205_ _tgroup97209_))))
    (define spawn-actor
      (lambda (_f97178_ _args97179_ _name97180_ _tgroup97181_)
        (letrec ((_thread-main97183_
                  (lambda (_thunk97197_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn97200_)
                         (let ((__tmp101789
                                (lambda (_cont97202_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp101790
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont97202_
                                                _exn97200_))))
                                        (declare (not safe))
                                        (with-catch void __tmp101790))
                                      '#!void)
                                  (let ((__tmp101791
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont97202_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp101791
                                     ##primordial-exception-handler
                                     _exn97200_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp101789)))
                       _thunk97197_)))))
          (let* ((_thunk97186_
                  (if (let () (declare (not safe)) (null? _args97179_))
                      _f97178_
                      (lambda () (apply _f97178_ _args97179_))))
                 (_thunk97189_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk97186_))))
                 (_tgroup97194_
                  (let ((_$e97191_ _tgroup97181_))
                    (if _$e97191_
                        _$e97191_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main97183_ _thunk97189_))
              _name97180_
              _tgroup97194_))))))
    (define spawn-thread__%
      (lambda (_thunk97156_ _name97157_ _tgroup97158_)
        (thread-start! (make-thread _thunk97156_ _name97157_ _tgroup97158_))))
    (define spawn-thread__0
      (lambda (_thunk97163_)
        (let* ((_name97165_ absent-obj) (_tgroup97167_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97163_ _name97165_ _tgroup97167_))))
    (define spawn-thread__1
      (lambda (_thunk97169_ _name97170_)
        (let ((_tgroup97172_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97169_ _name97170_ _tgroup97172_))))
    (define spawn-thread
      (lambda _g101793_
        (let ((_g101792_ (let () (declare (not safe)) (##length _g101793_))))
          (cond ((let () (declare (not safe)) (##fx= _g101792_ 1))
                 (apply (lambda (_thunk97163_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk97163_)))
                        _g101793_))
                ((let () (declare (not safe)) (##fx= _g101792_ 2))
                 (apply (lambda (_thunk97169_ _name97170_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk97169_ _name97170_)))
                        _g101793_))
                ((let () (declare (not safe)) (##fx= _g101792_ 3))
                 (apply (lambda (_thunk97174_ _name97175_ _tgroup97176_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk97174_
                             _name97175_
                             _tgroup97176_)))
                        _g101793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g101793_))))))
    (define thread-local-ref__%
      (lambda (_key97140_ _default97141_)
        (let ((_tab97143_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab97143_ _key97140_ _default97141_))))
    (define thread-local-ref__0
      (lambda (_key97148_)
        (let ((_default97150_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key97148_ _default97150_))))
    (define thread-local-ref
      (lambda _g101795_
        (let ((_g101794_ (let () (declare (not safe)) (##length _g101795_))))
          (cond ((let () (declare (not safe)) (##fx= _g101794_ 1))
                 (apply (lambda (_key97148_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key97148_)))
                        _g101795_))
                ((let () (declare (not safe)) (##fx= _g101794_ 2))
                 (apply (lambda (_key97152_ _default97153_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key97152_ _default97153_)))
                        _g101795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g101795_))))))
    (define thread-local-get
      (lambda (_key97137_)
        (let () (declare (not safe)) (thread-local-ref _key97137_ '#f))))
    (define thread-local-set!
      (lambda (_key97132_ _value97133_)
        (let ((_tab97135_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97135_ _key97132_ _value97133_))))
    (define thread-local-clear!
      (lambda (_key97128_)
        (let ((_tab97130_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97130_ _key97128_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr97114_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr97114_))
              (let ((_$e97116_ (actor-thread-locals _thr97114_)))
                (if _$e97116_
                    (values _$e97116_)
                    (let ((_tab97119_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr97114_ _tab97119_)
                      _tab97119_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr97114_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e97121_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr97114_ '#f))))
                      (if _$e97121_
                          ((lambda (_tab97124_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab97124_)
                           _$e97121_)
                          (let ((_tab97126_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr97114_
                               _tab97126_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab97126_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc97111_)
        (if (let () (declare (not safe)) (procedure? _proc97111_))
            '#!void
            (raise (let ((__obj101788
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101788
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc97111_ '())))
                     __obj101788)))
        (set! __unhandled-actor-exception-hook _proc97111_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx97099_ _proc97100_)
        (let ((_handler97102_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e97104_)
             (let ((__tmp101796
                    (lambda ()
                      (mutex-unlock! _mx97099_)
                      (_handler97102_ _e97104_))))
               (declare (not safe))
               (with-catch void __tmp101796))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e97104_)))
           (lambda ()
             (mutex-lock! _mx97099_)
             (let ((_result97108_ (_proc97100_)))
               (mutex-unlock! _mx97099_)
               _result97108_))))))
    (define with-dynamic-lock
      (lambda (_mx97094_ _proc97095_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx97094_))
         _proc97095_
         (lambda () (mutex-unlock! _mx97094_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk97075_ _error-port97076_)
        (with-exception-handler
         (let ((_E97078_ (current-exception-handler)))
           (lambda (_exn97080_)
             (continuation-capture
              (lambda (_cont97082_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont97082_
                       _exn97080_
                       _error-port97076_))
                    '#!void)
                (_E97078_ _exn97080_)))))
         _thunk97075_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk97087_)
        (let ((_error-port97089_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk97087_ _error-port97089_))))
    (define with-exception-stack-trace
      (lambda _g101798_
        (let ((_g101797_ (let () (declare (not safe)) (##length _g101798_))))
          (cond ((let () (declare (not safe)) (##fx= _g101797_ 1))
                 (apply (lambda (_thunk97087_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk97087_)))
                        _g101798_))
                ((let () (declare (not safe)) (##fx= _g101797_ 2))
                 (apply (lambda (_thunk97091_ _error-port97092_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk97091_
                             _error-port97092_)))
                        _g101798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g101798_))))))
    (define dump-stack-trace!__%
      (lambda (_cont97056_ _exn97057_ _error-port97058_)
        (let ((_out97060_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out97060_))
          (display '"*** Unhandled exception in " _out97060_)
          (display (current-thread) _out97060_)
          (newline _out97060_)
          (display-exception _exn97057_ _out97060_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn97057_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out97060_)
                (newline _out97060_)
                (display-continuation-backtrace _cont97056_ _out97060_)))
          (let ((__tmp101799 (get-output-string _out97060_)))
            (declare (not safe))
            (##write-string __tmp101799 _error-port97058_)))))
    (define dump-stack-trace!__0
      (lambda (_cont97065_ _exn97066_)
        (let ((_error-port97068_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont97065_ _exn97066_ _error-port97068_))))
    (define dump-stack-trace!
      (lambda _g101801_
        (let ((_g101800_ (let () (declare (not safe)) (##length _g101801_))))
          (cond ((let () (declare (not safe)) (##fx= _g101800_ 2))
                 (apply (lambda (_cont97065_ _exn97066_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont97065_ _exn97066_)))
                        _g101801_))
                ((let () (declare (not safe)) (##fx= _g101800_ 3))
                 (apply (lambda (_cont97070_ _exn97071_ _error-port97072_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont97070_
                             _exn97071_
                             _error-port97072_)))
                        _g101801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g101801_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
