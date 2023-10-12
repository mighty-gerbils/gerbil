(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1697117311)
  (begin
    (define spawn
      (lambda (_f13182_ . _args13183_)
        (if (let () (declare (not safe)) (procedure? _f13182_))
            '#!void
            (raise (let ((__tmp13184
                          (let () (declare (not safe)) (cons _f13182_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp13184))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13182_ _args13183_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13178_ _f13179_ . _args13180_)
        (if (let () (declare (not safe)) (procedure? _f13179_))
            '#!void
            (raise (let ((__tmp13185
                          (let () (declare (not safe)) (cons _f13179_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp13185))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13179_ _args13180_ _name13178_ '#f))))
    (define spawn/group
      (lambda (_name13172_ _f13173_ . _args13174_)
        (if (let () (declare (not safe)) (procedure? _f13173_))
            '#!void
            (raise (let ((__tmp13186
                          (let () (declare (not safe)) (cons _f13173_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp13186))))
        (let ((_tgroup13176_ (make-thread-group _name13172_)))
          (declare (not safe))
          (spawn-actor _f13173_ _args13174_ _name13172_ _tgroup13176_))))
    (define spawn-actor
      (lambda (_f13145_ _args13146_ _name13147_ _tgroup13148_)
        (letrec ((_thread-main13150_
                  (lambda (_thunk13164_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13167_)
                         (let ((__tmp13187
                                (lambda (_cont13169_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13188
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13169_
                                                _exn13167_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13188))
                                      '#!void)
                                  (let ((__tmp13189
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13169_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13189
                                     ##primordial-exception-handler
                                     _exn13167_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13187)))
                       _thunk13164_)))))
          (let* ((_thunk13153_
                  (if (let () (declare (not safe)) (null? _args13146_))
                      _f13145_
                      (lambda () (apply _f13145_ _args13146_))))
                 (_thunk13156_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk13153_))))
                 (_tgroup13161_
                  (let ((_$e13158_ _tgroup13148_))
                    (if _$e13158_
                        _$e13158_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13150_ _thunk13156_))
              _name13147_
              _tgroup13161_))))))
    (define spawn-thread__%
      (lambda (_thunk13123_ _name13124_ _tgroup13125_)
        (thread-start! (make-thread _thunk13123_ _name13124_ _tgroup13125_))))
    (define spawn-thread__0
      (lambda (_thunk13130_)
        (let* ((_name13132_ absent-obj) (_tgroup13134_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13130_ _name13132_ _tgroup13134_))))
    (define spawn-thread__1
      (lambda (_thunk13136_ _name13137_)
        (let ((_tgroup13139_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13136_ _name13137_ _tgroup13139_))))
    (define spawn-thread
      (lambda _g13191_
        (let ((_g13190_ (let () (declare (not safe)) (##length _g13191_))))
          (cond ((let () (declare (not safe)) (##fx= _g13190_ 1))
                 (apply (lambda (_thunk13130_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13130_)))
                        _g13191_))
                ((let () (declare (not safe)) (##fx= _g13190_ 2))
                 (apply (lambda (_thunk13136_ _name13137_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13136_ _name13137_)))
                        _g13191_))
                ((let () (declare (not safe)) (##fx= _g13190_ 3))
                 (apply (lambda (_thunk13141_ _name13142_ _tgroup13143_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13141_
                             _name13142_
                             _tgroup13143_)))
                        _g13191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13191_))))))
    (define thread-local-ref__%
      (lambda (_key13107_ _default13108_)
        (let ((_tab13110_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13110_ _key13107_ _default13108_))))
    (define thread-local-ref__0
      (lambda (_key13115_)
        (let ((_default13117_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13115_ _default13117_))))
    (define thread-local-ref
      (lambda _g13193_
        (let ((_g13192_ (let () (declare (not safe)) (##length _g13193_))))
          (cond ((let () (declare (not safe)) (##fx= _g13192_ 1))
                 (apply (lambda (_key13115_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13115_)))
                        _g13193_))
                ((let () (declare (not safe)) (##fx= _g13192_ 2))
                 (apply (lambda (_key13119_ _default13120_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13119_ _default13120_)))
                        _g13193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13193_))))))
    (define thread-local-get
      (lambda (_key13104_)
        (let () (declare (not safe)) (thread-local-ref _key13104_ '#f))))
    (define thread-local-set!
      (lambda (_key13099_ _value13100_)
        (let ((_tab13102_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13102_ _key13099_ _value13100_))))
    (define thread-local-clear!
      (lambda (_key13095_)
        (let ((_tab13097_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13097_ _key13095_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr13081_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr13081_))
              (let ((_$e13083_ (actor-thread-locals _thr13081_)))
                (if _$e13083_
                    (values _$e13083_)
                    (let ((_tab13086_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr13081_ _tab13086_)
                      _tab13086_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr13081_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e13088_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr13081_ '#f))))
                      (if _$e13088_
                          ((lambda (_tab13091_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab13091_)
                           _$e13088_)
                          (let ((_tab13093_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr13081_
                               _tab13093_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab13093_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc13078_)
        (if (let () (declare (not safe)) (procedure? _proc13078_))
            '#!void
            (raise (let ((__tmp13194
                          (let ()
                            (declare (not safe))
                            (cons _proc13078_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13194))))
        (set! __unhandled-actor-exception-hook _proc13078_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx13066_ _proc13067_)
        (let ((_handler13069_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e13071_)
             (let ((__tmp13195
                    (lambda ()
                      (mutex-unlock! _mx13066_)
                      (_handler13069_ _e13071_))))
               (declare (not safe))
               (with-catch void __tmp13195))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e13071_)))
           (lambda ()
             (mutex-lock! _mx13066_)
             (let ((_result13075_ (_proc13067_)))
               (mutex-unlock! _mx13066_)
               _result13075_))))))
    (define with-dynamic-lock
      (lambda (_mx13061_ _proc13062_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx13061_))
         _proc13062_
         (lambda () (mutex-unlock! _mx13061_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk13042_ _error-port13043_)
        (with-exception-handler
         (let ((_E13045_ (current-exception-handler)))
           (lambda (_exn13047_)
             (continuation-capture
              (lambda (_cont13049_)
                (let ()
                  (declare (not safe))
                  (dump-stack-trace!__%
                   _cont13049_
                   _exn13047_
                   _error-port13043_))
                (_E13045_ _exn13047_)))))
         _thunk13042_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk13054_)
        (let ((_error-port13056_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk13054_ _error-port13056_))))
    (define with-exception-stack-trace
      (lambda _g13197_
        (let ((_g13196_ (let () (declare (not safe)) (##length _g13197_))))
          (cond ((let () (declare (not safe)) (##fx= _g13196_ 1))
                 (apply (lambda (_thunk13054_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk13054_)))
                        _g13197_))
                ((let () (declare (not safe)) (##fx= _g13196_ 2))
                 (apply (lambda (_thunk13058_ _error-port13059_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk13058_
                             _error-port13059_)))
                        _g13197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g13197_))))))
    (define dump-stack-trace!__%
      (lambda (_cont13023_ _exn13024_ _error-port13025_)
        (let ((_out13027_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out13027_))
          (display '"*** Unhandled exception in " _out13027_)
          (display (current-thread) _out13027_)
          (newline _out13027_)
          (display-exception _exn13024_ _out13027_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn13024_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out13027_)
                (newline _out13027_)
                (display-continuation-backtrace _cont13023_ _out13027_)))
          (let ((__tmp13198 (get-output-string _out13027_)))
            (declare (not safe))
            (##write-string __tmp13198 _error-port13025_)))))
    (define dump-stack-trace!__0
      (lambda (_cont13032_ _exn13033_)
        (let ((_error-port13035_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont13032_ _exn13033_ _error-port13035_))))
    (define dump-stack-trace!
      (lambda _g13200_
        (let ((_g13199_ (let () (declare (not safe)) (##length _g13200_))))
          (cond ((let () (declare (not safe)) (##fx= _g13199_ 2))
                 (apply (lambda (_cont13032_ _exn13033_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont13032_ _exn13033_)))
                        _g13200_))
                ((let () (declare (not safe)) (##fx= _g13199_ 3))
                 (apply (lambda (_cont13037_ _exn13038_ _error-port13039_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont13037_
                             _exn13038_
                             _error-port13039_)))
                        _g13200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g13200_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
