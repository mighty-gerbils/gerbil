(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f780_ . _args781_)
      (gerbil/gambit/threads#spawn-actor _f780_ _args781_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name776_ _f777_ . _args778_)
      (gerbil/gambit/threads#spawn-actor _f777_ _args778_ _name776_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name770_ _f771_ . _args772_)
      (let ((_tgroup774_ (make-thread-group _name770_)))
        (gerbil/gambit/threads#spawn-actor
         _f771_
         _args772_
         _name770_
         _tgroup774_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f748_ _args749_ _name750_ _tgroup751_)
      (letrec ((_thread-main753_
                (lambda (_thunk762_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn765_)
                       (##continuation-capture
                        (lambda (_cont767_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont767_
                                    _exn765_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont767_)
                             ##primordial-exception-handler
                             _exn765_)))))
                     _thunk762_)))))
        (if (procedure? _f748_)
            (let ((_thunk759_
                   (if (null? _args749_)
                       _f748_
                       (lambda () (apply _f748_ _args749_))))
                  (_tgroup760_
                   (let ((_$e756_ _tgroup751_))
                     (if _$e756_
                         _$e756_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (thread-init!
                (gerbil/gambit/threads#construct-actor-thread '#f)
                (_thread-main753_ _thunk759_)
                _name750_
                _tgroup760_)))
            (error '"Bad argument; expected procedure" _f748_)))))
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
     locals))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda724730_
           (lambda (_thunk726_ _name727_ _tgroup728_)
             (thread-start! (make-thread _thunk726_ _name727_ _tgroup728_)))))
      (lambda _g783_
        (let ((_g782_ (length _g783_)))
          (cond ((fx= _g782_ 1)
                 (apply (lambda (_thunk733_)
                          (let* ((_name735_ absent-obj)
                                 (_tgroup737_ absent-obj))
                            (_opt-lambda724730_
                             _thunk733_
                             _name735_
                             _tgroup737_)))
                        _g783_))
                ((fx= _g782_ 2)
                 (apply (lambda (_thunk739_ _name740_)
                          (let ((_tgroup742_ absent-obj))
                            (_opt-lambda724730_
                             _thunk739_
                             _name740_
                             _tgroup742_)))
                        _g783_))
                ((fx= _g782_ 3) (apply _opt-lambda724730_ _g783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g783_)))))))
  (define gerbil/gambit/threads#thread-local-ref
    (let ((_opt-lambda708715_
           (lambda (_key710_ _default711_)
             (let ((_tab713_ (gerbil/gambit/threads#thread-local-table)))
               (hash-ref _tab713_ _key710_ _default711_)))))
      (lambda _g785_
        (let ((_g784_ (length _g785_)))
          (cond ((fx= _g784_ 1)
                 (apply (lambda (_key718_)
                          (let ((_default720_ absent-obj))
                            (_opt-lambda708715_ _key718_ _default720_)))
                        _g785_))
                ((fx= _g784_ 2) (apply _opt-lambda708715_ _g785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#thread-local-ref
                  _g785_)))))))
  (define gerbil/gambit/threads#thread-local-get
    (lambda (_key707_) (gerbil/gambit/threads#thread-local-ref _key707_ '#f)))
  (define gerbil/gambit/threads#thread-local-set!
    (lambda (_key702_ _value703_)
      (let ((_tab705_ (gerbil/gambit/threads#thread-local-table)))
        (hash-put! _tab705_ _key702_ _value703_))))
  (define gerbil/gambit/threads#thread-local-clear!
    (lambda (_key698_)
      (let ((_tab700_ (gerbil/gambit/threads#thread-local-table)))
        (hash-remove! _tab700_ _key698_))))
  (define gerbil/gambit/threads#thread-local-table
    (lambda ()
      (let ((_thr684_ (current-thread)))
        (if (gerbil/gambit/threads#actor-thread? _thr684_)
            (let ((_$e686_ (gerbil/gambit/threads#actor-thread-locals
                            _thr684_)))
              (if _$e686_
                  (values _$e686_)
                  (let ((_tab689_ (make-hash-table-eq)))
                    (begin
                      (gerbil/gambit/threads#actor-thread-locals-set!
                       _thr684_
                       _tab689_)
                      _tab689_))))
            (begin
              (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
              (let ((_$e691_ (hash-get
                              gerbil/gambit/threads#*thread-locals*
                              _thr684_)))
                (if _$e691_
                    ((lambda (_tab694_)
                       (begin
                         (mutex-unlock!
                          gerbil/gambit/threads#*thread-locals-mutex*)
                         _tab694_))
                     _$e691_)
                    (let ((_tab696_ (make-hash-table-eq)))
                      (begin
                        (hash-put!
                         gerbil/gambit/threads#*thread-locals*
                         _thr684_
                         _tab696_)
                        (mutex-unlock!
                         gerbil/gambit/threads#*thread-locals-mutex*)
                        _tab696_)))))))))
  (define gerbil/gambit/threads#*thread-locals*
    (make-hash-table-eq 'weak-keys: '#t))
  (define gerbil/gambit/threads#*thread-locals-mutex*
    (make-mutex 'thread-locals))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc678_)
      (if (let ((_$e680_ (not _proc678_)))
            (if _$e680_ _$e680_ (procedure? _proc678_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc678_)
          (error '"Bad argument; expected procedure or #f" _proc678_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda657668_
           (lambda (_thunk659_ _error-port660_)
             (with-exception-handler
              (let ((_E662_ (current-exception-handler)))
                (lambda (_exn664_)
                  (##continuation-capture
                   (lambda (_cont666_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont666_
                        _exn664_
                        _error-port660_)
                       (_E662_ _exn664_))))))
              _thunk659_))))
      (lambda _g787_
        (let ((_g786_ (length _g787_)))
          (cond ((fx= _g786_ 1)
                 (apply (lambda (_thunk671_)
                          (let ((_error-port673_ (current-error-port)))
                            (_opt-lambda657668_ _thunk671_ _error-port673_)))
                        _g787_))
                ((fx= _g786_ 2) (apply _opt-lambda657668_ _g787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g787_)))))))
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
    (lambda (_mx652_ _proc653_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx652_))
       _proc653_
       (lambda () (mutex-unlock! _mx652_))))))
