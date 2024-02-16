(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708102801)
  (begin
    (define spawn
      (lambda (_f97867_ . _args97868_)
        (if (let () (declare (not safe)) (procedure? _f97867_))
            '#!void
            (raise (let ((__obj102437
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102437
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f97867_ '())))
                     __obj102437)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97867_ _args97868_ '#!void '#f))))
    (define spawn/name
      (lambda (_name97863_ _f97864_ . _args97865_)
        (if (let () (declare (not safe)) (procedure? _f97864_))
            '#!void
            (raise (let ((__obj102438
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102438
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f97864_ '())))
                     __obj102438)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97864_ _args97865_ _name97863_ '#f))))
    (define spawn/group
      (lambda (_name97857_ _f97858_ . _args97859_)
        (if (let () (declare (not safe)) (procedure? _f97858_))
            '#!void
            (raise (let ((__obj102439
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102439
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f97858_ '())))
                     __obj102439)))
        (let ((_tgroup97861_ (make-thread-group _name97857_)))
          (declare (not safe))
          (spawn-actor _f97858_ _args97859_ _name97857_ _tgroup97861_))))
    (define spawn-actor
      (lambda (_f97830_ _args97831_ _name97832_ _tgroup97833_)
        (letrec ((_thread-main97835_
                  (lambda (_thunk97849_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn97852_)
                         (let ((__tmp102441
                                (lambda (_cont97854_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp102442
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont97854_
                                                _exn97852_))))
                                        (declare (not safe))
                                        (with-catch void __tmp102442))
                                      '#!void)
                                  (let ((__tmp102443
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont97854_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp102443
                                     ##primordial-exception-handler
                                     _exn97852_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp102441)))
                       _thunk97849_)))))
          (let* ((_thunk97838_
                  (if (let () (declare (not safe)) (null? _args97831_))
                      _f97830_
                      (lambda () (apply _f97830_ _args97831_))))
                 (_thunk97841_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk97838_))))
                 (_tgroup97846_
                  (let ((_$e97843_ _tgroup97833_))
                    (if _$e97843_
                        _$e97843_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main97835_ _thunk97841_))
              _name97832_
              _tgroup97846_))))))
    (define spawn-thread__%
      (lambda (_thunk97808_ _name97809_ _tgroup97810_)
        (thread-start! (make-thread _thunk97808_ _name97809_ _tgroup97810_))))
    (define spawn-thread__0
      (lambda (_thunk97815_)
        (let* ((_name97817_ absent-obj) (_tgroup97819_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97815_ _name97817_ _tgroup97819_))))
    (define spawn-thread__1
      (lambda (_thunk97821_ _name97822_)
        (let ((_tgroup97824_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97821_ _name97822_ _tgroup97824_))))
    (define spawn-thread
      (lambda _g102445_
        (let ((_g102444_ (let () (declare (not safe)) (##length _g102445_))))
          (cond ((let () (declare (not safe)) (##fx= _g102444_ 1))
                 (apply (lambda (_thunk97815_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk97815_)))
                        _g102445_))
                ((let () (declare (not safe)) (##fx= _g102444_ 2))
                 (apply (lambda (_thunk97821_ _name97822_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk97821_ _name97822_)))
                        _g102445_))
                ((let () (declare (not safe)) (##fx= _g102444_ 3))
                 (apply (lambda (_thunk97826_ _name97827_ _tgroup97828_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk97826_
                             _name97827_
                             _tgroup97828_)))
                        _g102445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g102445_))))))
    (define thread-local-ref__%
      (lambda (_key97792_ _default97793_)
        (let ((_tab97795_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab97795_ _key97792_ _default97793_))))
    (define thread-local-ref__0
      (lambda (_key97800_)
        (let ((_default97802_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key97800_ _default97802_))))
    (define thread-local-ref
      (lambda _g102447_
        (let ((_g102446_ (let () (declare (not safe)) (##length _g102447_))))
          (cond ((let () (declare (not safe)) (##fx= _g102446_ 1))
                 (apply (lambda (_key97800_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key97800_)))
                        _g102447_))
                ((let () (declare (not safe)) (##fx= _g102446_ 2))
                 (apply (lambda (_key97804_ _default97805_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key97804_ _default97805_)))
                        _g102447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g102447_))))))
    (define thread-local-get
      (lambda (_key97789_)
        (let () (declare (not safe)) (thread-local-ref _key97789_ '#f))))
    (define thread-local-set!
      (lambda (_key97784_ _value97785_)
        (let ((_tab97787_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97787_ _key97784_ _value97785_))))
    (define thread-local-clear!
      (lambda (_key97780_)
        (let ((_tab97782_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97782_ _key97780_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr97766_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr97766_))
              (let ((_$e97768_ (actor-thread-locals _thr97766_)))
                (if _$e97768_
                    (values _$e97768_)
                    (let ((_tab97771_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr97766_ _tab97771_)
                      _tab97771_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr97766_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e97773_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr97766_ '#f))))
                      (if _$e97773_
                          ((lambda (_tab97776_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab97776_)
                           _$e97773_)
                          (let ((_tab97778_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr97766_
                               _tab97778_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab97778_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc97763_)
        (if (let () (declare (not safe)) (procedure? _proc97763_))
            '#!void
            (raise (let ((__obj102440
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102440
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc97763_ '())))
                     __obj102440)))
        (set! __unhandled-actor-exception-hook _proc97763_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx97751_ _proc97752_)
        (let ((_handler97754_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e97756_)
             (let ((__tmp102448
                    (lambda ()
                      (mutex-unlock! _mx97751_)
                      (_handler97754_ _e97756_))))
               (declare (not safe))
               (with-catch void __tmp102448))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e97756_)))
           (lambda ()
             (mutex-lock! _mx97751_)
             (let ((_result97760_ (_proc97752_)))
               (mutex-unlock! _mx97751_)
               _result97760_))))))
    (define with-dynamic-lock
      (lambda (_mx97746_ _proc97747_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx97746_))
         _proc97747_
         (lambda () (mutex-unlock! _mx97746_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk97727_ _error-port97728_)
        (with-exception-handler
         (let ((_E97730_ (current-exception-handler)))
           (lambda (_exn97732_)
             (continuation-capture
              (lambda (_cont97734_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont97734_
                       _exn97732_
                       _error-port97728_))
                    '#!void)
                (_E97730_ _exn97732_)))))
         _thunk97727_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk97739_)
        (let ((_error-port97741_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk97739_ _error-port97741_))))
    (define with-exception-stack-trace
      (lambda _g102450_
        (let ((_g102449_ (let () (declare (not safe)) (##length _g102450_))))
          (cond ((let () (declare (not safe)) (##fx= _g102449_ 1))
                 (apply (lambda (_thunk97739_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk97739_)))
                        _g102450_))
                ((let () (declare (not safe)) (##fx= _g102449_ 2))
                 (apply (lambda (_thunk97743_ _error-port97744_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk97743_
                             _error-port97744_)))
                        _g102450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g102450_))))))
    (define dump-stack-trace!__%
      (lambda (_cont97708_ _exn97709_ _error-port97710_)
        (let ((_out97712_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out97712_))
          (display '"*** Unhandled exception in " _out97712_)
          (display (current-thread) _out97712_)
          (newline _out97712_)
          (display-exception _exn97709_ _out97712_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn97709_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out97712_)
                (newline _out97712_)
                (display-continuation-backtrace _cont97708_ _out97712_)))
          (let ((__tmp102451 (get-output-string _out97712_)))
            (declare (not safe))
            (##write-string __tmp102451 _error-port97710_)))))
    (define dump-stack-trace!__0
      (lambda (_cont97717_ _exn97718_)
        (let ((_error-port97720_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont97717_ _exn97718_ _error-port97720_))))
    (define dump-stack-trace!
      (lambda _g102453_
        (let ((_g102452_ (let () (declare (not safe)) (##length _g102453_))))
          (cond ((let () (declare (not safe)) (##fx= _g102452_ 2))
                 (apply (lambda (_cont97717_ _exn97718_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont97717_ _exn97718_)))
                        _g102453_))
                ((let () (declare (not safe)) (##fx= _g102452_ 3))
                 (apply (lambda (_cont97722_ _exn97723_ _error-port97724_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont97722_
                             _exn97723_
                             _error-port97724_)))
                        _g102453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g102453_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
