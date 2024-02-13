(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707846528)
  (begin
    (define spawn
      (lambda (_f97866_ . _args97867_)
        (if (let () (declare (not safe)) (procedure? _f97866_))
            '#!void
            (raise (let ((__obj102436
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102436
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f97866_ '())))
                     __obj102436)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97866_ _args97867_ '#!void '#f))))
    (define spawn/name
      (lambda (_name97862_ _f97863_ . _args97864_)
        (if (let () (declare (not safe)) (procedure? _f97863_))
            '#!void
            (raise (let ((__obj102437
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102437
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f97863_ '())))
                     __obj102437)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97863_ _args97864_ _name97862_ '#f))))
    (define spawn/group
      (lambda (_name97856_ _f97857_ . _args97858_)
        (if (let () (declare (not safe)) (procedure? _f97857_))
            '#!void
            (raise (let ((__obj102438
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102438
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f97857_ '())))
                     __obj102438)))
        (let ((_tgroup97860_ (make-thread-group _name97856_)))
          (declare (not safe))
          (spawn-actor _f97857_ _args97858_ _name97856_ _tgroup97860_))))
    (define spawn-actor
      (lambda (_f97829_ _args97830_ _name97831_ _tgroup97832_)
        (letrec ((_thread-main97834_
                  (lambda (_thunk97848_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn97851_)
                         (let ((__tmp102440
                                (lambda (_cont97853_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp102441
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont97853_
                                                _exn97851_))))
                                        (declare (not safe))
                                        (with-catch void __tmp102441))
                                      '#!void)
                                  (let ((__tmp102442
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont97853_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp102442
                                     ##primordial-exception-handler
                                     _exn97851_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp102440)))
                       _thunk97848_)))))
          (let* ((_thunk97837_
                  (if (let () (declare (not safe)) (null? _args97830_))
                      _f97829_
                      (lambda () (apply _f97829_ _args97830_))))
                 (_thunk97840_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk97837_))))
                 (_tgroup97845_
                  (let ((_$e97842_ _tgroup97832_))
                    (if _$e97842_
                        _$e97842_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main97834_ _thunk97840_))
              _name97831_
              _tgroup97845_))))))
    (define spawn-thread__%
      (lambda (_thunk97807_ _name97808_ _tgroup97809_)
        (thread-start! (make-thread _thunk97807_ _name97808_ _tgroup97809_))))
    (define spawn-thread__0
      (lambda (_thunk97814_)
        (let* ((_name97816_ absent-obj) (_tgroup97818_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97814_ _name97816_ _tgroup97818_))))
    (define spawn-thread__1
      (lambda (_thunk97820_ _name97821_)
        (let ((_tgroup97823_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97820_ _name97821_ _tgroup97823_))))
    (define spawn-thread
      (lambda _g102444_
        (let ((_g102443_ (let () (declare (not safe)) (##length _g102444_))))
          (cond ((let () (declare (not safe)) (##fx= _g102443_ 1))
                 (apply (lambda (_thunk97814_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk97814_)))
                        _g102444_))
                ((let () (declare (not safe)) (##fx= _g102443_ 2))
                 (apply (lambda (_thunk97820_ _name97821_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk97820_ _name97821_)))
                        _g102444_))
                ((let () (declare (not safe)) (##fx= _g102443_ 3))
                 (apply (lambda (_thunk97825_ _name97826_ _tgroup97827_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk97825_
                             _name97826_
                             _tgroup97827_)))
                        _g102444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g102444_))))))
    (define thread-local-ref__%
      (lambda (_key97791_ _default97792_)
        (let ((_tab97794_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab97794_ _key97791_ _default97792_))))
    (define thread-local-ref__0
      (lambda (_key97799_)
        (let ((_default97801_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key97799_ _default97801_))))
    (define thread-local-ref
      (lambda _g102446_
        (let ((_g102445_ (let () (declare (not safe)) (##length _g102446_))))
          (cond ((let () (declare (not safe)) (##fx= _g102445_ 1))
                 (apply (lambda (_key97799_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key97799_)))
                        _g102446_))
                ((let () (declare (not safe)) (##fx= _g102445_ 2))
                 (apply (lambda (_key97803_ _default97804_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key97803_ _default97804_)))
                        _g102446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g102446_))))))
    (define thread-local-get
      (lambda (_key97788_)
        (let () (declare (not safe)) (thread-local-ref _key97788_ '#f))))
    (define thread-local-set!
      (lambda (_key97783_ _value97784_)
        (let ((_tab97786_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97786_ _key97783_ _value97784_))))
    (define thread-local-clear!
      (lambda (_key97779_)
        (let ((_tab97781_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97781_ _key97779_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr97765_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr97765_))
              (let ((_$e97767_ (actor-thread-locals _thr97765_)))
                (if _$e97767_
                    (values _$e97767_)
                    (let ((_tab97770_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr97765_ _tab97770_)
                      _tab97770_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr97765_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e97772_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr97765_ '#f))))
                      (if _$e97772_
                          ((lambda (_tab97775_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab97775_)
                           _$e97772_)
                          (let ((_tab97777_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr97765_
                               _tab97777_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab97777_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc97762_)
        (if (let () (declare (not safe)) (procedure? _proc97762_))
            '#!void
            (raise (let ((__obj102439
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102439
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc97762_ '())))
                     __obj102439)))
        (set! __unhandled-actor-exception-hook _proc97762_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx97750_ _proc97751_)
        (let ((_handler97753_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e97755_)
             (let ((__tmp102447
                    (lambda ()
                      (mutex-unlock! _mx97750_)
                      (_handler97753_ _e97755_))))
               (declare (not safe))
               (with-catch void __tmp102447))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e97755_)))
           (lambda ()
             (mutex-lock! _mx97750_)
             (let ((_result97759_ (_proc97751_)))
               (mutex-unlock! _mx97750_)
               _result97759_))))))
    (define with-dynamic-lock
      (lambda (_mx97745_ _proc97746_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx97745_))
         _proc97746_
         (lambda () (mutex-unlock! _mx97745_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk97726_ _error-port97727_)
        (with-exception-handler
         (let ((_E97729_ (current-exception-handler)))
           (lambda (_exn97731_)
             (continuation-capture
              (lambda (_cont97733_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont97733_
                       _exn97731_
                       _error-port97727_))
                    '#!void)
                (_E97729_ _exn97731_)))))
         _thunk97726_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk97738_)
        (let ((_error-port97740_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk97738_ _error-port97740_))))
    (define with-exception-stack-trace
      (lambda _g102449_
        (let ((_g102448_ (let () (declare (not safe)) (##length _g102449_))))
          (cond ((let () (declare (not safe)) (##fx= _g102448_ 1))
                 (apply (lambda (_thunk97738_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk97738_)))
                        _g102449_))
                ((let () (declare (not safe)) (##fx= _g102448_ 2))
                 (apply (lambda (_thunk97742_ _error-port97743_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk97742_
                             _error-port97743_)))
                        _g102449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g102449_))))))
    (define dump-stack-trace!__%
      (lambda (_cont97707_ _exn97708_ _error-port97709_)
        (let ((_out97711_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out97711_))
          (display '"*** Unhandled exception in " _out97711_)
          (display (current-thread) _out97711_)
          (newline _out97711_)
          (display-exception _exn97708_ _out97711_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn97708_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out97711_)
                (newline _out97711_)
                (display-continuation-backtrace _cont97707_ _out97711_)))
          (let ((__tmp102450 (get-output-string _out97711_)))
            (declare (not safe))
            (##write-string __tmp102450 _error-port97709_)))))
    (define dump-stack-trace!__0
      (lambda (_cont97716_ _exn97717_)
        (let ((_error-port97719_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont97716_ _exn97717_ _error-port97719_))))
    (define dump-stack-trace!
      (lambda _g102452_
        (let ((_g102451_ (let () (declare (not safe)) (##length _g102452_))))
          (cond ((let () (declare (not safe)) (##fx= _g102451_ 2))
                 (apply (lambda (_cont97716_ _exn97717_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont97716_ _exn97717_)))
                        _g102452_))
                ((let () (declare (not safe)) (##fx= _g102451_ 3))
                 (apply (lambda (_cont97721_ _exn97722_ _error-port97723_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont97721_
                             _exn97722_
                             _error-port97723_)))
                        _g102452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g102452_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
