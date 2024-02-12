(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707740666)
  (begin
    (define spawn
      (lambda (_f96483_ . _args96484_)
        (if (let () (declare (not safe)) (procedure? _f96483_))
            '#!void
            (raise (let ((__obj101053
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101053
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96483_ '())))
                     __obj101053)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96483_ _args96484_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96479_ _f96480_ . _args96481_)
        (if (let () (declare (not safe)) (procedure? _f96480_))
            '#!void
            (raise (let ((__obj101054
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101054
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96480_ '())))
                     __obj101054)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96480_ _args96481_ _name96479_ '#f))))
    (define spawn/group
      (lambda (_name96473_ _f96474_ . _args96475_)
        (if (let () (declare (not safe)) (procedure? _f96474_))
            '#!void
            (raise (let ((__obj101055
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101055
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96474_ '())))
                     __obj101055)))
        (let ((_tgroup96477_ (make-thread-group _name96473_)))
          (declare (not safe))
          (spawn-actor _f96474_ _args96475_ _name96473_ _tgroup96477_))))
    (define spawn-actor
      (lambda (_f96446_ _args96447_ _name96448_ _tgroup96449_)
        (letrec ((_thread-main96451_
                  (lambda (_thunk96465_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96468_)
                         (let ((__tmp101057
                                (lambda (_cont96470_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp101058
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96470_
                                                _exn96468_))))
                                        (declare (not safe))
                                        (with-catch void __tmp101058))
                                      '#!void)
                                  (let ((__tmp101059
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96470_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp101059
                                     ##primordial-exception-handler
                                     _exn96468_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp101057)))
                       _thunk96465_)))))
          (let* ((_thunk96454_
                  (if (let () (declare (not safe)) (null? _args96447_))
                      _f96446_
                      (lambda () (apply _f96446_ _args96447_))))
                 (_thunk96457_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96454_))))
                 (_tgroup96462_
                  (let ((_$e96459_ _tgroup96449_))
                    (if _$e96459_
                        _$e96459_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96451_ _thunk96457_))
              _name96448_
              _tgroup96462_))))))
    (define spawn-thread__%
      (lambda (_thunk96424_ _name96425_ _tgroup96426_)
        (thread-start! (make-thread _thunk96424_ _name96425_ _tgroup96426_))))
    (define spawn-thread__0
      (lambda (_thunk96431_)
        (let* ((_name96433_ absent-obj) (_tgroup96435_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96431_ _name96433_ _tgroup96435_))))
    (define spawn-thread__1
      (lambda (_thunk96437_ _name96438_)
        (let ((_tgroup96440_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96437_ _name96438_ _tgroup96440_))))
    (define spawn-thread
      (lambda _g101061_
        (let ((_g101060_ (let () (declare (not safe)) (##length _g101061_))))
          (cond ((let () (declare (not safe)) (##fx= _g101060_ 1))
                 (apply (lambda (_thunk96431_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96431_)))
                        _g101061_))
                ((let () (declare (not safe)) (##fx= _g101060_ 2))
                 (apply (lambda (_thunk96437_ _name96438_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96437_ _name96438_)))
                        _g101061_))
                ((let () (declare (not safe)) (##fx= _g101060_ 3))
                 (apply (lambda (_thunk96442_ _name96443_ _tgroup96444_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96442_
                             _name96443_
                             _tgroup96444_)))
                        _g101061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g101061_))))))
    (define thread-local-ref__%
      (lambda (_key96408_ _default96409_)
        (let ((_tab96411_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab96411_ _key96408_ _default96409_))))
    (define thread-local-ref__0
      (lambda (_key96416_)
        (let ((_default96418_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key96416_ _default96418_))))
    (define thread-local-ref
      (lambda _g101063_
        (let ((_g101062_ (let () (declare (not safe)) (##length _g101063_))))
          (cond ((let () (declare (not safe)) (##fx= _g101062_ 1))
                 (apply (lambda (_key96416_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key96416_)))
                        _g101063_))
                ((let () (declare (not safe)) (##fx= _g101062_ 2))
                 (apply (lambda (_key96420_ _default96421_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key96420_ _default96421_)))
                        _g101063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g101063_))))))
    (define thread-local-get
      (lambda (_key96405_)
        (let () (declare (not safe)) (thread-local-ref _key96405_ '#f))))
    (define thread-local-set!
      (lambda (_key96400_ _value96401_)
        (let ((_tab96403_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96403_ _key96400_ _value96401_))))
    (define thread-local-clear!
      (lambda (_key96396_)
        (let ((_tab96398_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96398_ _key96396_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr96382_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr96382_))
              (let ((_$e96384_ (actor-thread-locals _thr96382_)))
                (if _$e96384_
                    (values _$e96384_)
                    (let ((_tab96387_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr96382_ _tab96387_)
                      _tab96387_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr96382_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e96389_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr96382_ '#f))))
                      (if _$e96389_
                          ((lambda (_tab96392_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab96392_)
                           _$e96389_)
                          (let ((_tab96394_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr96382_
                               _tab96394_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab96394_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc96379_)
        (if (let () (declare (not safe)) (procedure? _proc96379_))
            '#!void
            (raise (let ((__obj101056
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101056
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc96379_ '())))
                     __obj101056)))
        (set! __unhandled-actor-exception-hook _proc96379_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx96367_ _proc96368_)
        (let ((_handler96370_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e96372_)
             (let ((__tmp101064
                    (lambda ()
                      (mutex-unlock! _mx96367_)
                      (_handler96370_ _e96372_))))
               (declare (not safe))
               (with-catch void __tmp101064))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e96372_)))
           (lambda ()
             (mutex-lock! _mx96367_)
             (let ((_result96376_ (_proc96368_)))
               (mutex-unlock! _mx96367_)
               _result96376_))))))
    (define with-dynamic-lock
      (lambda (_mx96362_ _proc96363_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx96362_))
         _proc96363_
         (lambda () (mutex-unlock! _mx96362_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk96343_ _error-port96344_)
        (with-exception-handler
         (let ((_E96346_ (current-exception-handler)))
           (lambda (_exn96348_)
             (continuation-capture
              (lambda (_cont96350_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont96350_
                       _exn96348_
                       _error-port96344_))
                    '#!void)
                (_E96346_ _exn96348_)))))
         _thunk96343_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk96355_)
        (let ((_error-port96357_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk96355_ _error-port96357_))))
    (define with-exception-stack-trace
      (lambda _g101066_
        (let ((_g101065_ (let () (declare (not safe)) (##length _g101066_))))
          (cond ((let () (declare (not safe)) (##fx= _g101065_ 1))
                 (apply (lambda (_thunk96355_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk96355_)))
                        _g101066_))
                ((let () (declare (not safe)) (##fx= _g101065_ 2))
                 (apply (lambda (_thunk96359_ _error-port96360_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk96359_
                             _error-port96360_)))
                        _g101066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g101066_))))))
    (define dump-stack-trace!__%
      (lambda (_cont96324_ _exn96325_ _error-port96326_)
        (let ((_out96328_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out96328_))
          (display '"*** Unhandled exception in " _out96328_)
          (display (current-thread) _out96328_)
          (newline _out96328_)
          (display-exception _exn96325_ _out96328_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn96325_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out96328_)
                (newline _out96328_)
                (display-continuation-backtrace _cont96324_ _out96328_)))
          (let ((__tmp101067 (get-output-string _out96328_)))
            (declare (not safe))
            (##write-string __tmp101067 _error-port96326_)))))
    (define dump-stack-trace!__0
      (lambda (_cont96333_ _exn96334_)
        (let ((_error-port96336_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont96333_ _exn96334_ _error-port96336_))))
    (define dump-stack-trace!
      (lambda _g101069_
        (let ((_g101068_ (let () (declare (not safe)) (##length _g101069_))))
          (cond ((let () (declare (not safe)) (##fx= _g101068_ 2))
                 (apply (lambda (_cont96333_ _exn96334_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont96333_ _exn96334_)))
                        _g101069_))
                ((let () (declare (not safe)) (##fx= _g101068_ 3))
                 (apply (lambda (_cont96338_ _exn96339_ _error-port96340_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont96338_
                             _exn96339_
                             _error-port96340_)))
                        _g101069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g101069_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
