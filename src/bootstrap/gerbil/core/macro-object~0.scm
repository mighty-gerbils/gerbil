(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1783939338)
  (begin
    (define gerbil/core/macro-object#macro-object::t
      (make-class-type
       'gerbil/core#macro-object::t
       'macro-object
       (list)
       '(macro)
       '()
       '#f))
    (define gerbil/core/macro-object#macro-object?
      (make-class-predicate gerbil/core/macro-object#macro-object::t))
    (define gerbil/core/macro-object#make-macro-object
      (lambda _%$args28386%_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _%$args28386%_)))
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
      (lambda (_%self28383%_ _%stx28384%_)
        (gx#core-apply-expander
         (let ((__obj28393 _%self28383%_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj28393
                  'gerbil/core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref __obj28393 '1 '#f '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj28393
                'macro)))
         _%stx28384%_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass28388 __method-table28389)
        (let ((__macro28390
               (let ((__slot28391 (class-slot-offset __klass28388 'macro)))
                 (if __slot28391 __slot28391 (error '"Unknown slot" 'macro)))))
          (lambda (_%self28383%_ _%stx28384%_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref _%self28383%_ __macro28390 '#f '#f))
             _%stx28384%_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
