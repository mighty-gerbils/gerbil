(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
    (make-class-type
     'gerbil.core#macro-object::t
     '()
     '(macro)
     'macro-object
     '()
     '#f))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object?|
    (make-class-predicate |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#make-macro-object|
    (lambda _$args35300_
      (apply make-class-instance
             |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
             _$args35300_)))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object-macro|
    (make-class-slot-accessor
     |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object-macro-set!|
    (make-class-slot-mutator
     |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::apply-macro-expander|
    (let ((_@super35292_
           (let ((_$super35272_
                  (make-promise
                   (lambda ()
                     (let ((_$e35268_
                            (class-find-next-method
                             |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
                             'apply-macro-expander)))
                       (if _$e35268_
                           _$e35268_
                           (error '"Cannot find super method"
                                  |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
                                  'apply-macro-expander)))))))
             (lambda _$args35276_ (apply (force _$super35272_) _$args35276_))))
          (_@next35294_
           (lambda (_$obj35280_ . _$args35283_)
             (apply ((lambda (_$obj35285_)
                       (let ((_$e35288_
                              (class-find-next-method*
                               |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
                               (object-type _$obj35285_)
                               'apply-macro-expander)))
                         (if _$e35288_
                             _$e35288_
                             (error '"Cannot find next method"
                                    |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
                                    _$obj35285_
                                    'apply-macro-expander))))
                     _$obj35280_)
                    _$obj35280_
                    _$args35283_))))
      (lambda (_self35296_ _stx35298_)
        (gx#core-apply-expander
         (|gerbil/core::<MOP>::<MOP:3>[1]#macro-object-macro| _self35296_)
         _stx35298_))))
  (bind-method!
   |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
   'apply-macro-expander
   |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::apply-macro-expander|
   '#f))
