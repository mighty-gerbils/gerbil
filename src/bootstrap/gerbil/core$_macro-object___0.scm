(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<macro-object>::timestamp 1708337960)
  (begin
    (define gerbil/core$<macro-object>#macro-object::t
      (make-class-type
       'gerbil.core#macro-object::t
       'macro-object
       (list)
       '(macro)
       '()
       '#f))
    (define gerbil/core$<macro-object>#macro-object?
      (make-class-predicate gerbil/core$<macro-object>#macro-object::t))
    (define gerbil/core$<macro-object>#make-macro-object
      (lambda _$args23417_
        (apply make-instance
               gerbil/core$<macro-object>#macro-object::t
               _$args23417_)))
    (define gerbil/core$<macro-object>#macro-object-macro
      (make-class-slot-accessor
       gerbil/core$<macro-object>#macro-object::t
       'macro))
    (define gerbil/core$<macro-object>#macro-object-macro-set!
      (make-class-slot-mutator
       gerbil/core$<macro-object>#macro-object::t
       'macro))
    (define gerbil/core$<macro-object>#&macro-object-macro
      (make-class-slot-unchecked-accessor
       gerbil/core$<macro-object>#macro-object::t
       'macro))
    (define gerbil/core$<macro-object>#&macro-object-macro-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<macro-object>#macro-object::t
       'macro))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander
      (lambda (_self23414_ _stx23415_)
        (gx#core-apply-expander
         (let ((__obj46946 _self23414_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj46946
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj46946
                  '1
                  gerbil/core$<macro-object>#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core$<macro-object>#macro-object::t
                __obj46946
                'macro)))
         _stx23415_)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
      (lambda (__t41285)
        (let ((__macro41286
               (let ((__tmp41287 (class-slot-offset __t41285 'macro)))
                 (if __tmp41287 __tmp41287 (error '"Unknown slot" 'macro)))))
          (lambda (_self23414_ _stx23415_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self23414_
                __macro41286
                __t41285
                '#f))
             _stx23415_)))))
    (bind-specializer!
     gerbil/core$<macro-object>#macro-object::apply-macro-expander
     gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize)
    (bind-method!
     gerbil/core$<macro-object>#macro-object::t
     'apply-macro-expander
     gerbil/core$<macro-object>#macro-object::apply-macro-expander
     '#f)))
