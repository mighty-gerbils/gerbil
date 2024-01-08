(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1704735467)
  (begin
    (define spawn
      (lambda (_f13087_ . _args13088_)
        (if (let () (declare (not safe)) (procedure? _f13087_))
            '#!void
            (raise (let ((__tmp13089
                          (let () (declare (not safe)) (cons _f13087_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp13089))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13087_ _args13088_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13083_ _f13084_ . _args13085_)
        (if (let () (declare (not safe)) (procedure? _f13084_))
            '#!void
            (raise (let ((__tmp13090
                          (let () (declare (not safe)) (cons _f13084_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp13090))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13084_ _args13085_ _name13083_ '#f))))
    (define spawn/group
      (lambda (_name13077_ _f13078_ . _args13079_)
        (if (let () (declare (not safe)) (procedure? _f13078_))
            '#!void
            (raise (let ((__tmp13091
                          (let () (declare (not safe)) (cons _f13078_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp13091))))
        (let ((_tgroup13081_ (make-thread-group _name13077_)))
          (declare (not safe))
          (spawn-actor _f13078_ _args13079_ _name13077_ _tgroup13081_))))
    (define spawn-actor
      (lambda (_f13050_ _args13051_ _name13052_ _tgroup13053_)
        (letrec ((_thread-main13055_
                  (lambda (_thunk13069_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13072_)
                         (let ((__tmp13092
                                (lambda (_cont13074_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13093
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13074_
                                                _exn13072_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13093))
                                      '#!void)
                                  (let ((__tmp13094
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13074_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13094
                                     ##primordial-exception-handler
                                     _exn13072_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13092)))
                       _thunk13069_)))))
          (let* ((_thunk13058_
                  (if (let () (declare (not safe)) (null? _args13051_))
                      _f13050_
                      (lambda () (apply _f13050_ _args13051_))))
                 (_thunk13061_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk13058_))))
                 (_tgroup13066_
                  (let ((_$e13063_ _tgroup13053_))
                    (if _$e13063_
                        _$e13063_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13055_ _thunk13061_))
              _name13052_
              _tgroup13066_))))))
    (define spawn-thread__%
      (lambda (_thunk13028_ _name13029_ _tgroup13030_)
        (thread-start! (make-thread _thunk13028_ _name13029_ _tgroup13030_))))
    (define spawn-thread__0
      (lambda (_thunk13035_)
        (let* ((_name13037_ absent-obj) (_tgroup13039_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13035_ _name13037_ _tgroup13039_))))
    (define spawn-thread__1
      (lambda (_thunk13041_ _name13042_)
        (let ((_tgroup13044_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13041_ _name13042_ _tgroup13044_))))
    (define spawn-thread
      (lambda _g13096_
        (let ((_g13095_ (let () (declare (not safe)) (##length _g13096_))))
          (cond ((let () (declare (not safe)) (##fx= _g13095_ 1))
                 (apply (lambda (_thunk13035_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13035_)))
                        _g13096_))
                ((let () (declare (not safe)) (##fx= _g13095_ 2))
                 (apply (lambda (_thunk13041_ _name13042_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13041_ _name13042_)))
                        _g13096_))
                ((let () (declare (not safe)) (##fx= _g13095_ 3))
                 (apply (lambda (_thunk13046_ _name13047_ _tgroup13048_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13046_
                             _name13047_
                             _tgroup13048_)))
                        _g13096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13096_))))))
    (define thread-local-ref__%
      (lambda (_key13012_ _default13013_)
        (let ((_tab13015_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13015_ _key13012_ _default13013_))))
    (define thread-local-ref__0
      (lambda (_key13020_)
        (let ((_default13022_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13020_ _default13022_))))
    (define thread-local-ref
      (lambda _g13098_
        (let ((_g13097_ (let () (declare (not safe)) (##length _g13098_))))
          (cond ((let () (declare (not safe)) (##fx= _g13097_ 1))
                 (apply (lambda (_key13020_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13020_)))
                        _g13098_))
                ((let () (declare (not safe)) (##fx= _g13097_ 2))
                 (apply (lambda (_key13024_ _default13025_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13024_ _default13025_)))
                        _g13098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13098_))))))
    (define thread-local-get
      (lambda (_key13009_)
        (let () (declare (not safe)) (thread-local-ref _key13009_ '#f))))
    (define thread-local-set!
      (lambda (_key13004_ _value13005_)
        (let ((_tab13007_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13007_ _key13004_ _value13005_))))
    (define thread-local-clear!
      (lambda (_key13000_)
        (let ((_tab13002_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13002_ _key13000_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr12986_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr12986_))
              (let ((_$e12988_ (actor-thread-locals _thr12986_)))
                (if _$e12988_
                    (values _$e12988_)
                    (let ((_tab12991_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr12986_ _tab12991_)
                      _tab12991_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr12986_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e12993_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr12986_ '#f))))
                      (if _$e12993_
                          ((lambda (_tab12996_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab12996_)
                           _$e12993_)
                          (let ((_tab12998_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr12986_
                               _tab12998_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab12998_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc12983_)
        (if (let () (declare (not safe)) (procedure? _proc12983_))
            '#!void
            (raise (let ((__tmp13099
                          (let ()
                            (declare (not safe))
                            (cons _proc12983_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13099))))
        (set! __unhandled-actor-exception-hook _proc12983_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx12971_ _proc12972_)
        (let ((_handler12974_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e12976_)
             (let ((__tmp13100
                    (lambda ()
                      (mutex-unlock! _mx12971_)
                      (_handler12974_ _e12976_))))
               (declare (not safe))
               (with-catch void __tmp13100))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e12976_)))
           (lambda ()
             (mutex-lock! _mx12971_)
             (let ((_result12980_ (_proc12972_)))
               (mutex-unlock! _mx12971_)
               _result12980_))))))
    (define with-dynamic-lock
      (lambda (_mx12966_ _proc12967_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx12966_))
         _proc12967_
         (lambda () (mutex-unlock! _mx12966_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk12947_ _error-port12948_)
        (with-exception-handler
         (let ((_E12950_ (current-exception-handler)))
           (lambda (_exn12952_)
             (continuation-capture
              (lambda (_cont12954_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont12954_
                       _exn12952_
                       _error-port12948_))
                    '#!void)
                (_E12950_ _exn12952_)))))
         _thunk12947_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk12959_)
        (let ((_error-port12961_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk12959_ _error-port12961_))))
    (define with-exception-stack-trace
      (lambda _g13102_
        (let ((_g13101_ (let () (declare (not safe)) (##length _g13102_))))
          (cond ((let () (declare (not safe)) (##fx= _g13101_ 1))
                 (apply (lambda (_thunk12959_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk12959_)))
                        _g13102_))
                ((let () (declare (not safe)) (##fx= _g13101_ 2))
                 (apply (lambda (_thunk12963_ _error-port12964_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk12963_
                             _error-port12964_)))
                        _g13102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g13102_))))))
    (define dump-stack-trace!__%
      (lambda (_cont12928_ _exn12929_ _error-port12930_)
        (let ((_out12932_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out12932_))
          (display '"*** Unhandled exception in " _out12932_)
          (display (current-thread) _out12932_)
          (newline _out12932_)
          (display-exception _exn12929_ _out12932_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn12929_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out12932_)
                (newline _out12932_)
                (display-continuation-backtrace _cont12928_ _out12932_)))
          (let ((__tmp13103 (get-output-string _out12932_)))
            (declare (not safe))
            (##write-string __tmp13103 _error-port12930_)))))
    (define dump-stack-trace!__0
      (lambda (_cont12937_ _exn12938_)
        (let ((_error-port12940_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont12937_ _exn12938_ _error-port12940_))))
    (define dump-stack-trace!
      (lambda _g13105_
        (let ((_g13104_ (let () (declare (not safe)) (##length _g13105_))))
          (cond ((let () (declare (not safe)) (##fx= _g13104_ 2))
                 (apply (lambda (_cont12937_ _exn12938_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont12937_ _exn12938_)))
                        _g13105_))
                ((let () (declare (not safe)) (##fx= _g13104_ 3))
                 (apply (lambda (_cont12942_ _exn12943_ _error-port12944_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont12942_
                             _exn12943_
                             _error-port12944_)))
                        _g13105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g13105_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
