(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707841978)
  (begin
    (define spawn
      (lambda (_f97862_ . _args97863_)
        (if (let () (declare (not safe)) (procedure? _f97862_))
            '#!void
            (raise (let ((__obj102432
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102432
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f97862_ '())))
                     __obj102432)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97862_ _args97863_ '#!void '#f))))
    (define spawn/name
      (lambda (_name97858_ _f97859_ . _args97860_)
        (if (let () (declare (not safe)) (procedure? _f97859_))
            '#!void
            (raise (let ((__obj102433
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102433
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f97859_ '())))
                     __obj102433)))
        (let ()
          (declare (not safe))
          (spawn-actor _f97859_ _args97860_ _name97858_ '#f))))
    (define spawn/group
      (lambda (_name97852_ _f97853_ . _args97854_)
        (if (let () (declare (not safe)) (procedure? _f97853_))
            '#!void
            (raise (let ((__obj102434
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102434
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f97853_ '())))
                     __obj102434)))
        (let ((_tgroup97856_ (make-thread-group _name97852_)))
          (declare (not safe))
          (spawn-actor _f97853_ _args97854_ _name97852_ _tgroup97856_))))
    (define spawn-actor
      (lambda (_f97825_ _args97826_ _name97827_ _tgroup97828_)
        (letrec ((_thread-main97830_
                  (lambda (_thunk97844_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn97847_)
                         (let ((__tmp102436
                                (lambda (_cont97849_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp102437
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont97849_
                                                _exn97847_))))
                                        (declare (not safe))
                                        (with-catch void __tmp102437))
                                      '#!void)
                                  (let ((__tmp102438
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont97849_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp102438
                                     ##primordial-exception-handler
                                     _exn97847_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp102436)))
                       _thunk97844_)))))
          (let* ((_thunk97833_
                  (if (let () (declare (not safe)) (null? _args97826_))
                      _f97825_
                      (lambda () (apply _f97825_ _args97826_))))
                 (_thunk97836_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk97833_))))
                 (_tgroup97841_
                  (let ((_$e97838_ _tgroup97828_))
                    (if _$e97838_
                        _$e97838_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main97830_ _thunk97836_))
              _name97827_
              _tgroup97841_))))))
    (define spawn-thread__%
      (lambda (_thunk97803_ _name97804_ _tgroup97805_)
        (thread-start! (make-thread _thunk97803_ _name97804_ _tgroup97805_))))
    (define spawn-thread__0
      (lambda (_thunk97810_)
        (let* ((_name97812_ absent-obj) (_tgroup97814_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97810_ _name97812_ _tgroup97814_))))
    (define spawn-thread__1
      (lambda (_thunk97816_ _name97817_)
        (let ((_tgroup97819_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk97816_ _name97817_ _tgroup97819_))))
    (define spawn-thread
      (lambda _g102440_
        (let ((_g102439_ (let () (declare (not safe)) (##length _g102440_))))
          (cond ((let () (declare (not safe)) (##fx= _g102439_ 1))
                 (apply (lambda (_thunk97810_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk97810_)))
                        _g102440_))
                ((let () (declare (not safe)) (##fx= _g102439_ 2))
                 (apply (lambda (_thunk97816_ _name97817_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk97816_ _name97817_)))
                        _g102440_))
                ((let () (declare (not safe)) (##fx= _g102439_ 3))
                 (apply (lambda (_thunk97821_ _name97822_ _tgroup97823_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk97821_
                             _name97822_
                             _tgroup97823_)))
                        _g102440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g102440_))))))
    (define thread-local-ref__%
      (lambda (_key97787_ _default97788_)
        (let ((_tab97790_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab97790_ _key97787_ _default97788_))))
    (define thread-local-ref__0
      (lambda (_key97795_)
        (let ((_default97797_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key97795_ _default97797_))))
    (define thread-local-ref
      (lambda _g102442_
        (let ((_g102441_ (let () (declare (not safe)) (##length _g102442_))))
          (cond ((let () (declare (not safe)) (##fx= _g102441_ 1))
                 (apply (lambda (_key97795_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key97795_)))
                        _g102442_))
                ((let () (declare (not safe)) (##fx= _g102441_ 2))
                 (apply (lambda (_key97799_ _default97800_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key97799_ _default97800_)))
                        _g102442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g102442_))))))
    (define thread-local-get
      (lambda (_key97784_)
        (let () (declare (not safe)) (thread-local-ref _key97784_ '#f))))
    (define thread-local-set!
      (lambda (_key97779_ _value97780_)
        (let ((_tab97782_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97782_ _key97779_ _value97780_))))
    (define thread-local-clear!
      (lambda (_key97775_)
        (let ((_tab97777_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab97777_ _key97775_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr97761_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr97761_))
              (let ((_$e97763_ (actor-thread-locals _thr97761_)))
                (if _$e97763_
                    (values _$e97763_)
                    (let ((_tab97766_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr97761_ _tab97766_)
                      _tab97766_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr97761_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e97768_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr97761_ '#f))))
                      (if _$e97768_
                          ((lambda (_tab97771_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab97771_)
                           _$e97768_)
                          (let ((_tab97773_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr97761_
                               _tab97773_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab97773_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc97758_)
        (if (let () (declare (not safe)) (procedure? _proc97758_))
            '#!void
            (raise (let ((__obj102435
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj102435
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc97758_ '())))
                     __obj102435)))
        (set! __unhandled-actor-exception-hook _proc97758_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx97746_ _proc97747_)
        (let ((_handler97749_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e97751_)
             (let ((__tmp102443
                    (lambda ()
                      (mutex-unlock! _mx97746_)
                      (_handler97749_ _e97751_))))
               (declare (not safe))
               (with-catch void __tmp102443))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e97751_)))
           (lambda ()
             (mutex-lock! _mx97746_)
             (let ((_result97755_ (_proc97747_)))
               (mutex-unlock! _mx97746_)
               _result97755_))))))
    (define with-dynamic-lock
      (lambda (_mx97741_ _proc97742_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx97741_))
         _proc97742_
         (lambda () (mutex-unlock! _mx97741_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk97722_ _error-port97723_)
        (with-exception-handler
         (let ((_E97725_ (current-exception-handler)))
           (lambda (_exn97727_)
             (continuation-capture
              (lambda (_cont97729_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont97729_
                       _exn97727_
                       _error-port97723_))
                    '#!void)
                (_E97725_ _exn97727_)))))
         _thunk97722_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk97734_)
        (let ((_error-port97736_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk97734_ _error-port97736_))))
    (define with-exception-stack-trace
      (lambda _g102445_
        (let ((_g102444_ (let () (declare (not safe)) (##length _g102445_))))
          (cond ((let () (declare (not safe)) (##fx= _g102444_ 1))
                 (apply (lambda (_thunk97734_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk97734_)))
                        _g102445_))
                ((let () (declare (not safe)) (##fx= _g102444_ 2))
                 (apply (lambda (_thunk97738_ _error-port97739_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk97738_
                             _error-port97739_)))
                        _g102445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g102445_))))))
    (define dump-stack-trace!__%
      (lambda (_cont97703_ _exn97704_ _error-port97705_)
        (let ((_out97707_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out97707_))
          (display '"*** Unhandled exception in " _out97707_)
          (display (current-thread) _out97707_)
          (newline _out97707_)
          (display-exception _exn97704_ _out97707_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn97704_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out97707_)
                (newline _out97707_)
                (display-continuation-backtrace _cont97703_ _out97707_)))
          (let ((__tmp102446 (get-output-string _out97707_)))
            (declare (not safe))
            (##write-string __tmp102446 _error-port97705_)))))
    (define dump-stack-trace!__0
      (lambda (_cont97712_ _exn97713_)
        (let ((_error-port97715_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont97712_ _exn97713_ _error-port97715_))))
    (define dump-stack-trace!
      (lambda _g102448_
        (let ((_g102447_ (let () (declare (not safe)) (##length _g102448_))))
          (cond ((let () (declare (not safe)) (##fx= _g102447_ 2))
                 (apply (lambda (_cont97712_ _exn97713_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont97712_ _exn97713_)))
                        _g102448_))
                ((let () (declare (not safe)) (##fx= _g102447_ 3))
                 (apply (lambda (_cont97717_ _exn97718_ _error-port97719_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont97717_
                             _exn97718_
                             _error-port97719_)))
                        _g102448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g102448_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
