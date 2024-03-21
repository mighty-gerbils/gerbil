(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710954836)
  (begin
    (define spawn
      (lambda (_f74914_ . _args74915_)
        (if (let () (declare (not safe)) (procedure? _f74914_))
            '#!void
            (raise (let ((__obj74916
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74916
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74914_ '())))
                     __obj74916)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74914_ _args74915_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74910_ _f74911_ . _args74912_)
        (if (let () (declare (not safe)) (procedure? _f74911_))
            '#!void
            (raise (let ((__obj74917
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74917
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74911_ '())))
                     __obj74917)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74911_ _args74912_ _name74910_ '#f))))
    (define spawn/group
      (lambda (_name74904_ _f74905_ . _args74906_)
        (if (let () (declare (not safe)) (procedure? _f74905_))
            '#!void
            (raise (let ((__obj74918
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74918
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74905_ '())))
                     __obj74918)))
        (let ((_tgroup74908_ (make-thread-group _name74904_)))
          (declare (not safe))
          (spawn-actor _f74905_ _args74906_ _name74904_ _tgroup74908_))))
    (define spawn-actor
      (lambda (_f74877_ _args74878_ _name74879_ _tgroup74880_)
        (letrec ((_thread-main74882_
                  (lambda (_thunk74896_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn74899_)
                         (let ((__tmp74920
                                (lambda (_cont74901_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp74921
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont74901_
                                                _exn74899_))))
                                        (declare (not safe))
                                        (with-catch void __tmp74921))
                                      '#!void)
                                  (let ((__tmp74922
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont74901_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp74922
                                     ##primordial-exception-handler
                                     _exn74899_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp74920)))
                       _thunk74896_)))))
          (let* ((_thunk74885_
                  (if (let () (declare (not safe)) (null? _args74878_))
                      _f74877_
                      (lambda () (apply _f74877_ _args74878_))))
                 (_thunk74888_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74885_))))
                 (_tgroup74893_
                  (let ((_$e74890_ _tgroup74880_))
                    (if _$e74890_
                        _$e74890_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74882_ _thunk74888_))
              _name74879_
              _tgroup74893_))))))
    (define spawn-thread__%
      (lambda (_thunk74855_ _name74856_ _tgroup74857_)
        (thread-start! (make-thread _thunk74855_ _name74856_ _tgroup74857_))))
    (define spawn-thread__0
      (lambda (_thunk74862_)
        (let* ((_name74864_ absent-obj) (_tgroup74866_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74862_ _name74864_ _tgroup74866_))))
    (define spawn-thread__1
      (lambda (_thunk74868_ _name74869_)
        (let ((_tgroup74871_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74868_ _name74869_ _tgroup74871_))))
    (define spawn-thread
      (lambda _g74924_
        (let ((_g74923_ (let () (declare (not safe)) (##length _g74924_))))
          (cond ((let () (declare (not safe)) (##fx= _g74923_ 1))
                 (apply (lambda (_thunk74862_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74862_)))
                        _g74924_))
                ((let () (declare (not safe)) (##fx= _g74923_ 2))
                 (apply (lambda (_thunk74868_ _name74869_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74868_ _name74869_)))
                        _g74924_))
                ((let () (declare (not safe)) (##fx= _g74923_ 3))
                 (apply (lambda (_thunk74873_ _name74874_ _tgroup74875_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74873_
                             _name74874_
                             _tgroup74875_)))
                        _g74924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74924_))))))
    (define thread-local-ref__%
      (lambda (_key74839_ _default74840_)
        (let ((_tab74842_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74842_ _key74839_ _default74840_))))
    (define thread-local-ref__0
      (lambda (_key74847_)
        (let ((_default74849_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74847_ _default74849_))))
    (define thread-local-ref
      (lambda _g74926_
        (let ((_g74925_ (let () (declare (not safe)) (##length _g74926_))))
          (cond ((let () (declare (not safe)) (##fx= _g74925_ 1))
                 (apply (lambda (_key74847_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74847_)))
                        _g74926_))
                ((let () (declare (not safe)) (##fx= _g74925_ 2))
                 (apply (lambda (_key74851_ _default74852_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74851_ _default74852_)))
                        _g74926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74926_))))))
    (define thread-local-get
      (lambda (_key74836_)
        (let () (declare (not safe)) (thread-local-ref__% _key74836_ '#f))))
    (define thread-local-set!
      (lambda (_key74831_ _value74832_)
        (let ((_tab74834_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74834_ _key74831_ _value74832_))))
    (define thread-local-delete!
      (lambda (_key74827_)
        (let ((_tab74829_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74829_ _key74827_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74813_ (current-thread)))
          (if (actor-thread? _thr74813_)
              (let ((_$e74815_ (actor-thread-locals _thr74813_)))
                (if _$e74815_
                    (values _$e74815_)
                    (let ((_tab74818_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74813_ _tab74818_)
                      _tab74818_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74813_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74820_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74813_))))
                      (if _$e74820_
                          ((lambda (_tab74823_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74823_)
                           _$e74820_)
                          (let ((_tab74825_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74813_
                               _tab74825_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74825_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74810_)
        (if (let () (declare (not safe)) (procedure? _proc74810_))
            '#!void
            (raise (let ((__obj74919
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74919
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74810_ '())))
                     __obj74919)))
        (set! __unhandled-actor-exception-hook _proc74810_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74798_ _proc74799_)
        (let ((_handler74801_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e74803_)
             (let ((__tmp74927
                    (lambda ()
                      (mutex-unlock! _mx74798_)
                      (_handler74801_ _e74803_))))
               (declare (not safe))
               (with-catch void __tmp74927))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e74803_)))
           (lambda ()
             (mutex-lock! _mx74798_)
             (let ((_result74807_ (_proc74799_)))
               (mutex-unlock! _mx74798_)
               _result74807_))))))
    (define with-dynamic-lock
      (lambda (_mx74793_ _proc74794_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74793_))
         _proc74794_
         (lambda () (mutex-unlock! _mx74793_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74774_ _error-port74775_)
        (with-exception-handler
         (let ((_E74777_ (current-exception-handler)))
           (lambda (_exn74779_)
             (continuation-capture
              (lambda (_cont74781_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont74781_
                       _exn74779_
                       _error-port74775_))
                    '#!void)
                (_E74777_ _exn74779_)))))
         _thunk74774_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk74786_)
        (let ((_error-port74788_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74786_ _error-port74788_))))
    (define with-exception-stack-trace
      (lambda _g74929_
        (let ((_g74928_ (let () (declare (not safe)) (##length _g74929_))))
          (cond ((let () (declare (not safe)) (##fx= _g74928_ 1))
                 (apply (lambda (_thunk74786_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74786_)))
                        _g74929_))
                ((let () (declare (not safe)) (##fx= _g74928_ 2))
                 (apply (lambda (_thunk74790_ _error-port74791_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74790_
                             _error-port74791_)))
                        _g74929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74929_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74755_ _exn74756_ _error-port74757_)
        (let ((_out74759_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74759_))
          (display '"*** Unhandled exception in " _out74759_)
          (display (current-thread) _out74759_)
          (newline _out74759_)
          (display-exception _exn74756_ _out74759_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74756_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74759_)
                (newline _out74759_)
                (display-continuation-backtrace _cont74755_ _out74759_)))
          (let ((__tmp74930 (get-output-string _out74759_)))
            (declare (not safe))
            (##write-string __tmp74930 _error-port74757_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74764_ _exn74765_)
        (let ((_error-port74767_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74764_ _exn74765_ _error-port74767_))))
    (define dump-stack-trace!
      (lambda _g74932_
        (let ((_g74931_ (let () (declare (not safe)) (##length _g74932_))))
          (cond ((let () (declare (not safe)) (##fx= _g74931_ 2))
                 (apply (lambda (_cont74764_ _exn74765_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74764_ _exn74765_)))
                        _g74932_))
                ((let () (declare (not safe)) (##fx= _g74931_ 3))
                 (apply (lambda (_cont74769_ _exn74770_ _error-port74771_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74769_
                             _exn74770_
                             _error-port74771_)))
                        _g74932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74932_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
