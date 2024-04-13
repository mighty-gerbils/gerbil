(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1713000272)
  (begin
    (define gerbil/core/macro-object#macro-object::t
      (make-class-type
       'gerbil.core#macro-object::t
       'macro-object
       (list)
       '(macro)
       '()
       '#f))
    (define gerbil/core/macro-object#macro-object?
      (make-class-predicate gerbil/core/macro-object#macro-object::t))
    (define gerbil/core/macro-object#make-macro-object
      (lambda _%$args27790%_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _%$args27790%_)))
    (define gerbil/core/macro-object#macro-object-macro
      (make-class-slot-accessor
       gerbil/core/macro-object#macro-object::t
       'macro))
    (define gerbil/core/macro-object#macro-object-macro-set!
      (make-class-slot-mutator
       gerbil/core/macro-object#macro-object::t
       'macro))
    (define gerbil/core/macro-object#&macro-object-macro
      (make-class-slot-unchecked-accessor
       gerbil/core/macro-object#macro-object::t
       'macro))
    (define gerbil/core/macro-object#&macro-object-macro-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/macro-object#macro-object::t
       'macro))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander
      (lambda (_%self27787%_ _%stx27788%_)
        (gx#core-apply-expander
         (let ((__obj27797 _%self27787%_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj27797
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref __obj27797 '1 '#f '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj27797
                'macro)))
         _%stx27788%_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass27792 __method-table27793)
        (let ((__macro27794
               (let ((__slot27795 (class-slot-offset __klass27792 'macro)))
                 (if __slot27795 __slot27795 (error '"Unknown slot" 'macro)))))
          (lambda (_%self27787%_ _%stx27788%_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref _%self27787%_ __macro27794 '#f '#f))
             _%stx27788%_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
