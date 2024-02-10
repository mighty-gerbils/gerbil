(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707601715)
  (begin
    (define spawn
      (lambda (_f96013_ . _args96014_)
        (if (let () (declare (not safe)) (procedure? _f96013_))
            '#!void
            (raise (let ((__obj100483
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100483
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96013_ '())))
                     __obj100483)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96013_ _args96014_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96009_ _f96010_ . _args96011_)
        (if (let () (declare (not safe)) (procedure? _f96010_))
            '#!void
            (raise (let ((__obj100484
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100484
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96010_ '())))
                     __obj100484)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96010_ _args96011_ _name96009_ '#f))))
    (define spawn/group
      (lambda (_name96003_ _f96004_ . _args96005_)
        (if (let () (declare (not safe)) (procedure? _f96004_))
            '#!void
            (raise (let ((__obj100485
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100485
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96004_ '())))
                     __obj100485)))
        (let ((_tgroup96007_ (make-thread-group _name96003_)))
          (declare (not safe))
          (spawn-actor _f96004_ _args96005_ _name96003_ _tgroup96007_))))
    (define spawn-actor
      (lambda (_f95976_ _args95977_ _name95978_ _tgroup95979_)
        (letrec ((_thread-main95981_
                  (lambda (_thunk95995_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95998_)
                         (let ((__tmp100487
                                (lambda (_cont96000_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100488
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96000_
                                                _exn95998_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100488))
                                      '#!void)
                                  (let ((__tmp100489
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96000_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100489
                                     ##primordial-exception-handler
                                     _exn95998_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100487)))
                       _thunk95995_)))))
          (let* ((_thunk95984_
                  (if (let () (declare (not safe)) (null? _args95977_))
                      _f95976_
                      (lambda () (apply _f95976_ _args95977_))))
                 (_thunk95987_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95984_))))
                 (_tgroup95992_
                  (let ((_$e95989_ _tgroup95979_))
                    (if _$e95989_
                        _$e95989_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95981_ _thunk95987_))
              _name95978_
              _tgroup95992_))))))
    (define spawn-thread__%
      (lambda (_thunk95954_ _name95955_ _tgroup95956_)
        (thread-start! (make-thread _thunk95954_ _name95955_ _tgroup95956_))))
    (define spawn-thread__0
      (lambda (_thunk95961_)
        (let* ((_name95963_ absent-obj) (_tgroup95965_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95961_ _name95963_ _tgroup95965_))))
    (define spawn-thread__1
      (lambda (_thunk95967_ _name95968_)
        (let ((_tgroup95970_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95967_ _name95968_ _tgroup95970_))))
    (define spawn-thread
      (lambda _g100491_
        (let ((_g100490_ (let () (declare (not safe)) (##length _g100491_))))
          (cond ((let () (declare (not safe)) (##fx= _g100490_ 1))
                 (apply (lambda (_thunk95961_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95961_)))
                        _g100491_))
                ((let () (declare (not safe)) (##fx= _g100490_ 2))
                 (apply (lambda (_thunk95967_ _name95968_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95967_ _name95968_)))
                        _g100491_))
                ((let () (declare (not safe)) (##fx= _g100490_ 3))
                 (apply (lambda (_thunk95972_ _name95973_ _tgroup95974_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95972_
                             _name95973_
                             _tgroup95974_)))
                        _g100491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100491_))))))
    (define thread-local-ref__%
      (lambda (_key95938_ _default95939_)
        (let ((_tab95941_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95941_ _key95938_ _default95939_))))
    (define thread-local-ref__0
      (lambda (_key95946_)
        (let ((_default95948_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95946_ _default95948_))))
    (define thread-local-ref
      (lambda _g100493_
        (let ((_g100492_ (let () (declare (not safe)) (##length _g100493_))))
          (cond ((let () (declare (not safe)) (##fx= _g100492_ 1))
                 (apply (lambda (_key95946_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95946_)))
                        _g100493_))
                ((let () (declare (not safe)) (##fx= _g100492_ 2))
                 (apply (lambda (_key95950_ _default95951_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95950_ _default95951_)))
                        _g100493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100493_))))))
    (define thread-local-get
      (lambda (_key95935_)
        (let () (declare (not safe)) (thread-local-ref _key95935_ '#f))))
    (define thread-local-set!
      (lambda (_key95930_ _value95931_)
        (let ((_tab95933_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95933_ _key95930_ _value95931_))))
    (define thread-local-clear!
      (lambda (_key95926_)
        (let ((_tab95928_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95928_ _key95926_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95912_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95912_))
              (let ((_$e95914_ (actor-thread-locals _thr95912_)))
                (if _$e95914_
                    (values _$e95914_)
                    (let ((_tab95917_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95912_ _tab95917_)
                      _tab95917_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95912_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95919_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95912_ '#f))))
                      (if _$e95919_
                          ((lambda (_tab95922_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95922_)
                           _$e95919_)
                          (let ((_tab95924_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95912_
                               _tab95924_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95924_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95909_)
        (if (let () (declare (not safe)) (procedure? _proc95909_))
            '#!void
            (raise (let ((__obj100486
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100486
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95909_ '())))
                     __obj100486)))
        (set! __unhandled-actor-exception-hook _proc95909_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95897_ _proc95898_)
        (let ((_handler95900_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95902_)
             (let ((__tmp100494
                    (lambda ()
                      (mutex-unlock! _mx95897_)
                      (_handler95900_ _e95902_))))
               (declare (not safe))
               (with-catch void __tmp100494))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95902_)))
           (lambda ()
             (mutex-lock! _mx95897_)
             (let ((_result95906_ (_proc95898_)))
               (mutex-unlock! _mx95897_)
               _result95906_))))))
    (define with-dynamic-lock
      (lambda (_mx95892_ _proc95893_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95892_))
         _proc95893_
         (lambda () (mutex-unlock! _mx95892_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95873_ _error-port95874_)
        (with-exception-handler
         (let ((_E95876_ (current-exception-handler)))
           (lambda (_exn95878_)
             (continuation-capture
              (lambda (_cont95880_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95880_
                       _exn95878_
                       _error-port95874_))
                    '#!void)
                (_E95876_ _exn95878_)))))
         _thunk95873_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95885_)
        (let ((_error-port95887_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95885_ _error-port95887_))))
    (define with-exception-stack-trace
      (lambda _g100496_
        (let ((_g100495_ (let () (declare (not safe)) (##length _g100496_))))
          (cond ((let () (declare (not safe)) (##fx= _g100495_ 1))
                 (apply (lambda (_thunk95885_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95885_)))
                        _g100496_))
                ((let () (declare (not safe)) (##fx= _g100495_ 2))
                 (apply (lambda (_thunk95889_ _error-port95890_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95889_
                             _error-port95890_)))
                        _g100496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100496_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95854_ _exn95855_ _error-port95856_)
        (let ((_out95858_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95858_))
          (display '"*** Unhandled exception in " _out95858_)
          (display (current-thread) _out95858_)
          (newline _out95858_)
          (display-exception _exn95855_ _out95858_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95855_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95858_)
                (newline _out95858_)
                (display-continuation-backtrace _cont95854_ _out95858_)))
          (let ((__tmp100497 (get-output-string _out95858_)))
            (declare (not safe))
            (##write-string __tmp100497 _error-port95856_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95863_ _exn95864_)
        (let ((_error-port95866_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95863_ _exn95864_ _error-port95866_))))
    (define dump-stack-trace!
      (lambda _g100499_
        (let ((_g100498_ (let () (declare (not safe)) (##length _g100499_))))
          (cond ((let () (declare (not safe)) (##fx= _g100498_ 2))
                 (apply (lambda (_cont95863_ _exn95864_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95863_ _exn95864_)))
                        _g100499_))
                ((let () (declare (not safe)) (##fx= _g100498_ 3))
                 (apply (lambda (_cont95868_ _exn95869_ _error-port95870_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95868_
                             _exn95869_
                             _error-port95870_)))
                        _g100499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100499_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
