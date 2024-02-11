(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707620169)
  (begin
    (define spawn
      (lambda (_f96059_ . _args96060_)
        (if (let () (declare (not safe)) (procedure? _f96059_))
            '#!void
            (raise (let ((__obj100529
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100529
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96059_ '())))
                     __obj100529)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96059_ _args96060_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96055_ _f96056_ . _args96057_)
        (if (let () (declare (not safe)) (procedure? _f96056_))
            '#!void
            (raise (let ((__obj100530
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100530
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96056_ '())))
                     __obj100530)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96056_ _args96057_ _name96055_ '#f))))
    (define spawn/group
      (lambda (_name96049_ _f96050_ . _args96051_)
        (if (let () (declare (not safe)) (procedure? _f96050_))
            '#!void
            (raise (let ((__obj100531
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100531
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96050_ '())))
                     __obj100531)))
        (let ((_tgroup96053_ (make-thread-group _name96049_)))
          (declare (not safe))
          (spawn-actor _f96050_ _args96051_ _name96049_ _tgroup96053_))))
    (define spawn-actor
      (lambda (_f96022_ _args96023_ _name96024_ _tgroup96025_)
        (letrec ((_thread-main96027_
                  (lambda (_thunk96041_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96044_)
                         (let ((__tmp100533
                                (lambda (_cont96046_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100534
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96046_
                                                _exn96044_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100534))
                                      '#!void)
                                  (let ((__tmp100535
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96046_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100535
                                     ##primordial-exception-handler
                                     _exn96044_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100533)))
                       _thunk96041_)))))
          (let* ((_thunk96030_
                  (if (let () (declare (not safe)) (null? _args96023_))
                      _f96022_
                      (lambda () (apply _f96022_ _args96023_))))
                 (_thunk96033_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96030_))))
                 (_tgroup96038_
                  (let ((_$e96035_ _tgroup96025_))
                    (if _$e96035_
                        _$e96035_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96027_ _thunk96033_))
              _name96024_
              _tgroup96038_))))))
    (define spawn-thread__%
      (lambda (_thunk96000_ _name96001_ _tgroup96002_)
        (thread-start! (make-thread _thunk96000_ _name96001_ _tgroup96002_))))
    (define spawn-thread__0
      (lambda (_thunk96007_)
        (let* ((_name96009_ absent-obj) (_tgroup96011_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96007_ _name96009_ _tgroup96011_))))
    (define spawn-thread__1
      (lambda (_thunk96013_ _name96014_)
        (let ((_tgroup96016_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96013_ _name96014_ _tgroup96016_))))
    (define spawn-thread
      (lambda _g100537_
        (let ((_g100536_ (let () (declare (not safe)) (##length _g100537_))))
          (cond ((let () (declare (not safe)) (##fx= _g100536_ 1))
                 (apply (lambda (_thunk96007_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96007_)))
                        _g100537_))
                ((let () (declare (not safe)) (##fx= _g100536_ 2))
                 (apply (lambda (_thunk96013_ _name96014_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96013_ _name96014_)))
                        _g100537_))
                ((let () (declare (not safe)) (##fx= _g100536_ 3))
                 (apply (lambda (_thunk96018_ _name96019_ _tgroup96020_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96018_
                             _name96019_
                             _tgroup96020_)))
                        _g100537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100537_))))))
    (define thread-local-ref__%
      (lambda (_key95984_ _default95985_)
        (let ((_tab95987_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95987_ _key95984_ _default95985_))))
    (define thread-local-ref__0
      (lambda (_key95992_)
        (let ((_default95994_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95992_ _default95994_))))
    (define thread-local-ref
      (lambda _g100539_
        (let ((_g100538_ (let () (declare (not safe)) (##length _g100539_))))
          (cond ((let () (declare (not safe)) (##fx= _g100538_ 1))
                 (apply (lambda (_key95992_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95992_)))
                        _g100539_))
                ((let () (declare (not safe)) (##fx= _g100538_ 2))
                 (apply (lambda (_key95996_ _default95997_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95996_ _default95997_)))
                        _g100539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100539_))))))
    (define thread-local-get
      (lambda (_key95981_)
        (let () (declare (not safe)) (thread-local-ref _key95981_ '#f))))
    (define thread-local-set!
      (lambda (_key95976_ _value95977_)
        (let ((_tab95979_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95979_ _key95976_ _value95977_))))
    (define thread-local-clear!
      (lambda (_key95972_)
        (let ((_tab95974_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95974_ _key95972_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95958_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95958_))
              (let ((_$e95960_ (actor-thread-locals _thr95958_)))
                (if _$e95960_
                    (values _$e95960_)
                    (let ((_tab95963_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95958_ _tab95963_)
                      _tab95963_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95958_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95965_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95958_ '#f))))
                      (if _$e95965_
                          ((lambda (_tab95968_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95968_)
                           _$e95965_)
                          (let ((_tab95970_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95958_
                               _tab95970_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95970_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95955_)
        (if (let () (declare (not safe)) (procedure? _proc95955_))
            '#!void
            (raise (let ((__obj100532
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100532
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95955_ '())))
                     __obj100532)))
        (set! __unhandled-actor-exception-hook _proc95955_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95943_ _proc95944_)
        (let ((_handler95946_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95948_)
             (let ((__tmp100540
                    (lambda ()
                      (mutex-unlock! _mx95943_)
                      (_handler95946_ _e95948_))))
               (declare (not safe))
               (with-catch void __tmp100540))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95948_)))
           (lambda ()
             (mutex-lock! _mx95943_)
             (let ((_result95952_ (_proc95944_)))
               (mutex-unlock! _mx95943_)
               _result95952_))))))
    (define with-dynamic-lock
      (lambda (_mx95938_ _proc95939_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95938_))
         _proc95939_
         (lambda () (mutex-unlock! _mx95938_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95919_ _error-port95920_)
        (with-exception-handler
         (let ((_E95922_ (current-exception-handler)))
           (lambda (_exn95924_)
             (continuation-capture
              (lambda (_cont95926_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95926_
                       _exn95924_
                       _error-port95920_))
                    '#!void)
                (_E95922_ _exn95924_)))))
         _thunk95919_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95931_)
        (let ((_error-port95933_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95931_ _error-port95933_))))
    (define with-exception-stack-trace
      (lambda _g100542_
        (let ((_g100541_ (let () (declare (not safe)) (##length _g100542_))))
          (cond ((let () (declare (not safe)) (##fx= _g100541_ 1))
                 (apply (lambda (_thunk95931_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95931_)))
                        _g100542_))
                ((let () (declare (not safe)) (##fx= _g100541_ 2))
                 (apply (lambda (_thunk95935_ _error-port95936_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95935_
                             _error-port95936_)))
                        _g100542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100542_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95900_ _exn95901_ _error-port95902_)
        (let ((_out95904_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95904_))
          (display '"*** Unhandled exception in " _out95904_)
          (display (current-thread) _out95904_)
          (newline _out95904_)
          (display-exception _exn95901_ _out95904_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95901_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95904_)
                (newline _out95904_)
                (display-continuation-backtrace _cont95900_ _out95904_)))
          (let ((__tmp100543 (get-output-string _out95904_)))
            (declare (not safe))
            (##write-string __tmp100543 _error-port95902_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95909_ _exn95910_)
        (let ((_error-port95912_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95909_ _exn95910_ _error-port95912_))))
    (define dump-stack-trace!
      (lambda _g100545_
        (let ((_g100544_ (let () (declare (not safe)) (##length _g100545_))))
          (cond ((let () (declare (not safe)) (##fx= _g100544_ 2))
                 (apply (lambda (_cont95909_ _exn95910_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95909_ _exn95910_)))
                        _g100545_))
                ((let () (declare (not safe)) (##fx= _g100544_ 3))
                 (apply (lambda (_cont95914_ _exn95915_ _error-port95916_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95914_
                             _exn95915_
                             _error-port95916_)))
                        _g100545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100545_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
