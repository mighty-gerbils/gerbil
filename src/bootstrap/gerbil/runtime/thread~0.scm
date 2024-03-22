(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1711108655)
  (begin
    (define spawn
      (lambda (_f74923_ . _args74924_)
        (if (let () (declare (not safe)) (procedure? _f74923_))
            '#!void
            (raise (let ((__obj74925
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74925
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74923_ '())))
                     __obj74925)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74923_ _args74924_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74919_ _f74920_ . _args74921_)
        (if (let () (declare (not safe)) (procedure? _f74920_))
            '#!void
            (raise (let ((__obj74926
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74926
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74920_ '())))
                     __obj74926)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74920_ _args74921_ _name74919_ '#f))))
    (define spawn/group
      (lambda (_name74913_ _f74914_ . _args74915_)
        (if (let () (declare (not safe)) (procedure? _f74914_))
            '#!void
            (raise (let ((__obj74927
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74927
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74914_ '())))
                     __obj74927)))
        (let ((_tgroup74917_ (make-thread-group _name74913_)))
          (declare (not safe))
          (spawn-actor _f74914_ _args74915_ _name74913_ _tgroup74917_))))
    (define spawn-actor
      (lambda (_f74886_ _args74887_ _name74888_ _tgroup74889_)
        (letrec ((_thread-main74891_
                  (lambda (_thunk74905_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn74908_)
                         (let ((__tmp74929
                                (lambda (_cont74910_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp74930
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont74910_
                                                _exn74908_))))
                                        (declare (not safe))
                                        (with-catch void __tmp74930))
                                      '#!void)
                                  (let ((__tmp74931
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont74910_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp74931
                                     ##primordial-exception-handler
                                     _exn74908_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp74929)))
                       _thunk74905_)))))
          (let* ((_thunk74894_
                  (if (let () (declare (not safe)) (null? _args74887_))
                      _f74886_
                      (lambda () (apply _f74886_ _args74887_))))
                 (_thunk74897_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74894_))))
                 (_tgroup74902_
                  (let ((_$e74899_ _tgroup74889_))
                    (if _$e74899_
                        _$e74899_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74891_ _thunk74897_))
              _name74888_
              _tgroup74902_))))))
    (define spawn-thread__%
      (lambda (_thunk74864_ _name74865_ _tgroup74866_)
        (thread-start! (make-thread _thunk74864_ _name74865_ _tgroup74866_))))
    (define spawn-thread__0
      (lambda (_thunk74871_)
        (let* ((_name74873_ absent-obj) (_tgroup74875_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74871_ _name74873_ _tgroup74875_))))
    (define spawn-thread__1
      (lambda (_thunk74877_ _name74878_)
        (let ((_tgroup74880_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74877_ _name74878_ _tgroup74880_))))
    (define spawn-thread
      (lambda _g74933_
        (let ((_g74932_ (let () (declare (not safe)) (##length _g74933_))))
          (cond ((let () (declare (not safe)) (##fx= _g74932_ 1))
                 (apply (lambda (_thunk74871_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74871_)))
                        _g74933_))
                ((let () (declare (not safe)) (##fx= _g74932_ 2))
                 (apply (lambda (_thunk74877_ _name74878_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74877_ _name74878_)))
                        _g74933_))
                ((let () (declare (not safe)) (##fx= _g74932_ 3))
                 (apply (lambda (_thunk74882_ _name74883_ _tgroup74884_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74882_
                             _name74883_
                             _tgroup74884_)))
                        _g74933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74933_))))))
    (define thread-local-ref__%
      (lambda (_key74848_ _default74849_)
        (let ((_tab74851_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74851_ _key74848_ _default74849_))))
    (define thread-local-ref__0
      (lambda (_key74856_)
        (let ((_default74858_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74856_ _default74858_))))
    (define thread-local-ref
      (lambda _g74935_
        (let ((_g74934_ (let () (declare (not safe)) (##length _g74935_))))
          (cond ((let () (declare (not safe)) (##fx= _g74934_ 1))
                 (apply (lambda (_key74856_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74856_)))
                        _g74935_))
                ((let () (declare (not safe)) (##fx= _g74934_ 2))
                 (apply (lambda (_key74860_ _default74861_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74860_ _default74861_)))
                        _g74935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74935_))))))
    (define thread-local-get
      (lambda (_key74845_)
        (let () (declare (not safe)) (thread-local-ref__% _key74845_ '#f))))
    (define thread-local-set!
      (lambda (_key74840_ _value74841_)
        (let ((_tab74843_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74843_ _key74840_ _value74841_))))
    (define thread-local-delete!
      (lambda (_key74836_)
        (let ((_tab74838_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74838_ _key74836_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74822_ (current-thread)))
          (if (actor-thread? _thr74822_)
              (let ((_$e74824_ (actor-thread-locals _thr74822_)))
                (if _$e74824_
                    (values _$e74824_)
                    (let ((_tab74827_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74822_ _tab74827_)
                      _tab74827_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74822_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74829_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74822_))))
                      (if _$e74829_
                          ((lambda (_tab74832_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74832_)
                           _$e74829_)
                          (let ((_tab74834_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74822_
                               _tab74834_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74834_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74819_)
        (if (let () (declare (not safe)) (procedure? _proc74819_))
            '#!void
            (raise (let ((__obj74928
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74928
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74819_ '())))
                     __obj74928)))
        (set! __unhandled-actor-exception-hook _proc74819_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74807_ _proc74808_)
        (let ((_handler74810_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e74812_)
             (let ((__tmp74936
                    (lambda ()
                      (mutex-unlock! _mx74807_)
                      (_handler74810_ _e74812_))))
               (declare (not safe))
               (with-catch void __tmp74936))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e74812_)))
           (lambda ()
             (mutex-lock! _mx74807_)
             (let ((_result74816_ (_proc74808_)))
               (mutex-unlock! _mx74807_)
               _result74816_))))))
    (define with-dynamic-lock
      (lambda (_mx74802_ _proc74803_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74802_))
         _proc74803_
         (lambda () (mutex-unlock! _mx74802_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74783_ _error-port74784_)
        (with-exception-handler
         (let ((_E74786_ (current-exception-handler)))
           (lambda (_exn74788_)
             (continuation-capture
              (lambda (_cont74790_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont74790_
                       _exn74788_
                       _error-port74784_))
                    '#!void)
                (_E74786_ _exn74788_)))))
         _thunk74783_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk74795_)
        (let ((_error-port74797_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74795_ _error-port74797_))))
    (define with-exception-stack-trace
      (lambda _g74938_
        (let ((_g74937_ (let () (declare (not safe)) (##length _g74938_))))
          (cond ((let () (declare (not safe)) (##fx= _g74937_ 1))
                 (apply (lambda (_thunk74795_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74795_)))
                        _g74938_))
                ((let () (declare (not safe)) (##fx= _g74937_ 2))
                 (apply (lambda (_thunk74799_ _error-port74800_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74799_
                             _error-port74800_)))
                        _g74938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74938_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74764_ _exn74765_ _error-port74766_)
        (let ((_out74768_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74768_))
          (display '"*** Unhandled exception in " _out74768_)
          (display (current-thread) _out74768_)
          (newline _out74768_)
          (display-exception _exn74765_ _out74768_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74765_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74768_)
                (newline _out74768_)
                (display-continuation-backtrace _cont74764_ _out74768_)))
          (let ((__tmp74939 (get-output-string _out74768_)))
            (declare (not safe))
            (##write-string __tmp74939 _error-port74766_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74773_ _exn74774_)
        (let ((_error-port74776_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74773_ _exn74774_ _error-port74776_))))
    (define dump-stack-trace!
      (lambda _g74941_
        (let ((_g74940_ (let () (declare (not safe)) (##length _g74941_))))
          (cond ((let () (declare (not safe)) (##fx= _g74940_ 2))
                 (apply (lambda (_cont74773_ _exn74774_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74773_ _exn74774_)))
                        _g74941_))
                ((let () (declare (not safe)) (##fx= _g74940_ 3))
                 (apply (lambda (_cont74778_ _exn74779_ _error-port74780_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74778_
                             _exn74779_
                             _error-port74780_)))
                        _g74941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74941_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
