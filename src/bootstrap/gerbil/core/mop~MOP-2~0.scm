(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1711709194)
  (begin
    (define gerbil/core/mop~MOP-2#class-type-info::t
      (let ((__tmp29446 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil.core#class-type-info::t
         'class-type-info
         __tmp29446
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
        (__make-class-predicate gerbil/core/mop~MOP-2#class-type-info::t)))
    (define gerbil/core/mop~MOP-2#make-class-type-info
      (lambda _$args24916_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _$args24916_)))
    (define gerbil/core/mop~MOP-2#!class-type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#!class-type-name
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#!class-type-super
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#!class-type-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#!class-type-struct?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#!class-type-final?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#!class-type-system?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#!class-type-predicate
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#!class-type-accessors
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-mutators
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#!class-type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#!class-type-name-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#!class-type-super-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#!class-type-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#!class-type-struct?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#!class-type-final?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#!class-type-system?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#!class-type-predicate-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#!class-type-accessors-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-mutators-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#&!class-type-name
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#&!class-type-super
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#&!class-type-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#&!class-type-final?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#&!class-type-system?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'id)))
    (define gerbil/core/mop~MOP-2#&!class-type-name-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'name)))
    (define gerbil/core/mop~MOP-2#&!class-type-super-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'super)))
    (define gerbil/core/mop~MOP-2#&!class-type-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'slots)))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'struct?)))
    (define gerbil/core/mop~MOP-2#&!class-type-final?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'final?)))
    (define gerbil/core/mop~MOP-2#&!class-type-system?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'system?)))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'metaclass)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor-method)))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'type-descriptor)))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'constructor)))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'predicate)))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'mutators)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-accessors)))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gerbil/core/mop~MOP-2#class-type-info::t
         'unchecked-mutators)))
    (define gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander
      (lambda (_self24828_ _stx24829_)
        (let* ((_g2483124850_
                (lambda (_g2483224847_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2483224847_)))
               (_g2483024913_
                (lambda (_g2483224853_)
                  (if (gx#stx-pair? _g2483224853_)
                      (let ((_e2483624855_ (gx#syntax-e _g2483224853_)))
                        (let ((_hd2483524858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2483624855_)))
                              (_tl2483424860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2483624855_))))
                          (if (gx#stx-pair/null? _tl2483424860_)
                              (let ((_g29447_
                                     (gx#syntax-split-splice
                                      _tl2483424860_
                                      '0)))
                                (begin
                                  (let ((_g29448_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g29447_)
                                               (##vector-length _g29447_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g29448_ 2)))
                                        (error "Context expects 2 values"
                                               _g29448_)))
                                  (let ((_target2483724863_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g29447_ 0)))
                                        (_tl2483924865_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g29447_ 1))))
                                    (if (gx#stx-null? _tl2483924865_)
                                        (letrec ((_loop2484024868_
                                                  (lambda (_hd2483824871_
                                                           _arg2484424873_)
                                                    (if (gx#stx-pair?
                                                         _hd2483824871_)
                                                        (let ((_e2484124876_
                                                               (gx#syntax-e
                                                                _hd2483824871_)))
                                                          (let ((_lp-hd2484224879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2484124876_)))
                        (_lp-tl2484324881_
                         (let () (declare (not safe)) (##cdr _e2484124876_))))
                    (let ((__tmp29449
                           (cons _lp-hd2484224879_ _arg2484424873_)))
                      (declare (not safe))
                      (_loop2484024868_ _lp-tl2484324881_ __tmp29449))))
                (let ((_arg2484524884_ (reverse _arg2484424873_)))
                  ((lambda (_L24887_)
                     (let ((_$e24901_
                            (let ((__obj29366 _self24828_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj29366
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj29366
                                     '11
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj29366
                                   'constructor)))))
                       (if _$e24901_
                           ((lambda (_make24904_)
                              (cons _make24904_
                                    (let ((__tmp29450
                                           (lambda (_g2490524908_
                                                    _g2490624910_)
                                             (cons _g2490524908_
                                                   _g2490624910_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp29450 '() _L24887_))))
                            _$e24901_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _stx24829_
                            _self24828_))))
                   _arg2484524884_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2484024868_
                                             _target2483724863_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2483124850_ _g2483224853_))))))
                              (let ()
                                (declare (not safe))
                                (_g2483124850_ _g2483224853_)))))
                      (let ()
                        (declare (not safe))
                        (_g2483124850_ _g2483224853_))))))
          (declare (not safe))
          (_g2483024913_ _stx24829_))))
    (let ()
      (declare (not safe))
      (bind-method!__0
       gerbil/core/mop~MOP-2#class-type-info::t
       'apply-macro-expander
       gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
      (lambda (_stx24809_ _is?24810_)
        (if (gx#identifier? _stx24809_)
            (let ((_e2481124813_ (gx#syntax-local-value _stx24809_ false)))
              (if _e2481124813_
                  (let ((_e24816_ _e2481124813_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _e24816_))
                        (_is?24810_ _e24816_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
      (lambda (_stx24821_)
        (let ((_is?24823_ true))
          (declare (not safe))
          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
           _stx24821_
           _is?24823_))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (lambda _g29452_
        (let ((_g29451_ (let () (declare (not safe)) (##length _g29452_))))
          (cond ((let () (declare (not safe)) (##fx= _g29451_ 1))
                 (apply (lambda (_stx24821_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                             _stx24821_)))
                        _g29452_))
                ((let () (declare (not safe)) (##fx= _g29451_ 2))
                 (apply (lambda (_stx24825_ _is?24826_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                             _stx24825_
                             _is?24826_)))
                        _g29452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                  _g29452_))))))))
