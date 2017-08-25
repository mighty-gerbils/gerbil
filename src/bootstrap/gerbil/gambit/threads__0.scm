(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f355_ . _args356_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e358_ (##procedure-name _f355_))) (if _$e358_ _$e358_ '#!void))
       _f355_
       _args356_)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f352_ . _args353_)
      (gerbil/gambit/threads#spawn/name/args '#!void _f352_ _args353_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name348_ _f349_ . _args350_)
      (gerbil/gambit/threads#spawn/name/args _name348_ _f349_ _args350_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name338_ _f339_ _args340_)
      (let ((_thread-main342_
             (lambda (_thunk345_)
               (lambda ()
                 (with-catch ##primordial-exception-handler _thunk345_)))))
        (if (procedure? _f339_)
            (gerbil/gambit/threads#spawn-thread
             (_thread-main342_
              (if (null? _args340_)
                  _f339_
                  (lambda () (apply _f339_ _args340_))))
             _name338_)
            (error '"Bad argument; expected procedure" _f339_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk335_ _name336_)
      (thread-start! (make-thread _thunk335_ _name336_))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx330_ _proc331_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx330_))
       _proc331_
       (lambda () (mutex-unlock! _mx330_))))))
