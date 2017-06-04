(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f334_ . _args335_)
      (apply gerbil/gambit/threads#spawn/name
             (let ((_$e337_ (##procedure-name _f334_)))
               (if _$e337_ _$e337_ '#!void))
             _f334_
             _args335_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name329_ _f330_ . _args331_)
      (begin
        (if (procedure? _f330_) '#!void (error '"Expected procedure" _f330_))
        (thread-start!
         (make-thread
          (if (null? _args331_) _f330_ (lambda () (apply _f330_ _args331_)))
          _name329_)))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mutex324_ _proc325_)
      (dynamic-wind
       (lambda () (mutex-lock! _mutex324_))
       _proc325_
       (lambda () (mutex-unlock! _mutex324_))))))
