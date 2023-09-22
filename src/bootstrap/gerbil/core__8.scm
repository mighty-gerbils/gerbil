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
    (lambda _$args22360_
      (apply make-class-instance
             |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
             _$args22360_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro|
    (make-class-slot-accessor
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro-set!|
    (make-class-slot-mutator
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
    (lambda (_self22356_ _stx22358_)
      (gx#core-apply-expander
       (let () (declare (not safe)) (unchecked-slot-ref _self22356_ 'macro))
       _stx22358_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|
    (lambda (__t36562)
      (let ((__macro36563
             (let ((__tmp36564 (class-slot-offset __t36562 'macro)))
               (if __tmp36564
                   (let () (declare (not safe)) (##fx+ __tmp36564 '1))
                   (error '"Unknown slot" 'macro)))))
        (lambda (_self22356_ _stx22358_)
          (gx#core-apply-expander
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _self22356_ __macro36563 __t36562 '#f))
           _stx22358_)))))
  (bind-specializer!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|)
  (bind-method!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
   'apply-macro-expander
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   '#f))
