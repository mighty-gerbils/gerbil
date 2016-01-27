(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gerbil/gambit/threads#spawn
    (lambda (_f47154_ . _args47155_)
      (apply gerbil/gambit/threads#spawn/name
             (let ((_$e47157_ (##procedure-name _f47154_)))
               (if _$e47157_ _$e47157_ '#!void))
             _f47154_
             _args47155_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name47149_ _f47150_ . _args47151_)
      (begin
        (if (procedure? _f47150_)
            '#!void
            (error '"Expected procedure" _f47150_))
        (thread-start!
         (make-thread
          (if (null? _args47151_)
              _f47150_
              (lambda () (apply _f47150_ _args47151_)))
          _name47149_)))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mutex47144_ _proc47145_)
      (dynamic-wind
       (lambda () (mutex-lock! _mutex47144_))
       _proc47145_
       (lambda () (mutex-unlock! _mutex47144_))))))
