(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1711709197)
  (begin
    (define spawn
      (lambda (_f73602_ . _args73603_)
        (if (let () (declare (not safe)) (procedure? _f73602_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f73602_)))
        (apply __spawn _f73602_ _args73603_)))
    (define __spawn
      (lambda (_f73598_ . _args73599_)
        (let ()
          (let ()
            (declare (not safe))
            (spawn-actor _f73598_ _args73599_ '#!void '#f)))))
    (define spawn/name
      (lambda (_name73594_ _f73595_ . _args73596_)
        (if (let () (declare (not safe)) (procedure? _f73595_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f73595_)))
        (apply __spawn/name _name73594_ _f73595_ _args73596_)))
    (define __spawn/name
      (lambda (_name73589_ _f73590_ . _args73591_)
        (let ()
          (let ()
            (declare (not safe))
            (spawn-actor _f73590_ _args73591_ _name73589_ '#f)))))
    (define spawn/group
      (lambda (_name73585_ _f73586_ . _args73587_)
        (if (let () (declare (not safe)) (procedure? _f73586_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _f73586_)))
        (apply __spawn/group _name73585_ _f73586_ _args73587_)))
    (define __spawn/group
      (lambda (_name73578_ _f73579_ . _args73580_)
        (let ()
          (let ((_tgroup73583_ (make-thread-group _name73578_)))
            (declare (not safe))
            (spawn-actor _f73579_ _args73580_ _name73578_ _tgroup73583_)))))
    (define spawn-actor
      (lambda (_f73551_ _args73552_ _name73553_ _tgroup73554_)
        (letrec ((_thread-main73556_
                  (lambda (_thunk73570_)
                    (lambda ()
                      (let ((__tmp73605
                             (lambda (_exn73573_)
                               (let ((__tmp73606
                                      (lambda (_cont73575_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp73607
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _cont73575_
                                                      _exn73573_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp73607))
                                            '#!void)
                                        (let ((__tmp73608
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _cont73575_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp73608
                                           ##primordial-exception-handler
                                           _exn73573_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp73606)))))
                        (declare (not safe))
                        (with-exception-handler __tmp73605 _thunk73570_))))))
          (let* ((_thunk73559_
                  (if (let () (declare (not safe)) (null? _args73552_))
                      _f73551_
                      (lambda () (apply _f73551_ _args73552_))))
                 (_thunk73562_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73559_))))
                 (_tgroup73567_
                  (let ((_$e73564_ _tgroup73554_))
                    (if _$e73564_
                        _$e73564_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73556_ _thunk73562_))
              _name73553_
              _tgroup73567_))))))
    (define spawn-thread__%
      (lambda (_thunk73529_ _name73530_ _tgroup73531_)
        (thread-start! (make-thread _thunk73529_ _name73530_ _tgroup73531_))))
    (define spawn-thread__0
      (lambda (_thunk73536_)
        (let* ((_name73538_ absent-obj) (_tgroup73540_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73536_ _name73538_ _tgroup73540_))))
    (define spawn-thread__1
      (lambda (_thunk73542_ _name73543_)
        (let ((_tgroup73545_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73542_ _name73543_ _tgroup73545_))))
    (define spawn-thread
      (lambda _g73610_
        (let ((_g73609_ (let () (declare (not safe)) (##length _g73610_))))
          (cond ((let () (declare (not safe)) (##fx= _g73609_ 1))
                 (apply (lambda (_thunk73536_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk73536_)))
                        _g73610_))
                ((let () (declare (not safe)) (##fx= _g73609_ 2))
                 (apply (lambda (_thunk73542_ _name73543_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk73542_ _name73543_)))
                        _g73610_))
                ((let () (declare (not safe)) (##fx= _g73609_ 3))
                 (apply (lambda (_thunk73547_ _name73548_ _tgroup73549_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk73547_
                             _name73548_
                             _tgroup73549_)))
                        _g73610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73610_))))))
    (define thread-local-ref__%
      (lambda (_key73513_ _default73514_)
        (let ((_tab73516_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab73516_ _key73513_ _default73514_))))
    (define thread-local-ref__0
      (lambda (_key73521_)
        (let ((_default73523_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key73521_ _default73523_))))
    (define thread-local-ref
      (lambda _g73612_
        (let ((_g73611_ (let () (declare (not safe)) (##length _g73612_))))
          (cond ((let () (declare (not safe)) (##fx= _g73611_ 1))
                 (apply (lambda (_key73521_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key73521_)))
                        _g73612_))
                ((let () (declare (not safe)) (##fx= _g73611_ 2))
                 (apply (lambda (_key73525_ _default73526_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key73525_ _default73526_)))
                        _g73612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73612_))))))
    (define thread-local-get
      (lambda (_key73510_)
        (let () (declare (not safe)) (thread-local-ref__% _key73510_ '#f))))
    (define thread-local-set!
      (lambda (_key73505_ _value73506_)
        (let ((_tab73508_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab73508_ _key73505_ _value73506_))))
    (define thread-local-delete!
      (lambda (_key73501_)
        (let ((_tab73503_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab73503_ _key73501_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr73487_ (current-thread)))
          (if (actor-thread? _thr73487_)
              (let ((_$e73489_ (actor-thread-locals _thr73487_)))
                (if _$e73489_
                    (values _$e73489_)
                    (let ((_tab73492_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr73487_ _tab73492_)
                      _tab73492_)))
              (if (eq? _thr73487_ ##primordial-thread)
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e73494_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr73487_))))
                      (if _$e73494_
                          ((lambda (_tab73497_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab73497_)
                           _$e73494_)
                          (let ((_tab73499_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr73487_
                               _tab73499_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab73499_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc73484_)
        (if (let () (declare (not safe)) (procedure? _proc73484_))
            '#!void
            (let ((__tmp73613
                   (let ((__obj73604
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73604
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _proc73484_ '()))
                     __obj73604)))
              (declare (not safe))
              (raise __tmp73613)))
        (set! __unhandled-actor-exception-hook _proc73484_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx73480_ _proc73481_)
        (if (let () (declare (not safe)) (mutex? _mx73480_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'mutex::t _mx73480_)))
        (if (let () (declare (not safe)) (procedure? _proc73481_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _proc73481_)))
        (let () (declare (not safe)) (__with-lock _mx73480_ _proc73481_))))
    (define __with-lock
      (lambda (_mx73468_ _proc73469_)
        (let ()
          (let ((_handler73472_ (current-exception-handler)))
            (let ((__tmp73615
                   (lambda (_e73474_)
                     (let ((__tmp73616
                            (lambda ()
                              (mutex-unlock! _mx73468_)
                              (_handler73472_ _e73474_))))
                       (declare (not safe))
                       (__with-catch void __tmp73616))
                     (let ()
                       (declare (not safe))
                       (##thread-end-with-uncaught-exception! _e73474_))))
                  (__tmp73614
                   (lambda ()
                     (mutex-lock! _mx73468_)
                     (let ((_result73478_
                            (let () (declare (not safe)) (_proc73469_))))
                       (mutex-unlock! _mx73468_)
                       _result73478_))))
              (declare (not safe))
              (__with-exception-handler __tmp73615 __tmp73614))))))
    (define with-dynamic-lock
      (lambda (_mx73465_ _proc73466_)
        (if (let () (declare (not safe)) (mutex? _mx73465_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'mutex::t _mx73465_)))
        (if (let () (declare (not safe)) (procedure? _proc73466_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _proc73466_)))
        (let ()
          (declare (not safe))
          (__with-dynamic-lock _mx73465_ _proc73466_))))
    (define __with-dynamic-lock
      (lambda (_mx73459_ _proc73460_)
        (let ()
          (let ((__tmp73618 (lambda () (mutex-lock! _mx73459_)))
                (__tmp73617 (lambda () (mutex-unlock! _mx73459_))))
            (declare (not safe))
            (##dynamic-wind __tmp73618 _proc73460_ __tmp73617)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk73446_ _error-port73447_)
        (if (let () (declare (not safe)) (procedure? _thunk73446_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _thunk73446_)))
        (if (let () (declare (not safe)) (port? _error-port73447_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'port::t
                     _error-port73447_)))
        (let ()
          (declare (not safe))
          (__with-exception-stack-trace__% _thunk73446_ _error-port73447_))))
    (define with-exception-stack-trace__0
      (lambda (_thunk73452_)
        (let ((_error-port73454_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk73452_ _error-port73454_))))
    (define with-exception-stack-trace
      (lambda _g73620_
        (let ((_g73619_ (let () (declare (not safe)) (##length _g73620_))))
          (cond ((let () (declare (not safe)) (##fx= _g73619_ 1))
                 (apply (lambda (_thunk73452_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk73452_)))
                        _g73620_))
                ((let () (declare (not safe)) (##fx= _g73619_ 2))
                 (apply (lambda (_thunk73456_ _error-port73457_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk73456_
                             _error-port73457_)))
                        _g73620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73620_))))))
    (define __with-exception-stack-trace__%
      (lambda (_thunk73425_ _error-port73426_)
        (let ()
          (let ((__tmp73621
                 (let ((_E73429_ (current-exception-handler)))
                   (lambda (_exn73431_)
                     (let ((__tmp73622
                            (lambda (_cont73433_)
                              (if (dump-stack-trace?)
                                  (let ()
                                    (declare (not safe))
                                    (dump-stack-trace!__%
                                     _cont73433_
                                     _exn73431_
                                     _error-port73426_))
                                  '#!void)
                              (_E73429_ _exn73431_))))
                       (declare (not safe))
                       (##continuation-capture __tmp73622))))))
            (declare (not safe))
            (__with-exception-handler __tmp73621 _thunk73425_)))))
    (define __with-exception-stack-trace__0
      (lambda (_thunk73438_)
        (let ((_error-port73440_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__% _thunk73438_ _error-port73440_))))
    (define __with-exception-stack-trace
      (lambda _g73624_
        (let ((_g73623_ (let () (declare (not safe)) (##length _g73624_))))
          (cond ((let () (declare (not safe)) (##fx= _g73623_ 1))
                 (apply (lambda (_thunk73438_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _thunk73438_)))
                        _g73624_))
                ((let () (declare (not safe)) (##fx= _g73623_ 2))
                 (apply (lambda (_thunk73442_ _error-port73443_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _thunk73442_
                             _error-port73443_)))
                        _g73624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g73624_))))))
    (define dump-stack-trace!__%
      (lambda (_cont73406_ _exn73407_ _error-port73408_)
        (let ((_out73410_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out73410_))
          (display '"*** Unhandled exception in " _out73410_)
          (display (current-thread) _out73410_)
          (newline _out73410_)
          (let ()
            (declare (not safe))
            (display-exception _exn73407_ _out73410_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn73407_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out73410_)
                (newline _out73410_)
                (display-continuation-backtrace _cont73406_ _out73410_)))
          (let ((__tmp73625 (get-output-string _out73410_)))
            (declare (not safe))
            (##write-string __tmp73625 _error-port73408_)))))
    (define dump-stack-trace!__0
      (lambda (_cont73415_ _exn73416_)
        (let ((_error-port73418_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont73415_ _exn73416_ _error-port73418_))))
    (define dump-stack-trace!
      (lambda _g73627_
        (let ((_g73626_ (let () (declare (not safe)) (##length _g73627_))))
          (cond ((let () (declare (not safe)) (##fx= _g73626_ 2))
                 (apply (lambda (_cont73415_ _exn73416_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont73415_ _exn73416_)))
                        _g73627_))
                ((let () (declare (not safe)) (##fx= _g73626_ 3))
                 (apply (lambda (_cont73420_ _exn73421_ _error-port73422_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont73420_
                             _exn73421_
                             _error-port73422_)))
                        _g73627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73627_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
