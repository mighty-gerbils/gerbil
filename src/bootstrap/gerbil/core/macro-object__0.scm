(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1710632266)
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
      (lambda _$args33346_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _$args33346_)))
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
      (lambda (_self33343_ _stx33344_)
        (gx#core-apply-expander
         (let ((__obj33353 _self33343_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj33353
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj33353
                  '1
                  gerbil/core/macro-object#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj33353
                'macro)))
         _stx33344_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass33348 __method-table33349)
        (let ((__macro33350
               (let ((__slot33351 (class-slot-offset __klass33348 'macro)))
                 (if __slot33351 __slot33351 (error '"Unknown slot" 'macro)))))
          (lambda (_self33343_ _stx33344_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self33343_
                __macro33350
                __klass33348
                '#f))
             _stx33344_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
