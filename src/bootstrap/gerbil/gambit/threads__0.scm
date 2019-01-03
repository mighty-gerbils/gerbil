(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f788_ . _args789_)
      (gerbil/gambit/threads#spawn-actor _f788_ _args789_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name784_ _f785_ . _args786_)
      (gerbil/gambit/threads#spawn-actor _f785_ _args786_ _name784_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name778_ _f779_ . _args780_)
      (let ((_tgroup782_ (make-thread-group _name778_)))
        (gerbil/gambit/threads#spawn-actor
         _f779_
         _args780_
         _name778_
         _tgroup782_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f756_ _args757_ _name758_ _tgroup759_)
      (letrec ((_thread-main761_
                (lambda (_thunk770_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn773_)
                       (##continuation-capture
                        (lambda (_cont775_)
                          (if gerbil/gambit/threads#unhandled-actor-exception-hook
                              (with-catch
                               void
                               (lambda ()
                                 (gerbil/gambit/threads#unhandled-actor-exception-hook
                                  _cont775_
                                  _exn773_)))
                              '#!void)
                          (##continuation-graft
                           (##continuation-last _cont775_)
                           ##primordial-exception-handler
                           _exn773_))))
                     _thunk770_)))))
        (if (procedure? _f756_)
            (let ((_thunk767_
                   (if (null? _args757_)
                       _f756_
                       (lambda () (apply _f756_ _args757_))))
                  (_tgroup768_
                   (let ((_$e764_ _tgroup759_))
                     (if _$e764_
                         _$e764_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (thread-init!
                (gerbil/gambit/threads#construct-actor-thread '#f)
                (_thread-main761_ _thunk767_)
                _name758_
                _tgroup768_)))
            (error '"Bad argument; expected procedure" _f756_)))))
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
   locals)
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda732738_
           (lambda (_thunk734_ _name735_ _tgroup736_)
             (thread-start! (make-thread _thunk734_ _name735_ _tgroup736_)))))
      (lambda _g791_
        (let ((_g790_ (length _g791_)))
          (cond ((##fx= _g790_ 1)
                 (apply (lambda (_thunk741_)
                          (let* ((_name743_ absent-obj)
                                 (_tgroup745_ absent-obj))
                            (_opt-lambda732738_
                             _thunk741_
                             _name743_
                             _tgroup745_)))
                        _g791_))
                ((##fx= _g790_ 2)
                 (apply (lambda (_thunk747_ _name748_)
                          (let ((_tgroup750_ absent-obj))
                            (_opt-lambda732738_
                             _thunk747_
                             _name748_
                             _tgroup750_)))
                        _g791_))
                ((##fx= _g790_ 3) (apply _opt-lambda732738_ _g791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g791_)))))))
  (define gerbil/gambit/threads#thread-local-ref
    (let ((_opt-lambda716723_
           (lambda (_key718_ _default719_)
             (let ((_tab721_ (gerbil/gambit/threads#thread-local-table)))
               (hash-ref _tab721_ _key718_ _default719_)))))
      (lambda _g793_
        (let ((_g792_ (length _g793_)))
          (cond ((##fx= _g792_ 1)
                 (apply (lambda (_key726_)
                          (let ((_default728_ absent-obj))
                            (_opt-lambda716723_ _key726_ _default728_)))
                        _g793_))
                ((##fx= _g792_ 2) (apply _opt-lambda716723_ _g793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#thread-local-ref
                  _g793_)))))))
  (define gerbil/gambit/threads#thread-local-get
    (lambda (_key715_) (gerbil/gambit/threads#thread-local-ref _key715_ '#f)))
  (define gerbil/gambit/threads#thread-local-set!
    (lambda (_key710_ _value711_)
      (let ((_tab713_ (gerbil/gambit/threads#thread-local-table)))
        (hash-put! _tab713_ _key710_ _value711_))))
  (define gerbil/gambit/threads#thread-local-clear!
    (lambda (_key706_)
      (let ((_tab708_ (gerbil/gambit/threads#thread-local-table)))
        (hash-remove! _tab708_ _key706_))))
  (define gerbil/gambit/threads#thread-local-table
    (lambda ()
      (let ((_thr692_ (current-thread)))
        (if (gerbil/gambit/threads#actor-thread? _thr692_)
            (let ((_$e694_ (gerbil/gambit/threads#actor-thread-locals
                            _thr692_)))
              (if _$e694_
                  (values _$e694_)
                  (let ((_tab697_ (make-hash-table-eq)))
                    (gerbil/gambit/threads#actor-thread-locals-set!
                     _thr692_
                     _tab697_)
                    _tab697_)))
            (if (eq? _thr692_ ##primordial-thread)
                gerbil/gambit/threads#*primordial-thread-locals*
                (begin
                  (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
                  (let ((_$e699_ (hash-get
                                  gerbil/gambit/threads#*thread-locals*
                                  _thr692_)))
                    (if _$e699_
                        ((lambda (_tab702_)
                           (mutex-unlock!
                            gerbil/gambit/threads#*thread-locals-mutex*)
                           _tab702_)
                         _$e699_)
                        (let ((_tab704_ (make-hash-table-eq)))
                          (hash-put!
                           gerbil/gambit/threads#*thread-locals*
                           _thr692_
                           _tab704_)
                          (mutex-unlock!
                           gerbil/gambit/threads#*thread-locals-mutex*)
                          _tab704_)))))))))
  (define gerbil/gambit/threads#*primordial-thread-locals*
    (make-hash-table-eq))
  (define gerbil/gambit/threads#*thread-locals*
    (make-hash-table-eq 'weak-keys: '#t))
  (define gerbil/gambit/threads#*thread-locals-mutex*
    (make-mutex 'thread-locals))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc686_)
      (if (or (not _proc686_) (procedure? _proc686_))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc686_)
          (error '"Bad argument; expected procedure or #f" _proc686_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda665676_
           (lambda (_thunk667_ _error-port668_)
             (with-exception-handler
              (let ((_E670_ (current-exception-handler)))
                (lambda (_exn672_)
                  (##continuation-capture
                   (lambda (_cont674_)
                     (gerbil/gambit/threads#dump-stack-trace!
                      _cont674_
                      _exn672_
                      _error-port668_)
                     (_E670_ _exn672_)))))
              _thunk667_))))
      (lambda _g795_
        (let ((_g794_ (length _g795_)))
          (cond ((##fx= _g794_ 1)
                 (apply (lambda (_thunk679_)
                          (let ((_error-port681_ (current-error-port)))
                            (_opt-lambda665676_ _thunk679_ _error-port681_)))
                        _g795_))
                ((##fx= _g794_ 2) (apply _opt-lambda665676_ _g795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g795_)))))))
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
      (##write-string (get-output-string out) error-port)))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx660_ _proc661_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx660_))
       _proc661_
       (lambda () (mutex-unlock! _mx660_))))))
