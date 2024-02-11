(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707618263)
  (begin
    (define spawn
      (lambda (_f96052_ . _args96053_)
        (if (let () (declare (not safe)) (procedure? _f96052_))
            '#!void
            (raise (let ((__obj100522
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100522
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96052_ '())))
                     __obj100522)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96052_ _args96053_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96048_ _f96049_ . _args96050_)
        (if (let () (declare (not safe)) (procedure? _f96049_))
            '#!void
            (raise (let ((__obj100523
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100523
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96049_ '())))
                     __obj100523)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96049_ _args96050_ _name96048_ '#f))))
    (define spawn/group
      (lambda (_name96042_ _f96043_ . _args96044_)
        (if (let () (declare (not safe)) (procedure? _f96043_))
            '#!void
            (raise (let ((__obj100524
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100524
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96043_ '())))
                     __obj100524)))
        (let ((_tgroup96046_ (make-thread-group _name96042_)))
          (declare (not safe))
          (spawn-actor _f96043_ _args96044_ _name96042_ _tgroup96046_))))
    (define spawn-actor
      (lambda (_f96015_ _args96016_ _name96017_ _tgroup96018_)
        (letrec ((_thread-main96020_
                  (lambda (_thunk96034_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96037_)
                         (let ((__tmp100526
                                (lambda (_cont96039_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100527
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96039_
                                                _exn96037_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100527))
                                      '#!void)
                                  (let ((__tmp100528
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96039_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100528
                                     ##primordial-exception-handler
                                     _exn96037_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100526)))
                       _thunk96034_)))))
          (let* ((_thunk96023_
                  (if (let () (declare (not safe)) (null? _args96016_))
                      _f96015_
                      (lambda () (apply _f96015_ _args96016_))))
                 (_thunk96026_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96023_))))
                 (_tgroup96031_
                  (let ((_$e96028_ _tgroup96018_))
                    (if _$e96028_
                        _$e96028_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96020_ _thunk96026_))
              _name96017_
              _tgroup96031_))))))
    (define spawn-thread__%
      (lambda (_thunk95993_ _name95994_ _tgroup95995_)
        (thread-start! (make-thread _thunk95993_ _name95994_ _tgroup95995_))))
    (define spawn-thread__0
      (lambda (_thunk96000_)
        (let* ((_name96002_ absent-obj) (_tgroup96004_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96000_ _name96002_ _tgroup96004_))))
    (define spawn-thread__1
      (lambda (_thunk96006_ _name96007_)
        (let ((_tgroup96009_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96006_ _name96007_ _tgroup96009_))))
    (define spawn-thread
      (lambda _g100530_
        (let ((_g100529_ (let () (declare (not safe)) (##length _g100530_))))
          (cond ((let () (declare (not safe)) (##fx= _g100529_ 1))
                 (apply (lambda (_thunk96000_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96000_)))
                        _g100530_))
                ((let () (declare (not safe)) (##fx= _g100529_ 2))
                 (apply (lambda (_thunk96006_ _name96007_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96006_ _name96007_)))
                        _g100530_))
                ((let () (declare (not safe)) (##fx= _g100529_ 3))
                 (apply (lambda (_thunk96011_ _name96012_ _tgroup96013_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96011_
                             _name96012_
                             _tgroup96013_)))
                        _g100530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100530_))))))
    (define thread-local-ref__%
      (lambda (_key95977_ _default95978_)
        (let ((_tab95980_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95980_ _key95977_ _default95978_))))
    (define thread-local-ref__0
      (lambda (_key95985_)
        (let ((_default95987_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95985_ _default95987_))))
    (define thread-local-ref
      (lambda _g100532_
        (let ((_g100531_ (let () (declare (not safe)) (##length _g100532_))))
          (cond ((let () (declare (not safe)) (##fx= _g100531_ 1))
                 (apply (lambda (_key95985_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95985_)))
                        _g100532_))
                ((let () (declare (not safe)) (##fx= _g100531_ 2))
                 (apply (lambda (_key95989_ _default95990_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95989_ _default95990_)))
                        _g100532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100532_))))))
    (define thread-local-get
      (lambda (_key95974_)
        (let () (declare (not safe)) (thread-local-ref _key95974_ '#f))))
    (define thread-local-set!
      (lambda (_key95969_ _value95970_)
        (let ((_tab95972_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95972_ _key95969_ _value95970_))))
    (define thread-local-clear!
      (lambda (_key95965_)
        (let ((_tab95967_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95967_ _key95965_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95951_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95951_))
              (let ((_$e95953_ (actor-thread-locals _thr95951_)))
                (if _$e95953_
                    (values _$e95953_)
                    (let ((_tab95956_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95951_ _tab95956_)
                      _tab95956_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95951_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95958_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95951_ '#f))))
                      (if _$e95958_
                          ((lambda (_tab95961_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95961_)
                           _$e95958_)
                          (let ((_tab95963_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95951_
                               _tab95963_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95963_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95948_)
        (if (let () (declare (not safe)) (procedure? _proc95948_))
            '#!void
            (raise (let ((__obj100525
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100525
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95948_ '())))
                     __obj100525)))
        (set! __unhandled-actor-exception-hook _proc95948_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95936_ _proc95937_)
        (let ((_handler95939_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95941_)
             (let ((__tmp100533
                    (lambda ()
                      (mutex-unlock! _mx95936_)
                      (_handler95939_ _e95941_))))
               (declare (not safe))
               (with-catch void __tmp100533))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95941_)))
           (lambda ()
             (mutex-lock! _mx95936_)
             (let ((_result95945_ (_proc95937_)))
               (mutex-unlock! _mx95936_)
               _result95945_))))))
    (define with-dynamic-lock
      (lambda (_mx95931_ _proc95932_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95931_))
         _proc95932_
         (lambda () (mutex-unlock! _mx95931_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95912_ _error-port95913_)
        (with-exception-handler
         (let ((_E95915_ (current-exception-handler)))
           (lambda (_exn95917_)
             (continuation-capture
              (lambda (_cont95919_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95919_
                       _exn95917_
                       _error-port95913_))
                    '#!void)
                (_E95915_ _exn95917_)))))
         _thunk95912_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95924_)
        (let ((_error-port95926_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95924_ _error-port95926_))))
    (define with-exception-stack-trace
      (lambda _g100535_
        (let ((_g100534_ (let () (declare (not safe)) (##length _g100535_))))
          (cond ((let () (declare (not safe)) (##fx= _g100534_ 1))
                 (apply (lambda (_thunk95924_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95924_)))
                        _g100535_))
                ((let () (declare (not safe)) (##fx= _g100534_ 2))
                 (apply (lambda (_thunk95928_ _error-port95929_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95928_
                             _error-port95929_)))
                        _g100535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100535_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95893_ _exn95894_ _error-port95895_)
        (let ((_out95897_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95897_))
          (display '"*** Unhandled exception in " _out95897_)
          (display (current-thread) _out95897_)
          (newline _out95897_)
          (display-exception _exn95894_ _out95897_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95894_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95897_)
                (newline _out95897_)
                (display-continuation-backtrace _cont95893_ _out95897_)))
          (let ((__tmp100536 (get-output-string _out95897_)))
            (declare (not safe))
            (##write-string __tmp100536 _error-port95895_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95902_ _exn95903_)
        (let ((_error-port95905_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95902_ _exn95903_ _error-port95905_))))
    (define dump-stack-trace!
      (lambda _g100538_
        (let ((_g100537_ (let () (declare (not safe)) (##length _g100538_))))
          (cond ((let () (declare (not safe)) (##fx= _g100537_ 2))
                 (apply (lambda (_cont95902_ _exn95903_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95902_ _exn95903_)))
                        _g100538_))
                ((let () (declare (not safe)) (##fx= _g100537_ 3))
                 (apply (lambda (_cont95907_ _exn95908_ _error-port95909_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95907_
                             _exn95908_
                             _error-port95909_)))
                        _g100538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100538_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
