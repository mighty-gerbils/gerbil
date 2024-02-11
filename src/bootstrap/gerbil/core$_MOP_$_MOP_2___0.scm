(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<MOP>$<MOP:2>::timestamp 1707659874)
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
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core$<MOP>$<MOP:2>#class-type-info::t)))
    (define gerbil/core$<MOP>$<MOP:2>#make-class-type-info
      (lambda _$args19251_
        (apply make-instance
               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
               _$args19251_)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'id)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-name
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'name)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-super
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'super)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'slots)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'struct?)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-final?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'final?)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-constructor-method
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor-method)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-descriptor
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'type-descriptor)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-predicate
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'predicate)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-unchecked-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-unchecked-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'id)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-name-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'name)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'super)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'slots)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'struct?)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'final?)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-constructor-method-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor-method)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-identifier-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'type-descriptor)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-predicate-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'predicate)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-unchecked-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-unchecked-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'id)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-name
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'name)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-super
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'super)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'slots)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'struct?)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-final?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'final?)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-constructor-method
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor-method)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-descriptor
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'type-descriptor)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-predicate
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'predicate)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-unchecked-accessors
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-unchecked-mutators
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'id)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-name-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'name)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'super)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'slots)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'struct?)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'final?)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-constructor-method-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor-method)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-identifier-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'type-descriptor)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'constructor)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-predicate-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'predicate)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-unchecked-accessors-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core$<MOP>$<MOP:2>#&class-type-unchecked-mutators-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-info::apply-macro-expander
      (lambda (_self19163_ _stx19164_)
        (let* ((_g1916619185_
                (lambda (_g1916719182_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1916719182_)))
               (_g1916519248_
                (lambda (_g1916719188_)
                  (if (gx#stx-pair? _g1916719188_)
                      (let ((_e1917119190_ (gx#syntax-e _g1916719188_)))
                        (let ((_hd1917019193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1917119190_)))
                              (_tl1916919195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1917119190_))))
                          (if (gx#stx-pair/null? _tl1916919195_)
                              (let ((_g47270_
                                     (gx#syntax-split-splice
                                      _tl1916919195_
                                      '0)))
                                (begin
                                  (let ((_g47271_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g47270_)
                                               (##vector-length _g47270_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g47271_ 2)))
                                        (error "Context expects 2 values"
                                               _g47271_)))
                                  (let ((_target1917219198_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g47270_ 0)))
                                        (_tl1917419200_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g47270_ 1))))
                                    (if (gx#stx-null? _tl1917419200_)
                                        (letrec ((_loop1917519203_
                                                  (lambda (_hd1917319206_
                                                           _arg1917919208_)
                                                    (if (gx#stx-pair?
                                                         _hd1917319206_)
                                                        (let ((_e1917619211_
                                                               (gx#syntax-e
                                                                _hd1917319206_)))
                                                          (let ((_lp-hd1917719214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1917619211_)))
                        (_lp-tl1917819216_
                         (let () (declare (not safe)) (##cdr _e1917619211_))))
                    (let ((__tmp47274
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1917719214_ _arg1917919208_))))
                      (declare (not safe))
                      (_loop1917519203_ _lp-tl1917819216_ __tmp47274))))
                (let ((_arg1918019219_ (reverse _arg1917919208_)))
                  ((lambda (_L19222_)
                     (let ((_$e19236_
                            (let ((__obj47245 _self19163_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj47245
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj47245
                                     '9
                                     gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                   __obj47245
                                   'constructor)))))
                       (if _$e19236_
                           ((lambda (_make19239_)
                              (let ((__tmp47272
                                     (let ((__tmp47273
                                            (lambda (_g1924019243_
                                                     _g1924119245_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1924019243_
                                                      _g1924119245_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp47273 '() _L19222_))))
                                (declare (not safe))
                                (cons _make19239_ __tmp47272)))
                            _$e19236_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx19164_
                            _self19163_))))
                   _arg1918019219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1917519203_
                                             _target1917219198_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1916619185_ _g1916719188_))))))
                              (let ()
                                (declare (not safe))
                                (_g1916619185_ _g1916719188_)))))
                      (let ()
                        (declare (not safe))
                        (_g1916619185_ _g1916719188_))))))
          (declare (not safe))
          (_g1916519248_ _stx19164_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'apply-macro-expander
       gerbil/core$<MOP>$<MOP:2>#class-type-info::apply-macro-expander))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx19144_ _is?19145_)
        (if (gx#identifier? _stx19144_)
            (let ((_e1914619148_ (gx#syntax-local-value _stx19144_ false)))
              (if _e1914619148_
                  (let ((_e19151_ _e1914619148_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                           _e19151_))
                        (_is?19145_ _e19151_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx19156_)
        (let ((_is?19158_ true))
          (declare (not safe))
          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
           _stx19156_
           _is?19158_))))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
      (lambda _g47276_
        (let ((_g47275_ (let () (declare (not safe)) (##length _g47276_))))
          (cond ((let () (declare (not safe)) (##fx= _g47275_ 1))
                 (apply (lambda (_stx19156_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                             _stx19156_)))
                        _g47276_))
                ((let () (declare (not safe)) (##fx= _g47275_ 2))
                 (apply (lambda (_stx19160_ _is?19161_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                             _stx19160_
                             _is?19161_)))
                        _g47276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                  _g47276_))))))))
