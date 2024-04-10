(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1712773520)
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
      (lambda _%$args27874%_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _%$args27874%_)))
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
      (lambda (_%self27871%_ _%stx27872%_)
        (gx#core-apply-expander
         (let ((__obj27881 _%self27871%_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj27881
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref __obj27881 '1 '#f '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj27881
                'macro)))
         _%stx27872%_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass27876 __method-table27877)
        (let ((__macro27878
               (let ((__slot27879 (class-slot-offset __klass27876 'macro)))
                 (if __slot27879 __slot27879 (error '"Unknown slot" 'macro)))))
          (lambda (_%self27871%_ _%stx27872%_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref _%self27871%_ __macro27878 '#f '#f))
             _%stx27872%_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
