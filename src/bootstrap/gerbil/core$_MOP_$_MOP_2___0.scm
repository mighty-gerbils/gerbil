(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core$<MOP>$<MOP:2>::timestamp 1707416386)
  (begin
    (define gerbil/core$<MOP>$<MOP:2>#class-type-info::t
      (make-class-type*
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
      (lambda _$args19398_
        (apply make-class-instance
               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
               _$args19398_)))
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
      (lambda (_self19310_ _stx19311_)
        (let* ((_g1931319332_
                (lambda (_g1931419329_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1931419329_)))
               (_g1931219395_
                (lambda (_g1931419335_)
                  (if (gx#stx-pair? _g1931419335_)
                      (let ((_e1931819337_ (gx#syntax-e _g1931419335_)))
                        (let ((_hd1931719340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1931819337_)))
                              (_tl1931619342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1931819337_))))
                          (if (gx#stx-pair/null? _tl1931619342_)
                              (let ((_g47305_
                                     (gx#syntax-split-splice
                                      _tl1931619342_
                                      '0)))
                                (begin
                                  (let ((_g47306_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g47305_)
                                               (##vector-length _g47305_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g47306_ 2)))
                                        (error "Context expects 2 values"
                                               _g47306_)))
                                  (let ((_target1931919345_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g47305_ 0)))
                                        (_tl1932119347_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g47305_ 1))))
                                    (if (gx#stx-null? _tl1932119347_)
                                        (letrec ((_loop1932219350_
                                                  (lambda (_hd1932019353_
                                                           _arg1932619355_)
                                                    (if (gx#stx-pair?
                                                         _hd1932019353_)
                                                        (let ((_e1932319358_
                                                               (gx#syntax-e
                                                                _hd1932019353_)))
                                                          (let ((_lp-hd1932419361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1932319358_)))
                        (_lp-tl1932519363_
                         (let () (declare (not safe)) (##cdr _e1932319358_))))
                    (let ((__tmp47309
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1932419361_ _arg1932619355_))))
                      (declare (not safe))
                      (_loop1932219350_ _lp-tl1932519363_ __tmp47309))))
                (let ((_arg1932719366_ (reverse _arg1932619355_)))
                  ((lambda (_L19369_)
                     (let ((_$e19383_
                            (let ((__obj47279 _self19310_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj47279
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj47279
                                     '9
                                     gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                   __obj47279
                                   'constructor)))))
                       (if _$e19383_
                           ((lambda (_make19386_)
                              (let ((__tmp47307
                                     (let ((__tmp47308
                                            (lambda (_g1938719390_
                                                     _g1938819392_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1938719390_
                                                      _g1938819392_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp47308 '() _L19369_))))
                                (declare (not safe))
                                (cons _make19386_ __tmp47307)))
                            _$e19383_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx19311_
                            _self19310_))))
                   _arg1932719366_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1932219350_
                                             _target1931919345_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1931319332_ _g1931419335_))))))
                              (let ()
                                (declare (not safe))
                                (_g1931319332_ _g1931419335_)))))
                      (let ()
                        (declare (not safe))
                        (_g1931319332_ _g1931419335_))))))
          (declare (not safe))
          (_g1931219395_ _stx19311_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
       'apply-macro-expander
       gerbil/core$<MOP>$<MOP:2>#class-type-info::apply-macro-expander))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
      (lambda (_stx19291_ _is?19292_)
        (if (gx#identifier? _stx19291_)
            (let ((_e1929319295_ (gx#syntax-local-value _stx19291_ false)))
              (if _e1929319295_
                  (let ((_e19298_ _e1929319295_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                           _e19298_))
                        (_is?19292_ _e19298_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
      (lambda (_stx19303_)
        (let ((_is?19305_ true))
          (declare (not safe))
          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
           _stx19303_
           _is?19305_))))
    (define gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
      (lambda _g47311_
        (let ((_g47310_ (let () (declare (not safe)) (##length _g47311_))))
          (cond ((let () (declare (not safe)) (##fx= _g47310_ 1))
                 (apply (lambda (_stx19303_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                             _stx19303_)))
                        _g47311_))
                ((let () (declare (not safe)) (##fx= _g47310_ 2))
                 (apply (lambda (_stx19307_ _is?19308_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                             _stx19307_
                             _is?19308_)))
                        _g47311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                  _g47311_))))))))
