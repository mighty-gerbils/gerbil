(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1695381360)
  (begin
    (define spawn
      (lambda (_f13076_ . _args13077_)
        (let ()
          (declare (not safe))
          (spawn-actor _f13076_ _args13077_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13072_ _f13073_ . _args13074_)
        (let ()
          (declare (not safe))
          (spawn-actor _f13073_ _args13074_ _name13072_ '#f))))
    (define spawn/group
      (lambda (_name13066_ _f13067_ . _args13068_)
        (let ((_tgroup13070_ (make-thread-group _name13066_)))
          (declare (not safe))
          (spawn-actor _f13067_ _args13068_ _name13066_ _tgroup13070_))))
    (define spawn-actor
      (lambda (_f13044_ _args13045_ _name13046_ _tgroup13047_)
        (letrec ((_thread-main13049_
                  (lambda (_thunk13058_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13061_)
                         (let ((__tmp13078
                                (lambda (_cont13063_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13079
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13063_
                                                _exn13061_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13079))
                                      '#!void)
                                  (let ((__tmp13080
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13063_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13080
                                     ##primordial-exception-handler
                                     _exn13061_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13078)))
                       _thunk13058_)))))
          (if (let () (declare (not safe)) (procedure? _f13044_))
              '#!void
              (raise (let ((__tmp13081
                            (let ()
                              (declare (not safe))
                              (cons _f13044_ _args13045_))))
                       (declare (not safe))
                       (make-class-instance
                        Error::t
                        '"bad argument; expected procedure"
                        'where:
                        'spawn
                        'irritants:
                        __tmp13081))))
          (let ((_thunk13055_
                 (if (let () (declare (not safe)) (null? _args13045_))
                     _f13044_
                     (lambda () (apply _f13044_ _args13045_))))
                (_tgroup13056_
                 (let ((_$e13052_ _tgroup13047_))
                   (if _$e13052_
                       _$e13052_
                       (let () (declare (not safe)) (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13049_ _thunk13055_))
              _name13046_
              _tgroup13056_))))))
    (define spawn-thread__%
      (lambda (_thunk13022_ _name13023_ _tgroup13024_)
        (thread-start! (make-thread _thunk13022_ _name13023_ _tgroup13024_))))
    (define spawn-thread__0
      (lambda (_thunk13029_)
        (let* ((_name13031_ absent-obj) (_tgroup13033_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13029_ _name13031_ _tgroup13033_))))
    (define spawn-thread__1
      (lambda (_thunk13035_ _name13036_)
        (let ((_tgroup13038_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13035_ _name13036_ _tgroup13038_))))
    (define spawn-thread
      (lambda _g13083_
        (let ((_g13082_ (let () (declare (not safe)) (##length _g13083_))))
          (cond ((let () (declare (not safe)) (##fx= _g13082_ 1))
                 (apply (lambda (_thunk13029_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13029_)))
                        _g13083_))
                ((let () (declare (not safe)) (##fx= _g13082_ 2))
                 (apply (lambda (_thunk13035_ _name13036_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13035_ _name13036_)))
                        _g13083_))
                ((let () (declare (not safe)) (##fx= _g13082_ 3))
                 (apply (lambda (_thunk13040_ _name13041_ _tgroup13042_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13040_
                             _name13041_
                             _tgroup13042_)))
                        _g13083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13083_))))))
    (define thread-local-ref__%
      (lambda (_key13006_ _default13007_)
        (let ((_tab13009_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13009_ _key13006_ _default13007_))))
    (define thread-local-ref__0
      (lambda (_key13014_)
        (let ((_default13016_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13014_ _default13016_))))
    (define thread-local-ref
      (lambda _g13085_
        (let ((_g13084_ (let () (declare (not safe)) (##length _g13085_))))
          (cond ((let () (declare (not safe)) (##fx= _g13084_ 1))
                 (apply (lambda (_key13014_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13014_)))
                        _g13085_))
                ((let () (declare (not safe)) (##fx= _g13084_ 2))
                 (apply (lambda (_key13018_ _default13019_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13018_ _default13019_)))
                        _g13085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13085_))))))
    (define thread-local-get
      (lambda (_key13003_)
        (let () (declare (not safe)) (thread-local-ref _key13003_ '#f))))
    (define thread-local-set!
      (lambda (_key12998_ _value12999_)
        (let ((_tab13001_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13001_ _key12998_ _value12999_))))
    (define thread-local-clear!
      (lambda (_key12994_)
        (let ((_tab12996_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab12996_ _key12994_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr12980_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr12980_))
              (let ((_$e12982_ (actor-thread-locals _thr12980_)))
                (if _$e12982_
                    (values _$e12982_)
                    (let ((_tab12985_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr12980_ _tab12985_)
                      _tab12985_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr12980_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e12987_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr12980_ '#f))))
                      (if _$e12987_
                          ((lambda (_tab12990_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab12990_)
                           _$e12987_)
                          (let ((_tab12992_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr12980_
                               _tab12992_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab12992_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc12977_)
        (if (let () (declare (not safe)) (procedure? _proc12977_))
            '#!void
            (raise (let ((__tmp13086
                          (let ()
                            (declare (not safe))
                            (cons _proc12977_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13086))))
        (set! __unhandled-actor-exception-hook _proc12977_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx12965_ _proc12966_)
        (let ((_handler12968_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e12970_)
             (let ((__tmp13087
                    (lambda ()
                      (mutex-unlock! _mx12965_)
                      (_handler12968_ _e12970_))))
               (declare (not safe))
               (with-catch void __tmp13087))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e12970_)))
           (lambda ()
             (mutex-lock! _mx12965_)
             (let ((_result12974_ (_proc12966_)))
               (mutex-unlock! _mx12965_)
               _result12974_))))))
    (define with-dynamic-lock
      (lambda (_mx12960_ _proc12961_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx12960_))
         _proc12961_
         (lambda () (mutex-unlock! _mx12960_)))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
