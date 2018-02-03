(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f687_ . _args688_)
      (gerbil/gambit/threads#spawn-actor
       _f687_
       _args688_
       (let ((_$e690_ (##procedure-name _f687_))) (if _$e690_ _$e690_ '#!void))
       '#f)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f684_ . _args685_)
      (gerbil/gambit/threads#spawn-actor _f684_ _args685_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name680_ _f681_ . _args682_)
      (gerbil/gambit/threads#spawn-actor _f681_ _args682_ _name680_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name674_ _f675_ . _args676_)
      (let ((_tgroup678_ (make-thread-group _name674_)))
        (gerbil/gambit/threads#spawn-actor
         _f675_
         _args676_
         _name674_
         _tgroup678_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f652_ _args653_ _name654_ _tgroup655_)
      (letrec ((_thread-main657_
                (lambda (_thunk666_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn669_)
                       (##continuation-capture
                        (lambda (_cont671_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont671_
                                    _exn669_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont671_)
                             ##primordial-exception-handler
                             _exn669_)))))
                     _thunk666_)))))
        (if (procedure? _f652_)
            (let ((_thunk663_
                   (if (null? _args653_)
                       _f652_
                       (lambda () (apply _f652_ _args653_))))
                  (_tgroup664_
                   (let ((_$e660_ _tgroup655_))
                     (if _$e660_
                         _$e660_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main657_ _thunk663_)
                _name654_
                _tgroup664_)))
            (error '"Bad argument; expected procedure" _f652_)))))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda628634_
           (lambda (_thunk630_ _name631_ _tgroup632_)
             (thread-start! (make-thread _thunk630_ _name631_ _tgroup632_)))))
      (lambda _g693_
        (let ((_g692_ (length _g693_)))
          (cond ((fx= _g692_ 1)
                 (apply (lambda (_thunk637_)
                          (let* ((_name639_ absent-obj)
                                 (_tgroup641_ absent-obj))
                            (_opt-lambda628634_
                             _thunk637_
                             _name639_
                             _tgroup641_)))
                        _g693_))
                ((fx= _g692_ 2)
                 (apply (lambda (_thunk643_ _name644_)
                          (let ((_tgroup646_ absent-obj))
                            (_opt-lambda628634_
                             _thunk643_
                             _name644_
                             _tgroup646_)))
                        _g693_))
                ((fx= _g692_ 3) (apply _opt-lambda628634_ _g693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g693_)))))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx623_ _proc624_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx623_))
       _proc624_
       (lambda () (mutex-unlock! _mx623_)))))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc618_)
      (if (let ((_$e620_ (not _proc618_)))
            (if _$e620_ _$e620_ (procedure? _proc618_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc618_)
          (error '"Bad argument; expected procedure or #f" _proc618_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda597608_
           (lambda (_thunk599_ _error-port600_)
             (with-exception-handler
              (let ((_E602_ (current-exception-handler)))
                (lambda (_exn604_)
                  (##continuation-capture
                   (lambda (_cont606_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont606_
                        _exn604_
                        _error-port600_)
                       (_E602_ _exn604_))))))
              _thunk599_))))
      (lambda _g695_
        (let ((_g694_ (length _g695_)))
          (cond ((fx= _g694_ 1)
                 (apply (lambda (_thunk611_)
                          (let ((_error-port613_ (current-error-port)))
                            (_opt-lambda597608_ _thunk611_ _error-port613_)))
                        _g695_))
                ((fx= _g694_ 2) (apply _opt-lambda597608_ _g695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g695_)))))))
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
        (##write-string (get-output-string out) error-port)))))
