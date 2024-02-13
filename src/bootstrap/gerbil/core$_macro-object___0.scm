(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<macro-object>::timestamp 1707844651)
  (begin
    (define gerbil/core$<macro-object>#macro-object::t
      (let ((__tmp47555 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp47555
         '(macro)
         '()
         '#f)))
    (define gerbil/core$<macro-object>#macro-object?
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core$<macro-object>#macro-object::t)))
    (define gerbil/core$<macro-object>#make-macro-object
      (lambda _$args23417_
        (apply make-instance
               gerbil/core$<macro-object>#macro-object::t
               _$args23417_)))
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
      (lambda (_self23414_ _stx23415_)
        (gx#core-apply-expander
         (let ((__obj47528 _self23414_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj47528
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj47528
                  '1
                  gerbil/core$<macro-object>#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core$<macro-object>#macro-object::t
                __obj47528
                'macro)))
         _stx23415_)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
      (lambda (__t41867)
        (let ((__macro41868
               (let ((__tmp41869
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t41867 'macro))))
                 (if __tmp41869 __tmp41869 (error '"Unknown slot" 'macro)))))
          (lambda (_self23414_ _stx23415_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self23414_
                __macro41868
                __t41867
                '#f))
             _stx23415_)))))
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
