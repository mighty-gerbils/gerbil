(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707742539)
  (begin
    (define spawn
      (lambda (_f96481_ . _args96482_)
        (if (let () (declare (not safe)) (procedure? _f96481_))
            '#!void
            (raise (let ((__obj101051
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101051
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96481_ '())))
                     __obj101051)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96481_ _args96482_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96477_ _f96478_ . _args96479_)
        (if (let () (declare (not safe)) (procedure? _f96478_))
            '#!void
            (raise (let ((__obj101052
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101052
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96478_ '())))
                     __obj101052)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96478_ _args96479_ _name96477_ '#f))))
    (define spawn/group
      (lambda (_name96471_ _f96472_ . _args96473_)
        (if (let () (declare (not safe)) (procedure? _f96472_))
            '#!void
            (raise (let ((__obj101053
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101053
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96472_ '())))
                     __obj101053)))
        (let ((_tgroup96475_ (make-thread-group _name96471_)))
          (declare (not safe))
          (spawn-actor _f96472_ _args96473_ _name96471_ _tgroup96475_))))
    (define spawn-actor
      (lambda (_f96444_ _args96445_ _name96446_ _tgroup96447_)
        (letrec ((_thread-main96449_
                  (lambda (_thunk96463_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96466_)
                         (let ((__tmp101055
                                (lambda (_cont96468_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp101056
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96468_
                                                _exn96466_))))
                                        (declare (not safe))
                                        (with-catch void __tmp101056))
                                      '#!void)
                                  (let ((__tmp101057
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96468_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp101057
                                     ##primordial-exception-handler
                                     _exn96466_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp101055)))
                       _thunk96463_)))))
          (let* ((_thunk96452_
                  (if (let () (declare (not safe)) (null? _args96445_))
                      _f96444_
                      (lambda () (apply _f96444_ _args96445_))))
                 (_thunk96455_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96452_))))
                 (_tgroup96460_
                  (let ((_$e96457_ _tgroup96447_))
                    (if _$e96457_
                        _$e96457_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96449_ _thunk96455_))
              _name96446_
              _tgroup96460_))))))
    (define spawn-thread__%
      (lambda (_thunk96422_ _name96423_ _tgroup96424_)
        (thread-start! (make-thread _thunk96422_ _name96423_ _tgroup96424_))))
    (define spawn-thread__0
      (lambda (_thunk96429_)
        (let* ((_name96431_ absent-obj) (_tgroup96433_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96429_ _name96431_ _tgroup96433_))))
    (define spawn-thread__1
      (lambda (_thunk96435_ _name96436_)
        (let ((_tgroup96438_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96435_ _name96436_ _tgroup96438_))))
    (define spawn-thread
      (lambda _g101059_
        (let ((_g101058_ (let () (declare (not safe)) (##length _g101059_))))
          (cond ((let () (declare (not safe)) (##fx= _g101058_ 1))
                 (apply (lambda (_thunk96429_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96429_)))
                        _g101059_))
                ((let () (declare (not safe)) (##fx= _g101058_ 2))
                 (apply (lambda (_thunk96435_ _name96436_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96435_ _name96436_)))
                        _g101059_))
                ((let () (declare (not safe)) (##fx= _g101058_ 3))
                 (apply (lambda (_thunk96440_ _name96441_ _tgroup96442_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96440_
                             _name96441_
                             _tgroup96442_)))
                        _g101059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g101059_))))))
    (define thread-local-ref__%
      (lambda (_key96406_ _default96407_)
        (let ((_tab96409_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab96409_ _key96406_ _default96407_))))
    (define thread-local-ref__0
      (lambda (_key96414_)
        (let ((_default96416_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key96414_ _default96416_))))
    (define thread-local-ref
      (lambda _g101061_
        (let ((_g101060_ (let () (declare (not safe)) (##length _g101061_))))
          (cond ((let () (declare (not safe)) (##fx= _g101060_ 1))
                 (apply (lambda (_key96414_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key96414_)))
                        _g101061_))
                ((let () (declare (not safe)) (##fx= _g101060_ 2))
                 (apply (lambda (_key96418_ _default96419_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key96418_ _default96419_)))
                        _g101061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g101061_))))))
    (define thread-local-get
      (lambda (_key96403_)
        (let () (declare (not safe)) (thread-local-ref _key96403_ '#f))))
    (define thread-local-set!
      (lambda (_key96398_ _value96399_)
        (let ((_tab96401_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96401_ _key96398_ _value96399_))))
    (define thread-local-clear!
      (lambda (_key96394_)
        (let ((_tab96396_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96396_ _key96394_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr96380_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr96380_))
              (let ((_$e96382_ (actor-thread-locals _thr96380_)))
                (if _$e96382_
                    (values _$e96382_)
                    (let ((_tab96385_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr96380_ _tab96385_)
                      _tab96385_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr96380_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e96387_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr96380_ '#f))))
                      (if _$e96387_
                          ((lambda (_tab96390_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab96390_)
                           _$e96387_)
                          (let ((_tab96392_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr96380_
                               _tab96392_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab96392_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc96377_)
        (if (let () (declare (not safe)) (procedure? _proc96377_))
            '#!void
            (raise (let ((__obj101054
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101054
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc96377_ '())))
                     __obj101054)))
        (set! __unhandled-actor-exception-hook _proc96377_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx96365_ _proc96366_)
        (let ((_handler96368_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e96370_)
             (let ((__tmp101062
                    (lambda ()
                      (mutex-unlock! _mx96365_)
                      (_handler96368_ _e96370_))))
               (declare (not safe))
               (with-catch void __tmp101062))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e96370_)))
           (lambda ()
             (mutex-lock! _mx96365_)
             (let ((_result96374_ (_proc96366_)))
               (mutex-unlock! _mx96365_)
               _result96374_))))))
    (define with-dynamic-lock
      (lambda (_mx96360_ _proc96361_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx96360_))
         _proc96361_
         (lambda () (mutex-unlock! _mx96360_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk96341_ _error-port96342_)
        (with-exception-handler
         (let ((_E96344_ (current-exception-handler)))
           (lambda (_exn96346_)
             (continuation-capture
              (lambda (_cont96348_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont96348_
                       _exn96346_
                       _error-port96342_))
                    '#!void)
                (_E96344_ _exn96346_)))))
         _thunk96341_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk96353_)
        (let ((_error-port96355_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk96353_ _error-port96355_))))
    (define with-exception-stack-trace
      (lambda _g101064_
        (let ((_g101063_ (let () (declare (not safe)) (##length _g101064_))))
          (cond ((let () (declare (not safe)) (##fx= _g101063_ 1))
                 (apply (lambda (_thunk96353_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk96353_)))
                        _g101064_))
                ((let () (declare (not safe)) (##fx= _g101063_ 2))
                 (apply (lambda (_thunk96357_ _error-port96358_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk96357_
                             _error-port96358_)))
                        _g101064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g101064_))))))
    (define dump-stack-trace!__%
      (lambda (_cont96322_ _exn96323_ _error-port96324_)
        (let ((_out96326_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out96326_))
          (display '"*** Unhandled exception in " _out96326_)
          (display (current-thread) _out96326_)
          (newline _out96326_)
          (display-exception _exn96323_ _out96326_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn96323_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out96326_)
                (newline _out96326_)
                (display-continuation-backtrace _cont96322_ _out96326_)))
          (let ((__tmp101065 (get-output-string _out96326_)))
            (declare (not safe))
            (##write-string __tmp101065 _error-port96324_)))))
    (define dump-stack-trace!__0
      (lambda (_cont96331_ _exn96332_)
        (let ((_error-port96334_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont96331_ _exn96332_ _error-port96334_))))
    (define dump-stack-trace!
      (lambda _g101067_
        (let ((_g101066_ (let () (declare (not safe)) (##length _g101067_))))
          (cond ((let () (declare (not safe)) (##fx= _g101066_ 2))
                 (apply (lambda (_cont96331_ _exn96332_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont96331_ _exn96332_)))
                        _g101067_))
                ((let () (declare (not safe)) (##fx= _g101066_ 3))
                 (apply (lambda (_cont96336_ _exn96337_ _error-port96338_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont96336_
                             _exn96337_
                             _error-port96338_)))
                        _g101067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g101067_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
