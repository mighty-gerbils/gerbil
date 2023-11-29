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
    (lambda _$args22678_
      (apply make-class-instance
             |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
             _$args22678_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro|
    (make-class-slot-accessor
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object-macro-set!|
    (make-class-slot-mutator
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#&macro-object-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#&macro-object-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
     'macro))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
    (lambda (_self22674_ _stx22676_)
      (gx#core-apply-expander
       (let () (declare (not safe)) (unchecked-slot-ref _self22674_ 'macro))
       _stx22676_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|
    (lambda (__t36936)
      (let ((__macro36937
             (let ((__tmp36938 (class-slot-offset __t36936 'macro)))
               (if __tmp36938
                   (let () (declare (not safe)) (##fx+ __tmp36938 '1))
                   (error '"Unknown slot" 'macro)))))
        (lambda (_self22674_ _stx22676_)
          (gx#core-apply-expander
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _self22674_ __macro36937 __t36936 '#f))
           _stx22676_)))))
  (bind-specializer!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|)
  (bind-method!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
   'apply-macro-expander
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   '#f))
