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
    (lambda _$args22744_
      (apply make-class-instance
             |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
             _$args22744_)))
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
    (lambda (_self22740_ _stx22742_)
      (gx#core-apply-expander
       (let () (declare (not safe)) (unchecked-slot-ref _self22740_ 'macro))
       _stx22742_)))
  (define |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|
    (lambda (__t37002)
      (let ((__macro37003
             (let ((__tmp37004 (class-slot-offset __t37002 'macro)))
               (if __tmp37004
                   (let () (declare (not safe)) (##fx+ __tmp37004 '1))
                   (error '"Unknown slot" 'macro)))))
        (lambda (_self22740_ _stx22742_)
          (gx#core-apply-expander
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _self22740_ __macro37003 __t37002 '#f))
           _stx22742_)))))
  (bind-specializer!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander::specialize|)
  (bind-method!
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t|
   'apply-macro-expander
   |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::apply-macro-expander|
   '#f))
