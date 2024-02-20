(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708418154)
  (begin
    (define spawn
      (lambda (_f72459_ . _args72460_)
        (if (let () (declare (not safe)) (procedure? _f72459_))
            '#!void
            (raise (let ((__obj72461
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72461
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f72459_ '())))
                     __obj72461)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72459_ _args72460_ '#!void '#f))))
    (define spawn/name
      (lambda (_name72455_ _f72456_ . _args72457_)
        (if (let () (declare (not safe)) (procedure? _f72456_))
            '#!void
            (raise (let ((__obj72462
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72462
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f72456_ '())))
                     __obj72462)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72456_ _args72457_ _name72455_ '#f))))
    (define spawn/group
      (lambda (_name72449_ _f72450_ . _args72451_)
        (if (let () (declare (not safe)) (procedure? _f72450_))
            '#!void
            (raise (let ((__obj72463
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72463
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f72450_ '())))
                     __obj72463)))
        (let ((_tgroup72453_ (make-thread-group _name72449_)))
          (declare (not safe))
          (spawn-actor _f72450_ _args72451_ _name72449_ _tgroup72453_))))
    (define spawn-actor
      (lambda (_f72422_ _args72423_ _name72424_ _tgroup72425_)
        (letrec ((_thread-main72427_
                  (lambda (_thunk72441_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn72444_)
                         (let ((__tmp72465
                                (lambda (_cont72446_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp72466
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont72446_
                                                _exn72444_))))
                                        (declare (not safe))
                                        (with-catch void __tmp72466))
                                      '#!void)
                                  (let ((__tmp72467
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont72446_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp72467
                                     ##primordial-exception-handler
                                     _exn72444_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp72465)))
                       _thunk72441_)))))
          (let* ((_thunk72430_
                  (if (let () (declare (not safe)) (null? _args72423_))
                      _f72422_
                      (lambda () (apply _f72422_ _args72423_))))
                 (_thunk72433_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk72430_))))
                 (_tgroup72438_
                  (let ((_$e72435_ _tgroup72425_))
                    (if _$e72435_
                        _$e72435_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main72427_ _thunk72433_))
              _name72424_
              _tgroup72438_))))))
    (define spawn-thread__%
      (lambda (_thunk72400_ _name72401_ _tgroup72402_)
        (thread-start! (make-thread _thunk72400_ _name72401_ _tgroup72402_))))
    (define spawn-thread__0
      (lambda (_thunk72407_)
        (let* ((_name72409_ absent-obj) (_tgroup72411_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72407_ _name72409_ _tgroup72411_))))
    (define spawn-thread__1
      (lambda (_thunk72413_ _name72414_)
        (let ((_tgroup72416_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72413_ _name72414_ _tgroup72416_))))
    (define spawn-thread
      (lambda _g72469_
        (let ((_g72468_ (let () (declare (not safe)) (##length _g72469_))))
          (cond ((let () (declare (not safe)) (##fx= _g72468_ 1))
                 (apply (lambda (_thunk72407_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk72407_)))
                        _g72469_))
                ((let () (declare (not safe)) (##fx= _g72468_ 2))
                 (apply (lambda (_thunk72413_ _name72414_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk72413_ _name72414_)))
                        _g72469_))
                ((let () (declare (not safe)) (##fx= _g72468_ 3))
                 (apply (lambda (_thunk72418_ _name72419_ _tgroup72420_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk72418_
                             _name72419_
                             _tgroup72420_)))
                        _g72469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g72469_))))))
    (define thread-local-ref__%
      (lambda (_key72384_ _default72385_)
        (let ((_tab72387_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab72387_ _key72384_ _default72385_))))
    (define thread-local-ref__0
      (lambda (_key72392_)
        (let ((_default72394_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key72392_ _default72394_))))
    (define thread-local-ref
      (lambda _g72471_
        (let ((_g72470_ (let () (declare (not safe)) (##length _g72471_))))
          (cond ((let () (declare (not safe)) (##fx= _g72470_ 1))
                 (apply (lambda (_key72392_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key72392_)))
                        _g72471_))
                ((let () (declare (not safe)) (##fx= _g72470_ 2))
                 (apply (lambda (_key72396_ _default72397_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key72396_ _default72397_)))
                        _g72471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g72471_))))))
    (define thread-local-get
      (lambda (_key72381_)
        (let () (declare (not safe)) (thread-local-ref__% _key72381_ '#f))))
    (define thread-local-set!
      (lambda (_key72376_ _value72377_)
        (let ((_tab72379_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab72379_ _key72376_ _value72377_))))
    (define thread-local-clear!
      (lambda (_key72372_)
        (let ((_tab72374_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab72374_ _key72372_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr72358_ (current-thread)))
          (if (actor-thread? _thr72358_)
              (let ((_$e72360_ (actor-thread-locals _thr72358_)))
                (if _$e72360_
                    (values _$e72360_)
                    (let ((_tab72363_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr72358_ _tab72363_)
                      _tab72363_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr72358_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e72365_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr72358_))))
                      (if _$e72365_
                          ((lambda (_tab72368_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab72368_)
                           _$e72365_)
                          (let ((_tab72370_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr72358_
                               _tab72370_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab72370_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc72355_)
        (if (let () (declare (not safe)) (procedure? _proc72355_))
            '#!void
            (raise (let ((__obj72464
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72464
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc72355_ '())))
                     __obj72464)))
        (set! __unhandled-actor-exception-hook _proc72355_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx72343_ _proc72344_)
        (let ((_handler72346_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e72348_)
             (let ((__tmp72472
                    (lambda ()
                      (mutex-unlock! _mx72343_)
                      (_handler72346_ _e72348_))))
               (declare (not safe))
               (with-catch void __tmp72472))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e72348_)))
           (lambda ()
             (mutex-lock! _mx72343_)
             (let ((_result72352_ (_proc72344_)))
               (mutex-unlock! _mx72343_)
               _result72352_))))))
    (define with-dynamic-lock
      (lambda (_mx72338_ _proc72339_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx72338_))
         _proc72339_
         (lambda () (mutex-unlock! _mx72338_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk72319_ _error-port72320_)
        (with-exception-handler
         (let ((_E72322_ (current-exception-handler)))
           (lambda (_exn72324_)
             (continuation-capture
              (lambda (_cont72326_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont72326_
                       _exn72324_
                       _error-port72320_))
                    '#!void)
                (_E72322_ _exn72324_)))))
         _thunk72319_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk72331_)
        (let ((_error-port72333_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk72331_ _error-port72333_))))
    (define with-exception-stack-trace
      (lambda _g72474_
        (let ((_g72473_ (let () (declare (not safe)) (##length _g72474_))))
          (cond ((let () (declare (not safe)) (##fx= _g72473_ 1))
                 (apply (lambda (_thunk72331_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk72331_)))
                        _g72474_))
                ((let () (declare (not safe)) (##fx= _g72473_ 2))
                 (apply (lambda (_thunk72335_ _error-port72336_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk72335_
                             _error-port72336_)))
                        _g72474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g72474_))))))
    (define dump-stack-trace!__%
      (lambda (_cont72300_ _exn72301_ _error-port72302_)
        (let ((_out72304_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out72304_))
          (display '"*** Unhandled exception in " _out72304_)
          (display (current-thread) _out72304_)
          (newline _out72304_)
          (display-exception _exn72301_ _out72304_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn72301_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out72304_)
                (newline _out72304_)
                (display-continuation-backtrace _cont72300_ _out72304_)))
          (let ((__tmp72475 (get-output-string _out72304_)))
            (declare (not safe))
            (##write-string __tmp72475 _error-port72302_)))))
    (define dump-stack-trace!__0
      (lambda (_cont72309_ _exn72310_)
        (let ((_error-port72312_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont72309_ _exn72310_ _error-port72312_))))
    (define dump-stack-trace!
      (lambda _g72477_
        (let ((_g72476_ (let () (declare (not safe)) (##length _g72477_))))
          (cond ((let () (declare (not safe)) (##fx= _g72476_ 2))
                 (apply (lambda (_cont72309_ _exn72310_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont72309_ _exn72310_)))
                        _g72477_))
                ((let () (declare (not safe)) (##fx= _g72476_ 3))
                 (apply (lambda (_cont72314_ _exn72315_ _error-port72316_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72314_
                             _exn72315_
                             _error-port72316_)))
                        _g72477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g72477_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
