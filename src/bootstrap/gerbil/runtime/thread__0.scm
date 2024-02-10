(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707573210)
  (begin
    (define spawn
      (lambda (_f95838_ . _args95839_)
        (if (let () (declare (not safe)) (procedure? _f95838_))
            '#!void
            (raise (let ((__obj100308
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100308
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95838_ '())))
                     __obj100308)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95838_ _args95839_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95834_ _f95835_ . _args95836_)
        (if (let () (declare (not safe)) (procedure? _f95835_))
            '#!void
            (raise (let ((__obj100309
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100309
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95835_ '())))
                     __obj100309)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95835_ _args95836_ _name95834_ '#f))))
    (define spawn/group
      (lambda (_name95828_ _f95829_ . _args95830_)
        (if (let () (declare (not safe)) (procedure? _f95829_))
            '#!void
            (raise (let ((__obj100310
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100310
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95829_ '())))
                     __obj100310)))
        (let ((_tgroup95832_ (make-thread-group _name95828_)))
          (declare (not safe))
          (spawn-actor _f95829_ _args95830_ _name95828_ _tgroup95832_))))
    (define spawn-actor
      (lambda (_f95801_ _args95802_ _name95803_ _tgroup95804_)
        (letrec ((_thread-main95806_
                  (lambda (_thunk95820_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95823_)
                         (let ((__tmp100312
                                (lambda (_cont95825_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100313
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95825_
                                                _exn95823_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100313))
                                      '#!void)
                                  (let ((__tmp100314
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95825_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100314
                                     ##primordial-exception-handler
                                     _exn95823_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100312)))
                       _thunk95820_)))))
          (let* ((_thunk95809_
                  (if (let () (declare (not safe)) (null? _args95802_))
                      _f95801_
                      (lambda () (apply _f95801_ _args95802_))))
                 (_thunk95812_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95809_))))
                 (_tgroup95817_
                  (let ((_$e95814_ _tgroup95804_))
                    (if _$e95814_
                        _$e95814_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95806_ _thunk95812_))
              _name95803_
              _tgroup95817_))))))
    (define spawn-thread__%
      (lambda (_thunk95779_ _name95780_ _tgroup95781_)
        (thread-start! (make-thread _thunk95779_ _name95780_ _tgroup95781_))))
    (define spawn-thread__0
      (lambda (_thunk95786_)
        (let* ((_name95788_ absent-obj) (_tgroup95790_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95786_ _name95788_ _tgroup95790_))))
    (define spawn-thread__1
      (lambda (_thunk95792_ _name95793_)
        (let ((_tgroup95795_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95792_ _name95793_ _tgroup95795_))))
    (define spawn-thread
      (lambda _g100316_
        (let ((_g100315_ (let () (declare (not safe)) (##length _g100316_))))
          (cond ((let () (declare (not safe)) (##fx= _g100315_ 1))
                 (apply (lambda (_thunk95786_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95786_)))
                        _g100316_))
                ((let () (declare (not safe)) (##fx= _g100315_ 2))
                 (apply (lambda (_thunk95792_ _name95793_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95792_ _name95793_)))
                        _g100316_))
                ((let () (declare (not safe)) (##fx= _g100315_ 3))
                 (apply (lambda (_thunk95797_ _name95798_ _tgroup95799_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95797_
                             _name95798_
                             _tgroup95799_)))
                        _g100316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100316_))))))
    (define thread-local-ref__%
      (lambda (_key95763_ _default95764_)
        (let ((_tab95766_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95766_ _key95763_ _default95764_))))
    (define thread-local-ref__0
      (lambda (_key95771_)
        (let ((_default95773_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95771_ _default95773_))))
    (define thread-local-ref
      (lambda _g100318_
        (let ((_g100317_ (let () (declare (not safe)) (##length _g100318_))))
          (cond ((let () (declare (not safe)) (##fx= _g100317_ 1))
                 (apply (lambda (_key95771_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95771_)))
                        _g100318_))
                ((let () (declare (not safe)) (##fx= _g100317_ 2))
                 (apply (lambda (_key95775_ _default95776_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95775_ _default95776_)))
                        _g100318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100318_))))))
    (define thread-local-get
      (lambda (_key95760_)
        (let () (declare (not safe)) (thread-local-ref _key95760_ '#f))))
    (define thread-local-set!
      (lambda (_key95755_ _value95756_)
        (let ((_tab95758_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95758_ _key95755_ _value95756_))))
    (define thread-local-clear!
      (lambda (_key95751_)
        (let ((_tab95753_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95753_ _key95751_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95737_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95737_))
              (let ((_$e95739_ (actor-thread-locals _thr95737_)))
                (if _$e95739_
                    (values _$e95739_)
                    (let ((_tab95742_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95737_ _tab95742_)
                      _tab95742_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95737_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95744_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95737_ '#f))))
                      (if _$e95744_
                          ((lambda (_tab95747_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95747_)
                           _$e95744_)
                          (let ((_tab95749_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95737_
                               _tab95749_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95749_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95734_)
        (if (let () (declare (not safe)) (procedure? _proc95734_))
            '#!void
            (raise (let ((__obj100311
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100311
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95734_ '())))
                     __obj100311)))
        (set! __unhandled-actor-exception-hook _proc95734_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95722_ _proc95723_)
        (let ((_handler95725_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95727_)
             (let ((__tmp100319
                    (lambda ()
                      (mutex-unlock! _mx95722_)
                      (_handler95725_ _e95727_))))
               (declare (not safe))
               (with-catch void __tmp100319))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95727_)))
           (lambda ()
             (mutex-lock! _mx95722_)
             (let ((_result95731_ (_proc95723_)))
               (mutex-unlock! _mx95722_)
               _result95731_))))))
    (define with-dynamic-lock
      (lambda (_mx95717_ _proc95718_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95717_))
         _proc95718_
         (lambda () (mutex-unlock! _mx95717_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95698_ _error-port95699_)
        (with-exception-handler
         (let ((_E95701_ (current-exception-handler)))
           (lambda (_exn95703_)
             (continuation-capture
              (lambda (_cont95705_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95705_
                       _exn95703_
                       _error-port95699_))
                    '#!void)
                (_E95701_ _exn95703_)))))
         _thunk95698_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95710_)
        (let ((_error-port95712_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95710_ _error-port95712_))))
    (define with-exception-stack-trace
      (lambda _g100321_
        (let ((_g100320_ (let () (declare (not safe)) (##length _g100321_))))
          (cond ((let () (declare (not safe)) (##fx= _g100320_ 1))
                 (apply (lambda (_thunk95710_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95710_)))
                        _g100321_))
                ((let () (declare (not safe)) (##fx= _g100320_ 2))
                 (apply (lambda (_thunk95714_ _error-port95715_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95714_
                             _error-port95715_)))
                        _g100321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100321_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95679_ _exn95680_ _error-port95681_)
        (let ((_out95683_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95683_))
          (display '"*** Unhandled exception in " _out95683_)
          (display (current-thread) _out95683_)
          (newline _out95683_)
          (display-exception _exn95680_ _out95683_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95680_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95683_)
                (newline _out95683_)
                (display-continuation-backtrace _cont95679_ _out95683_)))
          (let ((__tmp100322 (get-output-string _out95683_)))
            (declare (not safe))
            (##write-string __tmp100322 _error-port95681_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95688_ _exn95689_)
        (let ((_error-port95691_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95688_ _exn95689_ _error-port95691_))))
    (define dump-stack-trace!
      (lambda _g100324_
        (let ((_g100323_ (let () (declare (not safe)) (##length _g100324_))))
          (cond ((let () (declare (not safe)) (##fx= _g100323_ 2))
                 (apply (lambda (_cont95688_ _exn95689_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95688_ _exn95689_)))
                        _g100324_))
                ((let () (declare (not safe)) (##fx= _g100323_ 3))
                 (apply (lambda (_cont95693_ _exn95694_ _error-port95695_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95693_
                             _exn95694_
                             _error-port95695_)))
                        _g100324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100324_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
