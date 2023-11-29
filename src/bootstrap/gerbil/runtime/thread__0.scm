(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1701931848)
  (begin
    (define spawn
      (lambda (_f13131_ . _args13132_)
        (if (let () (declare (not safe)) (procedure? _f13131_))
            '#!void
            (raise (let ((__tmp13133
                          (let () (declare (not safe)) (cons _f13131_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp13133))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13131_ _args13132_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13127_ _f13128_ . _args13129_)
        (if (let () (declare (not safe)) (procedure? _f13128_))
            '#!void
            (raise (let ((__tmp13134
                          (let () (declare (not safe)) (cons _f13128_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp13134))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13128_ _args13129_ _name13127_ '#f))))
    (define spawn/group
      (lambda (_name13121_ _f13122_ . _args13123_)
        (if (let () (declare (not safe)) (procedure? _f13122_))
            '#!void
            (raise (let ((__tmp13135
                          (let () (declare (not safe)) (cons _f13122_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp13135))))
        (let ((_tgroup13125_ (make-thread-group _name13121_)))
          (declare (not safe))
          (spawn-actor _f13122_ _args13123_ _name13121_ _tgroup13125_))))
    (define spawn-actor
      (lambda (_f13094_ _args13095_ _name13096_ _tgroup13097_)
        (letrec ((_thread-main13099_
                  (lambda (_thunk13113_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13116_)
                         (let ((__tmp13136
                                (lambda (_cont13118_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13137
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13118_
                                                _exn13116_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13137))
                                      '#!void)
                                  (let ((__tmp13138
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13118_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13138
                                     ##primordial-exception-handler
                                     _exn13116_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13136)))
                       _thunk13113_)))))
          (let* ((_thunk13102_
                  (if (let () (declare (not safe)) (null? _args13095_))
                      _f13094_
                      (lambda () (apply _f13094_ _args13095_))))
                 (_thunk13105_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk13102_))))
                 (_tgroup13110_
                  (let ((_$e13107_ _tgroup13097_))
                    (if _$e13107_
                        _$e13107_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13099_ _thunk13105_))
              _name13096_
              _tgroup13110_))))))
    (define spawn-thread__%
      (lambda (_thunk13072_ _name13073_ _tgroup13074_)
        (thread-start! (make-thread _thunk13072_ _name13073_ _tgroup13074_))))
    (define spawn-thread__0
      (lambda (_thunk13079_)
        (let* ((_name13081_ absent-obj) (_tgroup13083_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13079_ _name13081_ _tgroup13083_))))
    (define spawn-thread__1
      (lambda (_thunk13085_ _name13086_)
        (let ((_tgroup13088_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13085_ _name13086_ _tgroup13088_))))
    (define spawn-thread
      (lambda _g13140_
        (let ((_g13139_ (let () (declare (not safe)) (##length _g13140_))))
          (cond ((let () (declare (not safe)) (##fx= _g13139_ 1))
                 (apply (lambda (_thunk13079_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13079_)))
                        _g13140_))
                ((let () (declare (not safe)) (##fx= _g13139_ 2))
                 (apply (lambda (_thunk13085_ _name13086_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13085_ _name13086_)))
                        _g13140_))
                ((let () (declare (not safe)) (##fx= _g13139_ 3))
                 (apply (lambda (_thunk13090_ _name13091_ _tgroup13092_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13090_
                             _name13091_
                             _tgroup13092_)))
                        _g13140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13140_))))))
    (define thread-local-ref__%
      (lambda (_key13056_ _default13057_)
        (let ((_tab13059_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13059_ _key13056_ _default13057_))))
    (define thread-local-ref__0
      (lambda (_key13064_)
        (let ((_default13066_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13064_ _default13066_))))
    (define thread-local-ref
      (lambda _g13142_
        (let ((_g13141_ (let () (declare (not safe)) (##length _g13142_))))
          (cond ((let () (declare (not safe)) (##fx= _g13141_ 1))
                 (apply (lambda (_key13064_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13064_)))
                        _g13142_))
                ((let () (declare (not safe)) (##fx= _g13141_ 2))
                 (apply (lambda (_key13068_ _default13069_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13068_ _default13069_)))
                        _g13142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13142_))))))
    (define thread-local-get
      (lambda (_key13053_)
        (let () (declare (not safe)) (thread-local-ref _key13053_ '#f))))
    (define thread-local-set!
      (lambda (_key13048_ _value13049_)
        (let ((_tab13051_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13051_ _key13048_ _value13049_))))
    (define thread-local-clear!
      (lambda (_key13044_)
        (let ((_tab13046_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13046_ _key13044_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr13030_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr13030_))
              (let ((_$e13032_ (actor-thread-locals _thr13030_)))
                (if _$e13032_
                    (values _$e13032_)
                    (let ((_tab13035_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr13030_ _tab13035_)
                      _tab13035_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr13030_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e13037_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr13030_ '#f))))
                      (if _$e13037_
                          ((lambda (_tab13040_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab13040_)
                           _$e13037_)
                          (let ((_tab13042_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr13030_
                               _tab13042_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab13042_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc13027_)
        (if (let () (declare (not safe)) (procedure? _proc13027_))
            '#!void
            (raise (let ((__tmp13143
                          (let ()
                            (declare (not safe))
                            (cons _proc13027_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13143))))
        (set! __unhandled-actor-exception-hook _proc13027_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx13015_ _proc13016_)
        (let ((_handler13018_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e13020_)
             (let ((__tmp13144
                    (lambda ()
                      (mutex-unlock! _mx13015_)
                      (_handler13018_ _e13020_))))
               (declare (not safe))
               (with-catch void __tmp13144))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e13020_)))
           (lambda ()
             (mutex-lock! _mx13015_)
             (let ((_result13024_ (_proc13016_)))
               (mutex-unlock! _mx13015_)
               _result13024_))))))
    (define with-dynamic-lock
      (lambda (_mx13010_ _proc13011_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx13010_))
         _proc13011_
         (lambda () (mutex-unlock! _mx13010_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk12991_ _error-port12992_)
        (with-exception-handler
         (let ((_E12994_ (current-exception-handler)))
           (lambda (_exn12996_)
             (continuation-capture
              (lambda (_cont12998_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont12998_
                       _exn12996_
                       _error-port12992_))
                    '#!void)
                (_E12994_ _exn12996_)))))
         _thunk12991_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk13003_)
        (let ((_error-port13005_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk13003_ _error-port13005_))))
    (define with-exception-stack-trace
      (lambda _g13146_
        (let ((_g13145_ (let () (declare (not safe)) (##length _g13146_))))
          (cond ((let () (declare (not safe)) (##fx= _g13145_ 1))
                 (apply (lambda (_thunk13003_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk13003_)))
                        _g13146_))
                ((let () (declare (not safe)) (##fx= _g13145_ 2))
                 (apply (lambda (_thunk13007_ _error-port13008_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk13007_
                             _error-port13008_)))
                        _g13146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g13146_))))))
    (define dump-stack-trace!__%
      (lambda (_cont12972_ _exn12973_ _error-port12974_)
        (let ((_out12976_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out12976_))
          (display '"*** Unhandled exception in " _out12976_)
          (display (current-thread) _out12976_)
          (newline _out12976_)
          (display-exception _exn12973_ _out12976_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn12973_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out12976_)
                (newline _out12976_)
                (display-continuation-backtrace _cont12972_ _out12976_)))
          (let ((__tmp13147 (get-output-string _out12976_)))
            (declare (not safe))
            (##write-string __tmp13147 _error-port12974_)))))
    (define dump-stack-trace!__0
      (lambda (_cont12981_ _exn12982_)
        (let ((_error-port12984_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont12981_ _exn12982_ _error-port12984_))))
    (define dump-stack-trace!
      (lambda _g13149_
        (let ((_g13148_ (let () (declare (not safe)) (##length _g13149_))))
          (cond ((let () (declare (not safe)) (##fx= _g13148_ 2))
                 (apply (lambda (_cont12981_ _exn12982_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont12981_ _exn12982_)))
                        _g13149_))
                ((let () (declare (not safe)) (##fx= _g13148_ 3))
                 (apply (lambda (_cont12986_ _exn12987_ _error-port12988_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont12986_
                             _exn12987_
                             _error-port12988_)))
                        _g13149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g13149_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
