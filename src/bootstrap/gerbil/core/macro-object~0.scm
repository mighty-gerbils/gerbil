(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1779967235)
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
      (lambda _%$args28383%_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _%$args28383%_)))
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
      (lambda (_%self28380%_ _%stx28381%_)
        (gx#core-apply-expander
         (let ((__obj28390 _%self28380%_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj28390
                  'gerbil/core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref __obj28390 '1 '#f '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj28390
                'macro)))
         _%stx28381%_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass28385 __method-table28386)
        (let ((__macro28387
               (let ((__slot28388 (class-slot-offset __klass28385 'macro)))
                 (if __slot28388 __slot28388 (error '"Unknown slot" 'macro)))))
          (lambda (_%self28380%_ _%stx28381%_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref _%self28380%_ __macro28387 '#f '#f))
             _%stx28381%_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
