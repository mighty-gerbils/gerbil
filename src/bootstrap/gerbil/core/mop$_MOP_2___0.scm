(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop$<MOP:2>::timestamp 1710632266)
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
      (lambda _$args27369_
        (apply make-instance
               gerbil/core/mop$<MOP:2>#class-type-info::t
               _$args27369_)))
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
      (lambda (_self27281_ _stx27282_)
        (let* ((_g2728427303_
                (lambda (_g2728527300_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2728527300_)))
               (_g2728327366_
                (lambda (_g2728527306_)
                  (if (gx#stx-pair? _g2728527306_)
                      (let ((_e2728927308_ (gx#syntax-e _g2728527306_)))
                        (let ((_hd2728827311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2728927308_)))
                              (_tl2728727313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2728927308_))))
                          (if (gx#stx-pair/null? _tl2728727313_)
                              (let ((_g31897_
                                     (gx#syntax-split-splice
                                      _tl2728727313_
                                      '0)))
                                (begin
                                  (let ((_g31898_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g31897_)
                                               (##vector-length _g31897_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g31898_ 2)))
                                        (error "Context expects 2 values"
                                               _g31898_)))
                                  (let ((_target2729027316_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31897_ 0)))
                                        (_tl2729227318_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g31897_ 1))))
                                    (if (gx#stx-null? _tl2729227318_)
                                        (letrec ((_loop2729327321_
                                                  (lambda (_hd2729127324_
                                                           _arg2729727326_)
                                                    (if (gx#stx-pair?
                                                         _hd2729127324_)
                                                        (let ((_e2729427329_
                                                               (gx#syntax-e
                                                                _hd2729127324_)))
                                                          (let ((_lp-hd2729527332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2729427329_)))
                        (_lp-tl2729627334_
                         (let () (declare (not safe)) (##cdr _e2729427329_))))
                    (let ((__tmp31900
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2729527332_ _arg2729727326_))))
                      (declare (not safe))
                      (_loop2729327321_ _lp-tl2729627334_ __tmp31900))))
                (let ((_arg2729827337_ (reverse _arg2729727326_)))
                  ((lambda (_L27340_)
                     (let ((_$e27354_
                            (let ((__obj31819 _self27281_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj31819
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj31819
                                     '11
                                     gerbil/core/mop$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop$<MOP:2>#class-type-info::t
                                   __obj31819
                                   'constructor)))))
                       (if _$e27354_
                           ((lambda (_make27357_)
                              (let ((__tmp31899
                                     (foldr (lambda (_g2735827361_
                                                     _g2735927363_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2735827361_
                                                      _g2735927363_)))
                                            '()
                                            _L27340_)))
                                (declare (not safe))
                                (cons _make27357_ __tmp31899)))
                            _$e27354_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx27282_
                            _self27281_))))
                   _arg2729827337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2729327321_
                                             _target2729027316_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2728427303_ _g2728527306_))))))
                              (let ()
                                (declare (not safe))
                                (_g2728427303_ _g2728527306_)))))
                      (let ()
                        (declare (not safe))
                        (_g2728427303_ _g2728527306_))))))
          (declare (not safe))
          (_g2728327366_ _stx27282_))))
    (bind-method!
     gerbil/core/mop$<MOP:2>#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop$<MOP:2>#class-type-info::apply-macro-expander)
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx27262_ _is?27263_)
        (if (gx#identifier? _stx27262_)
            (let ((_e2726427266_ (gx#syntax-local-value _stx27262_ false)))
              (if _e2726427266_
                  (let ((_e27269_ _e2726427266_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop$<MOP:2>#class-type-info::t
                           _e27269_))
                        (_is?27263_ _e27269_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx27274_)
        (let ((_is?27276_ true))
          (declare (not safe))
          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
           _stx27274_
           _is?27276_))))
    (define gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
      (lambda _g31902_
        (let ((_g31901_ (let () (declare (not safe)) (##length _g31902_))))
          (cond ((let () (declare (not safe)) (##fx= _g31901_ 1))
                 (apply (lambda (_stx27274_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                             _stx27274_)))
                        _g31902_))
                ((let () (declare (not safe)) (##fx= _g31901_ 2))
                 (apply (lambda (_stx27278_ _is?27279_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
                             _stx27278_
                             _is?27279_)))
                        _g31902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                  _g31902_))))))))
