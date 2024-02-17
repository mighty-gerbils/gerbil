(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708194419)
  (begin
    (define spawn
      (lambda (_f95292_ . _args95293_)
        (if (let () (declare (not safe)) (procedure? _f95292_))
            '#!void
            (raise (let ((__obj99361
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99361
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95292_ '())))
                     __obj99361)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95292_ _args95293_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95288_ _f95289_ . _args95290_)
        (if (let () (declare (not safe)) (procedure? _f95289_))
            '#!void
            (raise (let ((__obj99362
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99362
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95289_ '())))
                     __obj99362)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95289_ _args95290_ _name95288_ '#f))))
    (define spawn/group
      (lambda (_name95282_ _f95283_ . _args95284_)
        (if (let () (declare (not safe)) (procedure? _f95283_))
            '#!void
            (raise (let ((__obj99363
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99363
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95283_ '())))
                     __obj99363)))
        (let ((_tgroup95286_ (make-thread-group _name95282_)))
          (declare (not safe))
          (spawn-actor _f95283_ _args95284_ _name95282_ _tgroup95286_))))
    (define spawn-actor
      (lambda (_f95255_ _args95256_ _name95257_ _tgroup95258_)
        (letrec ((_thread-main95260_
                  (lambda (_thunk95274_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95277_)
                         (let ((__tmp99365
                                (lambda (_cont95279_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp99366
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95279_
                                                _exn95277_))))
                                        (declare (not safe))
                                        (with-catch void __tmp99366))
                                      '#!void)
                                  (let ((__tmp99367
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95279_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp99367
                                     ##primordial-exception-handler
                                     _exn95277_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp99365)))
                       _thunk95274_)))))
          (let* ((_thunk95263_
                  (if (let () (declare (not safe)) (null? _args95256_))
                      _f95255_
                      (lambda () (apply _f95255_ _args95256_))))
                 (_thunk95266_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95263_))))
                 (_tgroup95271_
                  (let ((_$e95268_ _tgroup95258_))
                    (if _$e95268_
                        _$e95268_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95260_ _thunk95266_))
              _name95257_
              _tgroup95271_))))))
    (define spawn-thread__%
      (lambda (_thunk95233_ _name95234_ _tgroup95235_)
        (thread-start! (make-thread _thunk95233_ _name95234_ _tgroup95235_))))
    (define spawn-thread__0
      (lambda (_thunk95240_)
        (let* ((_name95242_ absent-obj) (_tgroup95244_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95240_ _name95242_ _tgroup95244_))))
    (define spawn-thread__1
      (lambda (_thunk95246_ _name95247_)
        (let ((_tgroup95249_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95246_ _name95247_ _tgroup95249_))))
    (define spawn-thread
      (lambda _g99369_
        (let ((_g99368_ (let () (declare (not safe)) (##length _g99369_))))
          (cond ((let () (declare (not safe)) (##fx= _g99368_ 1))
                 (apply (lambda (_thunk95240_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95240_)))
                        _g99369_))
                ((let () (declare (not safe)) (##fx= _g99368_ 2))
                 (apply (lambda (_thunk95246_ _name95247_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95246_ _name95247_)))
                        _g99369_))
                ((let () (declare (not safe)) (##fx= _g99368_ 3))
                 (apply (lambda (_thunk95251_ _name95252_ _tgroup95253_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95251_
                             _name95252_
                             _tgroup95253_)))
                        _g99369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g99369_))))))
    (define thread-local-ref__%
      (lambda (_key95217_ _default95218_)
        (let ((_tab95220_ (let () (declare (not safe)) (thread-local-table))))
          (hash-ref _tab95220_ _key95217_ _default95218_))))
    (define thread-local-ref__0
      (lambda (_key95225_)
        (let ((_default95227_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95225_ _default95227_))))
    (define thread-local-ref
      (lambda _g99371_
        (let ((_g99370_ (let () (declare (not safe)) (##length _g99371_))))
          (cond ((let () (declare (not safe)) (##fx= _g99370_ 1))
                 (apply (lambda (_key95225_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95225_)))
                        _g99371_))
                ((let () (declare (not safe)) (##fx= _g99370_ 2))
                 (apply (lambda (_key95229_ _default95230_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95229_ _default95230_)))
                        _g99371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g99371_))))))
    (define thread-local-get
      (lambda (_key95214_)
        (let () (declare (not safe)) (thread-local-ref _key95214_ '#f))))
    (define thread-local-set!
      (lambda (_key95209_ _value95210_)
        (let ((_tab95212_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95212_ _key95209_ _value95210_))))
    (define thread-local-clear!
      (lambda (_key95205_)
        (let ((_tab95207_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95207_ _key95205_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95191_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95191_))
              (let ((_$e95193_ (actor-thread-locals _thr95191_)))
                (if _$e95193_
                    (values _$e95193_)
                    (let ((_tab95196_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr95191_ _tab95196_)
                      _tab95196_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95191_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95198_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr95191_))))
                      (if _$e95198_
                          ((lambda (_tab95201_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95201_)
                           _$e95198_)
                          (let ((_tab95203_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95191_
                               _tab95203_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95203_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95188_)
        (if (let () (declare (not safe)) (procedure? _proc95188_))
            '#!void
            (raise (let ((__obj99364
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99364
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95188_ '())))
                     __obj99364)))
        (set! __unhandled-actor-exception-hook _proc95188_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95176_ _proc95177_)
        (let ((_handler95179_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95181_)
             (let ((__tmp99372
                    (lambda ()
                      (mutex-unlock! _mx95176_)
                      (_handler95179_ _e95181_))))
               (declare (not safe))
               (with-catch void __tmp99372))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95181_)))
           (lambda ()
             (mutex-lock! _mx95176_)
             (let ((_result95185_ (_proc95177_)))
               (mutex-unlock! _mx95176_)
               _result95185_))))))
    (define with-dynamic-lock
      (lambda (_mx95171_ _proc95172_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95171_))
         _proc95172_
         (lambda () (mutex-unlock! _mx95171_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95152_ _error-port95153_)
        (with-exception-handler
         (let ((_E95155_ (current-exception-handler)))
           (lambda (_exn95157_)
             (continuation-capture
              (lambda (_cont95159_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95159_
                       _exn95157_
                       _error-port95153_))
                    '#!void)
                (_E95155_ _exn95157_)))))
         _thunk95152_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95164_)
        (let ((_error-port95166_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95164_ _error-port95166_))))
    (define with-exception-stack-trace
      (lambda _g99374_
        (let ((_g99373_ (let () (declare (not safe)) (##length _g99374_))))
          (cond ((let () (declare (not safe)) (##fx= _g99373_ 1))
                 (apply (lambda (_thunk95164_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95164_)))
                        _g99374_))
                ((let () (declare (not safe)) (##fx= _g99373_ 2))
                 (apply (lambda (_thunk95168_ _error-port95169_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95168_
                             _error-port95169_)))
                        _g99374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g99374_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95133_ _exn95134_ _error-port95135_)
        (let ((_out95137_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95137_))
          (display '"*** Unhandled exception in " _out95137_)
          (display (current-thread) _out95137_)
          (newline _out95137_)
          (display-exception _exn95134_ _out95137_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95134_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95137_)
                (newline _out95137_)
                (display-continuation-backtrace _cont95133_ _out95137_)))
          (let ((__tmp99375 (get-output-string _out95137_)))
            (declare (not safe))
            (##write-string __tmp99375 _error-port95135_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95142_ _exn95143_)
        (let ((_error-port95145_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95142_ _exn95143_ _error-port95145_))))
    (define dump-stack-trace!
      (lambda _g99377_
        (let ((_g99376_ (let () (declare (not safe)) (##length _g99377_))))
          (cond ((let () (declare (not safe)) (##fx= _g99376_ 2))
                 (apply (lambda (_cont95142_ _exn95143_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95142_ _exn95143_)))
                        _g99377_))
                ((let () (declare (not safe)) (##fx= _g99376_ 3))
                 (apply (lambda (_cont95147_ _exn95148_ _error-port95149_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95147_
                             _exn95148_
                             _error-port95149_)))
                        _g99377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g99377_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
