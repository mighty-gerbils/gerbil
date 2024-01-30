(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1706581965)
  (begin
    (define spawn
      (lambda (_f13083_ . _args13084_)
        (if (let () (declare (not safe)) (procedure? _f13083_))
            '#!void
            (raise (let ((__tmp13085
                          (let () (declare (not safe)) (cons _f13083_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp13085))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13083_ _args13084_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13079_ _f13080_ . _args13081_)
        (if (let () (declare (not safe)) (procedure? _f13080_))
            '#!void
            (raise (let ((__tmp13086
                          (let () (declare (not safe)) (cons _f13080_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp13086))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13080_ _args13081_ _name13079_ '#f))))
    (define spawn/group
      (lambda (_name13073_ _f13074_ . _args13075_)
        (if (let () (declare (not safe)) (procedure? _f13074_))
            '#!void
            (raise (let ((__tmp13087
                          (let () (declare (not safe)) (cons _f13074_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp13087))))
        (let ((_tgroup13077_ (make-thread-group _name13073_)))
          (declare (not safe))
          (spawn-actor _f13074_ _args13075_ _name13073_ _tgroup13077_))))
    (define spawn-actor
      (lambda (_f13046_ _args13047_ _name13048_ _tgroup13049_)
        (letrec ((_thread-main13051_
                  (lambda (_thunk13065_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13068_)
                         (let ((__tmp13088
                                (lambda (_cont13070_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13089
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13070_
                                                _exn13068_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13089))
                                      '#!void)
                                  (let ((__tmp13090
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13070_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13090
                                     ##primordial-exception-handler
                                     _exn13068_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13088)))
                       _thunk13065_)))))
          (let* ((_thunk13054_
                  (if (let () (declare (not safe)) (null? _args13047_))
                      _f13046_
                      (lambda () (apply _f13046_ _args13047_))))
                 (_thunk13057_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk13054_))))
                 (_tgroup13062_
                  (let ((_$e13059_ _tgroup13049_))
                    (if _$e13059_
                        _$e13059_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13051_ _thunk13057_))
              _name13048_
              _tgroup13062_))))))
    (define spawn-thread__%
      (lambda (_thunk13024_ _name13025_ _tgroup13026_)
        (thread-start! (make-thread _thunk13024_ _name13025_ _tgroup13026_))))
    (define spawn-thread__0
      (lambda (_thunk13031_)
        (let* ((_name13033_ absent-obj) (_tgroup13035_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13031_ _name13033_ _tgroup13035_))))
    (define spawn-thread__1
      (lambda (_thunk13037_ _name13038_)
        (let ((_tgroup13040_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13037_ _name13038_ _tgroup13040_))))
    (define spawn-thread
      (lambda _g13092_
        (let ((_g13091_ (let () (declare (not safe)) (##length _g13092_))))
          (cond ((let () (declare (not safe)) (##fx= _g13091_ 1))
                 (apply (lambda (_thunk13031_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13031_)))
                        _g13092_))
                ((let () (declare (not safe)) (##fx= _g13091_ 2))
                 (apply (lambda (_thunk13037_ _name13038_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13037_ _name13038_)))
                        _g13092_))
                ((let () (declare (not safe)) (##fx= _g13091_ 3))
                 (apply (lambda (_thunk13042_ _name13043_ _tgroup13044_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13042_
                             _name13043_
                             _tgroup13044_)))
                        _g13092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13092_))))))
    (define thread-local-ref__%
      (lambda (_key13008_ _default13009_)
        (let ((_tab13011_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13011_ _key13008_ _default13009_))))
    (define thread-local-ref__0
      (lambda (_key13016_)
        (let ((_default13018_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13016_ _default13018_))))
    (define thread-local-ref
      (lambda _g13094_
        (let ((_g13093_ (let () (declare (not safe)) (##length _g13094_))))
          (cond ((let () (declare (not safe)) (##fx= _g13093_ 1))
                 (apply (lambda (_key13016_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13016_)))
                        _g13094_))
                ((let () (declare (not safe)) (##fx= _g13093_ 2))
                 (apply (lambda (_key13020_ _default13021_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13020_ _default13021_)))
                        _g13094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13094_))))))
    (define thread-local-get
      (lambda (_key13005_)
        (let () (declare (not safe)) (thread-local-ref _key13005_ '#f))))
    (define thread-local-set!
      (lambda (_key13000_ _value13001_)
        (let ((_tab13003_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13003_ _key13000_ _value13001_))))
    (define thread-local-clear!
      (lambda (_key12996_)
        (let ((_tab12998_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab12998_ _key12996_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr12982_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr12982_))
              (let ((_$e12984_ (actor-thread-locals _thr12982_)))
                (if _$e12984_
                    (values _$e12984_)
                    (let ((_tab12987_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr12982_ _tab12987_)
                      _tab12987_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr12982_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e12989_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr12982_ '#f))))
                      (if _$e12989_
                          ((lambda (_tab12992_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab12992_)
                           _$e12989_)
                          (let ((_tab12994_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr12982_
                               _tab12994_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab12994_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc12979_)
        (if (let () (declare (not safe)) (procedure? _proc12979_))
            '#!void
            (raise (let ((__tmp13095
                          (let ()
                            (declare (not safe))
                            (cons _proc12979_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13095))))
        (set! __unhandled-actor-exception-hook _proc12979_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx12967_ _proc12968_)
        (let ((_handler12970_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e12972_)
             (let ((__tmp13096
                    (lambda ()
                      (mutex-unlock! _mx12967_)
                      (_handler12970_ _e12972_))))
               (declare (not safe))
               (with-catch void __tmp13096))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e12972_)))
           (lambda ()
             (mutex-lock! _mx12967_)
             (let ((_result12976_ (_proc12968_)))
               (mutex-unlock! _mx12967_)
               _result12976_))))))
    (define with-dynamic-lock
      (lambda (_mx12962_ _proc12963_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx12962_))
         _proc12963_
         (lambda () (mutex-unlock! _mx12962_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk12943_ _error-port12944_)
        (with-exception-handler
         (let ((_E12946_ (current-exception-handler)))
           (lambda (_exn12948_)
             (continuation-capture
              (lambda (_cont12950_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont12950_
                       _exn12948_
                       _error-port12944_))
                    '#!void)
                (_E12946_ _exn12948_)))))
         _thunk12943_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk12955_)
        (let ((_error-port12957_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk12955_ _error-port12957_))))
    (define with-exception-stack-trace
      (lambda _g13098_
        (let ((_g13097_ (let () (declare (not safe)) (##length _g13098_))))
          (cond ((let () (declare (not safe)) (##fx= _g13097_ 1))
                 (apply (lambda (_thunk12955_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk12955_)))
                        _g13098_))
                ((let () (declare (not safe)) (##fx= _g13097_ 2))
                 (apply (lambda (_thunk12959_ _error-port12960_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk12959_
                             _error-port12960_)))
                        _g13098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g13098_))))))
    (define dump-stack-trace!__%
      (lambda (_cont12924_ _exn12925_ _error-port12926_)
        (let ((_out12928_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out12928_))
          (display '"*** Unhandled exception in " _out12928_)
          (display (current-thread) _out12928_)
          (newline _out12928_)
          (display-exception _exn12925_ _out12928_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn12925_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out12928_)
                (newline _out12928_)
                (display-continuation-backtrace _cont12924_ _out12928_)))
          (let ((__tmp13099 (get-output-string _out12928_)))
            (declare (not safe))
            (##write-string __tmp13099 _error-port12926_)))))
    (define dump-stack-trace!__0
      (lambda (_cont12933_ _exn12934_)
        (let ((_error-port12936_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont12933_ _exn12934_ _error-port12936_))))
    (define dump-stack-trace!
      (lambda _g13101_
        (let ((_g13100_ (let () (declare (not safe)) (##length _g13101_))))
          (cond ((let () (declare (not safe)) (##fx= _g13100_ 2))
                 (apply (lambda (_cont12933_ _exn12934_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont12933_ _exn12934_)))
                        _g13101_))
                ((let () (declare (not safe)) (##fx= _g13100_ 3))
                 (apply (lambda (_cont12938_ _exn12939_ _error-port12940_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont12938_
                             _exn12939_
                             _error-port12940_)))
                        _g13101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g13101_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
