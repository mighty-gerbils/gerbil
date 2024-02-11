(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<macro-object>::timestamp 1707616233)
  (begin
    (define gerbil/core$<macro-object>#macro-object::t
      (let ((__tmp47588 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp47588
         '(macro)
         '()
         '#f)))
    (define gerbil/core$<macro-object>#macro-object?
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core$<macro-object>#macro-object::t)))
    (define gerbil/core$<macro-object>#make-macro-object
      (lambda _$args23525_
        (apply make-class-instance
               gerbil/core$<macro-object>#macro-object::t
               _$args23525_)))
    (define gerbil/core$<macro-object>#macro-object-macro
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<macro-object>#macro-object::t
         'macro)))
    (define gerbil/core$<macro-object>#macro-object-macro-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<macro-object>#macro-object::t
         'macro)))
    (define gerbil/core$<macro-object>#&macro-object-macro
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<macro-object>#macro-object::t
         'macro)))
    (define gerbil/core$<macro-object>#&macro-object-macro-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<macro-object>#macro-object::t
         'macro)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander
      (lambda (_self23522_ _stx23523_)
        (gx#core-apply-expander
         (let ((__obj47561 _self23522_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj47561
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj47561
                  '1
                  gerbil/core$<macro-object>#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core$<macro-object>#macro-object::t
                __obj47561
                'macro)))
         _stx23523_)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
      (lambda (__t41875)
        (let ((__macro41876
               (let ((__tmp41877
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t41875 'macro))))
                 (if __tmp41877 __tmp41877 (error '"Unknown slot" 'macro)))))
          (lambda (_self23522_ _stx23523_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self23522_
                __macro41876
                __t41875
                '#f))
             _stx23523_)))))
    (bind-specializer!
     gerbil/core$<macro-object>#macro-object::apply-macro-expander
     gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize)
    (let ()
      (declare (not safe))
      (bind-method!
       gerbil/core$<macro-object>#macro-object::t
       'apply-macro-expander
       gerbil/core$<macro-object>#macro-object::apply-macro-expander
       '#f))))
