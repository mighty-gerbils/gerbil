(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<macro-object>::timestamp 1707657566)
  (begin
    (define gerbil/core$<macro-object>#macro-object::t
      (let ((__tmp47278 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp47278
         '(macro)
         '()
         '#f)))
    (define gerbil/core$<macro-object>#macro-object?
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core$<macro-object>#macro-object::t)))
    (define gerbil/core$<macro-object>#make-macro-object
      (lambda _$args23240_
        (apply make-class-instance
               gerbil/core$<macro-object>#macro-object::t
               _$args23240_)))
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
      (lambda (_self23237_ _stx23238_)
        (gx#core-apply-expander
         (let ((__obj47251 _self23237_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj47251
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj47251
                  '1
                  gerbil/core$<macro-object>#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core$<macro-object>#macro-object::t
                __obj47251
                'macro)))
         _stx23238_)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
      (lambda (__t41590)
        (let ((__macro41591
               (let ((__tmp41592
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t41590 'macro))))
                 (if __tmp41592 __tmp41592 (error '"Unknown slot" 'macro)))))
          (lambda (_self23237_ _stx23238_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self23237_
                __macro41591
                __t41590
                '#f))
             _stx23238_)))))
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
