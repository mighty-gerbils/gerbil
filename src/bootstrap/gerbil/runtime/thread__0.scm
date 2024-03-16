(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710617601)
  (begin
    (define spawn
      (lambda (_f71857_ . _args71858_)
        (if (let () (declare (not safe)) (procedure? _f71857_))
            '#!void
            (raise (let ((__obj71859
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71859
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f71857_ '())))
                     __obj71859)))
        (let ()
          (declare (not safe))
          (spawn-actor _f71857_ _args71858_ '#!void '#f))))
    (define spawn/name
      (lambda (_name71853_ _f71854_ . _args71855_)
        (if (let () (declare (not safe)) (procedure? _f71854_))
            '#!void
            (raise (let ((__obj71860
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71860
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f71854_ '())))
                     __obj71860)))
        (let ()
          (declare (not safe))
          (spawn-actor _f71854_ _args71855_ _name71853_ '#f))))
    (define spawn/group
      (lambda (_name71847_ _f71848_ . _args71849_)
        (if (let () (declare (not safe)) (procedure? _f71848_))
            '#!void
            (raise (let ((__obj71861
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71861
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f71848_ '())))
                     __obj71861)))
        (let ((_tgroup71851_ (make-thread-group _name71847_)))
          (declare (not safe))
          (spawn-actor _f71848_ _args71849_ _name71847_ _tgroup71851_))))
    (define spawn-actor
      (lambda (_f71820_ _args71821_ _name71822_ _tgroup71823_)
        (letrec ((_thread-main71825_
                  (lambda (_thunk71839_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn71842_)
                         (let ((__tmp71863
                                (lambda (_cont71844_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp71864
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont71844_
                                                _exn71842_))))
                                        (declare (not safe))
                                        (with-catch void __tmp71864))
                                      '#!void)
                                  (let ((__tmp71865
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont71844_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp71865
                                     ##primordial-exception-handler
                                     _exn71842_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp71863)))
                       _thunk71839_)))))
          (let* ((_thunk71828_
                  (if (let () (declare (not safe)) (null? _args71821_))
                      _f71820_
                      (lambda () (apply _f71820_ _args71821_))))
                 (_thunk71831_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk71828_))))
                 (_tgroup71836_
                  (let ((_$e71833_ _tgroup71823_))
                    (if _$e71833_
                        _$e71833_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main71825_ _thunk71831_))
              _name71822_
              _tgroup71836_))))))
    (define spawn-thread__%
      (lambda (_thunk71798_ _name71799_ _tgroup71800_)
        (thread-start! (make-thread _thunk71798_ _name71799_ _tgroup71800_))))
    (define spawn-thread__0
      (lambda (_thunk71805_)
        (let* ((_name71807_ absent-obj) (_tgroup71809_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk71805_ _name71807_ _tgroup71809_))))
    (define spawn-thread__1
      (lambda (_thunk71811_ _name71812_)
        (let ((_tgroup71814_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk71811_ _name71812_ _tgroup71814_))))
    (define spawn-thread
      (lambda _g71867_
        (let ((_g71866_ (let () (declare (not safe)) (##length _g71867_))))
          (cond ((let () (declare (not safe)) (##fx= _g71866_ 1))
                 (apply (lambda (_thunk71805_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk71805_)))
                        _g71867_))
                ((let () (declare (not safe)) (##fx= _g71866_ 2))
                 (apply (lambda (_thunk71811_ _name71812_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk71811_ _name71812_)))
                        _g71867_))
                ((let () (declare (not safe)) (##fx= _g71866_ 3))
                 (apply (lambda (_thunk71816_ _name71817_ _tgroup71818_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk71816_
                             _name71817_
                             _tgroup71818_)))
                        _g71867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g71867_))))))
    (define thread-local-ref__%
      (lambda (_key71782_ _default71783_)
        (let ((_tab71785_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab71785_ _key71782_ _default71783_))))
    (define thread-local-ref__0
      (lambda (_key71790_)
        (let ((_default71792_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key71790_ _default71792_))))
    (define thread-local-ref
      (lambda _g71869_
        (let ((_g71868_ (let () (declare (not safe)) (##length _g71869_))))
          (cond ((let () (declare (not safe)) (##fx= _g71868_ 1))
                 (apply (lambda (_key71790_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key71790_)))
                        _g71869_))
                ((let () (declare (not safe)) (##fx= _g71868_ 2))
                 (apply (lambda (_key71794_ _default71795_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key71794_ _default71795_)))
                        _g71869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g71869_))))))
    (define thread-local-get
      (lambda (_key71779_)
        (let () (declare (not safe)) (thread-local-ref__% _key71779_ '#f))))
    (define thread-local-set!
      (lambda (_key71774_ _value71775_)
        (let ((_tab71777_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab71777_ _key71774_ _value71775_))))
    (define thread-local-delete!
      (lambda (_key71770_)
        (let ((_tab71772_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab71772_ _key71770_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr71756_ (current-thread)))
          (if (actor-thread? _thr71756_)
              (let ((_$e71758_ (actor-thread-locals _thr71756_)))
                (if _$e71758_
                    (values _$e71758_)
                    (let ((_tab71761_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr71756_ _tab71761_)
                      _tab71761_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr71756_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e71763_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr71756_))))
                      (if _$e71763_
                          ((lambda (_tab71766_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab71766_)
                           _$e71763_)
                          (let ((_tab71768_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr71756_
                               _tab71768_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab71768_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc71753_)
        (if (let () (declare (not safe)) (procedure? _proc71753_))
            '#!void
            (raise (let ((__obj71862
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71862
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc71753_ '())))
                     __obj71862)))
        (set! __unhandled-actor-exception-hook _proc71753_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx71741_ _proc71742_)
        (let ((_handler71744_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e71746_)
             (let ((__tmp71870
                    (lambda ()
                      (mutex-unlock! _mx71741_)
                      (_handler71744_ _e71746_))))
               (declare (not safe))
               (with-catch void __tmp71870))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e71746_)))
           (lambda ()
             (mutex-lock! _mx71741_)
             (let ((_result71750_ (_proc71742_)))
               (mutex-unlock! _mx71741_)
               _result71750_))))))
    (define with-dynamic-lock
      (lambda (_mx71736_ _proc71737_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx71736_))
         _proc71737_
         (lambda () (mutex-unlock! _mx71736_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk71717_ _error-port71718_)
        (with-exception-handler
         (let ((_E71720_ (current-exception-handler)))
           (lambda (_exn71722_)
             (continuation-capture
              (lambda (_cont71724_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont71724_
                       _exn71722_
                       _error-port71718_))
                    '#!void)
                (_E71720_ _exn71722_)))))
         _thunk71717_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk71729_)
        (let ((_error-port71731_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk71729_ _error-port71731_))))
    (define with-exception-stack-trace
      (lambda _g71872_
        (let ((_g71871_ (let () (declare (not safe)) (##length _g71872_))))
          (cond ((let () (declare (not safe)) (##fx= _g71871_ 1))
                 (apply (lambda (_thunk71729_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk71729_)))
                        _g71872_))
                ((let () (declare (not safe)) (##fx= _g71871_ 2))
                 (apply (lambda (_thunk71733_ _error-port71734_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk71733_
                             _error-port71734_)))
                        _g71872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g71872_))))))
    (define dump-stack-trace!__%
      (lambda (_cont71698_ _exn71699_ _error-port71700_)
        (let ((_out71702_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out71702_))
          (display '"*** Unhandled exception in " _out71702_)
          (display (current-thread) _out71702_)
          (newline _out71702_)
          (display-exception _exn71699_ _out71702_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn71699_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out71702_)
                (newline _out71702_)
                (display-continuation-backtrace _cont71698_ _out71702_)))
          (let ((__tmp71873 (get-output-string _out71702_)))
            (declare (not safe))
            (##write-string __tmp71873 _error-port71700_)))))
    (define dump-stack-trace!__0
      (lambda (_cont71707_ _exn71708_)
        (let ((_error-port71710_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont71707_ _exn71708_ _error-port71710_))))
    (define dump-stack-trace!
      (lambda _g71875_
        (let ((_g71874_ (let () (declare (not safe)) (##length _g71875_))))
          (cond ((let () (declare (not safe)) (##fx= _g71874_ 2))
                 (apply (lambda (_cont71707_ _exn71708_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont71707_ _exn71708_)))
                        _g71875_))
                ((let () (declare (not safe)) (##fx= _g71874_ 3))
                 (apply (lambda (_cont71712_ _exn71713_ _error-port71714_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont71712_
                             _exn71713_
                             _error-port71714_)))
                        _g71875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g71875_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
