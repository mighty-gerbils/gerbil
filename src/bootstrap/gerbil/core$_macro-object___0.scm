(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<macro-object>::timestamp 1708418151)
  (begin
    (define gerbil/core$<macro-object>#macro-object::t
      (let ((__tmp49658 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp49658
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
         (let ((__obj49632 _self23414_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj49632
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj49632
                  '1
                  gerbil/core$<macro-object>#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core$<macro-object>#macro-object::t
                __obj49632
                'macro)))
         _stx23415_)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
      (lambda (__t43971)
        (let ((__macro43972
               (let ((__tmp43973
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t43971 'macro))))
                 (if __tmp43973
                     __tmp43973
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'macro))))))
          (lambda (_self23414_ _stx23415_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self23414_
                __macro43972
                __t43971
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
