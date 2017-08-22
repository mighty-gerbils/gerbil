(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f349_ . _args350_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e352_ (##procedure-name _f349_))) (if _$e352_ _$e352_ '#!void))
       _f349_
       _args350_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name345_ _f346_ . _args347_)
      (gerbil/gambit/threads#spawn/name/args _name345_ _f346_ _args347_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name335_ _f336_ _args337_)
      (let ((_thread-main339_
             (lambda (_thunk342_)
               (lambda ()
                 (with-catch ##primordial-exception-handler _thunk342_)))))
        (if (procedure? _f336_)
            (thread-start!
             (make-thread
              (_thread-main339_
               (if (null? _args337_)
                   _f336_
                   (lambda () (apply _f336_ _args337_))))
              _name335_))
            (error '"Bad argument; expected procedure" _f336_)))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx330_ _proc331_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx330_))
       _proc331_
       (lambda () (mutex-unlock! _mx330_))))))
