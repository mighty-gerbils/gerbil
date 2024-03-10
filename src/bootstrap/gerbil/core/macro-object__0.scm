(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1710067690)
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
      (lambda _$args32572_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _$args32572_)))
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
      (lambda (_self32569_ _stx32570_)
        (gx#core-apply-expander
         (let ((__obj32579 _self32569_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj32579
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj32579
                  '1
                  gerbil/core/macro-object#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj32579
                'macro)))
         _stx32570_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass32574 __method-table32575)
        (let ((__macro32576
               (let ((__slot32577 (class-slot-offset __klass32574 'macro)))
                 (if __slot32577 __slot32577 (error '"Unknown slot" 'macro)))))
          (lambda (_self32569_ _stx32570_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self32569_
                __macro32576
                __klass32574
                '#f))
             _stx32570_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
