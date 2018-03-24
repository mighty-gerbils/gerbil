(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
    (make-class-type
     'gerbil.core#macro-object::t
     '()
     '(macro)
     'macro-object
     '()
     '#f))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object?|
    (make-class-predicate |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#make-macro-object|
    (lambda _$args21978_
      (apply make-class-instance
             |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
             _$args21978_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro|
    (make-class-slot-accessor
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro-set!|
    (make-class-slot-mutator
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
    (lambda (_self21974_ _stx21976_)
      (gx#core-apply-expander
       (|gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro| _self21974_)
       _stx21976_)))
  (bind-method!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
   'apply-macro-expander
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   '#f))
