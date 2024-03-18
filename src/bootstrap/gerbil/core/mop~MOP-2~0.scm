(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1710770267)
  (begin
    (define gerbil/core/mop~MOP-2#class-type-info::t
      (let ((__tmp34653 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#class-type-info::t
         'class-type-info
         __tmp34653
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
         '#f)))
    (define gerbil/core/mop~MOP-2#class-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core/mop~MOP-2#class-type-info::t)))
    (define gerbil/core/mop~MOP-2#make-class-type-info
      (lambda _$args30124_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _$args30124_)))
    (define gerbil/core/mop~MOP-2#!class-type-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#!class-type-name
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#!class-type-super
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#!class-type-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#!class-type-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#!class-type-final?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#!class-type-system?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#!class-type-predicate
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#!class-type-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#!class-type-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#!class-type-name-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#!class-type-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#!class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#!class-type-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#!class-type-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#!class-type-system?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#!class-type-predicate-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#!class-type-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#&!class-type-name
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#&!class-type-super
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#&!class-type-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#&!class-type-final?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#&!class-type-system?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#&!class-type-name-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#&!class-type-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#&!class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#&!class-type-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#&!class-type-system?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander
      (lambda (_self30036_ _stx30037_)
        (let* ((_g3003930058_
                (lambda (_g3004030055_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3004030055_)))
               (_g3003830121_
                (lambda (_g3004030061_)
                  (if (gx#stx-pair? _g3004030061_)
                      (let ((_e3004430063_ (gx#syntax-e _g3004030061_)))
                        (let ((_hd3004330066_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3004430063_)))
                              (_tl3004230068_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3004430063_))))
                          (if (gx#stx-pair/null? _tl3004230068_)
                              (let ((_g34654_
                                     (gx#syntax-split-splice
                                      _tl3004230068_
                                      '0)))
                                (begin
                                  (let ((_g34655_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g34654_)
                                               (##vector-length _g34654_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g34655_ 2)))
                                        (error "Context expects 2 values"
                                               _g34655_)))
                                  (let ((_target3004530071_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g34654_ 0)))
                                        (_tl3004730073_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g34654_ 1))))
                                    (if (gx#stx-null? _tl3004730073_)
                                        (letrec ((_loop3004830076_
                                                  (lambda (_hd3004630079_
                                                           _arg3005230081_)
                                                    (if (gx#stx-pair?
                                                         _hd3004630079_)
                                                        (let ((_e3004930084_
                                                               (gx#syntax-e
                                                                _hd3004630079_)))
                                                          (let ((_lp-hd3005030087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3004930084_)))
                        (_lp-tl3005130089_
                         (let () (declare (not safe)) (##cdr _e3004930084_))))
                    (let ((__tmp34658
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3005030087_ _arg3005230081_))))
                      (declare (not safe))
                      (_loop3004830076_ _lp-tl3005130089_ __tmp34658))))
                (let ((_arg3005330092_ (reverse _arg3005230081_)))
                  ((lambda (_L30095_)
                     (let ((_$e30109_
                            (let ((__obj34574 _self30036_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj34574
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj34574
                                     '11
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj34574
                                   'constructor)))))
                       (if _$e30109_
                           ((lambda (_make30112_)
                              (let ((__tmp34656
                                     (let ((__tmp34657
                                            (lambda (_g3011330116_
                                                     _g3011430118_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3011330116_
                                                      _g3011430118_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp34657 '() _L30095_))))
                                (declare (not safe))
                                (cons _make30112_ __tmp34656)))
                            _$e30109_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx30037_
                            _self30036_))))
                   _arg3005330092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop3004830076_
                                             _target3004530071_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g3003930058_ _g3004030061_))))))
                              (let ()
                                (declare (not safe))
                                (_g3003930058_ _g3004030061_)))))
                      (let ()
                        (declare (not safe))
                        (_g3003930058_ _g3004030061_))))))
          (declare (not safe))
          (_g3003830121_ _stx30037_))))
    (let ()
      (declare (not safe))
      (bind-method!__0
       gerbil/core/mop~MOP-2#class-type-info::t
       'apply-macro-expander
       gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
      (lambda (_stx30017_ _is?30018_)
        (if (gx#identifier? _stx30017_)
            (let ((_e3001930021_ (gx#syntax-local-value _stx30017_ false)))
              (if _e3001930021_
                  (let ((_e30024_ _e3001930021_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _e30024_))
                        (_is?30018_ _e30024_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
      (lambda (_stx30029_)
        (let ((_is?30031_ true))
          (declare (not safe))
          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
           _stx30029_
           _is?30031_))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (lambda _g34660_
        (let ((_g34659_ (let () (declare (not safe)) (##length _g34660_))))
          (cond ((let () (declare (not safe)) (##fx= _g34659_ 1))
                 (apply (lambda (_stx30029_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                             _stx30029_)))
                        _g34660_))
                ((let () (declare (not safe)) (##fx= _g34659_ 2))
                 (apply (lambda (_stx30033_ _is?30034_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                             _stx30033_
                             _is?30034_)))
                        _g34660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                  _g34660_))))))))
