(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710833424)
  (begin
    (define spawn
      (lambda (_f74932_ . _args74933_)
        (if (let () (declare (not safe)) (procedure? _f74932_))
            '#!void
            (raise (let ((__obj74934
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74934
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74932_ '())))
                     __obj74934)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74932_ _args74933_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74928_ _f74929_ . _args74930_)
        (if (let () (declare (not safe)) (procedure? _f74929_))
            '#!void
            (raise (let ((__obj74935
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74935
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74929_ '())))
                     __obj74935)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74929_ _args74930_ _name74928_ '#f))))
    (define spawn/group
      (lambda (_name74922_ _f74923_ . _args74924_)
        (if (let () (declare (not safe)) (procedure? _f74923_))
            '#!void
            (raise (let ((__obj74936
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74936
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74923_ '())))
                     __obj74936)))
        (let ((_tgroup74926_ (make-thread-group _name74922_)))
          (declare (not safe))
          (spawn-actor _f74923_ _args74924_ _name74922_ _tgroup74926_))))
    (define spawn-actor
      (lambda (_f74895_ _args74896_ _name74897_ _tgroup74898_)
        (letrec ((_thread-main74900_
                  (lambda (_thunk74914_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn74917_)
                         (let ((__tmp74938
                                (lambda (_cont74919_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp74939
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont74919_
                                                _exn74917_))))
                                        (declare (not safe))
                                        (with-catch void __tmp74939))
                                      '#!void)
                                  (let ((__tmp74940
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont74919_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp74940
                                     ##primordial-exception-handler
                                     _exn74917_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp74938)))
                       _thunk74914_)))))
          (let* ((_thunk74903_
                  (if (let () (declare (not safe)) (null? _args74896_))
                      _f74895_
                      (lambda () (apply _f74895_ _args74896_))))
                 (_thunk74906_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74903_))))
                 (_tgroup74911_
                  (let ((_$e74908_ _tgroup74898_))
                    (if _$e74908_
                        _$e74908_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74900_ _thunk74906_))
              _name74897_
              _tgroup74911_))))))
    (define spawn-thread__%
      (lambda (_thunk74873_ _name74874_ _tgroup74875_)
        (thread-start! (make-thread _thunk74873_ _name74874_ _tgroup74875_))))
    (define spawn-thread__0
      (lambda (_thunk74880_)
        (let* ((_name74882_ absent-obj) (_tgroup74884_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74880_ _name74882_ _tgroup74884_))))
    (define spawn-thread__1
      (lambda (_thunk74886_ _name74887_)
        (let ((_tgroup74889_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74886_ _name74887_ _tgroup74889_))))
    (define spawn-thread
      (lambda _g74942_
        (let ((_g74941_ (let () (declare (not safe)) (##length _g74942_))))
          (cond ((let () (declare (not safe)) (##fx= _g74941_ 1))
                 (apply (lambda (_thunk74880_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74880_)))
                        _g74942_))
                ((let () (declare (not safe)) (##fx= _g74941_ 2))
                 (apply (lambda (_thunk74886_ _name74887_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74886_ _name74887_)))
                        _g74942_))
                ((let () (declare (not safe)) (##fx= _g74941_ 3))
                 (apply (lambda (_thunk74891_ _name74892_ _tgroup74893_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74891_
                             _name74892_
                             _tgroup74893_)))
                        _g74942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74942_))))))
    (define thread-local-ref__%
      (lambda (_key74857_ _default74858_)
        (let ((_tab74860_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74860_ _key74857_ _default74858_))))
    (define thread-local-ref__0
      (lambda (_key74865_)
        (let ((_default74867_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74865_ _default74867_))))
    (define thread-local-ref
      (lambda _g74944_
        (let ((_g74943_ (let () (declare (not safe)) (##length _g74944_))))
          (cond ((let () (declare (not safe)) (##fx= _g74943_ 1))
                 (apply (lambda (_key74865_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74865_)))
                        _g74944_))
                ((let () (declare (not safe)) (##fx= _g74943_ 2))
                 (apply (lambda (_key74869_ _default74870_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74869_ _default74870_)))
                        _g74944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74944_))))))
    (define thread-local-get
      (lambda (_key74854_)
        (let () (declare (not safe)) (thread-local-ref__% _key74854_ '#f))))
    (define thread-local-set!
      (lambda (_key74849_ _value74850_)
        (let ((_tab74852_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74852_ _key74849_ _value74850_))))
    (define thread-local-delete!
      (lambda (_key74845_)
        (let ((_tab74847_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74847_ _key74845_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74831_ (current-thread)))
          (if (actor-thread? _thr74831_)
              (let ((_$e74833_ (actor-thread-locals _thr74831_)))
                (if _$e74833_
                    (values _$e74833_)
                    (let ((_tab74836_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74831_ _tab74836_)
                      _tab74836_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74831_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74838_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74831_))))
                      (if _$e74838_
                          ((lambda (_tab74841_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74841_)
                           _$e74838_)
                          (let ((_tab74843_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74831_
                               _tab74843_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74843_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74828_)
        (if (let () (declare (not safe)) (procedure? _proc74828_))
            '#!void
            (raise (let ((__obj74937
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74937
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74828_ '())))
                     __obj74937)))
        (set! __unhandled-actor-exception-hook _proc74828_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74816_ _proc74817_)
        (let ((_handler74819_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e74821_)
             (let ((__tmp74945
                    (lambda ()
                      (mutex-unlock! _mx74816_)
                      (_handler74819_ _e74821_))))
               (declare (not safe))
               (with-catch void __tmp74945))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e74821_)))
           (lambda ()
             (mutex-lock! _mx74816_)
             (let ((_result74825_ (_proc74817_)))
               (mutex-unlock! _mx74816_)
               _result74825_))))))
    (define with-dynamic-lock
      (lambda (_mx74811_ _proc74812_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74811_))
         _proc74812_
         (lambda () (mutex-unlock! _mx74811_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74792_ _error-port74793_)
        (with-exception-handler
         (let ((_E74795_ (current-exception-handler)))
           (lambda (_exn74797_)
             (continuation-capture
              (lambda (_cont74799_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont74799_
                       _exn74797_
                       _error-port74793_))
                    '#!void)
                (_E74795_ _exn74797_)))))
         _thunk74792_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk74804_)
        (let ((_error-port74806_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74804_ _error-port74806_))))
    (define with-exception-stack-trace
      (lambda _g74947_
        (let ((_g74946_ (let () (declare (not safe)) (##length _g74947_))))
          (cond ((let () (declare (not safe)) (##fx= _g74946_ 1))
                 (apply (lambda (_thunk74804_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74804_)))
                        _g74947_))
                ((let () (declare (not safe)) (##fx= _g74946_ 2))
                 (apply (lambda (_thunk74808_ _error-port74809_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74808_
                             _error-port74809_)))
                        _g74947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74947_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74773_ _exn74774_ _error-port74775_)
        (let ((_out74777_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74777_))
          (display '"*** Unhandled exception in " _out74777_)
          (display (current-thread) _out74777_)
          (newline _out74777_)
          (display-exception _exn74774_ _out74777_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74774_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74777_)
                (newline _out74777_)
                (display-continuation-backtrace _cont74773_ _out74777_)))
          (let ((__tmp74948 (get-output-string _out74777_)))
            (declare (not safe))
            (##write-string __tmp74948 _error-port74775_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74782_ _exn74783_)
        (let ((_error-port74785_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74782_ _exn74783_ _error-port74785_))))
    (define dump-stack-trace!
      (lambda _g74950_
        (let ((_g74949_ (let () (declare (not safe)) (##length _g74950_))))
          (cond ((let () (declare (not safe)) (##fx= _g74949_ 2))
                 (apply (lambda (_cont74782_ _exn74783_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74782_ _exn74783_)))
                        _g74950_))
                ((let () (declare (not safe)) (##fx= _g74949_ 3))
                 (apply (lambda (_cont74787_ _exn74788_ _error-port74789_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74787_
                             _exn74788_
                             _error-port74789_)))
                        _g74950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74950_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
