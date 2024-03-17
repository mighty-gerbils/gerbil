(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710694202)
  (begin
    (define spawn
      (lambda (_f71911_ . _args71912_)
        (if (let () (declare (not safe)) (procedure? _f71911_))
            '#!void
            (raise (let ((__obj71913
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71913
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f71911_ '())))
                     __obj71913)))
        (let ()
          (declare (not safe))
          (spawn-actor _f71911_ _args71912_ '#!void '#f))))
    (define spawn/name
      (lambda (_name71907_ _f71908_ . _args71909_)
        (if (let () (declare (not safe)) (procedure? _f71908_))
            '#!void
            (raise (let ((__obj71914
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71914
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f71908_ '())))
                     __obj71914)))
        (let ()
          (declare (not safe))
          (spawn-actor _f71908_ _args71909_ _name71907_ '#f))))
    (define spawn/group
      (lambda (_name71901_ _f71902_ . _args71903_)
        (if (let () (declare (not safe)) (procedure? _f71902_))
            '#!void
            (raise (let ((__obj71915
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71915
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f71902_ '())))
                     __obj71915)))
        (let ((_tgroup71905_ (make-thread-group _name71901_)))
          (declare (not safe))
          (spawn-actor _f71902_ _args71903_ _name71901_ _tgroup71905_))))
    (define spawn-actor
      (lambda (_f71874_ _args71875_ _name71876_ _tgroup71877_)
        (letrec ((_thread-main71879_
                  (lambda (_thunk71893_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn71896_)
                         (let ((__tmp71917
                                (lambda (_cont71898_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp71918
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont71898_
                                                _exn71896_))))
                                        (declare (not safe))
                                        (with-catch void __tmp71918))
                                      '#!void)
                                  (let ((__tmp71919
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont71898_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp71919
                                     ##primordial-exception-handler
                                     _exn71896_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp71917)))
                       _thunk71893_)))))
          (let* ((_thunk71882_
                  (if (let () (declare (not safe)) (null? _args71875_))
                      _f71874_
                      (lambda () (apply _f71874_ _args71875_))))
                 (_thunk71885_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk71882_))))
                 (_tgroup71890_
                  (let ((_$e71887_ _tgroup71877_))
                    (if _$e71887_
                        _$e71887_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main71879_ _thunk71885_))
              _name71876_
              _tgroup71890_))))))
    (define spawn-thread__%
      (lambda (_thunk71852_ _name71853_ _tgroup71854_)
        (thread-start! (make-thread _thunk71852_ _name71853_ _tgroup71854_))))
    (define spawn-thread__0
      (lambda (_thunk71859_)
        (let* ((_name71861_ absent-obj) (_tgroup71863_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk71859_ _name71861_ _tgroup71863_))))
    (define spawn-thread__1
      (lambda (_thunk71865_ _name71866_)
        (let ((_tgroup71868_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk71865_ _name71866_ _tgroup71868_))))
    (define spawn-thread
      (lambda _g71921_
        (let ((_g71920_ (let () (declare (not safe)) (##length _g71921_))))
          (cond ((let () (declare (not safe)) (##fx= _g71920_ 1))
                 (apply (lambda (_thunk71859_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk71859_)))
                        _g71921_))
                ((let () (declare (not safe)) (##fx= _g71920_ 2))
                 (apply (lambda (_thunk71865_ _name71866_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk71865_ _name71866_)))
                        _g71921_))
                ((let () (declare (not safe)) (##fx= _g71920_ 3))
                 (apply (lambda (_thunk71870_ _name71871_ _tgroup71872_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk71870_
                             _name71871_
                             _tgroup71872_)))
                        _g71921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g71921_))))))
    (define thread-local-ref__%
      (lambda (_key71836_ _default71837_)
        (let ((_tab71839_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab71839_ _key71836_ _default71837_))))
    (define thread-local-ref__0
      (lambda (_key71844_)
        (let ((_default71846_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key71844_ _default71846_))))
    (define thread-local-ref
      (lambda _g71923_
        (let ((_g71922_ (let () (declare (not safe)) (##length _g71923_))))
          (cond ((let () (declare (not safe)) (##fx= _g71922_ 1))
                 (apply (lambda (_key71844_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key71844_)))
                        _g71923_))
                ((let () (declare (not safe)) (##fx= _g71922_ 2))
                 (apply (lambda (_key71848_ _default71849_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key71848_ _default71849_)))
                        _g71923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g71923_))))))
    (define thread-local-get
      (lambda (_key71833_)
        (let () (declare (not safe)) (thread-local-ref__% _key71833_ '#f))))
    (define thread-local-set!
      (lambda (_key71828_ _value71829_)
        (let ((_tab71831_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab71831_ _key71828_ _value71829_))))
    (define thread-local-delete!
      (lambda (_key71824_)
        (let ((_tab71826_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab71826_ _key71824_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr71810_ (current-thread)))
          (if (actor-thread? _thr71810_)
              (let ((_$e71812_ (actor-thread-locals _thr71810_)))
                (if _$e71812_
                    (values _$e71812_)
                    (let ((_tab71815_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr71810_ _tab71815_)
                      _tab71815_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr71810_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e71817_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr71810_))))
                      (if _$e71817_
                          ((lambda (_tab71820_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab71820_)
                           _$e71817_)
                          (let ((_tab71822_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr71810_
                               _tab71822_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab71822_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc71807_)
        (if (let () (declare (not safe)) (procedure? _proc71807_))
            '#!void
            (raise (let ((__obj71916
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj71916
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc71807_ '())))
                     __obj71916)))
        (set! __unhandled-actor-exception-hook _proc71807_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx71795_ _proc71796_)
        (let ((_handler71798_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e71800_)
             (let ((__tmp71924
                    (lambda ()
                      (mutex-unlock! _mx71795_)
                      (_handler71798_ _e71800_))))
               (declare (not safe))
               (with-catch void __tmp71924))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e71800_)))
           (lambda ()
             (mutex-lock! _mx71795_)
             (let ((_result71804_ (_proc71796_)))
               (mutex-unlock! _mx71795_)
               _result71804_))))))
    (define with-dynamic-lock
      (lambda (_mx71790_ _proc71791_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx71790_))
         _proc71791_
         (lambda () (mutex-unlock! _mx71790_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk71771_ _error-port71772_)
        (with-exception-handler
         (let ((_E71774_ (current-exception-handler)))
           (lambda (_exn71776_)
             (continuation-capture
              (lambda (_cont71778_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont71778_
                       _exn71776_
                       _error-port71772_))
                    '#!void)
                (_E71774_ _exn71776_)))))
         _thunk71771_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk71783_)
        (let ((_error-port71785_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk71783_ _error-port71785_))))
    (define with-exception-stack-trace
      (lambda _g71926_
        (let ((_g71925_ (let () (declare (not safe)) (##length _g71926_))))
          (cond ((let () (declare (not safe)) (##fx= _g71925_ 1))
                 (apply (lambda (_thunk71783_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk71783_)))
                        _g71926_))
                ((let () (declare (not safe)) (##fx= _g71925_ 2))
                 (apply (lambda (_thunk71787_ _error-port71788_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk71787_
                             _error-port71788_)))
                        _g71926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g71926_))))))
    (define dump-stack-trace!__%
      (lambda (_cont71752_ _exn71753_ _error-port71754_)
        (let ((_out71756_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out71756_))
          (display '"*** Unhandled exception in " _out71756_)
          (display (current-thread) _out71756_)
          (newline _out71756_)
          (display-exception _exn71753_ _out71756_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn71753_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out71756_)
                (newline _out71756_)
                (display-continuation-backtrace _cont71752_ _out71756_)))
          (let ((__tmp71927 (get-output-string _out71756_)))
            (declare (not safe))
            (##write-string __tmp71927 _error-port71754_)))))
    (define dump-stack-trace!__0
      (lambda (_cont71761_ _exn71762_)
        (let ((_error-port71764_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont71761_ _exn71762_ _error-port71764_))))
    (define dump-stack-trace!
      (lambda _g71929_
        (let ((_g71928_ (let () (declare (not safe)) (##length _g71929_))))
          (cond ((let () (declare (not safe)) (##fx= _g71928_ 2))
                 (apply (lambda (_cont71761_ _exn71762_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont71761_ _exn71762_)))
                        _g71929_))
                ((let () (declare (not safe)) (##fx= _g71928_ 3))
                 (apply (lambda (_cont71766_ _exn71767_ _error-port71768_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont71766_
                             _exn71767_
                             _error-port71768_)))
                        _g71929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g71929_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
