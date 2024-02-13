(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707840754)
  (begin
    (define spawn
      (lambda (_f97968_ . _args97969_)
        (if (let () (declare (not safe)) (procedure? _f97968_))
            '#!void
            (raise (let ((__obj102538
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102538
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f97968_ '())))
                     __obj102538)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97968_ _args97969_ '#!void '#f))))
    (define spawn/name
      (lambda (_name97964_ _f97965_ . _args97966_)
        (if (let () (declare (not safe)) (procedure? _f97965_))
            '#!void
            (raise (let ((__obj102539
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102539
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f97965_ '())))
                     __obj102539)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97965_ _args97966_ _name97964_ '#f))))
    (define spawn/group
      (lambda (_name97958_ _f97959_ . _args97960_)
        (if (let () (declare (not safe)) (procedure? _f97959_))
            '#!void
            (raise (let ((__obj102540
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102540
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f97959_ '())))
                     __obj102540)))
        (let ((_tgroup97962_ (make-thread-group _name97958_)))
          (declare (not safe))
          (spawn-actor _f97959_ _args97960_ _name97958_ _tgroup97962_))))
    (define spawn-actor
      (lambda (_f97931_ _args97932_ _name97933_ _tgroup97934_)
        (letrec ((_thread-main97936_
                  (lambda (_thunk97950_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn97953_)
                         (let ((__tmp102542
                                (lambda (_cont97955_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp102543
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont97955_
                                                _exn97953_))))
                                        (declare (not safe))
                                        (with-catch void __tmp102543))
                                      '#!void)
                                  (let ((__tmp102544
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont97955_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp102544
                                     ##primordial-exception-handler
                                     _exn97953_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp102542)))
                       _thunk97950_)))))
          (let* ((_thunk97939_
                  (if (let () (declare (not safe)) (null? _args97932_))
                      _f97931_
                      (lambda () (apply _f97931_ _args97932_))))
                 (_thunk97942_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk97939_))))
                 (_tgroup97947_
                  (let ((_$e97944_ _tgroup97934_))
                    (if _$e97944_
                        _$e97944_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main97936_ _thunk97942_))
              _name97933_
              _tgroup97947_))))))
    (define spawn-thread__%
      (lambda (_thunk97909_ _name97910_ _tgroup97911_)
        (thread-start! (make-thread _thunk97909_ _name97910_ _tgroup97911_))))
    (define spawn-thread__0
      (lambda (_thunk97916_)
        (let* ((_name97918_ absent-obj) (_tgroup97920_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97916_ _name97918_ _tgroup97920_))))
    (define spawn-thread__1
      (lambda (_thunk97922_ _name97923_)
        (let ((_tgroup97925_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97922_ _name97923_ _tgroup97925_))))
    (define spawn-thread
      (lambda _g102546_
        (let ((_g102545_ (let () (declare (not safe)) (##length _g102546_))))
          (cond ((let () (declare (not safe)) (##fx= _g102545_ 1))
                 (apply (lambda (_thunk97916_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk97916_)))
                        _g102546_))
                ((let () (declare (not safe)) (##fx= _g102545_ 2))
                 (apply (lambda (_thunk97922_ _name97923_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk97922_ _name97923_)))
                        _g102546_))
                ((let () (declare (not safe)) (##fx= _g102545_ 3))
                 (apply (lambda (_thunk97927_ _name97928_ _tgroup97929_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk97927_
                             _name97928_
                             _tgroup97929_)))
                        _g102546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g102546_))))))
    (define thread-local-ref__%
      (lambda (_key97893_ _default97894_)
        (let ((_tab97896_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab97896_ _key97893_ _default97894_))))
    (define thread-local-ref__0
      (lambda (_key97901_)
        (let ((_default97903_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key97901_ _default97903_))))
    (define thread-local-ref
      (lambda _g102548_
        (let ((_g102547_ (let () (declare (not safe)) (##length _g102548_))))
          (cond ((let () (declare (not safe)) (##fx= _g102547_ 1))
                 (apply (lambda (_key97901_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key97901_)))
                        _g102548_))
                ((let () (declare (not safe)) (##fx= _g102547_ 2))
                 (apply (lambda (_key97905_ _default97906_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key97905_ _default97906_)))
                        _g102548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g102548_))))))
    (define thread-local-get
      (lambda (_key97890_)
        (let () (declare (not safe)) (thread-local-ref _key97890_ '#f))))
    (define thread-local-set!
      (lambda (_key97885_ _value97886_)
        (let ((_tab97888_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97888_ _key97885_ _value97886_))))
    (define thread-local-clear!
      (lambda (_key97881_)
        (let ((_tab97883_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97883_ _key97881_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr97867_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr97867_))
              (let ((_$e97869_ (actor-thread-locals _thr97867_)))
                (if _$e97869_
                    (values _$e97869_)
                    (let ((_tab97872_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr97867_ _tab97872_)
                      _tab97872_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr97867_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e97874_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr97867_ '#f))))
                      (if _$e97874_
                          ((lambda (_tab97877_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab97877_)
                           _$e97874_)
                          (let ((_tab97879_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr97867_
                               _tab97879_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab97879_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc97864_)
        (if (let () (declare (not safe)) (procedure? _proc97864_))
            '#!void
            (raise (let ((__obj102541
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102541
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc97864_ '())))
                     __obj102541)))
        (set! __unhandled-actor-exception-hook _proc97864_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx97852_ _proc97853_)
        (let ((_handler97855_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e97857_)
             (let ((__tmp102549
                    (lambda ()
                      (mutex-unlock! _mx97852_)
                      (_handler97855_ _e97857_))))
               (declare (not safe))
               (with-catch void __tmp102549))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e97857_)))
           (lambda ()
             (mutex-lock! _mx97852_)
             (let ((_result97861_ (_proc97853_)))
               (mutex-unlock! _mx97852_)
               _result97861_))))))
    (define with-dynamic-lock
      (lambda (_mx97847_ _proc97848_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx97847_))
         _proc97848_
         (lambda () (mutex-unlock! _mx97847_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk97828_ _error-port97829_)
        (with-exception-handler
         (let ((_E97831_ (current-exception-handler)))
           (lambda (_exn97833_)
             (continuation-capture
              (lambda (_cont97835_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont97835_
                       _exn97833_
                       _error-port97829_))
                    '#!void)
                (_E97831_ _exn97833_)))))
         _thunk97828_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk97840_)
        (let ((_error-port97842_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk97840_ _error-port97842_))))
    (define with-exception-stack-trace
      (lambda _g102551_
        (let ((_g102550_ (let () (declare (not safe)) (##length _g102551_))))
          (cond ((let () (declare (not safe)) (##fx= _g102550_ 1))
                 (apply (lambda (_thunk97840_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk97840_)))
                        _g102551_))
                ((let () (declare (not safe)) (##fx= _g102550_ 2))
                 (apply (lambda (_thunk97844_ _error-port97845_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk97844_
                             _error-port97845_)))
                        _g102551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g102551_))))))
    (define dump-stack-trace!__%
      (lambda (_cont97809_ _exn97810_ _error-port97811_)
        (let ((_out97813_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out97813_))
          (display '"*** Unhandled exception in " _out97813_)
          (display (current-thread) _out97813_)
          (newline _out97813_)
          (display-exception _exn97810_ _out97813_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn97810_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out97813_)
                (newline _out97813_)
                (display-continuation-backtrace _cont97809_ _out97813_)))
          (let ((__tmp102552 (get-output-string _out97813_)))
            (declare (not safe))
            (##write-string __tmp102552 _error-port97811_)))))
    (define dump-stack-trace!__0
      (lambda (_cont97818_ _exn97819_)
        (let ((_error-port97821_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont97818_ _exn97819_ _error-port97821_))))
    (define dump-stack-trace!
      (lambda _g102554_
        (let ((_g102553_ (let () (declare (not safe)) (##length _g102554_))))
          (cond ((let () (declare (not safe)) (##fx= _g102553_ 2))
                 (apply (lambda (_cont97818_ _exn97819_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont97818_ _exn97819_)))
                        _g102554_))
                ((let () (declare (not safe)) (##fx= _g102553_ 3))
                 (apply (lambda (_cont97823_ _exn97824_ _error-port97825_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont97823_
                             _exn97824_
                             _error-port97825_)))
                        _g102554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g102554_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
