(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710781148)
  (begin
    (define spawn
      (lambda (_f74928_ . _args74929_)
        (if (let () (declare (not safe)) (procedure? _f74928_))
            '#!void
            (raise (let ((__obj74930
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74930
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74928_ '())))
                     __obj74930)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74928_ _args74929_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74924_ _f74925_ . _args74926_)
        (if (let () (declare (not safe)) (procedure? _f74925_))
            '#!void
            (raise (let ((__obj74931
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74931
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74925_ '())))
                     __obj74931)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74925_ _args74926_ _name74924_ '#f))))
    (define spawn/group
      (lambda (_name74918_ _f74919_ . _args74920_)
        (if (let () (declare (not safe)) (procedure? _f74919_))
            '#!void
            (raise (let ((__obj74932
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74932
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74919_ '())))
                     __obj74932)))
        (let ((_tgroup74922_ (make-thread-group _name74918_)))
          (declare (not safe))
          (spawn-actor _f74919_ _args74920_ _name74918_ _tgroup74922_))))
    (define spawn-actor
      (lambda (_f74891_ _args74892_ _name74893_ _tgroup74894_)
        (letrec ((_thread-main74896_
                  (lambda (_thunk74910_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn74913_)
                         (let ((__tmp74934
                                (lambda (_cont74915_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp74935
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont74915_
                                                _exn74913_))))
                                        (declare (not safe))
                                        (with-catch void __tmp74935))
                                      '#!void)
                                  (let ((__tmp74936
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont74915_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp74936
                                     ##primordial-exception-handler
                                     _exn74913_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp74934)))
                       _thunk74910_)))))
          (let* ((_thunk74899_
                  (if (let () (declare (not safe)) (null? _args74892_))
                      _f74891_
                      (lambda () (apply _f74891_ _args74892_))))
                 (_thunk74902_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74899_))))
                 (_tgroup74907_
                  (let ((_$e74904_ _tgroup74894_))
                    (if _$e74904_
                        _$e74904_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74896_ _thunk74902_))
              _name74893_
              _tgroup74907_))))))
    (define spawn-thread__%
      (lambda (_thunk74869_ _name74870_ _tgroup74871_)
        (thread-start! (make-thread _thunk74869_ _name74870_ _tgroup74871_))))
    (define spawn-thread__0
      (lambda (_thunk74876_)
        (let* ((_name74878_ absent-obj) (_tgroup74880_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74876_ _name74878_ _tgroup74880_))))
    (define spawn-thread__1
      (lambda (_thunk74882_ _name74883_)
        (let ((_tgroup74885_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74882_ _name74883_ _tgroup74885_))))
    (define spawn-thread
      (lambda _g74938_
        (let ((_g74937_ (let () (declare (not safe)) (##length _g74938_))))
          (cond ((let () (declare (not safe)) (##fx= _g74937_ 1))
                 (apply (lambda (_thunk74876_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74876_)))
                        _g74938_))
                ((let () (declare (not safe)) (##fx= _g74937_ 2))
                 (apply (lambda (_thunk74882_ _name74883_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74882_ _name74883_)))
                        _g74938_))
                ((let () (declare (not safe)) (##fx= _g74937_ 3))
                 (apply (lambda (_thunk74887_ _name74888_ _tgroup74889_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74887_
                             _name74888_
                             _tgroup74889_)))
                        _g74938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74938_))))))
    (define thread-local-ref__%
      (lambda (_key74853_ _default74854_)
        (let ((_tab74856_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74856_ _key74853_ _default74854_))))
    (define thread-local-ref__0
      (lambda (_key74861_)
        (let ((_default74863_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74861_ _default74863_))))
    (define thread-local-ref
      (lambda _g74940_
        (let ((_g74939_ (let () (declare (not safe)) (##length _g74940_))))
          (cond ((let () (declare (not safe)) (##fx= _g74939_ 1))
                 (apply (lambda (_key74861_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74861_)))
                        _g74940_))
                ((let () (declare (not safe)) (##fx= _g74939_ 2))
                 (apply (lambda (_key74865_ _default74866_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74865_ _default74866_)))
                        _g74940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74940_))))))
    (define thread-local-get
      (lambda (_key74850_)
        (let () (declare (not safe)) (thread-local-ref__% _key74850_ '#f))))
    (define thread-local-set!
      (lambda (_key74845_ _value74846_)
        (let ((_tab74848_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74848_ _key74845_ _value74846_))))
    (define thread-local-delete!
      (lambda (_key74841_)
        (let ((_tab74843_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74843_ _key74841_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74827_ (current-thread)))
          (if (actor-thread? _thr74827_)
              (let ((_$e74829_ (actor-thread-locals _thr74827_)))
                (if _$e74829_
                    (values _$e74829_)
                    (let ((_tab74832_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74827_ _tab74832_)
                      _tab74832_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74827_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74834_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74827_))))
                      (if _$e74834_
                          ((lambda (_tab74837_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74837_)
                           _$e74834_)
                          (let ((_tab74839_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74827_
                               _tab74839_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74839_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74824_)
        (if (let () (declare (not safe)) (procedure? _proc74824_))
            '#!void
            (raise (let ((__obj74933
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74933
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74824_ '())))
                     __obj74933)))
        (set! __unhandled-actor-exception-hook _proc74824_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74812_ _proc74813_)
        (let ((_handler74815_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e74817_)
             (let ((__tmp74941
                    (lambda ()
                      (mutex-unlock! _mx74812_)
                      (_handler74815_ _e74817_))))
               (declare (not safe))
               (with-catch void __tmp74941))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e74817_)))
           (lambda ()
             (mutex-lock! _mx74812_)
             (let ((_result74821_ (_proc74813_)))
               (mutex-unlock! _mx74812_)
               _result74821_))))))
    (define with-dynamic-lock
      (lambda (_mx74807_ _proc74808_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74807_))
         _proc74808_
         (lambda () (mutex-unlock! _mx74807_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74788_ _error-port74789_)
        (with-exception-handler
         (let ((_E74791_ (current-exception-handler)))
           (lambda (_exn74793_)
             (continuation-capture
              (lambda (_cont74795_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont74795_
                       _exn74793_
                       _error-port74789_))
                    '#!void)
                (_E74791_ _exn74793_)))))
         _thunk74788_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk74800_)
        (let ((_error-port74802_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74800_ _error-port74802_))))
    (define with-exception-stack-trace
      (lambda _g74943_
        (let ((_g74942_ (let () (declare (not safe)) (##length _g74943_))))
          (cond ((let () (declare (not safe)) (##fx= _g74942_ 1))
                 (apply (lambda (_thunk74800_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74800_)))
                        _g74943_))
                ((let () (declare (not safe)) (##fx= _g74942_ 2))
                 (apply (lambda (_thunk74804_ _error-port74805_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74804_
                             _error-port74805_)))
                        _g74943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74943_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74769_ _exn74770_ _error-port74771_)
        (let ((_out74773_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74773_))
          (display '"*** Unhandled exception in " _out74773_)
          (display (current-thread) _out74773_)
          (newline _out74773_)
          (display-exception _exn74770_ _out74773_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74770_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74773_)
                (newline _out74773_)
                (display-continuation-backtrace _cont74769_ _out74773_)))
          (let ((__tmp74944 (get-output-string _out74773_)))
            (declare (not safe))
            (##write-string __tmp74944 _error-port74771_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74778_ _exn74779_)
        (let ((_error-port74781_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74778_ _exn74779_ _error-port74781_))))
    (define dump-stack-trace!
      (lambda _g74946_
        (let ((_g74945_ (let () (declare (not safe)) (##length _g74946_))))
          (cond ((let () (declare (not safe)) (##fx= _g74945_ 2))
                 (apply (lambda (_cont74778_ _exn74779_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74778_ _exn74779_)))
                        _g74946_))
                ((let () (declare (not safe)) (##fx= _g74945_ 3))
                 (apply (lambda (_cont74783_ _exn74784_ _error-port74785_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74783_
                             _exn74784_
                             _error-port74785_)))
                        _g74946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74946_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
