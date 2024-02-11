(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<macro-object>::timestamp 1707651229)
  (begin
    (define gerbil/core$<macro-object>#macro-object::t
      (let ((__tmp47273 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp47273
         '(macro)
         '()
         '#f)))
    (define gerbil/core$<macro-object>#macro-object?
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core$<macro-object>#macro-object::t)))
    (define gerbil/core$<macro-object>#make-macro-object
      (lambda _$args23236_
        (apply make-class-instance
               gerbil/core$<macro-object>#macro-object::t
               _$args23236_)))
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
      (lambda (_self23233_ _stx23234_)
        (gx#core-apply-expander
         (let ((__obj47246 _self23233_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj47246
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj47246
                  '1
                  gerbil/core$<macro-object>#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core$<macro-object>#macro-object::t
                __obj47246
                'macro)))
         _stx23234_)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
      (lambda (__t41585)
        (let ((__macro41586
               (let ((__tmp41587
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t41585 'macro))))
                 (if __tmp41587 __tmp41587 (error '"Unknown slot" 'macro)))))
          (lambda (_self23233_ _stx23234_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self23233_
                __macro41586
                __t41585
                '#f))
             _stx23234_)))))
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
