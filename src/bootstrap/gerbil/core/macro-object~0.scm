(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1771104490)
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
      (lambda _%$args28355%_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _%$args28355%_)))
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
      (lambda (_%self28352%_ _%stx28353%_)
        (gx#core-apply-expander
         (let ((__obj28362 _%self28352%_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj28362
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref __obj28362 '1 '#f '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj28362
                'macro)))
         _%stx28353%_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass28357 __method-table28358)
        (let ((__macro28359
               (let ((__slot28360 (class-slot-offset __klass28357 'macro)))
                 (if __slot28360 __slot28360 (error '"Unknown slot" 'macro)))))
          (lambda (_%self28352%_ _%stx28353%_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref _%self28352%_ __macro28359 '#f '#f))
             _%stx28353%_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
