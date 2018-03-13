(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g35260_|
    (gx#make-syntax-quote '@method #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args20131_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20131_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args20127_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20127_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args20123_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20123_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
      (lambda _$args20119_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20119_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f
       '(id super name ctor plist)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f
       '(fields)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args20115_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20115_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f
       '(slots)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args20111_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20111_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda2008320097_
             (lambda (_stx20085_ _is?20087_)
               (if (gx#identifier? _stx20085_)
                   (let ((_e2008820090_
                          (gx#syntax-local-value _stx20085_ false)))
                     (if _e2008820090_
                         (let ((_e20094_ _e2008820090_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e20094_)
                               (_is?20087_ _e20094_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g35246_
          (let ((_g35245_ (length _g35246_)))
            (cond ((##fx= _g35245_ 1)
                   (apply (lambda (_stx20101_)
                            (let ((_is?20104_ true))
                              (_opt-lambda2008320097_ _stx20101_ _is?20104_)))
                          _g35246_))
                  ((##fx= _g35245_ 2) (apply _opt-lambda2008320097_ _g35246_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g35246_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20081_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx20081_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20078_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx20078_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20072_)
        (if _id20072_
            (let ((_info20075_ (gx#syntax-local-value _id20072_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20075_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20075_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self19837_ _stx19839_)
        (let* ((_g1984119861_
                (lambda (_g1984219857_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1984219857_)))
               (_g1984020068_
                (lambda (_g1984219865_)
                  (if (gx#stx-pair? _g1984219865_)
                      (let ((_e1984419868_ (gx#syntax-e _g1984219865_)))
                        (let ((_hd1984519872_ (##car _e1984419868_))
                              (_tl1984619875_ (##cdr _e1984419868_)))
                          (if (gx#stx-pair/null? _tl1984619875_)
                              (if (fx>= (gx#stx-length _tl1984619875_) '0)
                                  (let ((_g35247_
                                         (gx#syntax-split-splice
                                          _tl1984619875_
                                          '0)))
                                    (begin
                                      (let ((_g35248_
                                             (if (##values? _g35247_)
                                                 (##vector-length _g35247_)
                                                 1)))
                                        (if (not (##fx= _g35248_ 2))
                                            (error "Context expects 2 values"
                                                   _g35248_)))
                                      (let ((_target1984719878_
                                             (##vector-ref _g35247_ 0))
                                            (_tl1984919881_
                                             (##vector-ref _g35247_ 1)))
                                        (if (gx#stx-null? _tl1984919881_)
                                            (letrec ((_loop1985019884_
                                                      (lambda (_hd1984819888_
                                                               _arg1985419891_)
                                                        (if (gx#stx-pair?
                                                             _hd1984819888_)
                                                            (let ((_e1985119894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1984819888_)))
                      (let ((_lp-hd1985219898_ (##car _e1985119894_))
                            (_lp-tl1985319901_ (##cdr _e1985119894_)))
                        (_loop1985019884_
                         _lp-tl1985319901_
                         (cons _lp-hd1985219898_ _arg1985419891_))))
                    (let ((_arg1985519904_ (reverse _arg1985419891_)))
                      ((lambda (_L19908_)
                         (let* ((_g1992419955_
                                 (lambda (_g1992519951_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1992519951_)))
                                (_g1992320064_
                                 (lambda (_g1992519959_)
                                   (if (gx#stx-pair? _g1992519959_)
                                       (let ((_e1993219962_
                                              (gx#syntax-e _g1992519959_)))
                                         (let ((_hd1993319966_
                                                (##car _e1993219962_))
                                               (_tl1993419969_
                                                (##cdr _e1993219962_)))
                                           (if (gx#stx-pair? _tl1993419969_)
                                               (let ((_e1993519972_
                                                      (gx#syntax-e
                                                       _tl1993419969_)))
                                                 (let ((_hd1993619976_
                                                        (##car _e1993519972_))
                                                       (_tl1993719979_
                                                        (##cdr _e1993519972_)))
                                                   (if (gx#stx-pair?
                                                        _tl1993719979_)
                                                       (let ((_e1993819982_
                                                              (gx#syntax-e
                                                               _tl1993719979_)))
                                                         (let ((_hd1993919986_
                                                                (##car _e1993819982_))
                                                               (_tl1994019989_
                                                                (##cdr _e1993819982_)))
                                                           (if (gx#stx-pair?
                                                                _tl1994019989_)
                                                               (let ((_e1994119992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1994019989_)))
                         (let ((_hd1994219996_ (##car _e1994119992_))
                               (_tl1994319999_ (##cdr _e1994119992_)))
                           (if (gx#stx-pair? _tl1994319999_)
                               (let ((_e1994420002_
                                      (gx#syntax-e _tl1994319999_)))
                                 (let ((_hd1994520006_ (##car _e1994420002_))
                                       (_tl1994620009_ (##cdr _e1994420002_)))
                                   (if (gx#stx-pair? _tl1994620009_)
                                       (let ((_e1994720012_
                                              (gx#syntax-e _tl1994620009_)))
                                         (let ((_hd1994820016_
                                                (##car _e1994720012_))
                                               (_tl1994920019_
                                                (##cdr _e1994720012_)))
                                           (if (gx#stx-null? _tl1994920019_)
                                               ((lambda (_L20022_
                                                         _L20024_
                                                         _L20025_
                                                         _L20026_
                                                         _L20027_
                                                         _L20028_)
                                                  (let ()
                                                    (cons _L20026_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g2005520058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2005620061_)
                             (cons _g2005520058_ _g2005620061_))
                           '()
                           _L19908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1994820016_
                                                _hd1994520006_
                                                _hd1994219996_
                                                _hd1993919986_
                                                _hd1993619976_
                                                _hd1993319966_)
                                               (_g1992419955_ _g1992519959_))))
                                       (_g1992419955_ _g1992519959_))))
                               (_g1992419955_ _g1992519959_))))
                       (_g1992419955_ _g1992519959_))))
               (_g1992419955_ _g1992519959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1992419955_ _g1992519959_))))
                                       (_g1992419955_ _g1992519959_)))))
                           (_g1992320064_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self19837_))))
                       _arg1985519904_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1985019884_
                                               _target1984719878_
                                               '()))
                                            (_g1984119861_ _g1984219865_)))))
                                  (_g1984119861_ _g1984219865_))
                              (_g1984119861_ _g1984219865_))))
                      (_g1984119861_ _g1984219865_)))))
          (_g1984020068_ _stx19839_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx19828_)
        (letrec ((_body-opt?19831_
                  (lambda (_key19834_)
                    (memq (gx#stx-e _key19834_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx19828_ _body-opt?19831_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18656_
               _id18658_
               _super-ref18659_
               _els18660_
               _body18661_
               _struct?18662_)
        (letrec* ((_wrap18664_
                   (lambda (_e-stx19825_)
                     (gx#stx-wrap-source
                      _e-stx19825_
                      (gx#stx-source _stx18656_))))
                  (_make-id18666_
                   (if (uninterned-symbol? (gx#stx-e _id18658_))
                       (lambda _g35249_ (gx#genident _id18658_))
                       (lambda _args19822_
                         (apply gx#stx-identifier _id18658_ _args19822_)))))
          (begin
            (gx#check-duplicate-identifiers _els18660_ _stx18656_)
            (let* ((_name18668_ (symbol->string (gx#stx-e _id18658_)))
                   (_super18671_
                    (if _struct?18662_
                        (if _super-ref18659_
                            (gx#syntax-local-value _super-ref18659_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18659_)))
                   (_g1867418682_
                    (lambda (_g1867518678_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1867518678_)))
                   (_g1867319816_
                    (lambda (_g1867518686_)
                      ((lambda (_L18689_)
                         (let ()
                           (let* ((_g1870518713_
                                   (lambda (_g1870618709_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1870618709_)))
                                  (_g1870419812_
                                   (lambda (_g1870618717_)
                                     ((lambda (_L18720_)
                                        (let ()
                                          (let* ((_g1873318741_
                                                  (lambda (_g1873418737_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1873418737_)))
                                                 (_g1873219808_
                                                  (lambda (_g1873418745_)
                                                    ((lambda (_L18748_)
                                                       (let ()
                                                         (let* ((_g1876118769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1876218765_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1876218765_)))
                        (_g1876019804_
                         (lambda (_g1876218773_)
                           ((lambda (_L18776_)
                              (let ()
                                (let* ((_g1878918797_
                                        (lambda (_g1879018793_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1879018793_)))
                                       (_g1878819800_
                                        (lambda (_g1879018801_)
                                          ((lambda (_L18804_)
                                             (let ()
                                               (let* ((_g1881718825_
                                                       (lambda (_g1881818821_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1881818821_)))
                                                      (_g1881619796_
                                                       (lambda (_g1881818829_)
                                                         ((lambda (_L18832_)
                                                            (let ()
                                                              (let* ((_g1884518862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1884618858_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1884618858_)))
                             (_g1884419792_
                              (lambda (_g1884618866_)
                                (if (gx#stx-pair/null? _g1884618866_)
                                    (if (fx>= (gx#stx-length _g1884618866_) '0)
                                        (let ((_g35250_
                                               (gx#syntax-split-splice
                                                _g1884618866_
                                                '0)))
                                          (begin
                                            (let ((_g35251_
                                                   (if (##values? _g35250_)
                                                       (##vector-length
                                                        _g35250_)
                                                       1)))
                                              (if (not (##fx= _g35251_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35251_)))
                                            (let ((_target1884818869_
                                                   (##vector-ref _g35250_ 0))
                                                  (_tl1885018872_
                                                   (##vector-ref _g35250_ 1)))
                                              (if (gx#stx-null? _tl1885018872_)
                                                  (letrec ((_loop1885118875_
                                                            (lambda (_hd1884918879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1885518882_)
                      (if (gx#stx-pair? _hd1884918879_)
                          (let ((_e1885218885_ (gx#syntax-e _hd1884918879_)))
                            (let ((_lp-hd1885318889_ (##car _e1885218885_))
                                  (_lp-tl1885418892_ (##cdr _e1885218885_)))
                              (_loop1885118875_
                               _lp-tl1885418892_
                               (cons _lp-hd1885318889_ _attr1885518882_))))
                          (let ((_attr1885618895_ (reverse _attr1885518882_)))
                            ((lambda (_L18899_)
                               (let ()
                                 (let* ((_g1891618933_
                                         (lambda (_g1891718929_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1891718929_)))
                                        (_g1891519783_
                                         (lambda (_g1891718937_)
                                           (if (gx#stx-pair/null?
                                                _g1891718937_)
                                               (if (fx>= (gx#stx-length
                                                          _g1891718937_)
                                                         '0)
                                                   (let ((_g35252_
                                                          (gx#syntax-split-splice
                                                           _g1891718937_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35253_
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g35252_)
                          (##vector-length _g35252_)
                          1)))
                 (if (not (##fx= _g35253_ 2))
                     (error "Context expects 2 values" _g35253_)))
               (let ((_target1891918940_ (##vector-ref _g35252_ 0))
                     (_tl1892118943_ (##vector-ref _g35252_ 1)))
                 (if (gx#stx-null? _tl1892118943_)
                     (letrec ((_loop1892218946_
                               (lambda (_hd1892018950_ _getf1892618953_)
                                 (if (gx#stx-pair? _hd1892018950_)
                                     (let ((_e1892318956_
                                            (gx#syntax-e _hd1892018950_)))
                                       (let ((_lp-hd1892418960_
                                              (##car _e1892318956_))
                                             (_lp-tl1892518963_
                                              (##cdr _e1892318956_)))
                                         (_loop1892218946_
                                          _lp-tl1892518963_
                                          (cons _lp-hd1892418960_
                                                _getf1892618953_))))
                                     (let ((_getf1892718966_
                                            (reverse _getf1892618953_)))
                                       ((lambda (_L18970_)
                                          (let ()
                                            (let* ((_g1898719004_
                                                    (lambda (_g1898819000_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1898819000_)))
                                                   (_g1898619774_
                                                    (lambda (_g1898819008_)
                                                      (if (gx#stx-pair/null?
                                                           _g1898819008_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1898819008_)
                            '0)
                      (let ((_g35254_
                             (gx#syntax-split-splice _g1898819008_ '0)))
                        (begin
                          (let ((_g35255_
                                 (if (##values? _g35254_)
                                     (##vector-length _g35254_)
                                     1)))
                            (if (not (##fx= _g35255_ 2))
                                (error "Context expects 2 values" _g35255_)))
                          (let ((_target1899019011_ (##vector-ref _g35254_ 0))
                                (_tl1899219014_ (##vector-ref _g35254_ 1)))
                            (if (gx#stx-null? _tl1899219014_)
                                (letrec ((_loop1899319017_
                                          (lambda (_hd1899119021_
                                                   _setf1899719024_)
                                            (if (gx#stx-pair? _hd1899119021_)
                                                (let ((_e1899419027_
                                                       (gx#syntax-e
                                                        _hd1899119021_)))
                                                  (let ((_lp-hd1899519031_
                                                         (##car _e1899419027_))
                                                        (_lp-tl1899619034_
                                                         (##cdr _e1899419027_)))
                                                    (_loop1899319017_
                                                     _lp-tl1899619034_
                                                     (cons _lp-hd1899519031_
                                                           _setf1899719024_))))
                                                (let ((_setf1899819037_
                                                       (reverse _setf1899719024_)))
                                                  ((lambda (_L19041_)
                                                     (let ()
                                                       (let* ((_type-attr19086_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els18660_)
                           '()
                           (if _struct?18662_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L19041_
                                              _L18970_
                                              _L18899_)
                                             (foldr (lambda (_g1905719062_
                                                             _g1905819065_
                                                             _g1905919067_
                                                             _g1906019069_)
                                                      (cons (cons _g1905919067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1905819065_ (cons _g1905719062_ '())))
                    _g1906019069_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L19041_
                                                    _L18970_
                                                    _L18899_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L19041_
                                              _L18970_
                                              _L18899_)
                                             (foldr (lambda (_g1907119076_
                                                             _g1907219079_
                                                             _g1907319081_
                                                             _g1907419083_)
                                                      (cons (cons _g1907319081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1907219079_ (cons _g1907119076_ '())))
                    _g1907419083_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L19041_
                                                    _L18970_
                                                    _L18899_))
                                           '())))))
                      (_type-name19093_
                       (cons 'name:
                             (cons (let ((_$e19089_
                                          (gx#stx-getq 'name: _body18661_)))
                                     (if _$e19089_ _$e19089_ _id18658_))
                                   '())))
                      (_type-id19108_
                       (let ((_$e19104_
                              (let ((_e1909519097_
                                     (gx#stx-getq 'id: _body18661_)))
                                (if _e1909519097_
                                    (let ((_e19101_ _e1909519097_))
                                      (cons 'id: (cons _e19101_ '())))
                                    '#f))))
                         (if _$e19104_ _$e19104_ '())))
                      (_type-ctor19123_
                       (let ((_$e19119_
                              (let ((_e1911019112_
                                     (gx#stx-getq 'constructor: _body18661_)))
                                (if _e1911019112_
                                    (let ((_e19116_ _e1911019112_))
                                      (cons 'constructor: (cons _e19116_ '())))
                                    '#f))))
                         (if _$e19119_ _$e19119_ '())))
                      (_plist19167_
                       (let* ((_plist19130_
                               (let ((_$e19126_
                                      (gx#stx-getq 'plist: _body18661_)))
                                 (if _$e19126_ _$e19126_ '())))
                              (_plist19133_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body18661_))
                                   (cons (cons 'transparent: '#t) _plist19130_)
                                   _plist19130_))
                              (_plist19136_
                               (if (gx#stx-e (gx#stx-getq 'final: _body18661_))
                                   (cons (cons 'final: '#t) _plist19133_)
                                   _plist19133_))
                              (_plist19149_
                               (let ((_$e19139_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body18661_))))
                                 (if _$e19139_
                                     ((lambda (_print19143_)
                                        (let ((_print19146_
                                               (if (eq? _print19143_ '#t)
                                                   _els18660_
                                                   _print19143_)))
                                          (cons (cons 'print: _print19146_)
                                                _plist19136_)))
                                      _$e19139_)
                                     _plist19136_)))
                              (_plist19162_
                               (let ((_$e19152_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body18661_))))
                                 (if _$e19152_
                                     ((lambda (_equal19156_)
                                        (let ((_equal19159_
                                               (if (eq? _equal19156_ '#t)
                                                   _els18660_
                                                   _equal19156_)))
                                          (cons (cons 'equal: _equal19159_)
                                                _plist19149_)))
                                      _$e19152_)
                                     _plist19149_))))
                         _plist19162_))
                      (_type-plist19207_
                       (if (null? _plist19167_)
                           _plist19167_
                           (let* ((_g1917019178_
                                   (lambda (_g1917119174_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1917119174_)))
                                  (_g1916919203_
                                   (lambda (_g1917119182_)
                                     ((lambda (_L19185_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L19185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1917119182_))))
                             (_g1916919203_ _plist19167_))))
                      (_type-unchecked19222_
                       (let ((_$e19218_
                              (let ((_e1920919211_
                                     (gx#stx-getq 'unchecked: _body18661_)))
                                (if _e1920919211_
                                    (let ((_e19215_ _e1920919211_))
                                      (cons 'unchecked: (cons _e19215_ '())))
                                    '#f))))
                         (if _$e19218_ _$e19218_ '())))
                      (_g1922519242_
                       (lambda (_g1922619238_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1922619238_)))
                      (_g1922419770_
                       (lambda (_g1922619246_)
                         (if (gx#stx-pair/null? _g1922619246_)
                             (if (fx>= (gx#stx-length _g1922619246_) '0)
                                 (let ((_g35256_
                                        (gx#syntax-split-splice
                                         _g1922619246_
                                         '0)))
                                   (begin
                                     (let ((_g35257_
                                            (if (##values? _g35256_)
                                                (##vector-length _g35256_)
                                                1)))
                                       (if (not (##fx= _g35257_ 2))
                                           (error "Context expects 2 values"
                                                  _g35257_)))
                                     (let ((_target1922819249_
                                            (##vector-ref _g35256_ 0))
                                           (_tl1923019252_
                                            (##vector-ref _g35256_ 1)))
                                       (if (gx#stx-null? _tl1923019252_)
                                           (letrec ((_loop1923119255_
                                                     (lambda (_hd1922919259_
                                                              _type-body1923519262_)
                                                       (if (gx#stx-pair?
                                                            _hd1922919259_)
                                                           (let ((_e1923219265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1922919259_)))
                     (let ((_lp-hd1923319269_ (##car _e1923219265_))
                           (_lp-tl1923419272_ (##cdr _e1923219265_)))
                       (_loop1923119255_
                        _lp-tl1923419272_
                        (cons _lp-hd1923319269_ _type-body1923519262_))))
                   (let ((_type-body1923619275_
                          (reverse _type-body1923519262_)))
                     ((lambda (_L19279_)
                        (let ()
                          (let* ((_g1929619304_
                                  (lambda (_g1929719300_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1929719300_)))
                                 (_g1929519758_
                                  (lambda (_g1929719308_)
                                    ((lambda (_L19311_)
                                       (let ()
                                         (let* ((_g1932419332_
                                                 (lambda (_g1932519328_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1932519328_)))
                                                (_g1932319754_
                                                 (lambda (_g1932519336_)
                                                   ((lambda (_L19339_)
                                                      (let ()
                                                        (let* ((_g1935219360_
                                                                (lambda (_g1935319356_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1935319356_)))
                       (_g1935119668_
                        (lambda (_g1935319364_)
                          ((lambda (_L19367_)
                             (let ()
                               (let* ((_g1938019388_
                                       (lambda (_g1938119384_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1938119384_)))
                                      (_g1937919664_
                                       (lambda (_g1938119392_)
                                         ((lambda (_L19395_)
                                            (let ()
                                              (let* ((_g1940819416_
                                                      (lambda (_g1940919412_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1940919412_)))
                                                     (_g1940719660_
                                                      (lambda (_g1940919420_)
                                                        ((lambda (_L19423_)
                                                           (let ()
                                                             (let* ((_g1943619444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1943719440_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1943719440_)))
                            (_g1943519618_
                             (lambda (_g1943719448_)
                               ((lambda (_L19451_)
                                  (let ()
                                    (let* ((_g1946419472_
                                            (lambda (_g1946519468_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1946519468_)))
                                           (_g1946319614_
                                            (lambda (_g1946519476_)
                                              ((lambda (_L19479_)
                                                 (let ()
                                                   (let* ((_g1949219500_
                                                           (lambda (_g1949319496_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1949319496_)))
                                                          (_g1949119610_
                                                           (lambda (_g1949319504_)
                                                             ((lambda (_L19507_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1952019528_
                                  (lambda (_g1952119524_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1952119524_)))
                                 (_g1951919606_
                                  (lambda (_g1952119532_)
                                    ((lambda (_L19535_)
                                       (let ()
                                         (let* ((_g1954819556_
                                                 (lambda (_g1954919552_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1954919552_)))
                                                (_g1954719578_
                                                 (lambda (_g1954919560_)
                                                   ((lambda (_L19563_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap18664_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L19311_ (cons _L19563_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1954919560_))))
                                           (_g1954719578_
                                            (_wrap18664_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L18720_
                                                         (cons (cons _L19339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L18748_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L19367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L18748_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L18776_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L18804_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1958119588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1958219591_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1958119588_ '()))
                                _g1958219591_))
                        '()
                        _L18970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1958319594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1958419597_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1958319594_ '()))
                                      _g1958419597_))
                              '()
                              _L19041_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L19395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L19423_ '()))
                                     (cons _L19451_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L19479_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L19507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L19535_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1958519600_
                                                         _g1958619603_)
                                                  (cons _g1958519600_
                                                        _g1958619603_))
                                                '()
                                                _L18899_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1952119532_))))
                            (_g1951919606_ _plist19167_))))
                      _g1949319504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1949119610_
                                                      (if (not (null? _type-ctor19123_))
                                                          (cadr _type-ctor19123_)
                                                          '#f)))))
                                               _g1946519476_))))
                                      (_g1946319614_
                                       (cadr _type-name19093_)))))
                                _g1943719448_))))
                       (_g1943519618_
                        (let ((_quote-e19657_
                               (lambda (_x-ref19622_)
                                 (if _x-ref19622_
                                     (let* ((_g1962519633_
                                             (lambda (_g1962619629_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1962619629_)))
                                            (_g1962419653_
                                             (lambda (_g1962619637_)
                                               ((lambda (_L19640_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L19640_
                                                                '()))))
                                                _g1962619637_))))
                                       (_g1962419653_ _x-ref19622_))
                                     '#f))))
                          (if _struct?18662_
                              (_quote-e19657_ _super-ref18659_)
                              (cons 'list
                                    (map _quote-e19657_
                                         _super-ref18659_))))))))
                 _g1940919420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1940719660_
                                                 (if (not (null? _type-id19108_))
                                                     (cadr _type-id19108_)
                                                     '#f)))))
                                          _g1938119392_))))
                                 (_g1937919664_
                                  (if _struct?18662_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1935319364_))))
                  (_g1935119668_
                   (if _struct?18662_
                       (if _super18671_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L18832_ '()))
                           '#f)
                       (let* ((_g1967219689_
                               (lambda (_g1967319685_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1967319685_)))
                              (_g1967119750_
                               (lambda (_g1967319693_)
                                 (if (gx#stx-pair/null? _g1967319693_)
                                     (if (fx>= (gx#stx-length _g1967319693_)
                                               '0)
                                         (let ((_g35258_
                                                (gx#syntax-split-splice
                                                 _g1967319693_
                                                 '0)))
                                           (begin
                                             (let ((_g35259_
                                                    (if (##values? _g35258_)
                                                        (##vector-length
                                                         _g35258_)
                                                        1)))
                                               (if (not (##fx= _g35259_ 2))
                                                   (error "Context expects 2 values"
                                                          _g35259_)))
                                             (let ((_target1967519696_
                                                    (##vector-ref _g35258_ 0))
                                                   (_tl1967719699_
                                                    (##vector-ref _g35258_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1967719699_)
                                                   (letrec ((_loop1967819702_
                                                             (lambda (_hd1967619706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1968219709_)
                       (if (gx#stx-pair? _hd1967619706_)
                           (let ((_e1967919712_ (gx#syntax-e _hd1967619706_)))
                             (let ((_lp-hd1968019716_ (##car _e1967919712_))
                                   (_lp-tl1968119719_ (##cdr _e1967919712_)))
                               (_loop1967819702_
                                _lp-tl1968119719_
                                (cons _lp-hd1968019716_
                                      _super-id1968219709_))))
                           (let ((_super-id1968319722_
                                  (reverse _super-id1968219709_)))
                             ((lambda (_L19726_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1974119744_
                                                          _g1974219747_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1974119744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1974219747_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L19726_)))))
                              _super-id1968319722_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1967819702_
                                                      _target1967519696_
                                                      '()))
                                                   (_g1967219689_
                                                    _g1967319693_)))))
                                         (_g1967219689_ _g1967319693_))
                                     (_g1967219689_ _g1967319693_)))))
                         (_g1967119750_ _L18832_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1932519336_))))
                                           (_g1932319754_
                                            (if _struct?18662_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1929719308_))))
                            (_g1929519758_
                             (_wrap18664_
                              (cons _L18689_
                                    (cons _L18748_
                                          (cons _L18832_
                                                (cons _L18776_
                                                      (cons _L18804_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1976119764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1976219767_)
                               (cons _g1976119764_ _g1976219767_))
                             '()
                             _L19279_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1923619275_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1923119255_
                                              _target1922819249_
                                              '()))
                                           (_g1922519242_ _g1922619246_)))))
                                 (_g1922519242_ _g1922619246_))
                             (_g1922519242_ _g1922619246_)))))
                 (_g1922419770_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked19222_
                                                     _type-plist19207_)
                                              _type-ctor19123_)
                                       _type-name19093_)
                                _type-id19108_)
                         _type-attr19086_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1899819037_))))))
                                  (_loop1899319017_ _target1899019011_ '()))
                                (_g1898719004_ _g1898819008_)))))
                      (_g1898719004_ _g1898819008_))
                  (_g1898719004_ _g1898819008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1898619774_
                                               (gx#stx-map
                                                (lambda (_g1977719779_)
                                                  (_make-id18666_
                                                   _name18668_
                                                   '"-"
                                                   _g1977719779_
                                                   '"-set!"))
                                                _els18660_)))))
                                        _getf1892718966_))))))
                       (_loop1892218946_ _target1891918940_ '()))
                     (_g1891618933_ _g1891718937_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1891618933_
                                                    _g1891718937_))
                                               (_g1891618933_
                                                _g1891718937_)))))
                                   (_g1891519783_
                                    (gx#stx-map
                                     (lambda (_g1978619788_)
                                       (_make-id18666_
                                        _name18668_
                                        '"-"
                                        _g1978619788_))
                                     _els18660_)))))
                             _attr1885618895_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1885118875_
                                                     _target1884818869_
                                                     '()))
                                                  (_g1884518862_
                                                   _g1884618866_)))))
                                        (_g1884518862_ _g1884618866_))
                                    (_g1884518862_ _g1884618866_)))))
                        (_g1884419792_ _els18660_))))
                  _g1881818829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1881619796_
                                                  (if _struct?18662_
                                                      (if _super18671_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18671_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18671_))))))
                                           _g1879018801_))))
                                  (_g1878819800_
                                   (_make-id18666_ _name18668_ '"?")))))
                            _g1876218773_))))
                   (_g1876019804_ (_make-id18666_ '"make-" _name18668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1873418745_))))
                                            (_g1873219808_
                                             (_make-id18666_
                                              _name18668_
                                              '"::t")))))
                                      _g1870618717_))))
                             (_g1870419812_ _id18658_))))
                       _g1867518686_))))
              (_g1867319816_
               (if _struct?18662_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20144_)
        (letrec ((_generate20147_
                  (lambda (_hd20231_ _fields20233_ _body20234_)
                    (let* ((_g2023720252_
                            (lambda (_g2023820248_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2023820248_)))
                           (_g2023620263_
                            (lambda (_g2023820256_)
                              ((lambda ()
                                 (if (gx#identifier? _hd20231_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20144_
                                      _hd20231_
                                      '#f
                                      _fields20233_
                                      _body20234_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx20144_
                                      _hd20231_))))))
                           (_g2023520307_
                            (lambda (_g2023820267_)
                              (if (gx#stx-pair? _g2023820267_)
                                  (let ((_e2024120270_
                                         (gx#syntax-e _g2023820267_)))
                                    (let ((_hd2024220274_
                                           (##car _e2024120270_))
                                          (_tl2024320277_
                                           (##cdr _e2024120270_)))
                                      (if (gx#stx-pair? _tl2024320277_)
                                          (let ((_e2024420280_
                                                 (gx#syntax-e _tl2024320277_)))
                                            (let ((_hd2024520284_
                                                   (##car _e2024420280_))
                                                  (_tl2024620287_
                                                   (##cdr _e2024420280_)))
                                              (if (gx#stx-null? _tl2024620287_)
                                                  ((lambda (_L20290_ _L20292_)
                                                     (if (if (gx#identifier?
                                                              _L20292_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L20290_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx20144_
                                                          _L20292_
                                                          _L20290_
                                                          _fields20233_
                                                          _body20234_
                                                          '#t)
                                                         (_g2023620263_
                                                          _g2023820267_)))
                                                   _hd2024520284_
                                                   _hd2024220274_)
                                                  (_g2023620263_
                                                   _g2023820267_))))
                                          (_g2023620263_ _g2023820267_))))
                                  (_g2023620263_ _g2023820267_)))))
                      (_g2023520307_ _hd20231_)))))
          (let* ((_g2015020169_
                  (lambda (_g2015120165_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2015120165_)))
                 (_g2014920227_
                  (lambda (_g2015120173_)
                    (if (gx#stx-pair? _g2015120173_)
                        (let ((_e2015520176_ (gx#syntax-e _g2015120173_)))
                          (let ((_hd2015620180_ (##car _e2015520176_))
                                (_tl2015720183_ (##cdr _e2015520176_)))
                            (if (gx#stx-pair? _tl2015720183_)
                                (let ((_e2015820186_
                                       (gx#syntax-e _tl2015720183_)))
                                  (let ((_hd2015920190_ (##car _e2015820186_))
                                        (_tl2016020193_ (##cdr _e2015820186_)))
                                    (if (gx#stx-pair? _tl2016020193_)
                                        (let ((_e2016120196_
                                               (gx#syntax-e _tl2016020193_)))
                                          (let ((_hd2016220200_
                                                 (##car _e2016120196_))
                                                (_tl2016320203_
                                                 (##cdr _e2016120196_)))
                                            ((lambda (_L20206_
                                                      _L20208_
                                                      _L20209_)
                                               (if (if (gx#identifier-list?
                                                        _L20208_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20206_)
                                                       '#f)
                                                   (_generate20147_
                                                    _L20209_
                                                    _L20208_
                                                    _L20206_)
                                                   (_g2015020169_
                                                    _g2015120173_)))
                                             _tl2016320203_
                                             _hd2016220200_
                                             _hd2015920190_)))
                                        (_g2015020169_ _g2015120173_))))
                                (_g2015020169_ _g2015120173_))))
                        (_g2015020169_ _g2015120173_)))))
            (_g2014920227_ _stx20144_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20311_)
        (letrec ((_generate20314_
                  (lambda (_hd20398_ _slots20400_ _body20401_)
                    (let* ((_g2040420416_
                            (lambda (_g2040520412_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2040520412_)))
                           (_g2040320427_
                            (lambda (_g2040520420_)
                              ((lambda ()
                                 (if (gx#identifier? _hd20398_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20311_
                                      _hd20398_
                                      '()
                                      _slots20400_
                                      _body20401_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx20311_
                                      _hd20398_))))))
                           (_g2040220459_
                            (lambda (_g2040520431_)
                              (if (gx#stx-pair? _g2040520431_)
                                  (let ((_e2040820434_
                                         (gx#syntax-e _g2040520431_)))
                                    (let ((_hd2040920438_
                                           (##car _e2040820434_))
                                          (_tl2041020441_
                                           (##cdr _e2040820434_)))
                                      ((lambda (_L20444_ _L20446_)
                                         (if (if (gx#stx-list? _L20444_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L20444_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx20311_
                                              _L20446_
                                              (gx#syntax->list _L20444_)
                                              _slots20400_
                                              _body20401_
                                              '#f)
                                             (_g2040320427_ _g2040520431_)))
                                       _tl2041020441_
                                       _hd2040920438_)))
                                  (_g2040320427_ _g2040520431_)))))
                      (_g2040220459_ _hd20398_)))))
          (let* ((_g2031720336_
                  (lambda (_g2031820332_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2031820332_)))
                 (_g2031620394_
                  (lambda (_g2031820340_)
                    (if (gx#stx-pair? _g2031820340_)
                        (let ((_e2032220343_ (gx#syntax-e _g2031820340_)))
                          (let ((_hd2032320347_ (##car _e2032220343_))
                                (_tl2032420350_ (##cdr _e2032220343_)))
                            (if (gx#stx-pair? _tl2032420350_)
                                (let ((_e2032520353_
                                       (gx#syntax-e _tl2032420350_)))
                                  (let ((_hd2032620357_ (##car _e2032520353_))
                                        (_tl2032720360_ (##cdr _e2032520353_)))
                                    (if (gx#stx-pair? _tl2032720360_)
                                        (let ((_e2032820363_
                                               (gx#syntax-e _tl2032720360_)))
                                          (let ((_hd2032920367_
                                                 (##car _e2032820363_))
                                                (_tl2033020370_
                                                 (##cdr _e2032820363_)))
                                            ((lambda (_L20373_
                                                      _L20375_
                                                      _L20376_)
                                               (if (if (gx#identifier-list?
                                                        _L20375_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20373_)
                                                       '#f)
                                                   (_generate20314_
                                                    _L20376_
                                                    _L20375_
                                                    _L20373_)
                                                   (_g2031720336_
                                                    _g2031820340_)))
                                             _tl2033020370_
                                             _hd2032920367_
                                             _hd2032620357_)))
                                        (_g2031720336_ _g2031820340_))))
                                (_g2031720336_ _g2031820340_))))
                        (_g2031720336_ _g2031820340_)))))
            (_g2031620394_ _stx20311_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20463_)
        (letrec ((_wrap20466_
                  (lambda (_e-stx20803_)
                    (gx#stx-wrap-source
                     _e-stx20803_
                     (gx#stx-source _stx20463_))))
                 (_method-opt?20468_
                  (lambda (_x20800_) (memq (gx#stx-e _x20800_) '(rebind:)))))
          (let* ((_g2047020499_
                  (lambda (_g2047120495_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2047120495_)))
                 (_g2046920796_
                  (lambda (_g2047120503_)
                    (if (gx#stx-pair? _g2047120503_)
                        (let ((_e2047620506_ (gx#syntax-e _g2047120503_)))
                          (let ((_hd2047720510_ (##car _e2047620506_))
                                (_tl2047820513_ (##cdr _e2047620506_)))
                            (if (gx#stx-pair? _tl2047820513_)
                                (let ((_e2047920516_
                                       (gx#syntax-e _tl2047820513_)))
                                  (let ((_hd2048020520_ (##car _e2047920516_))
                                        (_tl2048120523_ (##cdr _e2047920516_)))
                                    (if (gx#stx-pair? _hd2048020520_)
                                        (let ((_e2048220526_
                                               (gx#syntax-e _hd2048020520_)))
                                          (let ((_hd2048320530_
                                                 (##car _e2048220526_))
                                                (_tl2048420533_
                                                 (##cdr _e2048220526_)))
                                            (if (gx#identifier? _hd2048320530_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g35260_|
                                                     _hd2048320530_)
                                                    (if (gx#stx-pair?
                                                         _tl2048420533_)
                                                        (let ((_e2048520536_
                                                               (gx#syntax-e
                                                                _tl2048420533_)))
                                                          (let ((_hd2048620540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2048520536_))
                        (_tl2048720543_ (##cdr _e2048520536_)))
                    (if (gx#stx-pair? _tl2048720543_)
                        (let ((_e2048820546_ (gx#syntax-e _tl2048720543_)))
                          (let ((_hd2048920550_ (##car _e2048820546_))
                                (_tl2049020553_ (##cdr _e2048820546_)))
                            (if (gx#stx-null? _tl2049020553_)
                                (if (gx#stx-pair? _tl2048120523_)
                                    (let ((_e2049120556_
                                           (gx#syntax-e _tl2048120523_)))
                                      (let ((_hd2049220560_
                                             (##car _e2049120556_))
                                            (_tl2049320563_
                                             (##cdr _e2049120556_)))
                                        ((lambda (_L20566_
                                                  _L20568_
                                                  _L20569_
                                                  _L20570_)
                                           (if (if (gx#identifier? _L20570_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L20569_)
                                                       (gx#stx-plist?
                                                        _L20566_
                                                        _method-opt?20468_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20595_
                                                       (gx#syntax-local-value
                                                        _L20569_))
                                                      (_rebind?20598_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20566_))
                                                           '#t
                                                           '#f))
                                                      (_g2060120609_
                                                       (lambda (_g2060220605_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2060220605_)))
                                                      (_g2060020792_
                                                       (lambda (_g2060220613_)
                                                         ((lambda (_L20616_)
                                                            (let ()
                                                              (let* ((_g2063020638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2063120634_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2063120634_)))
                             (_g2062920788_
                              (lambda (_g2063120642_)
                                ((lambda (_L20645_)
                                   (let ()
                                     (let* ((_g2065820666_
                                             (lambda (_g2065920662_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2065920662_)))
                                            (_g2065720784_
                                             (lambda (_g2065920670_)
                                               ((lambda (_L20673_)
                                                  (let ()
                                                    (let* ((_g2068620694_
                                                            (lambda (_g2068720690_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2068720690_)))
                                                           (_g2068520780_
                                                            (lambda (_g2068720698_)
                                                              ((lambda (_L20701_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2071420722_
                                   (lambda (_g2071520718_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2071520718_)))
                                  (_g2071320776_
                                   (lambda (_g2071520726_)
                                     ((lambda (_L20729_)
                                        (let ()
                                          (let* ((_g2074220750_
                                                  (lambda (_g2074320746_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2074320746_)))
                                                 (_g2074120772_
                                                  (lambda (_g2074320754_)
                                                    ((lambda (_L20757_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20466_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20701_ (cons _L20757_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2074320754_))))
                                            (_g2074120772_
                                             (_wrap20466_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20616_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20570_ '()))
                        (cons _L20645_ (cons _L20729_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2071520726_))))
                             (_g2071320776_ _rebind?20598_))))
                       _g2068720698_))))
              (_g2068520780_
               (_wrap20466_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20645_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20673_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons '()
                                    (cons (cons (cons (gx#datum->syntax '#f '_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'obj)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'call-next-method)
                                                            (cons _L20616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20570_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20568_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2065920670_))))
                                       (_g2065720784_
                                        (gx#stx-identifier
                                         _L20570_
                                         '@next-method)))))
                                 _g2063120642_))))
                        (_g2062920788_
                         (gx#stx-identifier
                          _L20570_
                          _L20569_
                          '"::"
                          _L20570_)))))
                  _g2060220613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2060020792_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20595_)))
                                               (if (not (gx#identifier?
                                                         _L20570_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20463_
                                                    _L20570_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L20569_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20463_
                                                        _L20569_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20463_)))))
                                         _tl2049320563_
                                         _hd2049220560_
                                         _hd2048920550_
                                         _hd2048620540_)))
                                    (_g2047020499_ _g2047120503_))
                                (_g2047020499_ _g2047120503_))))
                        (_g2047020499_ _g2047120503_))))
                (_g2047020499_ _g2047120503_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2047020499_
                                                     _g2047120503_))
                                                (_g2047020499_
                                                 _g2047120503_))))
                                        (_g2047020499_ _g2047120503_))))
                                (_g2047020499_ _g2047120503_))))
                        (_g2047020499_ _g2047120503_)))))
            (_g2046920796_ _stx20463_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx20806_)
        (let* ((_g2081120860_
                (lambda (_g2081220856_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2081220856_)))
               (_g2081020959_
                (lambda (_g2081220864_)
                  (if (gx#stx-pair? _g2081220864_)
                      (let ((_e2083720867_ (gx#syntax-e _g2081220864_)))
                        (let ((_hd2083820871_ (##car _e2083720867_))
                              (_tl2083920874_ (##cdr _e2083720867_)))
                          (if (gx#stx-pair? _tl2083920874_)
                              (let ((_e2084020877_
                                     (gx#syntax-e _tl2083920874_)))
                                (let ((_hd2084120881_ (##car _e2084020877_))
                                      (_tl2084220884_ (##cdr _e2084020877_)))
                                  (if (gx#stx-pair? _tl2084220884_)
                                      (let ((_e2084320887_
                                             (gx#syntax-e _tl2084220884_)))
                                        (let ((_hd2084420891_
                                               (##car _e2084320887_))
                                              (_tl2084520894_
                                               (##cdr _e2084320887_)))
                                          (if (gx#stx-pair/null?
                                               _tl2084520894_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2084520894_)
                                                        '0)
                                                  (let ((_g35261_
                                                         (gx#syntax-split-splice
                                                          _tl2084520894_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35262_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35261_)
                         (##vector-length _g35261_)
                         1)))
                (if (not (##fx= _g35262_ 2))
                    (error "Context expects 2 values" _g35262_)))
              (let ((_target2084620897_ (##vector-ref _g35261_ 0))
                    (_tl2084820900_ (##vector-ref _g35261_ 1)))
                (if (gx#stx-null? _tl2084820900_)
                    (letrec ((_loop2084920903_
                              (lambda (_hd2084720907_ _arg2085320910_)
                                (if (gx#stx-pair? _hd2084720907_)
                                    (let ((_e2085020913_
                                           (gx#syntax-e _hd2084720907_)))
                                      (let ((_lp-hd2085120917_
                                             (##car _e2085020913_))
                                            (_lp-tl2085220920_
                                             (##cdr _e2085020913_)))
                                        (_loop2084920903_
                                         _lp-tl2085220920_
                                         (cons _lp-hd2085120917_
                                               _arg2085320910_))))
                                    (let ((_arg2085420923_
                                           (reverse _arg2085320910_)))
                                      ((lambda (_L20927_ _L20929_ _L20930_)
                                         (if (gx#identifier? _L20930_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L20929_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L20930_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g2095020953_ _g2095120956_)
                                  (cons _g2095020953_ _g2095120956_))
                                '()
                                _L20927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2081120860_ _g2081220864_)))
                                       _arg2085420923_
                                       _hd2084420891_
                                       _hd2084120881_))))))
                      (_loop2084920903_ _target2084620897_ '()))
                    (_g2081120860_ _g2081220864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2081120860_
                                                   _g2081220864_))
                                              (_g2081120860_ _g2081220864_))))
                                      (_g2081120860_ _g2081220864_))))
                              (_g2081120860_ _g2081220864_))))
                      (_g2081120860_ _g2081220864_))))
               (_g2080921065_
                (lambda (_g2081220963_)
                  (if (gx#stx-pair? _g2081220963_)
                      (let ((_e2081620966_ (gx#syntax-e _g2081220963_)))
                        (let ((_hd2081720970_ (##car _e2081620966_))
                              (_tl2081820973_ (##cdr _e2081620966_)))
                          (if (gx#stx-pair? _tl2081820973_)
                              (let ((_e2081920976_
                                     (gx#syntax-e _tl2081820973_)))
                                (let ((_hd2082020980_ (##car _e2081920976_))
                                      (_tl2082120983_ (##cdr _e2081920976_)))
                                  (if (gx#stx-pair? _tl2082120983_)
                                      (let ((_e2082220986_
                                             (gx#syntax-e _tl2082120983_)))
                                        (let ((_hd2082320990_
                                               (##car _e2082220986_))
                                              (_tl2082420993_
                                               (##cdr _e2082220986_)))
                                          (if (gx#stx-pair/null?
                                               _tl2082420993_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2082420993_)
                                                        '0)
                                                  (let ((_g35263_
                                                         (gx#syntax-split-splice
                                                          _tl2082420993_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35264_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35263_)
                         (##vector-length _g35263_)
                         1)))
                (if (not (##fx= _g35264_ 2))
                    (error "Context expects 2 values" _g35264_)))
              (let ((_target2082520996_ (##vector-ref _g35263_ 0))
                    (_tl2082720999_ (##vector-ref _g35263_ 1)))
                (if (gx#stx-null? _tl2082720999_)
                    (letrec ((_loop2082821002_
                              (lambda (_hd2082621006_ _arg2083221009_)
                                (if (gx#stx-pair? _hd2082621006_)
                                    (let ((_e2082921012_
                                           (gx#syntax-e _hd2082621006_)))
                                      (let ((_lp-hd2083021016_
                                             (##car _e2082921012_))
                                            (_lp-tl2083121019_
                                             (##cdr _e2082921012_)))
                                        (_loop2082821002_
                                         _lp-tl2083121019_
                                         (cons _lp-hd2083021016_
                                               _arg2083221009_))))
                                    (let ((_arg2083321022_
                                           (reverse _arg2083221009_)))
                                      ((lambda (_L21026_ _L21028_ _L21029_)
                                         (if (if (gx#identifier? _L21029_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2104821051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2104921054_)
                     (cons _g2104821051_ _g2104921054_))
                   '()
                   _L21026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L21028_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L21029_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2105621059_
                                                           _g2105721062_)
                                                    (cons _g2105621059_
                                                          _g2105721062_))
                                                  '()
                                                  _L21026_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2081020959_ _g2081220963_)))
                                       _arg2083321022_
                                       _hd2082320990_
                                       _hd2082020980_))))))
                      (_loop2082821002_ _target2082520996_ '()))
                    (_g2081020959_ _g2081220963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2081020959_
                                                   _g2081220963_))
                                              (_g2081020959_ _g2081220963_))))
                                      (_g2081020959_ _g2081220963_))))
                              (_g2081020959_ _g2081220963_))))
                      (_g2081020959_ _g2081220963_)))))
          (_g2080921065_ _$stx20806_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21071_)
        (let* ((_g2107621116_
                (lambda (_g2107721112_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2107721112_)))
               (_g2107521217_
                (lambda (_g2107721120_)
                  (if (gx#stx-pair? _g2107721120_)
                      (let ((_e2109321123_ (gx#syntax-e _g2107721120_)))
                        (let ((_hd2109421127_ (##car _e2109321123_))
                              (_tl2109521130_ (##cdr _e2109321123_)))
                          (if (gx#stx-pair? _tl2109521130_)
                              (let ((_e2109621133_
                                     (gx#syntax-e _tl2109521130_)))
                                (let ((_hd2109721137_ (##car _e2109621133_))
                                      (_tl2109821140_ (##cdr _e2109621133_)))
                                  (if (gx#stx-pair? _tl2109821140_)
                                      (let ((_e2109921143_
                                             (gx#syntax-e _tl2109821140_)))
                                        (let ((_hd2110021147_
                                               (##car _e2109921143_))
                                              (_tl2110121150_
                                               (##cdr _e2109921143_)))
                                          (if (gx#stx-pair/null?
                                               _tl2110121150_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2110121150_)
                                                        '0)
                                                  (let ((_g35265_
                                                         (gx#syntax-split-splice
                                                          _tl2110121150_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35266_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35265_)
                         (##vector-length _g35265_)
                         1)))
                (if (not (##fx= _g35266_ 2))
                    (error "Context expects 2 values" _g35266_)))
              (let ((_target2110221153_ (##vector-ref _g35265_ 0))
                    (_tl2110421156_ (##vector-ref _g35265_ 1)))
                (if (gx#stx-null? _tl2110421156_)
                    (letrec ((_loop2110521159_
                              (lambda (_hd2110321163_ _rest2110921166_)
                                (if (gx#stx-pair? _hd2110321163_)
                                    (let ((_e2110621169_
                                           (gx#syntax-e _hd2110321163_)))
                                      (let ((_lp-hd2110721173_
                                             (##car _e2110621169_))
                                            (_lp-tl2110821176_
                                             (##cdr _e2110621169_)))
                                        (_loop2110521159_
                                         _lp-tl2110821176_
                                         (cons _lp-hd2110721173_
                                               _rest2110921166_))))
                                    (let ((_rest2111021179_
                                           (reverse _rest2110921166_)))
                                      ((lambda (_L21183_
                                                _L21185_
                                                _L21186_
                                                _L21187_)
                                         (cons _L21187_
                                               (cons (cons _L21187_
                                                           (cons _L21186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L21185_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2120821211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2120921214_)
                        (cons _g2120821211_ _g2120921214_))
                      '()
                      _L21183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest2111021179_
                                       _hd2110021147_
                                       _hd2109721137_
                                       _hd2109421127_))))))
                      (_loop2110521159_ _target2110221153_ '()))
                    (_g2107621116_ _g2107721120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2107621116_
                                                   _g2107721120_))
                                              (_g2107621116_ _g2107721120_))))
                                      (_g2107621116_ _g2107721120_))))
                              (_g2107621116_ _g2107721120_))))
                      (_g2107621116_ _g2107721120_))))
               (_g2107421271_
                (lambda (_g2107721221_)
                  (if (gx#stx-pair? _g2107721221_)
                      (let ((_e2108021224_ (gx#syntax-e _g2107721221_)))
                        (let ((_hd2108121228_ (##car _e2108021224_))
                              (_tl2108221231_ (##cdr _e2108021224_)))
                          (if (gx#stx-pair? _tl2108221231_)
                              (let ((_e2108321234_
                                     (gx#syntax-e _tl2108221231_)))
                                (let ((_hd2108421238_ (##car _e2108321234_))
                                      (_tl2108521241_ (##cdr _e2108321234_)))
                                  (if (gx#stx-pair? _tl2108521241_)
                                      (let ((_e2108621244_
                                             (gx#syntax-e _tl2108521241_)))
                                        (let ((_hd2108721248_
                                               (##car _e2108621244_))
                                              (_tl2108821251_
                                               (##cdr _e2108621244_)))
                                          (if (gx#stx-null? _tl2108821251_)
                                              ((lambda (_L21254_ _L21256_)
                                                 (if (gx#identifier? _L21254_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L21256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L21254_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2107521217_
                                                      _g2107721221_)))
                                               _hd2108721248_
                                               _hd2108421238_)
                                              (_g2107521217_ _g2107721221_))))
                                      (_g2107521217_ _g2107721221_))))
                              (_g2107521217_ _g2107721221_))))
                      (_g2107521217_ _g2107721221_)))))
          (_g2107421271_ _$stx21071_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21276_)
        (let* ((_g2128121333_
                (lambda (_g2128221329_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2128221329_)))
               (_g2128021462_
                (lambda (_g2128221337_)
                  (if (gx#stx-pair? _g2128221337_)
                      (let ((_e2130421340_ (gx#syntax-e _g2128221337_)))
                        (let ((_hd2130521344_ (##car _e2130421340_))
                              (_tl2130621347_ (##cdr _e2130421340_)))
                          (if (gx#stx-pair? _tl2130621347_)
                              (let ((_e2130721350_
                                     (gx#syntax-e _tl2130621347_)))
                                (let ((_hd2130821354_ (##car _e2130721350_))
                                      (_tl2130921357_ (##cdr _e2130721350_)))
                                  (if (gx#stx-pair? _tl2130921357_)
                                      (let ((_e2131021360_
                                             (gx#syntax-e _tl2130921357_)))
                                        (let ((_hd2131121364_
                                               (##car _e2131021360_))
                                              (_tl2131221367_
                                               (##cdr _e2131021360_)))
                                          (if (gx#stx-pair/null?
                                               _tl2131221367_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2131221367_)
                                                        '2)
                                                  (let ((_g35267_
                                                         (gx#syntax-split-splice
                                                          _tl2131221367_
                                                          '2)))
                                                    (begin
                                                      (let ((_g35268_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35267_)
                         (##vector-length _g35267_)
                         1)))
                (if (not (##fx= _g35268_ 2))
                    (error "Context expects 2 values" _g35268_)))
              (let ((_target2131321370_ (##vector-ref _g35267_ 0))
                    (_tl2131521373_ (##vector-ref _g35267_ 1)))
                (if (gx#stx-pair? _tl2131521373_)
                    (let ((_e2132221376_ (gx#syntax-e _tl2131521373_)))
                      (let ((_hd2132321380_ (##car _e2132221376_))
                            (_tl2132421383_ (##cdr _e2132221376_)))
                        (if (gx#stx-pair? _tl2132421383_)
                            (let ((_e2132521386_ (gx#syntax-e _tl2132421383_)))
                              (let ((_hd2132621390_ (##car _e2132521386_))
                                    (_tl2132721393_ (##cdr _e2132521386_)))
                                (if (gx#stx-null? _tl2132721393_)
                                    (letrec ((_loop2131621396_
                                              (lambda (_hd2131421400_
                                                       _path2132021403_)
                                                (if (gx#stx-pair?
                                                     _hd2131421400_)
                                                    (let ((_e2131721406_
                                                           (gx#syntax-e
                                                            _hd2131421400_)))
                                                      (let ((_lp-hd2131821410_
                                                             (##car _e2131721406_))
                                                            (_lp-tl2131921413_
                                                             (##cdr _e2131721406_)))
                                                        (_loop2131621396_
                                                         _lp-tl2131921413_
                                                         (cons _lp-hd2131821410_
                                                               _path2132021403_))))
                                                    (let ((_path2132121416_
                                                           (reverse _path2132021403_)))
                                                      ((lambda (_L21420_
                                                                _L21422_
                                                                _L21423_
                                                                _L21424_
                                                                _L21425_
                                                                _L21426_)
                                                         (cons _L21426_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L21425_
                                         (cons _L21424_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2145321456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2145421459_)
                  (cons _g2145321456_ _g2145421459_))
                '()
                _L21423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L21422_ (cons _L21420_ '())))))
               _hd2132621390_
               _hd2132321380_
               _path2132121416_
               _hd2131121364_
               _hd2130821354_
               _hd2130521344_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2131621396_
                                       _target2131321370_
                                       '()))
                                    (_g2128121333_ _g2128221337_))))
                            (_g2128121333_ _g2128221337_))))
                    (_g2128121333_ _g2128221337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2128121333_
                                                   _g2128221337_))
                                              (_g2128121333_ _g2128221337_))))
                                      (_g2128121333_ _g2128221337_))))
                              (_g2128121333_ _g2128221337_))))
                      (_g2128121333_ _g2128221337_))))
               (_g2127921530_
                (lambda (_g2128221466_)
                  (if (gx#stx-pair? _g2128221466_)
                      (let ((_e2128621469_ (gx#syntax-e _g2128221466_)))
                        (let ((_hd2128721473_ (##car _e2128621469_))
                              (_tl2128821476_ (##cdr _e2128621469_)))
                          (if (gx#stx-pair? _tl2128821476_)
                              (let ((_e2128921479_
                                     (gx#syntax-e _tl2128821476_)))
                                (let ((_hd2129021483_ (##car _e2128921479_))
                                      (_tl2129121486_ (##cdr _e2128921479_)))
                                  (if (gx#stx-pair? _tl2129121486_)
                                      (let ((_e2129221489_
                                             (gx#syntax-e _tl2129121486_)))
                                        (let ((_hd2129321493_
                                               (##car _e2129221489_))
                                              (_tl2129421496_
                                               (##cdr _e2129221489_)))
                                          (if (gx#stx-pair? _tl2129421496_)
                                              (let ((_e2129521499_
                                                     (gx#syntax-e
                                                      _tl2129421496_)))
                                                (let ((_hd2129621503_
                                                       (##car _e2129521499_))
                                                      (_tl2129721506_
                                                       (##cdr _e2129521499_)))
                                                  (if (gx#stx-null?
                                                       _tl2129721506_)
                                                      ((lambda (_L21509_
                                                                _L21511_
                                                                _L21512_)
                                                         (if (gx#identifier?
                                                              _L21511_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L21512_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21511_ '()))
                                       (cons _L21509_ '()))))
                     (_g2128021462_ _g2128221466_)))
               _hd2129621503_
               _hd2129321493_
               _hd2129021483_)
              (_g2128021462_ _g2128221466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2128021462_ _g2128221466_))))
                                      (_g2128021462_ _g2128221466_))))
                              (_g2128021462_ _g2128221466_))))
                      (_g2128021462_ _g2128221466_)))))
          (_g2127921530_ _$stx21276_))))))
