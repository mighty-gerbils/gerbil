(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1710694199)
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
      (lambda _$args33353_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _$args33353_)))
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
      (lambda (_self33350_ _stx33351_)
        (gx#core-apply-expander
         (let ((__obj33360 _self33350_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj33360
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj33360
                  '1
                  gerbil/core/macro-object#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj33360
                'macro)))
         _stx33351_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass33355 __method-table33356)
        (let ((__macro33357
               (let ((__slot33358 (class-slot-offset __klass33355 'macro)))
                 (if __slot33358 __slot33358 (error '"Unknown slot" 'macro)))))
          (lambda (_self33350_ _stx33351_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self33350_
                __macro33357
                __klass33355
                '#f))
             _stx33351_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
