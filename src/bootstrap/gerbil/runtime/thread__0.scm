(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707616236)
  (begin
    (define spawn
      (lambda (_f96049_ . _args96050_)
        (if (let () (declare (not safe)) (procedure? _f96049_))
            '#!void
            (raise (let ((__obj100519
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100519
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96049_ '())))
                     __obj100519)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96049_ _args96050_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96045_ _f96046_ . _args96047_)
        (if (let () (declare (not safe)) (procedure? _f96046_))
            '#!void
            (raise (let ((__obj100520
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100520
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96046_ '())))
                     __obj100520)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96046_ _args96047_ _name96045_ '#f))))
    (define spawn/group
      (lambda (_name96039_ _f96040_ . _args96041_)
        (if (let () (declare (not safe)) (procedure? _f96040_))
            '#!void
            (raise (let ((__obj100521
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100521
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96040_ '())))
                     __obj100521)))
        (let ((_tgroup96043_ (make-thread-group _name96039_)))
          (declare (not safe))
          (spawn-actor _f96040_ _args96041_ _name96039_ _tgroup96043_))))
    (define spawn-actor
      (lambda (_f96012_ _args96013_ _name96014_ _tgroup96015_)
        (letrec ((_thread-main96017_
                  (lambda (_thunk96031_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96034_)
                         (let ((__tmp100523
                                (lambda (_cont96036_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100524
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96036_
                                                _exn96034_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100524))
                                      '#!void)
                                  (let ((__tmp100525
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96036_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100525
                                     ##primordial-exception-handler
                                     _exn96034_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100523)))
                       _thunk96031_)))))
          (let* ((_thunk96020_
                  (if (let () (declare (not safe)) (null? _args96013_))
                      _f96012_
                      (lambda () (apply _f96012_ _args96013_))))
                 (_thunk96023_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96020_))))
                 (_tgroup96028_
                  (let ((_$e96025_ _tgroup96015_))
                    (if _$e96025_
                        _$e96025_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96017_ _thunk96023_))
              _name96014_
              _tgroup96028_))))))
    (define spawn-thread__%
      (lambda (_thunk95990_ _name95991_ _tgroup95992_)
        (thread-start! (make-thread _thunk95990_ _name95991_ _tgroup95992_))))
    (define spawn-thread__0
      (lambda (_thunk95997_)
        (let* ((_name95999_ absent-obj) (_tgroup96001_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95997_ _name95999_ _tgroup96001_))))
    (define spawn-thread__1
      (lambda (_thunk96003_ _name96004_)
        (let ((_tgroup96006_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96003_ _name96004_ _tgroup96006_))))
    (define spawn-thread
      (lambda _g100527_
        (let ((_g100526_ (let () (declare (not safe)) (##length _g100527_))))
          (cond ((let () (declare (not safe)) (##fx= _g100526_ 1))
                 (apply (lambda (_thunk95997_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95997_)))
                        _g100527_))
                ((let () (declare (not safe)) (##fx= _g100526_ 2))
                 (apply (lambda (_thunk96003_ _name96004_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96003_ _name96004_)))
                        _g100527_))
                ((let () (declare (not safe)) (##fx= _g100526_ 3))
                 (apply (lambda (_thunk96008_ _name96009_ _tgroup96010_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96008_
                             _name96009_
                             _tgroup96010_)))
                        _g100527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100527_))))))
    (define thread-local-ref__%
      (lambda (_key95974_ _default95975_)
        (let ((_tab95977_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95977_ _key95974_ _default95975_))))
    (define thread-local-ref__0
      (lambda (_key95982_)
        (let ((_default95984_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95982_ _default95984_))))
    (define thread-local-ref
      (lambda _g100529_
        (let ((_g100528_ (let () (declare (not safe)) (##length _g100529_))))
          (cond ((let () (declare (not safe)) (##fx= _g100528_ 1))
                 (apply (lambda (_key95982_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95982_)))
                        _g100529_))
                ((let () (declare (not safe)) (##fx= _g100528_ 2))
                 (apply (lambda (_key95986_ _default95987_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95986_ _default95987_)))
                        _g100529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100529_))))))
    (define thread-local-get
      (lambda (_key95971_)
        (let () (declare (not safe)) (thread-local-ref _key95971_ '#f))))
    (define thread-local-set!
      (lambda (_key95966_ _value95967_)
        (let ((_tab95969_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95969_ _key95966_ _value95967_))))
    (define thread-local-clear!
      (lambda (_key95962_)
        (let ((_tab95964_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95964_ _key95962_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95948_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95948_))
              (let ((_$e95950_ (actor-thread-locals _thr95948_)))
                (if _$e95950_
                    (values _$e95950_)
                    (let ((_tab95953_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95948_ _tab95953_)
                      _tab95953_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95948_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95955_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95948_ '#f))))
                      (if _$e95955_
                          ((lambda (_tab95958_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95958_)
                           _$e95955_)
                          (let ((_tab95960_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95948_
                               _tab95960_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95960_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95945_)
        (if (let () (declare (not safe)) (procedure? _proc95945_))
            '#!void
            (raise (let ((__obj100522
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100522
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95945_ '())))
                     __obj100522)))
        (set! __unhandled-actor-exception-hook _proc95945_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95933_ _proc95934_)
        (let ((_handler95936_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95938_)
             (let ((__tmp100530
                    (lambda ()
                      (mutex-unlock! _mx95933_)
                      (_handler95936_ _e95938_))))
               (declare (not safe))
               (with-catch void __tmp100530))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95938_)))
           (lambda ()
             (mutex-lock! _mx95933_)
             (let ((_result95942_ (_proc95934_)))
               (mutex-unlock! _mx95933_)
               _result95942_))))))
    (define with-dynamic-lock
      (lambda (_mx95928_ _proc95929_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95928_))
         _proc95929_
         (lambda () (mutex-unlock! _mx95928_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95909_ _error-port95910_)
        (with-exception-handler
         (let ((_E95912_ (current-exception-handler)))
           (lambda (_exn95914_)
             (continuation-capture
              (lambda (_cont95916_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95916_
                       _exn95914_
                       _error-port95910_))
                    '#!void)
                (_E95912_ _exn95914_)))))
         _thunk95909_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95921_)
        (let ((_error-port95923_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95921_ _error-port95923_))))
    (define with-exception-stack-trace
      (lambda _g100532_
        (let ((_g100531_ (let () (declare (not safe)) (##length _g100532_))))
          (cond ((let () (declare (not safe)) (##fx= _g100531_ 1))
                 (apply (lambda (_thunk95921_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95921_)))
                        _g100532_))
                ((let () (declare (not safe)) (##fx= _g100531_ 2))
                 (apply (lambda (_thunk95925_ _error-port95926_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95925_
                             _error-port95926_)))
                        _g100532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100532_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95890_ _exn95891_ _error-port95892_)
        (let ((_out95894_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95894_))
          (display '"*** Unhandled exception in " _out95894_)
          (display (current-thread) _out95894_)
          (newline _out95894_)
          (display-exception _exn95891_ _out95894_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95891_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95894_)
                (newline _out95894_)
                (display-continuation-backtrace _cont95890_ _out95894_)))
          (let ((__tmp100533 (get-output-string _out95894_)))
            (declare (not safe))
            (##write-string __tmp100533 _error-port95892_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95899_ _exn95900_)
        (let ((_error-port95902_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95899_ _exn95900_ _error-port95902_))))
    (define dump-stack-trace!
      (lambda _g100535_
        (let ((_g100534_ (let () (declare (not safe)) (##length _g100535_))))
          (cond ((let () (declare (not safe)) (##fx= _g100534_ 2))
                 (apply (lambda (_cont95899_ _exn95900_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95899_ _exn95900_)))
                        _g100535_))
                ((let () (declare (not safe)) (##fx= _g100534_ 3))
                 (apply (lambda (_cont95904_ _exn95905_ _error-port95906_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95904_
                             _exn95905_
                             _error-port95906_)))
                        _g100535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100535_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
