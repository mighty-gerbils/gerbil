(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1695377590)
  (begin
    (define spawn
      (lambda (_f13064_ . _args13065_)
        (let ()
          (declare (not safe))
          (spawn-actor _f13064_ _args13065_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13060_ _f13061_ . _args13062_)
        (let ()
          (declare (not safe))
          (spawn-actor _f13061_ _args13062_ _name13060_ '#f))))
    (define spawn/group
      (lambda (_name13054_ _f13055_ . _args13056_)
        (let ((_tgroup13058_ (make-thread-group _name13054_)))
          (declare (not safe))
          (spawn-actor _f13055_ _args13056_ _name13054_ _tgroup13058_))))
    (define spawn-actor
      (lambda (_f13032_ _args13033_ _name13034_ _tgroup13035_)
        (letrec ((_thread-main13037_
                  (lambda (_thunk13046_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13049_)
                         (let ((__tmp13066
                                (lambda (_cont13051_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13067
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13051_
                                                _exn13049_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13067))
                                      '#!void)
                                  (let ((__tmp13068
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13051_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13068
                                     ##primordial-exception-handler
                                     _exn13049_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13066)))
                       _thunk13046_)))))
          (if (let () (declare (not safe)) (procedure? _f13032_))
              '#!void
              (raise (let ((__tmp13069
                            (let ()
                              (declare (not safe))
                              (cons _f13032_ _args13033_))))
                       (declare (not safe))
                       (make-class-instance
                        Error::t
                        '"bad argument; expected procedure"
                        'where:
                        'spawn
                        'irritants:
                        __tmp13069))))
          (let ((_thunk13043_
                 (if (let () (declare (not safe)) (null? _args13033_))
                     _f13032_
                     (lambda () (apply _f13032_ _args13033_))))
                (_tgroup13044_
                 (let ((_$e13040_ _tgroup13035_))
                   (if _$e13040_
                       _$e13040_
                       (let () (declare (not safe)) (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13037_ _thunk13043_))
              _name13034_
              _tgroup13044_))))))
    (define spawn-thread__%
      (lambda (_thunk13010_ _name13011_ _tgroup13012_)
        (thread-start! (make-thread _thunk13010_ _name13011_ _tgroup13012_))))
    (define spawn-thread__0
      (lambda (_thunk13017_)
        (let* ((_name13019_ absent-obj) (_tgroup13021_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13017_ _name13019_ _tgroup13021_))))
    (define spawn-thread__1
      (lambda (_thunk13023_ _name13024_)
        (let ((_tgroup13026_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13023_ _name13024_ _tgroup13026_))))
    (define spawn-thread
      (lambda _g13071_
        (let ((_g13070_ (let () (declare (not safe)) (##length _g13071_))))
          (cond ((let () (declare (not safe)) (##fx= _g13070_ 1))
                 (apply (lambda (_thunk13017_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13017_)))
                        _g13071_))
                ((let () (declare (not safe)) (##fx= _g13070_ 2))
                 (apply (lambda (_thunk13023_ _name13024_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13023_ _name13024_)))
                        _g13071_))
                ((let () (declare (not safe)) (##fx= _g13070_ 3))
                 (apply (lambda (_thunk13028_ _name13029_ _tgroup13030_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13028_
                             _name13029_
                             _tgroup13030_)))
                        _g13071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13071_))))))
    (define thread-local-ref__%
      (lambda (_key12994_ _default12995_)
        (let ((_tab12997_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab12997_ _key12994_ _default12995_))))
    (define thread-local-ref__0
      (lambda (_key13002_)
        (let ((_default13004_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13002_ _default13004_))))
    (define thread-local-ref
      (lambda _g13073_
        (let ((_g13072_ (let () (declare (not safe)) (##length _g13073_))))
          (cond ((let () (declare (not safe)) (##fx= _g13072_ 1))
                 (apply (lambda (_key13002_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13002_)))
                        _g13073_))
                ((let () (declare (not safe)) (##fx= _g13072_ 2))
                 (apply (lambda (_key13006_ _default13007_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13006_ _default13007_)))
                        _g13073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13073_))))))
    (define thread-local-get
      (lambda (_key12991_)
        (let () (declare (not safe)) (thread-local-ref _key12991_ '#f))))
    (define thread-local-set!
      (lambda (_key12986_ _value12987_)
        (let ((_tab12989_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab12989_ _key12986_ _value12987_))))
    (define thread-local-clear!
      (lambda (_key12982_)
        (let ((_tab12984_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab12984_ _key12982_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr12968_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr12968_))
              (let ((_$e12970_ (actor-thread-locals _thr12968_)))
                (if _$e12970_
                    (values _$e12970_)
                    (let ((_tab12973_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr12968_ _tab12973_)
                      _tab12973_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr12968_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e12975_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr12968_ '#f))))
                      (if _$e12975_
                          ((lambda (_tab12978_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab12978_)
                           _$e12975_)
                          (let ((_tab12980_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr12968_
                               _tab12980_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab12980_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc12965_)
        (if (let () (declare (not safe)) (procedure? _proc12965_))
            '#!void
            (raise (let ((__tmp13074
                          (let ()
                            (declare (not safe))
                            (cons _proc12965_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13074))))
        (set! __unhandled-actor-exception-hook _proc12965_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx12953_ _proc12954_)
        (let ((_handler12956_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e12958_)
             (let ((__tmp13075
                    (lambda ()
                      (mutex-unlock! _mx12953_)
                      (_handler12956_ _e12958_))))
               (declare (not safe))
               (with-catch void __tmp13075))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e12958_)))
           (lambda ()
             (mutex-lock! _mx12953_)
             (let ((_result12962_ (_proc12954_)))
               (mutex-unlock! _mx12953_)
               _result12962_))))))
    (define with-dynamic-lock
      (lambda (_mx12948_ _proc12949_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx12948_))
         _proc12949_
         (lambda () (mutex-unlock! _mx12948_)))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
