(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f791_ . _args792_)
      (gerbil/gambit/threads#spawn-actor _f791_ _args792_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name787_ _f788_ . _args789_)
      (gerbil/gambit/threads#spawn-actor _f788_ _args789_ _name787_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name781_ _f782_ . _args783_)
      (let ((_tgroup785_ (make-thread-group _name781_)))
        (gerbil/gambit/threads#spawn-actor
         _f782_
         _args783_
         _name781_
         _tgroup785_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f759_ _args760_ _name761_ _tgroup762_)
      (letrec ((_thread-main764_
                (lambda (_thunk773_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn776_)
                       (##continuation-capture
                        (lambda (_cont778_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont778_
                                    _exn776_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont778_)
                             ##primordial-exception-handler
                             _exn776_)))))
                     _thunk773_)))))
        (if (procedure? _f759_)
            (let ((_thunk770_
                   (if (null? _args760_)
                       _f759_
                       (lambda () (apply _f759_ _args760_))))
                  (_tgroup771_
                   (let ((_$e767_ _tgroup762_))
                     (if _$e767_
                         _$e767_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (thread-init!
                (gerbil/gambit/threads#construct-actor-thread '#f)
                (_thread-main764_ _thunk770_)
                _name761_
                _tgroup771_)))
            (error '"Bad argument; expected procedure" _f759_)))))
  (begin
    (namespace
     ("gerbil/gambit/threads#"
      construct-actor-thread
      actor-thread?
      actor-thread-locals
      actor-thread-locals-set!))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor-thread::t
     locals))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda735741_
           (lambda (_thunk737_ _name738_ _tgroup739_)
             (thread-start! (make-thread _thunk737_ _name738_ _tgroup739_)))))
      (lambda _g794_
        (let ((_g793_ (length _g794_)))
          (cond ((##fx= _g793_ 1)
                 (apply (lambda (_thunk744_)
                          (let* ((_name746_ absent-obj)
                                 (_tgroup748_ absent-obj))
                            (_opt-lambda735741_
                             _thunk744_
                             _name746_
                             _tgroup748_)))
                        _g794_))
                ((##fx= _g793_ 2)
                 (apply (lambda (_thunk750_ _name751_)
                          (let ((_tgroup753_ absent-obj))
                            (_opt-lambda735741_
                             _thunk750_
                             _name751_
                             _tgroup753_)))
                        _g794_))
                ((##fx= _g793_ 3) (apply _opt-lambda735741_ _g794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g794_)))))))
  (define gerbil/gambit/threads#thread-local-ref
    (let ((_opt-lambda719726_
           (lambda (_key721_ _default722_)
             (let ((_tab724_ (gerbil/gambit/threads#thread-local-table)))
               (hash-ref _tab724_ _key721_ _default722_)))))
      (lambda _g796_
        (let ((_g795_ (length _g796_)))
          (cond ((##fx= _g795_ 1)
                 (apply (lambda (_key729_)
                          (let ((_default731_ absent-obj))
                            (_opt-lambda719726_ _key729_ _default731_)))
                        _g796_))
                ((##fx= _g795_ 2) (apply _opt-lambda719726_ _g796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#thread-local-ref
                  _g796_)))))))
  (define gerbil/gambit/threads#thread-local-get
    (lambda (_key718_) (gerbil/gambit/threads#thread-local-ref _key718_ '#f)))
  (define gerbil/gambit/threads#thread-local-set!
    (lambda (_key713_ _value714_)
      (let ((_tab716_ (gerbil/gambit/threads#thread-local-table)))
        (hash-put! _tab716_ _key713_ _value714_))))
  (define gerbil/gambit/threads#thread-local-clear!
    (lambda (_key709_)
      (let ((_tab711_ (gerbil/gambit/threads#thread-local-table)))
        (hash-remove! _tab711_ _key709_))))
  (define gerbil/gambit/threads#thread-local-table
    (lambda ()
      (let ((_thr695_ (current-thread)))
        (if (gerbil/gambit/threads#actor-thread? _thr695_)
            (let ((_$e697_ (gerbil/gambit/threads#actor-thread-locals
                            _thr695_)))
              (if _$e697_
                  (values _$e697_)
                  (let ((_tab700_ (make-hash-table-eq)))
                    (begin
                      (gerbil/gambit/threads#actor-thread-locals-set!
                       _thr695_
                       _tab700_)
                      _tab700_))))
            (begin
              (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
              (let ((_$e702_ (hash-get
                              gerbil/gambit/threads#*thread-locals*
                              _thr695_)))
                (if _$e702_
                    ((lambda (_tab705_)
                       (begin
                         (mutex-unlock!
                          gerbil/gambit/threads#*thread-locals-mutex*)
                         _tab705_))
                     _$e702_)
                    (let ((_tab707_ (make-hash-table-eq)))
                      (begin
                        (hash-put!
                         gerbil/gambit/threads#*thread-locals*
                         _thr695_
                         _tab707_)
                        (mutex-unlock!
                         gerbil/gambit/threads#*thread-locals-mutex*)
                        _tab707_)))))))))
  (define gerbil/gambit/threads#*thread-locals*
    (make-hash-table-eq 'weak-keys: '#t))
  (define gerbil/gambit/threads#*thread-locals-mutex*
    (make-mutex 'thread-locals))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc689_)
      (if (if (not _proc689_) '#t (procedure? _proc689_))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc689_)
          (error '"Bad argument; expected procedure or #f" _proc689_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda668679_
           (lambda (_thunk670_ _error-port671_)
             (with-exception-handler
              (let ((_E673_ (current-exception-handler)))
                (lambda (_exn675_)
                  (##continuation-capture
                   (lambda (_cont677_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont677_
                        _exn675_
                        _error-port671_)
                       (_E673_ _exn675_))))))
              _thunk670_))))
      (lambda _g798_
        (let ((_g797_ (length _g798_)))
          (cond ((##fx= _g797_ 1)
                 (apply (lambda (_thunk682_)
                          (let ((_error-port684_ (current-error-port)))
                            (_opt-lambda668679_ _thunk682_ _error-port684_)))
                        _g798_))
                ((##fx= _g797_ 2) (apply _opt-lambda668679_ _g798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g798_)))))))
  (begin
    (namespace ("gerbil/gambit/threads#" dump-stack-trace!))
    (define (dump-stack-trace!
             cont
             exn
             #!optional
             (error-port (current-error-port)))
      (let ((out (open-output-string)))
        (display "*** Unhandled exception in " out)
        (display (current-thread) out)
        (newline out)
        (display-exception exn out)
        (display "Continuation backtrace: " out)
        (newline out)
        (##display-continuation-backtrace
         cont
         out
         #f
         #f
         ##backtrace-default-max-head
         ##backtrace-default-max-tail
         0)
        (##write-string (get-output-string out) error-port))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx663_ _proc664_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx663_))
       _proc664_
       (lambda () (mutex-unlock! _mx663_))))))
