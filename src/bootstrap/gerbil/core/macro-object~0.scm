(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1784279005)
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
      (lambda _%$args29309%_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _%$args29309%_)))
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
      (lambda (_%self29306%_ _%stx29307%_)
        (gx#core-apply-expander
         (let ((__obj29316 _%self29306%_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj29316
                  'gerbil/core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref __obj29316 '1 '#f '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj29316
                'macro)))
         _%stx29307%_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass29311 __method-table29312)
        (let ((__macro29313
               (let ((__slot29314 (class-slot-offset __klass29311 'macro)))
                 (if __slot29314 __slot29314 (error '"Unknown slot" 'macro)))))
          (lambda (_%self29306%_ _%stx29307%_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref _%self29306%_ __macro29313 '#f '#f))
             _%stx29307%_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
