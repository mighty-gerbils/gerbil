(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<macro-object>::timestamp 1709229967)
  (begin
    (define gerbil/core$<macro-object>#macro-object::t
      (let ((__tmp49659 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp49659
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
         (let ((__obj49633 _self23414_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj49633
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj49633
                  '1
                  gerbil/core$<macro-object>#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core$<macro-object>#macro-object::t
                __obj49633
                'macro)))
         _stx23415_)))
    (define gerbil/core$<macro-object>#macro-object::apply-macro-expander::specialize
      (lambda (__klass43971 __method-table43972)
        (let ((__macro43973
               (let ((__slot43974
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass43971 'macro))))
                 (if __slot43974
                     __slot43974
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'macro))))))
          (lambda (_self23414_ _stx23415_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self23414_
                __macro43973
                __klass43971
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
