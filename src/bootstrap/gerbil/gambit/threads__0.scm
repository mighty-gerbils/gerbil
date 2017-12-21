(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f621_ . _args622_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e624_ (##procedure-name _f621_))) (if _$e624_ _$e624_ '#!void))
       _f621_
       _args622_)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f618_ . _args619_)
      (gerbil/gambit/threads#spawn/name/args '#!void _f618_ _args619_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name614_ _f615_ . _args616_)
      (gerbil/gambit/threads#spawn/name/args _name614_ _f615_ _args616_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name604_ _f605_ _args606_)
      (letrec ((_thread-main608_
                (lambda (_thunk611_)
                  (lambda ()
                    (with-catch ##primordial-exception-handler _thunk611_)))))
        (if (procedure? _f605_)
            (gerbil/gambit/threads#spawn-thread
             (_thread-main608_
              (if (null? _args606_)
                  _f605_
                  (lambda () (apply _f605_ _args606_))))
             _name604_)
            (error '"Bad argument; expected procedure" _f605_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk601_ _name602_)
      (thread-start! (make-thread _thunk601_ _name602_))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx596_ _proc597_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx596_))
       _proc597_
       (lambda () (mutex-unlock! _mx596_))))))
