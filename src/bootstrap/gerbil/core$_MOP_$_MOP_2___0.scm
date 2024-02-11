(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<MOP>$<MOP:2>::timestamp 1707647929)
  (begin
    (define gerbil/core$<MOP>$<MOP:2>#class-type-info::t
      (let ((__tmp47361 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#class-type-info::t
         'class-type-info
         __tmp47361
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
         '#f)))
    (define gerbil/core$<MOP>$<MOP:2>#class-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core$<MOP>$<MOP:2>#class-type-info::t)))
    (define gerbil/core$<MOP>$<MOP:2>#make-class-type-info
      (lambda _$args19347_
        (apply make-class-instance
               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
               _$args19347_)))
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
      (lambda (_self19259_ _stx19260_)
        (let* ((_g1926219281_
                (lambda (_g1926319278_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1926319278_)))
               (_g1926119344_
                (lambda (_g1926319284_)
                  (if (gx#stx-pair? _g1926319284_)
                      (let ((_e1926719286_ (gx#syntax-e _g1926319284_)))
                        (let ((_hd1926619289_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1926719286_)))
                              (_tl1926519291_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1926719286_))))
                          (if (gx#stx-pair/null? _tl1926519291_)
                              (let ((_g47362_
                                     (gx#syntax-split-splice
                                      _tl1926519291_
                                      '0)))
                                (begin
                                  (let ((_g47363_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g47362_)
                                               (##vector-length _g47362_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g47363_ 2)))
                                        (error "Context expects 2 values"
                                               _g47363_)))
                                  (let ((_target1926819294_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g47362_ 0)))
                                        (_tl1927019296_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g47362_ 1))))
                                    (if (gx#stx-null? _tl1927019296_)
                                        (letrec ((_loop1927119299_
                                                  (lambda (_hd1926919302_
                                                           _arg1927519304_)
                                                    (if (gx#stx-pair?
                                                         _hd1926919302_)
                                                        (let ((_e1927219307_
                                                               (gx#syntax-e
                                                                _hd1926919302_)))
                                                          (let ((_lp-hd1927319310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1927219307_)))
                        (_lp-tl1927419312_
                         (let () (declare (not safe)) (##cdr _e1927219307_))))
                    (let ((__tmp47366
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1927319310_ _arg1927519304_))))
                      (declare (not safe))
                      (_loop1927119299_ _lp-tl1927419312_ __tmp47366))))
                (let ((_arg1927619315_ (reverse _arg1927519304_)))
                  ((lambda (_L19318_)
                     (let ((_$e19332_
                            (let ((__obj47336 _self19259_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj47336
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj47336
                                     '9
                                     gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                   __obj47336
                                   'constructor)))))
                       (if _$e19332_
                           ((lambda (_make19335_)
                              (let ((__tmp47364
                                     (let ((__tmp47365
                                            (lambda (_g1933619339_
                                                     _g1933719341_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1933619339_
                                                      _g1933719341_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp47365 '() _L19318_))))
                                (declare (not safe))
                                (cons _make19335_ __tmp47364)))
                            _$e19332_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx19260_
                            _self19259_))))
                   _arg1927619315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1927119299_
                                             _target1926819294_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1926219281_ _g1926319284_))))))
                              (let ()
                                (declare (not safe))
                                (_g1926219281_ _g1926319284_)))))
                      (let ()
                        (declare (not safe))
                        (_g1926219281_ _g1926319284_))))))
          (declare (not safe))
          (_g1926119344_ _stx19260_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'apply-macro-expander
       gerbil/core$<MOP>$<MOP:2>#class-type-info::apply-macro-expander))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx19240_ _is?19241_)
        (if (gx#identifier? _stx19240_)
            (let ((_e1924219244_ (gx#syntax-local-value _stx19240_ false)))
              (if _e1924219244_
                  (let ((_e19247_ _e1924219244_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                           _e19247_))
                        (_is?19241_ _e19247_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx19252_)
        (let ((_is?19254_ true))
          (declare (not safe))
          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
           _stx19252_
           _is?19254_))))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
      (lambda _g47368_
        (let ((_g47367_ (let () (declare (not safe)) (##length _g47368_))))
          (cond ((let () (declare (not safe)) (##fx= _g47367_ 1))
                 (apply (lambda (_stx19252_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                             _stx19252_)))
                        _g47368_))
                ((let () (declare (not safe)) (##fx= _g47367_ 2))
                 (apply (lambda (_stx19256_ _is?19257_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                             _stx19256_
                             _is?19257_)))
                        _g47368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                  _g47368_))))))))
