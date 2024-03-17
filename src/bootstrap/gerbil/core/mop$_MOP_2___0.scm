(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop$<MOP:2>::timestamp 1710694198)
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
      (lambda _$args27376_
        (apply make-instance
               gerbil/core/mop$<MOP:2>#class-type-info::t
               _$args27376_)))
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
      (lambda (_self27288_ _stx27289_)
        (let* ((_g2729127310_
                (lambda (_g2729227307_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2729227307_)))
               (_g2729027373_
                (lambda (_g2729227313_)
                  (if (gx#stx-pair? _g2729227313_)
                      (let ((_e2729427315_ (gx#syntax-e _g2729227313_)))
                        (let ((_hd2729527318_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2729427315_)))
                              (_tl2729627320_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2729427315_))))
                          (if (gx#stx-pair/null? _tl2729627320_)
                              (let ((_g31904_
                                     (gx#syntax-split-splice
                                      _tl2729627320_
                                      '0)))
                                (begin
                                  (let ((_g31905_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g31904_)
                                               (##vector-length _g31904_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g31905_ 2)))
                                        (error "Context expects 2 values"
                                               _g31905_)))
                                  (let ((_target2729727323_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31904_ 0)))
                                        (_tl2729927325_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31904_ 1))))
                                    (if (gx#stx-null? _tl2729927325_)
                                        (letrec ((_loop2730027328_
                                                  (lambda (_hd2729827331_
                                                           _arg2730427333_)
                                                    (if (gx#stx-pair?
                                                         _hd2729827331_)
                                                        (let ((_e2730127336_
                                                               (gx#syntax-e
                                                                _hd2729827331_)))
                                                          (let ((_lp-hd2730227339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2730127336_)))
                        (_lp-tl2730327341_
                         (let () (declare (not safe)) (##cdr _e2730127336_))))
                    (let ((__tmp31906
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2730227339_ _arg2730427333_))))
                      (declare (not safe))
                      (_loop2730027328_ _lp-tl2730327341_ __tmp31906))))
                (let ((_arg2730527344_ (reverse _arg2730427333_)))
                  ((lambda (_L27347_)
                     (let ((_$e27361_
                            (let ((__obj31826 _self27288_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj31826
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj31826
                                     '11
                                     gerbil/core/mop$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop$<MOP:2>#class-type-info::t
                                   __obj31826
                                   'constructor)))))
                       (if _$e27361_
                           ((lambda (_make27364_)
                              (let ((__tmp31907
                                     (foldr (lambda (_g2736527368_
                                                     _g2736627370_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2736527368_
                                                      _g2736627370_)))
                                            '()
                                            _L27347_)))
                                (declare (not safe))
                                (cons _make27364_ __tmp31907)))
                            _$e27361_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx27289_
                            _self27288_))))
                   _arg2730527344_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2730027328_
                                             _target2729727323_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2729127310_ _g2729227313_))))))
                              (let ()
                                (declare (not safe))
                                (_g2729127310_ _g2729227313_)))))
                      (let ()
                        (declare (not safe))
                        (_g2729127310_ _g2729227313_))))))
          (declare (not safe))
          (_g2729027373_ _stx27289_))))
    (bind-method!
     gerbil/core/mop$<MOP:2>#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop$<MOP:2>#class-type-info::apply-macro-expander)
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx27269_ _is?27270_)
        (if (gx#identifier? _stx27269_)
            (let ((_e2727127273_ (gx#syntax-local-value _stx27269_ false)))
              (if _e2727127273_
                  (let ((_e27276_ _e2727127273_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop$<MOP:2>#class-type-info::t
                           _e27276_))
                        (_is?27270_ _e27276_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx27281_)
        (let ((_is?27283_ true))
          (declare (not safe))
          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
           _stx27281_
           _is?27283_))))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
      (lambda _g31909_
        (let ((_g31908_ (let () (declare (not safe)) (##length _g31909_))))
          (cond ((let () (declare (not safe)) (##fx= _g31908_ 1))
                 (apply (lambda (_stx27281_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                             _stx27281_)))
                        _g31909_))
                ((let () (declare (not safe)) (##fx= _g31908_ 2))
                 (apply (lambda (_stx27285_ _is?27286_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
                             _stx27285_
                             _is?27286_)))
                        _g31909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                  _g31909_))))))))
