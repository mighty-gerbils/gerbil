(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop$<MOP:2>::timestamp 1710617597)
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
            system?
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
      (lambda _$args27368_
        (apply make-instance
               gerbil/core/mop$<MOP:2>#class-type-info::t
               _$args27368_)))
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
    (define gerbil/core/mop$<MOP:2>#!class-type-system?
      (make-class-slot-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'system?))
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
    (define gerbil/core/mop$<MOP:2>#!class-type-system?-set!
      (make-class-slot-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'system?))
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
    (define gerbil/core/mop$<MOP:2>#&!class-type-system?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'system?))
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
    (define gerbil/core/mop$<MOP:2>#&!class-type-system?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop$<MOP:2>#class-type-info::t
       'system?))
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
      (lambda (_self27280_ _stx27281_)
        (let* ((_g2728327302_
                (lambda (_g2728427299_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2728427299_)))
               (_g2728227365_
                (lambda (_g2728427305_)
                  (if (gx#stx-pair? _g2728427305_)
                      (let ((_e2728627307_ (gx#syntax-e _g2728427305_)))
                        (let ((_hd2728727310_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2728627307_)))
                              (_tl2728827312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2728627307_))))
                          (if (gx#stx-pair/null? _tl2728827312_)
                              (let ((_g31892_
                                     (gx#syntax-split-splice
                                      _tl2728827312_
                                      '0)))
                                (begin
                                  (let ((_g31893_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g31892_)
                                               (##vector-length _g31892_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g31893_ 2)))
                                        (error "Context expects 2 values"
                                               _g31893_)))
                                  (let ((_target2728927315_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31892_ 0)))
                                        (_tl2729127317_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31892_ 1))))
                                    (if (gx#stx-null? _tl2729127317_)
                                        (letrec ((_loop2729227320_
                                                  (lambda (_hd2729027323_
                                                           _arg2729627325_)
                                                    (if (gx#stx-pair?
                                                         _hd2729027323_)
                                                        (let ((_e2729327328_
                                                               (gx#syntax-e
                                                                _hd2729027323_)))
                                                          (let ((_lp-hd2729427331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2729327328_)))
                        (_lp-tl2729527333_
                         (let () (declare (not safe)) (##cdr _e2729327328_))))
                    (let ((__tmp31894
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2729427331_ _arg2729627325_))))
                      (declare (not safe))
                      (_loop2729227320_ _lp-tl2729527333_ __tmp31894))))
                (let ((_arg2729727336_ (reverse _arg2729627325_)))
                  ((lambda (_L27339_)
                     (let ((_$e27353_
                            (let ((__obj31818 _self27280_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj31818
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj31818
                                     '11
                                     gerbil/core/mop$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop$<MOP:2>#class-type-info::t
                                   __obj31818
                                   'constructor)))))
                       (if _$e27353_
                           ((lambda (_make27356_)
                              (let ((__tmp31895
                                     (foldr (lambda (_g2735727360_
                                                     _g2735827362_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2735727360_
                                                      _g2735827362_)))
                                            '()
                                            _L27339_)))
                                (declare (not safe))
                                (cons _make27356_ __tmp31895)))
                            _$e27353_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx27281_
                            _self27280_))))
                   _arg2729727336_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2729227320_
                                             _target2728927315_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2728327302_ _g2728427305_))))))
                              (let ()
                                (declare (not safe))
                                (_g2728327302_ _g2728427305_)))))
                      (let ()
                        (declare (not safe))
                        (_g2728327302_ _g2728427305_))))))
          (declare (not safe))
          (_g2728227365_ _stx27281_))))
    (bind-method!
     gerbil/core/mop$<MOP:2>#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop$<MOP:2>#class-type-info::apply-macro-expander)
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx27261_ _is?27262_)
        (if (gx#identifier? _stx27261_)
            (let ((_e2726327265_ (gx#syntax-local-value _stx27261_ false)))
              (if _e2726327265_
                  (let ((_e27268_ _e2726327265_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop$<MOP:2>#class-type-info::t
                           _e27268_))
                        (_is?27262_ _e27268_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx27273_)
        (let ((_is?27275_ true))
          (declare (not safe))
          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
           _stx27273_
           _is?27275_))))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
      (lambda _g31897_
        (let ((_g31896_ (let () (declare (not safe)) (##length _g31897_))))
          (cond ((let () (declare (not safe)) (##fx= _g31896_ 1))
                 (apply (lambda (_stx27273_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                             _stx27273_)))
                        _g31897_))
                ((let () (declare (not safe)) (##fx= _g31896_ 2))
                 (apply (lambda (_stx27277_ _is?27278_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
                             _stx27277_
                             _is?27278_)))
                        _g31897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                  _g31897_))))))))
