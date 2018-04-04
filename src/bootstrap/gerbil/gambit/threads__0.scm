(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f789_ . _args790_)
      (gerbil/gambit/threads#spawn-actor _f789_ _args790_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name785_ _f786_ . _args787_)
      (gerbil/gambit/threads#spawn-actor _f786_ _args787_ _name785_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name779_ _f780_ . _args781_)
      (let ((_tgroup783_ (make-thread-group _name779_)))
        (gerbil/gambit/threads#spawn-actor
         _f780_
         _args781_
         _name779_
         _tgroup783_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f757_ _args758_ _name759_ _tgroup760_)
      (letrec ((_thread-main762_
                (lambda (_thunk771_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn774_)
                       (##continuation-capture
                        (lambda (_cont776_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont776_
                                    _exn774_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont776_)
                             ##primordial-exception-handler
                             _exn774_)))))
                     _thunk771_)))))
        (if (procedure? _f757_)
            (let ((_thunk768_
                   (if (null? _args758_)
                       _f757_
                       (lambda () (apply _f757_ _args758_))))
                  (_tgroup769_
                   (let ((_$e765_ _tgroup760_))
                     (if _$e765_
                         _$e765_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (thread-init!
                (gerbil/gambit/threads#construct-actor-thread '#f)
                (_thread-main762_ _thunk768_)
                _name759_
                _tgroup769_)))
            (error '"Bad argument; expected procedure" _f757_)))))
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
    (let ((_opt-lambda733739_
           (lambda (_thunk735_ _name736_ _tgroup737_)
             (thread-start! (make-thread _thunk735_ _name736_ _tgroup737_)))))
      (lambda _g792_
        (let ((_g791_ (length _g792_)))
          (cond ((##fx= _g791_ 1)
                 (apply (lambda (_thunk742_)
                          (let* ((_name744_ absent-obj)
                                 (_tgroup746_ absent-obj))
                            (_opt-lambda733739_
                             _thunk742_
                             _name744_
                             _tgroup746_)))
                        _g792_))
                ((##fx= _g791_ 2)
                 (apply (lambda (_thunk748_ _name749_)
                          (let ((_tgroup751_ absent-obj))
                            (_opt-lambda733739_
                             _thunk748_
                             _name749_
                             _tgroup751_)))
                        _g792_))
                ((##fx= _g791_ 3) (apply _opt-lambda733739_ _g792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g792_)))))))
  (define gerbil/gambit/threads#thread-local-ref
    (let ((_opt-lambda717724_
           (lambda (_key719_ _default720_)
             (let ((_tab722_ (gerbil/gambit/threads#thread-local-table)))
               (hash-ref _tab722_ _key719_ _default720_)))))
      (lambda _g794_
        (let ((_g793_ (length _g794_)))
          (cond ((##fx= _g793_ 1)
                 (apply (lambda (_key727_)
                          (let ((_default729_ absent-obj))
                            (_opt-lambda717724_ _key727_ _default729_)))
                        _g794_))
                ((##fx= _g793_ 2) (apply _opt-lambda717724_ _g794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#thread-local-ref
                  _g794_)))))))
  (define gerbil/gambit/threads#thread-local-get
    (lambda (_key716_) (gerbil/gambit/threads#thread-local-ref _key716_ '#f)))
  (define gerbil/gambit/threads#thread-local-set!
    (lambda (_key711_ _value712_)
      (let ((_tab714_ (gerbil/gambit/threads#thread-local-table)))
        (hash-put! _tab714_ _key711_ _value712_))))
  (define gerbil/gambit/threads#thread-local-clear!
    (lambda (_key707_)
      (let ((_tab709_ (gerbil/gambit/threads#thread-local-table)))
        (hash-remove! _tab709_ _key707_))))
  (define gerbil/gambit/threads#thread-local-table
    (lambda ()
      (let ((_thr693_ (current-thread)))
        (if (gerbil/gambit/threads#actor-thread? _thr693_)
            (let ((_$e695_ (gerbil/gambit/threads#actor-thread-locals
                            _thr693_)))
              (if _$e695_
                  (values _$e695_)
                  (let ((_tab698_ (make-hash-table-eq)))
                    (begin
                      (gerbil/gambit/threads#actor-thread-locals-set!
                       _thr693_
                       _tab698_)
                      _tab698_))))
            (if (eq? _thr693_ ##primordial-thread)
                gerbil/gambit/threads#*primordial-thread-locals*
                (begin
                  (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
                  (let ((_$e700_ (hash-get
                                  gerbil/gambit/threads#*thread-locals*
                                  _thr693_)))
                    (if _$e700_
                        ((lambda (_tab703_)
                           (begin
                             (mutex-unlock!
                              gerbil/gambit/threads#*thread-locals-mutex*)
                             _tab703_))
                         _$e700_)
                        (let ((_tab705_ (make-hash-table-eq)))
                          (begin
                            (hash-put!
                             gerbil/gambit/threads#*thread-locals*
                             _thr693_
                             _tab705_)
                            (mutex-unlock!
                             gerbil/gambit/threads#*thread-locals-mutex*)
                            _tab705_))))))))))
  (define gerbil/gambit/threads#*primordial-thread-locals*
    (make-hash-table-eq))
  (define gerbil/gambit/threads#*thread-locals*
    (make-hash-table-eq 'weak-keys: '#t))
  (define gerbil/gambit/threads#*thread-locals-mutex*
    (make-mutex 'thread-locals))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc687_)
      (if (let ((_$e689_ (not _proc687_)))
            (if _$e689_ _$e689_ (procedure? _proc687_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc687_)
          (error '"Bad argument; expected procedure or #f" _proc687_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda666677_
           (lambda (_thunk668_ _error-port669_)
             (with-exception-handler
              (let ((_E671_ (current-exception-handler)))
                (lambda (_exn673_)
                  (##continuation-capture
                   (lambda (_cont675_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont675_
                        _exn673_
                        _error-port669_)
                       (_E671_ _exn673_))))))
              _thunk668_))))
      (lambda _g796_
        (let ((_g795_ (length _g796_)))
          (cond ((##fx= _g795_ 1)
                 (apply (lambda (_thunk680_)
                          (let ((_error-port682_ (current-error-port)))
                            (_opt-lambda666677_ _thunk680_ _error-port682_)))
                        _g796_))
                ((##fx= _g795_ 2) (apply _opt-lambda666677_ _g796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g796_)))))))
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
    (lambda (_mx661_ _proc662_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx661_))
       _proc662_
       (lambda () (mutex-unlock! _mx661_))))))
