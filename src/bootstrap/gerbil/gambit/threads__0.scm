(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f618_ . _args619_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e621_ (##procedure-name _f618_))) (if _$e621_ _$e621_ '#!void))
       _f618_
       _args619_)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f615_ . _args616_)
      (gerbil/gambit/threads#spawn/name/args '#!void _f615_ _args616_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name611_ _f612_ . _args613_)
      (gerbil/gambit/threads#spawn/name/args _name611_ _f612_ _args613_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name601_ _f602_ _args603_)
      (letrec ((_thread-main605_
                (lambda (_thunk608_)
                  (lambda ()
                    (with-catch ##primordial-exception-handler _thunk608_)))))
        (if (procedure? _f602_)
            (gerbil/gambit/threads#spawn-thread
             (_thread-main605_
              (if (null? _args603_)
                  _f602_
                  (lambda () (apply _f602_ _args603_))))
             _name601_)
            (error '"Bad argument; expected procedure" _f602_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk598_ _name599_)
      (thread-start! (make-thread _thunk598_ _name599_))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx593_ _proc594_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx593_))
       _proc594_
       (lambda () (mutex-unlock! _mx593_))))))
