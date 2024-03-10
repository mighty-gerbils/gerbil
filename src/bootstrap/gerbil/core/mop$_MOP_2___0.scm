(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop$<MOP:2>::timestamp 1710064743)
  (begin
    (define gerbil/core/mop$<MOP:2>#class-type-info::t
      (make-class-type
       'gerbil.core#class-type-info::t
       'class-type-info
       (list)
       '(id name
            super
            slots
            struct?
            final?
            metaclass
            constructor-method
            type-descriptor
            constructor
            predicate
            accessors
            mutators
            unchecked-accessors
            unchecked-mutators)
       '()
       '#f))
    (define gerbil/core/mop$<MOP:2>#class-type-info?
      (make-class-predicate gerbil/core/mop$<MOP:2>#class-type-info::t))
    (define gerbil/core/mop$<MOP:2>#make-class-type-info
      (lambda _$args27367_
        (apply make-instance
               gerbil/core/mop$<MOP:2>#class-type-info::t
               _$args27367_)))
    (define gerbil/core/mop$<MOP:2>#!class-type-id
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'id))
    (define gerbil/core/mop$<MOP:2>#!class-type-name
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core/mop$<MOP:2>#!class-type-super
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core/mop$<MOP:2>#!class-type-slots
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core/mop$<MOP:2>#!class-type-struct?
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core/mop$<MOP:2>#!class-type-final?
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core/mop$<MOP:2>#!class-type-metaclass
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core/mop$<MOP:2>#!class-type-constructor-method
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop$<MOP:2>#!class-type-descriptor
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop$<MOP:2>#!class-type-constructor
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core/mop$<MOP:2>#!class-type-predicate
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core/mop$<MOP:2>#!class-type-accessors
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core/mop$<MOP:2>#!class-type-mutators
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core/mop$<MOP:2>#!class-type-unchecked-accessors
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop$<MOP:2>#!class-type-unchecked-mutators
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop$<MOP:2>#!class-type-id-set!
      (make-class-slot-mutator gerbil/core/mop$<MOP:2>#class-type-info::t 'id))
    (define gerbil/core/mop$<MOP:2>#!class-type-name-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core/mop$<MOP:2>#!class-type-super-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core/mop$<MOP:2>#!class-type-slots-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core/mop$<MOP:2>#!class-type-struct?-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core/mop$<MOP:2>#!class-type-final?-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core/mop$<MOP:2>#!class-type-metaclass-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core/mop$<MOP:2>#!class-type-constructor-method-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop$<MOP:2>#!class-type-descriptor-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop$<MOP:2>#!class-type-constructor-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core/mop$<MOP:2>#!class-type-predicate-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core/mop$<MOP:2>#!class-type-accessors-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core/mop$<MOP:2>#!class-type-mutators-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core/mop$<MOP:2>#!class-type-unchecked-accessors-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop$<MOP:2>#!class-type-unchecked-mutators-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop$<MOP:2>#&!class-type-id
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'id))
    (define gerbil/core/mop$<MOP:2>#&!class-type-name
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core/mop$<MOP:2>#&!class-type-super
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core/mop$<MOP:2>#&!class-type-slots
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core/mop$<MOP:2>#&!class-type-struct?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core/mop$<MOP:2>#&!class-type-final?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core/mop$<MOP:2>#&!class-type-metaclass
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core/mop$<MOP:2>#&!class-type-constructor-method
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop$<MOP:2>#&!class-type-descriptor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop$<MOP:2>#&!class-type-constructor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core/mop$<MOP:2>#&!class-type-predicate
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core/mop$<MOP:2>#&!class-type-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core/mop$<MOP:2>#&!class-type-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core/mop$<MOP:2>#&!class-type-unchecked-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop$<MOP:2>#&!class-type-unchecked-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop$<MOP:2>#&!class-type-id-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'id))
    (define gerbil/core/mop$<MOP:2>#&!class-type-name-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core/mop$<MOP:2>#&!class-type-super-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core/mop$<MOP:2>#&!class-type-slots-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core/mop$<MOP:2>#&!class-type-struct?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core/mop$<MOP:2>#&!class-type-final?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core/mop$<MOP:2>#&!class-type-metaclass-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core/mop$<MOP:2>#&!class-type-constructor-method-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop$<MOP:2>#&!class-type-descriptor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop$<MOP:2>#&!class-type-constructor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core/mop$<MOP:2>#&!class-type-predicate-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core/mop$<MOP:2>#&!class-type-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core/mop$<MOP:2>#&!class-type-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core/mop$<MOP:2>#&!class-type-unchecked-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop$<MOP:2>#&!class-type-unchecked-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop$<MOP:2>#class-type-info::apply-macro-expander
      (lambda (_self27279_ _stx27280_)
        (let* ((_g2728227301_
                (lambda (_g2728327298_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2728327298_)))
               (_g2728127364_
                (lambda (_g2728327304_)
                  (if (gx#stx-pair? _g2728327304_)
                      (let ((_e2728527306_ (gx#syntax-e _g2728327304_)))
                        (let ((_hd2728627309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2728527306_)))
                              (_tl2728727311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2728527306_))))
                          (if (gx#stx-pair/null? _tl2728727311_)
                              (let ((_g31584_
                                     (gx#syntax-split-splice
                                      _tl2728727311_
                                      '0)))
                                (begin
                                  (let ((_g31585_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g31584_)
                                               (##vector-length _g31584_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g31585_ 2)))
                                        (error "Context expects 2 values"
                                               _g31585_)))
                                  (let ((_target2728827314_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31584_ 0)))
                                        (_tl2729027316_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31584_ 1))))
                                    (if (gx#stx-null? _tl2729027316_)
                                        (letrec ((_loop2729127319_
                                                  (lambda (_hd2728927322_
                                                           _arg2729527324_)
                                                    (if (gx#stx-pair?
                                                         _hd2728927322_)
                                                        (let ((_e2729227327_
                                                               (gx#syntax-e
                                                                _hd2728927322_)))
                                                          (let ((_lp-hd2729327330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2729227327_)))
                        (_lp-tl2729427332_
                         (let () (declare (not safe)) (##cdr _e2729227327_))))
                    (let ((__tmp31586
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2729327330_ _arg2729527324_))))
                      (declare (not safe))
                      (_loop2729127319_ _lp-tl2729427332_ __tmp31586))))
                (let ((_arg2729627335_ (reverse _arg2729527324_)))
                  ((lambda (_L27338_)
                     (let ((_$e27352_
                            (let ((__obj31579 _self27279_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj31579
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj31579
                                     '10
                                     gerbil/core/mop$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop$<MOP:2>#class-type-info::t
                                   __obj31579
                                   'constructor)))))
                       (if _$e27352_
                           ((lambda (_make27355_)
                              (let ((__tmp31587
                                     (foldr (lambda (_g2735627359_
                                                     _g2735727361_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2735627359_
                                                      _g2735727361_)))
                                            '()
                                            _L27338_)))
                                (declare (not safe))
                                (cons _make27355_ __tmp31587)))
                            _$e27352_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx27280_
                            _self27279_))))
                   _arg2729627335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2729127319_
                                             _target2728827314_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2728227301_ _g2728327304_))))))
                              (let ()
                                (declare (not safe))
                                (_g2728227301_ _g2728327304_)))))
                      (let ()
                        (declare (not safe))
                        (_g2728227301_ _g2728327304_))))))
          (declare (not safe))
          (_g2728127364_ _stx27280_))))
    (bind-method!
     gerbil/core/mop$<MOP:2>#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop$<MOP:2>#class-type-info::apply-macro-expander)
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx27260_ _is?27261_)
        (if (gx#identifier? _stx27260_)
            (let ((_e2726227264_ (gx#syntax-local-value _stx27260_ false)))
              (if _e2726227264_
                  (let ((_e27267_ _e2726227264_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop$<MOP:2>#class-type-info::t
                           _e27267_))
                        (_is?27261_ _e27267_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx27272_)
        (let ((_is?27274_ true))
          (declare (not safe))
          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
           _stx27272_
           _is?27274_))))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
      (lambda _g31589_
        (let ((_g31588_ (let () (declare (not safe)) (##length _g31589_))))
          (cond ((let () (declare (not safe)) (##fx= _g31588_ 1))
                 (apply (lambda (_stx27272_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                             _stx27272_)))
                        _g31589_))
                ((let () (declare (not safe)) (##fx= _g31588_ 2))
                 (apply (lambda (_stx27276_ _is?27277_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
                             _stx27276_
                             _is?27277_)))
                        _g31589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                  _g31589_))))))))
