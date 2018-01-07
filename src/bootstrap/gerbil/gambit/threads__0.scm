(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f665_ . _args666_)
      (gerbil/gambit/threads#spawn-actor
       _f665_
       _args666_
       (let ((_$e668_ (##procedure-name _f665_))) (if _$e668_ _$e668_ '#!void))
       '#f)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f662_ . _args663_)
      (gerbil/gambit/threads#spawn-actor _f662_ _args663_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name658_ _f659_ . _args660_)
      (gerbil/gambit/threads#spawn-actor _f659_ _args660_ _name658_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name652_ _f653_ . _args654_)
      (let ((_tgroup656_ (make-thread-group _name652_)))
        (gerbil/gambit/threads#spawn-actor
         _f653_
         _args654_
         _name652_
         _tgroup656_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f630_ _args631_ _name632_ _tgroup633_)
      (letrec ((_thread-main635_
                (lambda (_thunk644_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn647_)
                       (##continuation-capture
                        (lambda (_cont649_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont649_
                                    _exn647_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont649_)
                             ##primordial-exception-handler
                             _exn647_)))))
                     _thunk644_)))))
        (if (procedure? _f630_)
            (let ((_thunk641_
                   (if (null? _args631_)
                       _f630_
                       (lambda () (apply _f630_ _args631_))))
                  (_tgroup642_
                   (let ((_$e638_ _tgroup633_))
                     (if _$e638_
                         _$e638_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main635_ _thunk641_)
                _name632_
                _tgroup642_)))
            (error '"Bad argument; expected procedure" _f630_)))))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda606612_
           (lambda (_thunk608_ _name609_ _tgroup610_)
             (thread-start! (make-thread _thunk608_ _name609_ _tgroup610_)))))
      (lambda _g671_
        (let ((_g670_ (length _g671_)))
          (cond ((fx= _g670_ 1)
                 (apply (lambda (_thunk615_)
                          (let* ((_name617_ absent-obj)
                                 (_tgroup619_ absent-obj))
                            (_opt-lambda606612_
                             _thunk615_
                             _name617_
                             _tgroup619_)))
                        _g671_))
                ((fx= _g670_ 2)
                 (apply (lambda (_thunk621_ _name622_)
                          (let ((_tgroup624_ absent-obj))
                            (_opt-lambda606612_
                             _thunk621_
                             _name622_
                             _tgroup624_)))
                        _g671_))
                ((fx= _g670_ 3) (apply _opt-lambda606612_ _g671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g671_)))))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx601_ _proc602_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx601_))
       _proc602_
       (lambda () (mutex-unlock! _mx601_)))))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc596_)
      (if (let ((_$e598_ (not _proc596_)))
            (if _$e598_ _$e598_ (procedure? _proc596_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc596_)
          (error '"Bad argument; expected procedure or #f" _proc596_))))
  (begin
    (namespace ("gerbil/gambit/threads#" dump-stack-trace!))
    (define (dump-stack-trace! cont exn #!optional (error-port ##stderr-port))
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
