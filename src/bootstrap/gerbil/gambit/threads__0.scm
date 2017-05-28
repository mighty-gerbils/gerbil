(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f496_ . _args497_)
      (apply gerbil/gambit/threads#spawn/name
             (let ((_$e499_ (##procedure-name _f496_)))
               (if _$e499_ _$e499_ '#!void))
             _f496_
             _args497_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name491_ _f492_ . _args493_)
      (begin
        (if (procedure? _f492_) '#!void (error '"Expected procedure" _f492_))
        (thread-start!
         (make-thread
          (if (null? _args493_) _f492_ (lambda () (apply _f492_ _args493_)))
          _name491_)))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mutex486_ _proc487_)
      (dynamic-wind
       (lambda () (mutex-lock! _mutex486_))
       _proc487_
       (lambda () (mutex-unlock! _mutex486_))))))
