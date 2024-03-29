(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1711709195)
  (begin
    (define gerbil/core/macro-object#macro-object::t
      (let ((__tmp30209 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp30209
         '(macro)
         '()
         '#f)))
    (define gerbil/core/macro-object#macro-object?
      (let ()
        (declare (not safe))
        (__make-class-predicate gerbil/core/macro-object#macro-object::t)))
    (define gerbil/core/macro-object#make-macro-object
      (lambda _$args30201_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _$args30201_)))
    (define gerbil/core/macro-object#macro-object-macro
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#macro-object-macro-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#&macro-object-macro
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#&macro-object-macro-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander
      (lambda (_self30198_ _stx30199_)
        (gx#core-apply-expander
         (let ((__obj30208 _self30198_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj30208
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref __obj30208 '1 '#f '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj30208
                'macro)))
         _stx30199_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass30203 __method-table30204)
        (let ((__macro30205
               (let ((__slot30206
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass30203 'macro))))
                 (if __slot30206
                     __slot30206
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'macro))))))
          (lambda (_self30198_ _stx30199_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref _self30198_ __macro30205 '#f '#f))
             _stx30199_)))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gerbil/core/macro-object#macro-object::apply-macro-expander
       gerbil/core/macro-object#macro-object::apply-macro-expander::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gerbil/core/macro-object#macro-object::t
       'apply-macro-expander
       gerbil/core/macro-object#macro-object::apply-macro-expander
       '#f))))
