(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707610212)
  (begin
    (define spawn
      (lambda (_f96045_ . _args96046_)
        (if (let () (declare (not safe)) (procedure? _f96045_))
            '#!void
            (raise (let ((__obj100515
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100515
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96045_ '())))
                     __obj100515)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96045_ _args96046_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96041_ _f96042_ . _args96043_)
        (if (let () (declare (not safe)) (procedure? _f96042_))
            '#!void
            (raise (let ((__obj100516
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100516
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96042_ '())))
                     __obj100516)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96042_ _args96043_ _name96041_ '#f))))
    (define spawn/group
      (lambda (_name96035_ _f96036_ . _args96037_)
        (if (let () (declare (not safe)) (procedure? _f96036_))
            '#!void
            (raise (let ((__obj100517
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100517
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96036_ '())))
                     __obj100517)))
        (let ((_tgroup96039_ (make-thread-group _name96035_)))
          (declare (not safe))
          (spawn-actor _f96036_ _args96037_ _name96035_ _tgroup96039_))))
    (define spawn-actor
      (lambda (_f96008_ _args96009_ _name96010_ _tgroup96011_)
        (letrec ((_thread-main96013_
                  (lambda (_thunk96027_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96030_)
                         (let ((__tmp100519
                                (lambda (_cont96032_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100520
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96032_
                                                _exn96030_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100520))
                                      '#!void)
                                  (let ((__tmp100521
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96032_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100521
                                     ##primordial-exception-handler
                                     _exn96030_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100519)))
                       _thunk96027_)))))
          (let* ((_thunk96016_
                  (if (let () (declare (not safe)) (null? _args96009_))
                      _f96008_
                      (lambda () (apply _f96008_ _args96009_))))
                 (_thunk96019_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96016_))))
                 (_tgroup96024_
                  (let ((_$e96021_ _tgroup96011_))
                    (if _$e96021_
                        _$e96021_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96013_ _thunk96019_))
              _name96010_
              _tgroup96024_))))))
    (define spawn-thread__%
      (lambda (_thunk95986_ _name95987_ _tgroup95988_)
        (thread-start! (make-thread _thunk95986_ _name95987_ _tgroup95988_))))
    (define spawn-thread__0
      (lambda (_thunk95993_)
        (let* ((_name95995_ absent-obj) (_tgroup95997_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95993_ _name95995_ _tgroup95997_))))
    (define spawn-thread__1
      (lambda (_thunk95999_ _name96000_)
        (let ((_tgroup96002_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95999_ _name96000_ _tgroup96002_))))
    (define spawn-thread
      (lambda _g100523_
        (let ((_g100522_ (let () (declare (not safe)) (##length _g100523_))))
          (cond ((let () (declare (not safe)) (##fx= _g100522_ 1))
                 (apply (lambda (_thunk95993_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95993_)))
                        _g100523_))
                ((let () (declare (not safe)) (##fx= _g100522_ 2))
                 (apply (lambda (_thunk95999_ _name96000_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95999_ _name96000_)))
                        _g100523_))
                ((let () (declare (not safe)) (##fx= _g100522_ 3))
                 (apply (lambda (_thunk96004_ _name96005_ _tgroup96006_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96004_
                             _name96005_
                             _tgroup96006_)))
                        _g100523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100523_))))))
    (define thread-local-ref__%
      (lambda (_key95970_ _default95971_)
        (let ((_tab95973_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95973_ _key95970_ _default95971_))))
    (define thread-local-ref__0
      (lambda (_key95978_)
        (let ((_default95980_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95978_ _default95980_))))
    (define thread-local-ref
      (lambda _g100525_
        (let ((_g100524_ (let () (declare (not safe)) (##length _g100525_))))
          (cond ((let () (declare (not safe)) (##fx= _g100524_ 1))
                 (apply (lambda (_key95978_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95978_)))
                        _g100525_))
                ((let () (declare (not safe)) (##fx= _g100524_ 2))
                 (apply (lambda (_key95982_ _default95983_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95982_ _default95983_)))
                        _g100525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100525_))))))
    (define thread-local-get
      (lambda (_key95967_)
        (let () (declare (not safe)) (thread-local-ref _key95967_ '#f))))
    (define thread-local-set!
      (lambda (_key95962_ _value95963_)
        (let ((_tab95965_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95965_ _key95962_ _value95963_))))
    (define thread-local-clear!
      (lambda (_key95958_)
        (let ((_tab95960_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95960_ _key95958_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95944_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95944_))
              (let ((_$e95946_ (actor-thread-locals _thr95944_)))
                (if _$e95946_
                    (values _$e95946_)
                    (let ((_tab95949_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95944_ _tab95949_)
                      _tab95949_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95944_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95951_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95944_ '#f))))
                      (if _$e95951_
                          ((lambda (_tab95954_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95954_)
                           _$e95951_)
                          (let ((_tab95956_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95944_
                               _tab95956_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95956_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95941_)
        (if (let () (declare (not safe)) (procedure? _proc95941_))
            '#!void
            (raise (let ((__obj100518
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100518
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95941_ '())))
                     __obj100518)))
        (set! __unhandled-actor-exception-hook _proc95941_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95929_ _proc95930_)
        (let ((_handler95932_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95934_)
             (let ((__tmp100526
                    (lambda ()
                      (mutex-unlock! _mx95929_)
                      (_handler95932_ _e95934_))))
               (declare (not safe))
               (with-catch void __tmp100526))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95934_)))
           (lambda ()
             (mutex-lock! _mx95929_)
             (let ((_result95938_ (_proc95930_)))
               (mutex-unlock! _mx95929_)
               _result95938_))))))
    (define with-dynamic-lock
      (lambda (_mx95924_ _proc95925_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95924_))
         _proc95925_
         (lambda () (mutex-unlock! _mx95924_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95905_ _error-port95906_)
        (with-exception-handler
         (let ((_E95908_ (current-exception-handler)))
           (lambda (_exn95910_)
             (continuation-capture
              (lambda (_cont95912_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95912_
                       _exn95910_
                       _error-port95906_))
                    '#!void)
                (_E95908_ _exn95910_)))))
         _thunk95905_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95917_)
        (let ((_error-port95919_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95917_ _error-port95919_))))
    (define with-exception-stack-trace
      (lambda _g100528_
        (let ((_g100527_ (let () (declare (not safe)) (##length _g100528_))))
          (cond ((let () (declare (not safe)) (##fx= _g100527_ 1))
                 (apply (lambda (_thunk95917_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95917_)))
                        _g100528_))
                ((let () (declare (not safe)) (##fx= _g100527_ 2))
                 (apply (lambda (_thunk95921_ _error-port95922_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95921_
                             _error-port95922_)))
                        _g100528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100528_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95886_ _exn95887_ _error-port95888_)
        (let ((_out95890_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95890_))
          (display '"*** Unhandled exception in " _out95890_)
          (display (current-thread) _out95890_)
          (newline _out95890_)
          (display-exception _exn95887_ _out95890_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95887_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95890_)
                (newline _out95890_)
                (display-continuation-backtrace _cont95886_ _out95890_)))
          (let ((__tmp100529 (get-output-string _out95890_)))
            (declare (not safe))
            (##write-string __tmp100529 _error-port95888_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95895_ _exn95896_)
        (let ((_error-port95898_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95895_ _exn95896_ _error-port95898_))))
    (define dump-stack-trace!
      (lambda _g100531_
        (let ((_g100530_ (let () (declare (not safe)) (##length _g100531_))))
          (cond ((let () (declare (not safe)) (##fx= _g100530_ 2))
                 (apply (lambda (_cont95895_ _exn95896_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95895_ _exn95896_)))
                        _g100531_))
                ((let () (declare (not safe)) (##fx= _g100530_ 3))
                 (apply (lambda (_cont95900_ _exn95901_ _error-port95902_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95900_
                             _exn95901_
                             _error-port95902_)))
                        _g100531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100531_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
