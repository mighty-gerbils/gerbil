(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<MOP>$<MOP:2>::timestamp 1708337960)
  (begin
    (define gerbil/core$<MOP>$<MOP:2>#class-type-info::t
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
    (define gerbil/core$<MOP>$<MOP:2>#class-type-info?
      (make-class-predicate gerbil/core$<MOP>$<MOP:2>#class-type-info::t))
    (define gerbil/core$<MOP>$<MOP:2>#make-class-type-info
      (lambda _$args19350_
        (apply make-instance
               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
               _$args19350_)))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-id
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'id))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-name
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-super
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-slots
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-struct?
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-final?
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-metaclass
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-constructor-method
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-constructor
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-predicate
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-accessors
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-mutators
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-accessors
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-mutators
      (make-class-slot-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-id-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'id))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-name-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-super-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-slots-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-struct?-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-final?-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-metaclass-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-constructor-method-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-descriptor-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-constructor-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-predicate-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-accessors-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-mutators-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-accessors-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core$<MOP>$<MOP:2>#!class-type-unchecked-mutators-set!
      (make-class-slot-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-id
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'id))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-name
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-super
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-slots
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-struct?
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-final?
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-metaclass
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor-method
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-descriptor
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-predicate
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-id-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'id))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-name-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'name))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-super-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'super))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-slots-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'slots))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-struct?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'struct?))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-final?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'final?))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-metaclass-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'metaclass))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor-method-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor-method))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-descriptor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'type-descriptor))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-constructor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'constructor))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-predicate-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'predicate))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'accessors))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'mutators))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core$<MOP>$<MOP:2>#&!class-type-unchecked-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-info::apply-macro-expander
      (lambda (_self19262_ _stx19263_)
        (let* ((_g1926519284_
                (lambda (_g1926619281_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1926619281_)))
               (_g1926419347_
                (lambda (_g1926619287_)
                  (if (gx#stx-pair? _g1926619287_)
                      (let ((_e1927019289_ (gx#syntax-e _g1926619287_)))
                        (let ((_hd1926919292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1927019289_)))
                              (_tl1926819294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1927019289_))))
                          (if (gx#stx-pair/null? _tl1926819294_)
                              (let ((_g46965_
                                     (gx#syntax-split-splice
                                      _tl1926819294_
                                      '0)))
                                (begin
                                  (let ((_g46966_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46965_)
                                               (##vector-length _g46965_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46966_ 2)))
                                        (error "Context expects 2 values"
                                               _g46966_)))
                                  (let ((_target1927119297_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g46965_ 0)))
                                        (_tl1927319299_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g46965_ 1))))
                                    (if (gx#stx-null? _tl1927319299_)
                                        (letrec ((_loop1927419302_
                                                  (lambda (_hd1927219305_
                                                           _arg1927819307_)
                                                    (if (gx#stx-pair?
                                                         _hd1927219305_)
                                                        (let ((_e1927519310_
                                                               (gx#syntax-e
                                                                _hd1927219305_)))
                                                          (let ((_lp-hd1927619313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1927519310_)))
                        (_lp-tl1927719315_
                         (let () (declare (not safe)) (##cdr _e1927519310_))))
                    (let ((__tmp46968
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1927619313_ _arg1927819307_))))
                      (declare (not safe))
                      (_loop1927419302_ _lp-tl1927719315_ __tmp46968))))
                (let ((_arg1927919318_ (reverse _arg1927819307_)))
                  ((lambda (_L19321_)
                     (let ((_$e19335_
                            (let ((__obj46940 _self19262_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj46940
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj46940
                                     '10
                                     gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                   __obj46940
                                   'constructor)))))
                       (if _$e19335_
                           ((lambda (_make19338_)
                              (let ((__tmp46967
                                     (foldr (lambda (_g1933919342_
                                                     _g1934019344_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1933919342_
                                                      _g1934019344_)))
                                            '()
                                            _L19321_)))
                                (declare (not safe))
                                (cons _make19338_ __tmp46967)))
                            _$e19335_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx19263_
                            _self19262_))))
                   _arg1927919318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1927419302_
                                             _target1927119297_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1926519284_ _g1926619287_))))))
                              (let ()
                                (declare (not safe))
                                (_g1926519284_ _g1926619287_)))))
                      (let ()
                        (declare (not safe))
                        (_g1926519284_ _g1926619287_))))))
          (declare (not safe))
          (_g1926419347_ _stx19263_))))
    (bind-method!
     gerbil/core$<MOP>$<MOP:2>#class-type-info::t
     'apply-macro-expander
     gerbil/core$<MOP>$<MOP:2>#class-type-info::apply-macro-expander)
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx19243_ _is?19244_)
        (if (gx#identifier? _stx19243_)
            (let ((_e1924519247_ (gx#syntax-local-value _stx19243_ false)))
              (if _e1924519247_
                  (let ((_e19250_ _e1924519247_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                           _e19250_))
                        (_is?19244_ _e19250_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx19255_)
        (let ((_is?19257_ true))
          (declare (not safe))
          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
           _stx19255_
           _is?19257_))))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
      (lambda _g46970_
        (let ((_g46969_ (let () (declare (not safe)) (##length _g46970_))))
          (cond ((let () (declare (not safe)) (##fx= _g46969_ 1))
                 (apply (lambda (_stx19255_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                             _stx19255_)))
                        _g46970_))
                ((let () (declare (not safe)) (##fx= _g46969_ 2))
                 (apply (lambda (_stx19259_ _is?19260_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                             _stx19259_
                             _is?19260_)))
                        _g46970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                  _g46970_))))))))
