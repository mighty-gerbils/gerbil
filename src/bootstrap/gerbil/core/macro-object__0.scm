(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1710617598)
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
      (lambda _$args33313_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _$args33313_)))
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
      (lambda (_self33310_ _stx33311_)
        (gx#core-apply-expander
         (let ((__obj33320 _self33310_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj33320
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj33320
                  '1
                  gerbil/core/macro-object#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj33320
                'macro)))
         _stx33311_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass33315 __method-table33316)
        (let ((__macro33317
               (let ((__slot33318 (class-slot-offset __klass33315 'macro)))
                 (if __slot33318 __slot33318 (error '"Unknown slot" 'macro)))))
          (lambda (_self33310_ _stx33311_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self33310_
                __macro33317
                __klass33315
                '#f))
             _stx33311_)))))
    (bind-specializer!
     gerbil/core/macro-object#macro-object::apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core/macro-object#macro-object::t
     'apply-macro-expander
     gerbil/core/macro-object#macro-object::apply-macro-expander
     '#f)))
