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
    (lambda _$args16378_
      (apply make-class-instance
             |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
             _$args16378_)))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object-macro|
    (make-class-slot-accessor
     |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object-macro-set!|
    (make-class-slot-mutator
     |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::apply-macro-expander|
    (lambda (_self16374_ _stx16376_)
      (gx#core-apply-expander
       (|gerbil/core::<MOP>::<MOP:3>[1]#macro-object-macro| _self16374_)
       _stx16376_)))
  (bind-method!
   |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t|
   'apply-macro-expander
   |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::apply-macro-expander|
   '#f))
