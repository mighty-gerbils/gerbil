(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1705947033)
  (begin
    (define spawn
      (lambda (_f13085_ . _args13086_)
        (if (let () (declare (not safe)) (procedure? _f13085_))
            '#!void
            (raise (let ((__tmp13087
                          (let () (declare (not safe)) (cons _f13085_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp13087))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13085_ _args13086_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13081_ _f13082_ . _args13083_)
        (if (let () (declare (not safe)) (procedure? _f13082_))
            '#!void
            (raise (let ((__tmp13088
                          (let () (declare (not safe)) (cons _f13082_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp13088))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13082_ _args13083_ _name13081_ '#f))))
    (define spawn/group
      (lambda (_name13075_ _f13076_ . _args13077_)
        (if (let () (declare (not safe)) (procedure? _f13076_))
            '#!void
            (raise (let ((__tmp13089
                          (let () (declare (not safe)) (cons _f13076_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp13089))))
        (let ((_tgroup13079_ (make-thread-group _name13075_)))
          (declare (not safe))
          (spawn-actor _f13076_ _args13077_ _name13075_ _tgroup13079_))))
    (define spawn-actor
      (lambda (_f13048_ _args13049_ _name13050_ _tgroup13051_)
        (letrec ((_thread-main13053_
                  (lambda (_thunk13067_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13070_)
                         (let ((__tmp13090
                                (lambda (_cont13072_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13091
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13072_
                                                _exn13070_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13091))
                                      '#!void)
                                  (let ((__tmp13092
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13072_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13092
                                     ##primordial-exception-handler
                                     _exn13070_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13090)))
                       _thunk13067_)))))
          (let* ((_thunk13056_
                  (if (let () (declare (not safe)) (null? _args13049_))
                      _f13048_
                      (lambda () (apply _f13048_ _args13049_))))
                 (_thunk13059_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk13056_))))
                 (_tgroup13064_
                  (let ((_$e13061_ _tgroup13051_))
                    (if _$e13061_
                        _$e13061_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13053_ _thunk13059_))
              _name13050_
              _tgroup13064_))))))
    (define spawn-thread__%
      (lambda (_thunk13026_ _name13027_ _tgroup13028_)
        (thread-start! (make-thread _thunk13026_ _name13027_ _tgroup13028_))))
    (define spawn-thread__0
      (lambda (_thunk13033_)
        (let* ((_name13035_ absent-obj) (_tgroup13037_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13033_ _name13035_ _tgroup13037_))))
    (define spawn-thread__1
      (lambda (_thunk13039_ _name13040_)
        (let ((_tgroup13042_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13039_ _name13040_ _tgroup13042_))))
    (define spawn-thread
      (lambda _g13094_
        (let ((_g13093_ (let () (declare (not safe)) (##length _g13094_))))
          (cond ((let () (declare (not safe)) (##fx= _g13093_ 1))
                 (apply (lambda (_thunk13033_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13033_)))
                        _g13094_))
                ((let () (declare (not safe)) (##fx= _g13093_ 2))
                 (apply (lambda (_thunk13039_ _name13040_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13039_ _name13040_)))
                        _g13094_))
                ((let () (declare (not safe)) (##fx= _g13093_ 3))
                 (apply (lambda (_thunk13044_ _name13045_ _tgroup13046_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13044_
                             _name13045_
                             _tgroup13046_)))
                        _g13094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13094_))))))
    (define thread-local-ref__%
      (lambda (_key13010_ _default13011_)
        (let ((_tab13013_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13013_ _key13010_ _default13011_))))
    (define thread-local-ref__0
      (lambda (_key13018_)
        (let ((_default13020_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13018_ _default13020_))))
    (define thread-local-ref
      (lambda _g13096_
        (let ((_g13095_ (let () (declare (not safe)) (##length _g13096_))))
          (cond ((let () (declare (not safe)) (##fx= _g13095_ 1))
                 (apply (lambda (_key13018_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13018_)))
                        _g13096_))
                ((let () (declare (not safe)) (##fx= _g13095_ 2))
                 (apply (lambda (_key13022_ _default13023_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13022_ _default13023_)))
                        _g13096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13096_))))))
    (define thread-local-get
      (lambda (_key13007_)
        (let () (declare (not safe)) (thread-local-ref _key13007_ '#f))))
    (define thread-local-set!
      (lambda (_key13002_ _value13003_)
        (let ((_tab13005_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13005_ _key13002_ _value13003_))))
    (define thread-local-clear!
      (lambda (_key12998_)
        (let ((_tab13000_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13000_ _key12998_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr12984_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr12984_))
              (let ((_$e12986_ (actor-thread-locals _thr12984_)))
                (if _$e12986_
                    (values _$e12986_)
                    (let ((_tab12989_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr12984_ _tab12989_)
                      _tab12989_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr12984_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e12991_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr12984_ '#f))))
                      (if _$e12991_
                          ((lambda (_tab12994_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab12994_)
                           _$e12991_)
                          (let ((_tab12996_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr12984_
                               _tab12996_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab12996_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc12981_)
        (if (let () (declare (not safe)) (procedure? _proc12981_))
            '#!void
            (raise (let ((__tmp13097
                          (let ()
                            (declare (not safe))
                            (cons _proc12981_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13097))))
        (set! __unhandled-actor-exception-hook _proc12981_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx12969_ _proc12970_)
        (let ((_handler12972_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e12974_)
             (let ((__tmp13098
                    (lambda ()
                      (mutex-unlock! _mx12969_)
                      (_handler12972_ _e12974_))))
               (declare (not safe))
               (with-catch void __tmp13098))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e12974_)))
           (lambda ()
             (mutex-lock! _mx12969_)
             (let ((_result12978_ (_proc12970_)))
               (mutex-unlock! _mx12969_)
               _result12978_))))))
    (define with-dynamic-lock
      (lambda (_mx12964_ _proc12965_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx12964_))
         _proc12965_
         (lambda () (mutex-unlock! _mx12964_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk12945_ _error-port12946_)
        (with-exception-handler
         (let ((_E12948_ (current-exception-handler)))
           (lambda (_exn12950_)
             (continuation-capture
              (lambda (_cont12952_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont12952_
                       _exn12950_
                       _error-port12946_))
                    '#!void)
                (_E12948_ _exn12950_)))))
         _thunk12945_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk12957_)
        (let ((_error-port12959_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk12957_ _error-port12959_))))
    (define with-exception-stack-trace
      (lambda _g13100_
        (let ((_g13099_ (let () (declare (not safe)) (##length _g13100_))))
          (cond ((let () (declare (not safe)) (##fx= _g13099_ 1))
                 (apply (lambda (_thunk12957_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk12957_)))
                        _g13100_))
                ((let () (declare (not safe)) (##fx= _g13099_ 2))
                 (apply (lambda (_thunk12961_ _error-port12962_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk12961_
                             _error-port12962_)))
                        _g13100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g13100_))))))
    (define dump-stack-trace!__%
      (lambda (_cont12926_ _exn12927_ _error-port12928_)
        (let ((_out12930_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out12930_))
          (display '"*** Unhandled exception in " _out12930_)
          (display (current-thread) _out12930_)
          (newline _out12930_)
          (display-exception _exn12927_ _out12930_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn12927_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out12930_)
                (newline _out12930_)
                (display-continuation-backtrace _cont12926_ _out12930_)))
          (let ((__tmp13101 (get-output-string _out12930_)))
            (declare (not safe))
            (##write-string __tmp13101 _error-port12928_)))))
    (define dump-stack-trace!__0
      (lambda (_cont12935_ _exn12936_)
        (let ((_error-port12938_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont12935_ _exn12936_ _error-port12938_))))
    (define dump-stack-trace!
      (lambda _g13103_
        (let ((_g13102_ (let () (declare (not safe)) (##length _g13103_))))
          (cond ((let () (declare (not safe)) (##fx= _g13102_ 2))
                 (apply (lambda (_cont12935_ _exn12936_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont12935_ _exn12936_)))
                        _g13103_))
                ((let () (declare (not safe)) (##fx= _g13102_ 3))
                 (apply (lambda (_cont12940_ _exn12941_ _error-port12942_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont12940_
                             _exn12941_
                             _error-port12942_)))
                        _g13103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g13103_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
