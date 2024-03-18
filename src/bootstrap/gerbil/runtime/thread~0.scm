(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710776831)
  (begin
    (define spawn
      (lambda (_f74881_ . _args74882_)
        (if (let () (declare (not safe)) (procedure? _f74881_))
            '#!void
            (raise (let ((__obj74883
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74883
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74881_ '())))
                     __obj74883)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74881_ _args74882_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74877_ _f74878_ . _args74879_)
        (if (let () (declare (not safe)) (procedure? _f74878_))
            '#!void
            (raise (let ((__obj74884
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74884
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74878_ '())))
                     __obj74884)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74878_ _args74879_ _name74877_ '#f))))
    (define spawn/group
      (lambda (_name74871_ _f74872_ . _args74873_)
        (if (let () (declare (not safe)) (procedure? _f74872_))
            '#!void
            (raise (let ((__obj74885
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74885
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74872_ '())))
                     __obj74885)))
        (let ((_tgroup74875_ (make-thread-group _name74871_)))
          (declare (not safe))
          (spawn-actor _f74872_ _args74873_ _name74871_ _tgroup74875_))))
    (define spawn-actor
      (lambda (_f74844_ _args74845_ _name74846_ _tgroup74847_)
        (letrec ((_thread-main74849_
                  (lambda (_thunk74863_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn74866_)
                         (let ((__tmp74887
                                (lambda (_cont74868_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp74888
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont74868_
                                                _exn74866_))))
                                        (declare (not safe))
                                        (with-catch void __tmp74888))
                                      '#!void)
                                  (let ((__tmp74889
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont74868_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp74889
                                     ##primordial-exception-handler
                                     _exn74866_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp74887)))
                       _thunk74863_)))))
          (let* ((_thunk74852_
                  (if (let () (declare (not safe)) (null? _args74845_))
                      _f74844_
                      (lambda () (apply _f74844_ _args74845_))))
                 (_thunk74855_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74852_))))
                 (_tgroup74860_
                  (let ((_$e74857_ _tgroup74847_))
                    (if _$e74857_
                        _$e74857_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74849_ _thunk74855_))
              _name74846_
              _tgroup74860_))))))
    (define spawn-thread__%
      (lambda (_thunk74822_ _name74823_ _tgroup74824_)
        (thread-start! (make-thread _thunk74822_ _name74823_ _tgroup74824_))))
    (define spawn-thread__0
      (lambda (_thunk74829_)
        (let* ((_name74831_ absent-obj) (_tgroup74833_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74829_ _name74831_ _tgroup74833_))))
    (define spawn-thread__1
      (lambda (_thunk74835_ _name74836_)
        (let ((_tgroup74838_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74835_ _name74836_ _tgroup74838_))))
    (define spawn-thread
      (lambda _g74891_
        (let ((_g74890_ (let () (declare (not safe)) (##length _g74891_))))
          (cond ((let () (declare (not safe)) (##fx= _g74890_ 1))
                 (apply (lambda (_thunk74829_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74829_)))
                        _g74891_))
                ((let () (declare (not safe)) (##fx= _g74890_ 2))
                 (apply (lambda (_thunk74835_ _name74836_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74835_ _name74836_)))
                        _g74891_))
                ((let () (declare (not safe)) (##fx= _g74890_ 3))
                 (apply (lambda (_thunk74840_ _name74841_ _tgroup74842_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74840_
                             _name74841_
                             _tgroup74842_)))
                        _g74891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74891_))))))
    (define thread-local-ref__%
      (lambda (_key74806_ _default74807_)
        (let ((_tab74809_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74809_ _key74806_ _default74807_))))
    (define thread-local-ref__0
      (lambda (_key74814_)
        (let ((_default74816_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74814_ _default74816_))))
    (define thread-local-ref
      (lambda _g74893_
        (let ((_g74892_ (let () (declare (not safe)) (##length _g74893_))))
          (cond ((let () (declare (not safe)) (##fx= _g74892_ 1))
                 (apply (lambda (_key74814_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74814_)))
                        _g74893_))
                ((let () (declare (not safe)) (##fx= _g74892_ 2))
                 (apply (lambda (_key74818_ _default74819_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74818_ _default74819_)))
                        _g74893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74893_))))))
    (define thread-local-get
      (lambda (_key74803_)
        (let () (declare (not safe)) (thread-local-ref__% _key74803_ '#f))))
    (define thread-local-set!
      (lambda (_key74798_ _value74799_)
        (let ((_tab74801_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74801_ _key74798_ _value74799_))))
    (define thread-local-delete!
      (lambda (_key74794_)
        (let ((_tab74796_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74796_ _key74794_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74780_ (current-thread)))
          (if (actor-thread? _thr74780_)
              (let ((_$e74782_ (actor-thread-locals _thr74780_)))
                (if _$e74782_
                    (values _$e74782_)
                    (let ((_tab74785_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74780_ _tab74785_)
                      _tab74785_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74780_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74787_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74780_))))
                      (if _$e74787_
                          ((lambda (_tab74790_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74790_)
                           _$e74787_)
                          (let ((_tab74792_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74780_
                               _tab74792_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74792_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74777_)
        (if (let () (declare (not safe)) (procedure? _proc74777_))
            '#!void
            (raise (let ((__obj74886
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74886
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74777_ '())))
                     __obj74886)))
        (set! __unhandled-actor-exception-hook _proc74777_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74765_ _proc74766_)
        (let ((_handler74768_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e74770_)
             (let ((__tmp74894
                    (lambda ()
                      (mutex-unlock! _mx74765_)
                      (_handler74768_ _e74770_))))
               (declare (not safe))
               (with-catch void __tmp74894))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e74770_)))
           (lambda ()
             (mutex-lock! _mx74765_)
             (let ((_result74774_ (_proc74766_)))
               (mutex-unlock! _mx74765_)
               _result74774_))))))
    (define with-dynamic-lock
      (lambda (_mx74760_ _proc74761_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74760_))
         _proc74761_
         (lambda () (mutex-unlock! _mx74760_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74741_ _error-port74742_)
        (with-exception-handler
         (let ((_E74744_ (current-exception-handler)))
           (lambda (_exn74746_)
             (continuation-capture
              (lambda (_cont74748_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont74748_
                       _exn74746_
                       _error-port74742_))
                    '#!void)
                (_E74744_ _exn74746_)))))
         _thunk74741_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk74753_)
        (let ((_error-port74755_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74753_ _error-port74755_))))
    (define with-exception-stack-trace
      (lambda _g74896_
        (let ((_g74895_ (let () (declare (not safe)) (##length _g74896_))))
          (cond ((let () (declare (not safe)) (##fx= _g74895_ 1))
                 (apply (lambda (_thunk74753_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74753_)))
                        _g74896_))
                ((let () (declare (not safe)) (##fx= _g74895_ 2))
                 (apply (lambda (_thunk74757_ _error-port74758_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74757_
                             _error-port74758_)))
                        _g74896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74896_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74722_ _exn74723_ _error-port74724_)
        (let ((_out74726_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74726_))
          (display '"*** Unhandled exception in " _out74726_)
          (display (current-thread) _out74726_)
          (newline _out74726_)
          (display-exception _exn74723_ _out74726_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74723_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74726_)
                (newline _out74726_)
                (display-continuation-backtrace _cont74722_ _out74726_)))
          (let ((__tmp74897 (get-output-string _out74726_)))
            (declare (not safe))
            (##write-string __tmp74897 _error-port74724_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74731_ _exn74732_)
        (let ((_error-port74734_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74731_ _exn74732_ _error-port74734_))))
    (define dump-stack-trace!
      (lambda _g74899_
        (let ((_g74898_ (let () (declare (not safe)) (##length _g74899_))))
          (cond ((let () (declare (not safe)) (##fx= _g74898_ 2))
                 (apply (lambda (_cont74731_ _exn74732_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74731_ _exn74732_)))
                        _g74899_))
                ((let () (declare (not safe)) (##fx= _g74898_ 3))
                 (apply (lambda (_cont74736_ _exn74737_ _error-port74738_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74736_
                             _exn74737_
                             _error-port74738_)))
                        _g74899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74899_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
