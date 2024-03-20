(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710943025)
  (begin
    (define spawn
      (lambda (_f74933_ . _args74934_)
        (if (let () (declare (not safe)) (procedure? _f74933_))
            '#!void
            (raise (let ((__obj74935
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74935
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74933_ '())))
                     __obj74935)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74933_ _args74934_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74929_ _f74930_ . _args74931_)
        (if (let () (declare (not safe)) (procedure? _f74930_))
            '#!void
            (raise (let ((__obj74936
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74936
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74930_ '())))
                     __obj74936)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74930_ _args74931_ _name74929_ '#f))))
    (define spawn/group
      (lambda (_name74923_ _f74924_ . _args74925_)
        (if (let () (declare (not safe)) (procedure? _f74924_))
            '#!void
            (raise (let ((__obj74937
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74937
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74924_ '())))
                     __obj74937)))
        (let ((_tgroup74927_ (make-thread-group _name74923_)))
          (declare (not safe))
          (spawn-actor _f74924_ _args74925_ _name74923_ _tgroup74927_))))
    (define spawn-actor
      (lambda (_f74896_ _args74897_ _name74898_ _tgroup74899_)
        (letrec ((_thread-main74901_
                  (lambda (_thunk74915_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn74918_)
                         (let ((__tmp74939
                                (lambda (_cont74920_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp74940
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont74920_
                                                _exn74918_))))
                                        (declare (not safe))
                                        (with-catch void __tmp74940))
                                      '#!void)
                                  (let ((__tmp74941
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont74920_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp74941
                                     ##primordial-exception-handler
                                     _exn74918_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp74939)))
                       _thunk74915_)))))
          (let* ((_thunk74904_
                  (if (let () (declare (not safe)) (null? _args74897_))
                      _f74896_
                      (lambda () (apply _f74896_ _args74897_))))
                 (_thunk74907_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74904_))))
                 (_tgroup74912_
                  (let ((_$e74909_ _tgroup74899_))
                    (if _$e74909_
                        _$e74909_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74901_ _thunk74907_))
              _name74898_
              _tgroup74912_))))))
    (define spawn-thread__%
      (lambda (_thunk74874_ _name74875_ _tgroup74876_)
        (thread-start! (make-thread _thunk74874_ _name74875_ _tgroup74876_))))
    (define spawn-thread__0
      (lambda (_thunk74881_)
        (let* ((_name74883_ absent-obj) (_tgroup74885_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74881_ _name74883_ _tgroup74885_))))
    (define spawn-thread__1
      (lambda (_thunk74887_ _name74888_)
        (let ((_tgroup74890_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74887_ _name74888_ _tgroup74890_))))
    (define spawn-thread
      (lambda _g74943_
        (let ((_g74942_ (let () (declare (not safe)) (##length _g74943_))))
          (cond ((let () (declare (not safe)) (##fx= _g74942_ 1))
                 (apply (lambda (_thunk74881_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74881_)))
                        _g74943_))
                ((let () (declare (not safe)) (##fx= _g74942_ 2))
                 (apply (lambda (_thunk74887_ _name74888_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74887_ _name74888_)))
                        _g74943_))
                ((let () (declare (not safe)) (##fx= _g74942_ 3))
                 (apply (lambda (_thunk74892_ _name74893_ _tgroup74894_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74892_
                             _name74893_
                             _tgroup74894_)))
                        _g74943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74943_))))))
    (define thread-local-ref__%
      (lambda (_key74858_ _default74859_)
        (let ((_tab74861_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74861_ _key74858_ _default74859_))))
    (define thread-local-ref__0
      (lambda (_key74866_)
        (let ((_default74868_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74866_ _default74868_))))
    (define thread-local-ref
      (lambda _g74945_
        (let ((_g74944_ (let () (declare (not safe)) (##length _g74945_))))
          (cond ((let () (declare (not safe)) (##fx= _g74944_ 1))
                 (apply (lambda (_key74866_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74866_)))
                        _g74945_))
                ((let () (declare (not safe)) (##fx= _g74944_ 2))
                 (apply (lambda (_key74870_ _default74871_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74870_ _default74871_)))
                        _g74945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74945_))))))
    (define thread-local-get
      (lambda (_key74855_)
        (let () (declare (not safe)) (thread-local-ref__% _key74855_ '#f))))
    (define thread-local-set!
      (lambda (_key74850_ _value74851_)
        (let ((_tab74853_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74853_ _key74850_ _value74851_))))
    (define thread-local-delete!
      (lambda (_key74846_)
        (let ((_tab74848_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74848_ _key74846_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74832_ (current-thread)))
          (if (actor-thread? _thr74832_)
              (let ((_$e74834_ (actor-thread-locals _thr74832_)))
                (if _$e74834_
                    (values _$e74834_)
                    (let ((_tab74837_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74832_ _tab74837_)
                      _tab74837_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74832_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74839_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74832_))))
                      (if _$e74839_
                          ((lambda (_tab74842_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74842_)
                           _$e74839_)
                          (let ((_tab74844_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74832_
                               _tab74844_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74844_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74829_)
        (if (let () (declare (not safe)) (procedure? _proc74829_))
            '#!void
            (raise (let ((__obj74938
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74938
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74829_ '())))
                     __obj74938)))
        (set! __unhandled-actor-exception-hook _proc74829_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74817_ _proc74818_)
        (let ((_handler74820_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e74822_)
             (let ((__tmp74946
                    (lambda ()
                      (mutex-unlock! _mx74817_)
                      (_handler74820_ _e74822_))))
               (declare (not safe))
               (with-catch void __tmp74946))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e74822_)))
           (lambda ()
             (mutex-lock! _mx74817_)
             (let ((_result74826_ (_proc74818_)))
               (mutex-unlock! _mx74817_)
               _result74826_))))))
    (define with-dynamic-lock
      (lambda (_mx74812_ _proc74813_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74812_))
         _proc74813_
         (lambda () (mutex-unlock! _mx74812_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74793_ _error-port74794_)
        (with-exception-handler
         (let ((_E74796_ (current-exception-handler)))
           (lambda (_exn74798_)
             (continuation-capture
              (lambda (_cont74800_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont74800_
                       _exn74798_
                       _error-port74794_))
                    '#!void)
                (_E74796_ _exn74798_)))))
         _thunk74793_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk74805_)
        (let ((_error-port74807_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74805_ _error-port74807_))))
    (define with-exception-stack-trace
      (lambda _g74948_
        (let ((_g74947_ (let () (declare (not safe)) (##length _g74948_))))
          (cond ((let () (declare (not safe)) (##fx= _g74947_ 1))
                 (apply (lambda (_thunk74805_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74805_)))
                        _g74948_))
                ((let () (declare (not safe)) (##fx= _g74947_ 2))
                 (apply (lambda (_thunk74809_ _error-port74810_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74809_
                             _error-port74810_)))
                        _g74948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74948_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74774_ _exn74775_ _error-port74776_)
        (let ((_out74778_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74778_))
          (display '"*** Unhandled exception in " _out74778_)
          (display (current-thread) _out74778_)
          (newline _out74778_)
          (display-exception _exn74775_ _out74778_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74775_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74778_)
                (newline _out74778_)
                (display-continuation-backtrace _cont74774_ _out74778_)))
          (let ((__tmp74949 (get-output-string _out74778_)))
            (declare (not safe))
            (##write-string __tmp74949 _error-port74776_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74783_ _exn74784_)
        (let ((_error-port74786_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74783_ _exn74784_ _error-port74786_))))
    (define dump-stack-trace!
      (lambda _g74951_
        (let ((_g74950_ (let () (declare (not safe)) (##length _g74951_))))
          (cond ((let () (declare (not safe)) (##fx= _g74950_ 2))
                 (apply (lambda (_cont74783_ _exn74784_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74783_ _exn74784_)))
                        _g74951_))
                ((let () (declare (not safe)) (##fx= _g74950_ 3))
                 (apply (lambda (_cont74788_ _exn74789_ _error-port74790_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74788_
                             _exn74789_
                             _error-port74790_)))
                        _g74951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74951_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
