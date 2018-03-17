(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g35390_|
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
      (lambda _$args20132_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20132_)))
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
      (lambda _$args20128_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20128_)))
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
      (lambda _$args20124_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20124_)))
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
      (lambda _$args20120_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20120_)))
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
      (lambda _$args20116_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20116_)))
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
      (lambda _$args20112_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20112_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda2008420098_
             (lambda (_stx20086_ _is?20088_)
               (if (gx#identifier? _stx20086_)
                   (let ((_e2008920091_
                          (gx#syntax-local-value _stx20086_ false)))
                     (if _e2008920091_
                         (let ((_e20095_ _e2008920091_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e20095_)
                               (_is?20088_ _e20095_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g35376_
          (let ((_g35375_ (length _g35376_)))
            (cond ((##fx= _g35375_ 1)
                   (apply (lambda (_stx20102_)
                            (let ((_is?20105_ true))
                              (_opt-lambda2008420098_ _stx20102_ _is?20105_)))
                          _g35376_))
                  ((##fx= _g35375_ 2) (apply _opt-lambda2008420098_ _g35376_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g35376_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20082_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx20082_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20079_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx20079_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20073_)
        (if _id20073_
            (let ((_info20076_ (gx#syntax-local-value _id20073_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20076_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20076_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self19838_ _stx19840_)
        (let* ((_g1984219862_
                (lambda (_g1984319858_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1984319858_)))
               (_g1984120069_
                (lambda (_g1984319866_)
                  (if (gx#stx-pair? _g1984319866_)
                      (let ((_e1984519869_ (gx#syntax-e _g1984319866_)))
                        (let ((_hd1984619873_ (##car _e1984519869_))
                              (_tl1984719876_ (##cdr _e1984519869_)))
                          (if (gx#stx-pair/null? _tl1984719876_)
                              (if (fx>= (gx#stx-length _tl1984719876_) '0)
                                  (let ((_g35377_
                                         (gx#syntax-split-splice
                                          _tl1984719876_
                                          '0)))
                                    (begin
                                      (let ((_g35378_
                                             (if (##values? _g35377_)
                                                 (##vector-length _g35377_)
                                                 1)))
                                        (if (not (##fx= _g35378_ 2))
                                            (error "Context expects 2 values"
                                                   _g35378_)))
                                      (let ((_target1984819879_
                                             (##vector-ref _g35377_ 0))
                                            (_tl1985019882_
                                             (##vector-ref _g35377_ 1)))
                                        (if (gx#stx-null? _tl1985019882_)
                                            (letrec ((_loop1985119885_
                                                      (lambda (_hd1984919889_
                                                               _arg1985519892_)
                                                        (if (gx#stx-pair?
                                                             _hd1984919889_)
                                                            (let ((_e1985219895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1984919889_)))
                      (let ((_lp-hd1985319899_ (##car _e1985219895_))
                            (_lp-tl1985419902_ (##cdr _e1985219895_)))
                        (_loop1985119885_
                         _lp-tl1985419902_
                         (cons _lp-hd1985319899_ _arg1985519892_))))
                    (let ((_arg1985619905_ (reverse _arg1985519892_)))
                      ((lambda (_L19909_)
                         (let* ((_g1992519956_
                                 (lambda (_g1992619952_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1992619952_)))
                                (_g1992420065_
                                 (lambda (_g1992619960_)
                                   (if (gx#stx-pair? _g1992619960_)
                                       (let ((_e1993319963_
                                              (gx#syntax-e _g1992619960_)))
                                         (let ((_hd1993419967_
                                                (##car _e1993319963_))
                                               (_tl1993519970_
                                                (##cdr _e1993319963_)))
                                           (if (gx#stx-pair? _tl1993519970_)
                                               (let ((_e1993619973_
                                                      (gx#syntax-e
                                                       _tl1993519970_)))
                                                 (let ((_hd1993719977_
                                                        (##car _e1993619973_))
                                                       (_tl1993819980_
                                                        (##cdr _e1993619973_)))
                                                   (if (gx#stx-pair?
                                                        _tl1993819980_)
                                                       (let ((_e1993919983_
                                                              (gx#syntax-e
                                                               _tl1993819980_)))
                                                         (let ((_hd1994019987_
                                                                (##car _e1993919983_))
                                                               (_tl1994119990_
                                                                (##cdr _e1993919983_)))
                                                           (if (gx#stx-pair?
                                                                _tl1994119990_)
                                                               (let ((_e1994219993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1994119990_)))
                         (let ((_hd1994319997_ (##car _e1994219993_))
                               (_tl1994420000_ (##cdr _e1994219993_)))
                           (if (gx#stx-pair? _tl1994420000_)
                               (let ((_e1994520003_
                                      (gx#syntax-e _tl1994420000_)))
                                 (let ((_hd1994620007_ (##car _e1994520003_))
                                       (_tl1994720010_ (##cdr _e1994520003_)))
                                   (if (gx#stx-pair? _tl1994720010_)
                                       (let ((_e1994820013_
                                              (gx#syntax-e _tl1994720010_)))
                                         (let ((_hd1994920017_
                                                (##car _e1994820013_))
                                               (_tl1995020020_
                                                (##cdr _e1994820013_)))
                                           (if (gx#stx-null? _tl1995020020_)
                                               ((lambda (_L20023_
                                                         _L20025_
                                                         _L20026_
                                                         _L20027_
                                                         _L20028_
                                                         _L20029_)
                                                  (let ()
                                                    (cons _L20027_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g2005620059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2005720062_)
                             (cons _g2005620059_ _g2005720062_))
                           '()
                           _L19909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1994920017_
                                                _hd1994620007_
                                                _hd1994319997_
                                                _hd1994019987_
                                                _hd1993719977_
                                                _hd1993419967_)
                                               (_g1992519956_ _g1992619960_))))
                                       (_g1992519956_ _g1992619960_))))
                               (_g1992519956_ _g1992619960_))))
                       (_g1992519956_ _g1992619960_))))
               (_g1992519956_ _g1992619960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1992519956_ _g1992619960_))))
                                       (_g1992519956_ _g1992619960_)))))
                           (_g1992420065_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self19838_))))
                       _arg1985619905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1985119885_
                                               _target1984819879_
                                               '()))
                                            (_g1984219862_ _g1984319866_)))))
                                  (_g1984219862_ _g1984319866_))
                              (_g1984219862_ _g1984319866_))))
                      (_g1984219862_ _g1984319866_)))))
          (_g1984120069_ _stx19840_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx19829_)
        (letrec ((_body-opt?19832_
                  (lambda (_key19835_)
                    (memq (gx#stx-e _key19835_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx19829_ _body-opt?19832_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18657_
               _id18659_
               _super-ref18660_
               _els18661_
               _body18662_
               _struct?18663_)
        (letrec* ((_wrap18665_
                   (lambda (_e-stx19826_)
                     (gx#stx-wrap-source
                      _e-stx19826_
                      (gx#stx-source _stx18657_))))
                  (_make-id18667_
                   (if (uninterned-symbol? (gx#stx-e _id18659_))
                       (lambda _g35379_ (gx#genident _id18659_))
                       (lambda _args19823_
                         (apply gx#stx-identifier _id18659_ _args19823_)))))
          (begin
            (gx#check-duplicate-identifiers _els18661_ _stx18657_)
            (let* ((_name18669_ (symbol->string (gx#stx-e _id18659_)))
                   (_super18672_
                    (if _struct?18663_
                        (if _super-ref18660_
                            (gx#syntax-local-value _super-ref18660_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18660_)))
                   (_g1867518683_
                    (lambda (_g1867618679_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1867618679_)))
                   (_g1867419817_
                    (lambda (_g1867618687_)
                      ((lambda (_L18690_)
                         (let ()
                           (let* ((_g1870618714_
                                   (lambda (_g1870718710_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1870718710_)))
                                  (_g1870519813_
                                   (lambda (_g1870718718_)
                                     ((lambda (_L18721_)
                                        (let ()
                                          (let* ((_g1873418742_
                                                  (lambda (_g1873518738_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1873518738_)))
                                                 (_g1873319809_
                                                  (lambda (_g1873518746_)
                                                    ((lambda (_L18749_)
                                                       (let ()
                                                         (let* ((_g1876218770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1876318766_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1876318766_)))
                        (_g1876119805_
                         (lambda (_g1876318774_)
                           ((lambda (_L18777_)
                              (let ()
                                (let* ((_g1879018798_
                                        (lambda (_g1879118794_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1879118794_)))
                                       (_g1878919801_
                                        (lambda (_g1879118802_)
                                          ((lambda (_L18805_)
                                             (let ()
                                               (let* ((_g1881818826_
                                                       (lambda (_g1881918822_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1881918822_)))
                                                      (_g1881719797_
                                                       (lambda (_g1881918830_)
                                                         ((lambda (_L18833_)
                                                            (let ()
                                                              (let* ((_g1884618863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1884718859_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1884718859_)))
                             (_g1884519793_
                              (lambda (_g1884718867_)
                                (if (gx#stx-pair/null? _g1884718867_)
                                    (if (fx>= (gx#stx-length _g1884718867_) '0)
                                        (let ((_g35380_
                                               (gx#syntax-split-splice
                                                _g1884718867_
                                                '0)))
                                          (begin
                                            (let ((_g35381_
                                                   (if (##values? _g35380_)
                                                       (##vector-length
                                                        _g35380_)
                                                       1)))
                                              (if (not (##fx= _g35381_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35381_)))
                                            (let ((_target1884918870_
                                                   (##vector-ref _g35380_ 0))
                                                  (_tl1885118873_
                                                   (##vector-ref _g35380_ 1)))
                                              (if (gx#stx-null? _tl1885118873_)
                                                  (letrec ((_loop1885218876_
                                                            (lambda (_hd1885018880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1885618883_)
                      (if (gx#stx-pair? _hd1885018880_)
                          (let ((_e1885318886_ (gx#syntax-e _hd1885018880_)))
                            (let ((_lp-hd1885418890_ (##car _e1885318886_))
                                  (_lp-tl1885518893_ (##cdr _e1885318886_)))
                              (_loop1885218876_
                               _lp-tl1885518893_
                               (cons _lp-hd1885418890_ _attr1885618883_))))
                          (let ((_attr1885718896_ (reverse _attr1885618883_)))
                            ((lambda (_L18900_)
                               (let ()
                                 (let* ((_g1891718934_
                                         (lambda (_g1891818930_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1891818930_)))
                                        (_g1891619784_
                                         (lambda (_g1891818938_)
                                           (if (gx#stx-pair/null?
                                                _g1891818938_)
                                               (if (fx>= (gx#stx-length
                                                          _g1891818938_)
                                                         '0)
                                                   (let ((_g35382_
                                                          (gx#syntax-split-splice
                                                           _g1891818938_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35383_
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g35382_)
                          (##vector-length _g35382_)
                          1)))
                 (if (not (##fx= _g35383_ 2))
                     (error "Context expects 2 values" _g35383_)))
               (let ((_target1892018941_ (##vector-ref _g35382_ 0))
                     (_tl1892218944_ (##vector-ref _g35382_ 1)))
                 (if (gx#stx-null? _tl1892218944_)
                     (letrec ((_loop1892318947_
                               (lambda (_hd1892118951_ _getf1892718954_)
                                 (if (gx#stx-pair? _hd1892118951_)
                                     (let ((_e1892418957_
                                            (gx#syntax-e _hd1892118951_)))
                                       (let ((_lp-hd1892518961_
                                              (##car _e1892418957_))
                                             (_lp-tl1892618964_
                                              (##cdr _e1892418957_)))
                                         (_loop1892318947_
                                          _lp-tl1892618964_
                                          (cons _lp-hd1892518961_
                                                _getf1892718954_))))
                                     (let ((_getf1892818967_
                                            (reverse _getf1892718954_)))
                                       ((lambda (_L18971_)
                                          (let ()
                                            (let* ((_g1898819005_
                                                    (lambda (_g1898919001_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1898919001_)))
                                                   (_g1898719775_
                                                    (lambda (_g1898919009_)
                                                      (if (gx#stx-pair/null?
                                                           _g1898919009_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1898919009_)
                            '0)
                      (let ((_g35384_
                             (gx#syntax-split-splice _g1898919009_ '0)))
                        (begin
                          (let ((_g35385_
                                 (if (##values? _g35384_)
                                     (##vector-length _g35384_)
                                     1)))
                            (if (not (##fx= _g35385_ 2))
                                (error "Context expects 2 values" _g35385_)))
                          (let ((_target1899119012_ (##vector-ref _g35384_ 0))
                                (_tl1899319015_ (##vector-ref _g35384_ 1)))
                            (if (gx#stx-null? _tl1899319015_)
                                (letrec ((_loop1899419018_
                                          (lambda (_hd1899219022_
                                                   _setf1899819025_)
                                            (if (gx#stx-pair? _hd1899219022_)
                                                (let ((_e1899519028_
                                                       (gx#syntax-e
                                                        _hd1899219022_)))
                                                  (let ((_lp-hd1899619032_
                                                         (##car _e1899519028_))
                                                        (_lp-tl1899719035_
                                                         (##cdr _e1899519028_)))
                                                    (_loop1899419018_
                                                     _lp-tl1899719035_
                                                     (cons _lp-hd1899619032_
                                                           _setf1899819025_))))
                                                (let ((_setf1899919038_
                                                       (reverse _setf1899819025_)))
                                                  ((lambda (_L19042_)
                                                     (let ()
                                                       (let* ((_type-attr19087_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els18661_)
                           '()
                           (if _struct?18663_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L19042_
                                              _L18971_
                                              _L18900_)
                                             (foldr (lambda (_g1905819063_
                                                             _g1905919066_
                                                             _g1906019068_
                                                             _g1906119070_)
                                                      (cons (cons _g1906019068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1905919066_ (cons _g1905819063_ '())))
                    _g1906119070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L19042_
                                                    _L18971_
                                                    _L18900_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L19042_
                                              _L18971_
                                              _L18900_)
                                             (foldr (lambda (_g1907219077_
                                                             _g1907319080_
                                                             _g1907419082_
                                                             _g1907519084_)
                                                      (cons (cons _g1907419082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1907319080_ (cons _g1907219077_ '())))
                    _g1907519084_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L19042_
                                                    _L18971_
                                                    _L18900_))
                                           '())))))
                      (_type-name19094_
                       (cons 'name:
                             (cons (let ((_$e19090_
                                          (gx#stx-getq 'name: _body18662_)))
                                     (if _$e19090_ _$e19090_ _id18659_))
                                   '())))
                      (_type-id19109_
                       (let ((_$e19105_
                              (let ((_e1909619098_
                                     (gx#stx-getq 'id: _body18662_)))
                                (if _e1909619098_
                                    (let ((_e19102_ _e1909619098_))
                                      (cons 'id: (cons _e19102_ '())))
                                    '#f))))
                         (if _$e19105_ _$e19105_ '())))
                      (_type-ctor19124_
                       (let ((_$e19120_
                              (let ((_e1911119113_
                                     (gx#stx-getq 'constructor: _body18662_)))
                                (if _e1911119113_
                                    (let ((_e19117_ _e1911119113_))
                                      (cons 'constructor: (cons _e19117_ '())))
                                    '#f))))
                         (if _$e19120_ _$e19120_ '())))
                      (_plist19168_
                       (let* ((_plist19131_
                               (let ((_$e19127_
                                      (gx#stx-getq 'plist: _body18662_)))
                                 (if _$e19127_ _$e19127_ '())))
                              (_plist19134_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body18662_))
                                   (cons (cons 'transparent: '#t) _plist19131_)
                                   _plist19131_))
                              (_plist19137_
                               (if (gx#stx-e (gx#stx-getq 'final: _body18662_))
                                   (cons (cons 'final: '#t) _plist19134_)
                                   _plist19134_))
                              (_plist19150_
                               (let ((_$e19140_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body18662_))))
                                 (if _$e19140_
                                     ((lambda (_print19144_)
                                        (let ((_print19147_
                                               (if (eq? _print19144_ '#t)
                                                   _els18661_
                                                   _print19144_)))
                                          (cons (cons 'print: _print19147_)
                                                _plist19137_)))
                                      _$e19140_)
                                     _plist19137_)))
                              (_plist19163_
                               (let ((_$e19153_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body18662_))))
                                 (if _$e19153_
                                     ((lambda (_equal19157_)
                                        (let ((_equal19160_
                                               (if (eq? _equal19157_ '#t)
                                                   _els18661_
                                                   _equal19157_)))
                                          (cons (cons 'equal: _equal19160_)
                                                _plist19150_)))
                                      _$e19153_)
                                     _plist19150_))))
                         _plist19163_))
                      (_type-plist19208_
                       (if (null? _plist19168_)
                           _plist19168_
                           (let* ((_g1917119179_
                                   (lambda (_g1917219175_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1917219175_)))
                                  (_g1917019204_
                                   (lambda (_g1917219183_)
                                     ((lambda (_L19186_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L19186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1917219183_))))
                             (_g1917019204_ _plist19168_))))
                      (_type-unchecked19223_
                       (let ((_$e19219_
                              (let ((_e1921019212_
                                     (gx#stx-getq 'unchecked: _body18662_)))
                                (if _e1921019212_
                                    (let ((_e19216_ _e1921019212_))
                                      (cons 'unchecked: (cons _e19216_ '())))
                                    '#f))))
                         (if _$e19219_ _$e19219_ '())))
                      (_g1922619243_
                       (lambda (_g1922719239_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1922719239_)))
                      (_g1922519771_
                       (lambda (_g1922719247_)
                         (if (gx#stx-pair/null? _g1922719247_)
                             (if (fx>= (gx#stx-length _g1922719247_) '0)
                                 (let ((_g35386_
                                        (gx#syntax-split-splice
                                         _g1922719247_
                                         '0)))
                                   (begin
                                     (let ((_g35387_
                                            (if (##values? _g35386_)
                                                (##vector-length _g35386_)
                                                1)))
                                       (if (not (##fx= _g35387_ 2))
                                           (error "Context expects 2 values"
                                                  _g35387_)))
                                     (let ((_target1922919250_
                                            (##vector-ref _g35386_ 0))
                                           (_tl1923119253_
                                            (##vector-ref _g35386_ 1)))
                                       (if (gx#stx-null? _tl1923119253_)
                                           (letrec ((_loop1923219256_
                                                     (lambda (_hd1923019260_
                                                              _type-body1923619263_)
                                                       (if (gx#stx-pair?
                                                            _hd1923019260_)
                                                           (let ((_e1923319266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1923019260_)))
                     (let ((_lp-hd1923419270_ (##car _e1923319266_))
                           (_lp-tl1923519273_ (##cdr _e1923319266_)))
                       (_loop1923219256_
                        _lp-tl1923519273_
                        (cons _lp-hd1923419270_ _type-body1923619263_))))
                   (let ((_type-body1923719276_
                          (reverse _type-body1923619263_)))
                     ((lambda (_L19280_)
                        (let ()
                          (let* ((_g1929719305_
                                  (lambda (_g1929819301_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1929819301_)))
                                 (_g1929619759_
                                  (lambda (_g1929819309_)
                                    ((lambda (_L19312_)
                                       (let ()
                                         (let* ((_g1932519333_
                                                 (lambda (_g1932619329_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1932619329_)))
                                                (_g1932419755_
                                                 (lambda (_g1932619337_)
                                                   ((lambda (_L19340_)
                                                      (let ()
                                                        (let* ((_g1935319361_
                                                                (lambda (_g1935419357_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1935419357_)))
                       (_g1935219669_
                        (lambda (_g1935419365_)
                          ((lambda (_L19368_)
                             (let ()
                               (let* ((_g1938119389_
                                       (lambda (_g1938219385_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1938219385_)))
                                      (_g1938019665_
                                       (lambda (_g1938219393_)
                                         ((lambda (_L19396_)
                                            (let ()
                                              (let* ((_g1940919417_
                                                      (lambda (_g1941019413_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1941019413_)))
                                                     (_g1940819661_
                                                      (lambda (_g1941019421_)
                                                        ((lambda (_L19424_)
                                                           (let ()
                                                             (let* ((_g1943719445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1943819441_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1943819441_)))
                            (_g1943619619_
                             (lambda (_g1943819449_)
                               ((lambda (_L19452_)
                                  (let ()
                                    (let* ((_g1946519473_
                                            (lambda (_g1946619469_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1946619469_)))
                                           (_g1946419615_
                                            (lambda (_g1946619477_)
                                              ((lambda (_L19480_)
                                                 (let ()
                                                   (let* ((_g1949319501_
                                                           (lambda (_g1949419497_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1949419497_)))
                                                          (_g1949219611_
                                                           (lambda (_g1949419505_)
                                                             ((lambda (_L19508_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1952119529_
                                  (lambda (_g1952219525_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1952219525_)))
                                 (_g1952019607_
                                  (lambda (_g1952219533_)
                                    ((lambda (_L19536_)
                                       (let ()
                                         (let* ((_g1954919557_
                                                 (lambda (_g1955019553_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1955019553_)))
                                                (_g1954819579_
                                                 (lambda (_g1955019561_)
                                                   ((lambda (_L19564_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap18665_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L19312_ (cons _L19564_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1955019561_))))
                                           (_g1954819579_
                                            (_wrap18665_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L18721_
                                                         (cons (cons _L19340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L18749_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L19368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L18749_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L18777_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L18805_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1958219589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1958319592_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1958219589_ '()))
                                _g1958319592_))
                        '()
                        _L18971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1958419595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1958519598_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1958419595_ '()))
                                      _g1958519598_))
                              '()
                              _L19042_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L19396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L19424_ '()))
                                     (cons _L19452_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L19480_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L19508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L19536_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1958619601_
                                                         _g1958719604_)
                                                  (cons _g1958619601_
                                                        _g1958719604_))
                                                '()
                                                _L18900_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1952219533_))))
                            (_g1952019607_ _plist19168_))))
                      _g1949419505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1949219611_
                                                      (if (not (null? _type-ctor19124_))
                                                          (cadr _type-ctor19124_)
                                                          '#f)))))
                                               _g1946619477_))))
                                      (_g1946419615_
                                       (cadr _type-name19094_)))))
                                _g1943819449_))))
                       (_g1943619619_
                        (let ((_quote-e19658_
                               (lambda (_x-ref19623_)
                                 (if _x-ref19623_
                                     (let* ((_g1962619634_
                                             (lambda (_g1962719630_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1962719630_)))
                                            (_g1962519654_
                                             (lambda (_g1962719638_)
                                               ((lambda (_L19641_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L19641_
                                                                '()))))
                                                _g1962719638_))))
                                       (_g1962519654_ _x-ref19623_))
                                     '#f))))
                          (if _struct?18663_
                              (_quote-e19658_ _super-ref18660_)
                              (cons 'list
                                    (map _quote-e19658_
                                         _super-ref18660_))))))))
                 _g1941019421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1940819661_
                                                 (if (not (null? _type-id19109_))
                                                     (cadr _type-id19109_)
                                                     '#f)))))
                                          _g1938219393_))))
                                 (_g1938019665_
                                  (if _struct?18663_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1935419365_))))
                  (_g1935219669_
                   (if _struct?18663_
                       (if _super18672_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L18833_ '()))
                           '#f)
                       (let* ((_g1967319690_
                               (lambda (_g1967419686_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1967419686_)))
                              (_g1967219751_
                               (lambda (_g1967419694_)
                                 (if (gx#stx-pair/null? _g1967419694_)
                                     (if (fx>= (gx#stx-length _g1967419694_)
                                               '0)
                                         (let ((_g35388_
                                                (gx#syntax-split-splice
                                                 _g1967419694_
                                                 '0)))
                                           (begin
                                             (let ((_g35389_
                                                    (if (##values? _g35388_)
                                                        (##vector-length
                                                         _g35388_)
                                                        1)))
                                               (if (not (##fx= _g35389_ 2))
                                                   (error "Context expects 2 values"
                                                          _g35389_)))
                                             (let ((_target1967619697_
                                                    (##vector-ref _g35388_ 0))
                                                   (_tl1967819700_
                                                    (##vector-ref _g35388_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1967819700_)
                                                   (letrec ((_loop1967919703_
                                                             (lambda (_hd1967719707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1968319710_)
                       (if (gx#stx-pair? _hd1967719707_)
                           (let ((_e1968019713_ (gx#syntax-e _hd1967719707_)))
                             (let ((_lp-hd1968119717_ (##car _e1968019713_))
                                   (_lp-tl1968219720_ (##cdr _e1968019713_)))
                               (_loop1967919703_
                                _lp-tl1968219720_
                                (cons _lp-hd1968119717_
                                      _super-id1968319710_))))
                           (let ((_super-id1968419723_
                                  (reverse _super-id1968319710_)))
                             ((lambda (_L19727_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1974219745_
                                                          _g1974319748_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1974219745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1974319748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L19727_)))))
                              _super-id1968419723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1967919703_
                                                      _target1967619697_
                                                      '()))
                                                   (_g1967319690_
                                                    _g1967419694_)))))
                                         (_g1967319690_ _g1967419694_))
                                     (_g1967319690_ _g1967419694_)))))
                         (_g1967219751_ _L18833_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1932619337_))))
                                           (_g1932419755_
                                            (if _struct?18663_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1929819309_))))
                            (_g1929619759_
                             (_wrap18665_
                              (cons _L18690_
                                    (cons _L18749_
                                          (cons _L18833_
                                                (cons _L18777_
                                                      (cons _L18805_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1976219765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1976319768_)
                               (cons _g1976219765_ _g1976319768_))
                             '()
                             _L19280_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1923719276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1923219256_
                                              _target1922919250_
                                              '()))
                                           (_g1922619243_ _g1922719247_)))))
                                 (_g1922619243_ _g1922719247_))
                             (_g1922619243_ _g1922719247_)))))
                 (_g1922519771_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked19223_
                                                     _type-plist19208_)
                                              _type-ctor19124_)
                                       _type-name19094_)
                                _type-id19109_)
                         _type-attr19087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1899919038_))))))
                                  (_loop1899419018_ _target1899119012_ '()))
                                (_g1898819005_ _g1898919009_)))))
                      (_g1898819005_ _g1898919009_))
                  (_g1898819005_ _g1898919009_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1898719775_
                                               (gx#stx-map
                                                (lambda (_g1977819780_)
                                                  (_make-id18667_
                                                   _name18669_
                                                   '"-"
                                                   _g1977819780_
                                                   '"-set!"))
                                                _els18661_)))))
                                        _getf1892818967_))))))
                       (_loop1892318947_ _target1892018941_ '()))
                     (_g1891718934_ _g1891818938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1891718934_
                                                    _g1891818938_))
                                               (_g1891718934_
                                                _g1891818938_)))))
                                   (_g1891619784_
                                    (gx#stx-map
                                     (lambda (_g1978719789_)
                                       (_make-id18667_
                                        _name18669_
                                        '"-"
                                        _g1978719789_))
                                     _els18661_)))))
                             _attr1885718896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1885218876_
                                                     _target1884918870_
                                                     '()))
                                                  (_g1884618863_
                                                   _g1884718867_)))))
                                        (_g1884618863_ _g1884718867_))
                                    (_g1884618863_ _g1884718867_)))))
                        (_g1884519793_ _els18661_))))
                  _g1881918830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1881719797_
                                                  (if _struct?18663_
                                                      (if _super18672_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18672_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18672_))))))
                                           _g1879118802_))))
                                  (_g1878919801_
                                   (_make-id18667_ _name18669_ '"?")))))
                            _g1876318774_))))
                   (_g1876119805_ (_make-id18667_ '"make-" _name18669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1873518746_))))
                                            (_g1873319809_
                                             (_make-id18667_
                                              _name18669_
                                              '"::t")))))
                                      _g1870718718_))))
                             (_g1870519813_ _id18659_))))
                       _g1867618687_))))
              (_g1867419817_
               (if _struct?18663_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20145_)
        (letrec ((_generate20148_
                  (lambda (_hd20232_ _fields20234_ _body20235_)
                    (let* ((_g2023820253_
                            (lambda (_g2023920249_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2023920249_)))
                           (_g2023720264_
                            (lambda (_g2023920257_)
                              ((lambda ()
                                 (if (gx#identifier? _hd20232_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20145_
                                      _hd20232_
                                      '#f
                                      _fields20234_
                                      _body20235_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx20145_
                                      _hd20232_))))))
                           (_g2023620308_
                            (lambda (_g2023920268_)
                              (if (gx#stx-pair? _g2023920268_)
                                  (let ((_e2024220271_
                                         (gx#syntax-e _g2023920268_)))
                                    (let ((_hd2024320275_
                                           (##car _e2024220271_))
                                          (_tl2024420278_
                                           (##cdr _e2024220271_)))
                                      (if (gx#stx-pair? _tl2024420278_)
                                          (let ((_e2024520281_
                                                 (gx#syntax-e _tl2024420278_)))
                                            (let ((_hd2024620285_
                                                   (##car _e2024520281_))
                                                  (_tl2024720288_
                                                   (##cdr _e2024520281_)))
                                              (if (gx#stx-null? _tl2024720288_)
                                                  ((lambda (_L20291_ _L20293_)
                                                     (if (if (gx#identifier?
                                                              _L20293_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L20291_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx20145_
                                                          _L20293_
                                                          _L20291_
                                                          _fields20234_
                                                          _body20235_
                                                          '#t)
                                                         (_g2023720264_
                                                          _g2023920268_)))
                                                   _hd2024620285_
                                                   _hd2024320275_)
                                                  (_g2023720264_
                                                   _g2023920268_))))
                                          (_g2023720264_ _g2023920268_))))
                                  (_g2023720264_ _g2023920268_)))))
                      (_g2023620308_ _hd20232_)))))
          (let* ((_g2015120170_
                  (lambda (_g2015220166_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2015220166_)))
                 (_g2015020228_
                  (lambda (_g2015220174_)
                    (if (gx#stx-pair? _g2015220174_)
                        (let ((_e2015620177_ (gx#syntax-e _g2015220174_)))
                          (let ((_hd2015720181_ (##car _e2015620177_))
                                (_tl2015820184_ (##cdr _e2015620177_)))
                            (if (gx#stx-pair? _tl2015820184_)
                                (let ((_e2015920187_
                                       (gx#syntax-e _tl2015820184_)))
                                  (let ((_hd2016020191_ (##car _e2015920187_))
                                        (_tl2016120194_ (##cdr _e2015920187_)))
                                    (if (gx#stx-pair? _tl2016120194_)
                                        (let ((_e2016220197_
                                               (gx#syntax-e _tl2016120194_)))
                                          (let ((_hd2016320201_
                                                 (##car _e2016220197_))
                                                (_tl2016420204_
                                                 (##cdr _e2016220197_)))
                                            ((lambda (_L20207_
                                                      _L20209_
                                                      _L20210_)
                                               (if (if (gx#identifier-list?
                                                        _L20209_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20207_)
                                                       '#f)
                                                   (_generate20148_
                                                    _L20210_
                                                    _L20209_
                                                    _L20207_)
                                                   (_g2015120170_
                                                    _g2015220174_)))
                                             _tl2016420204_
                                             _hd2016320201_
                                             _hd2016020191_)))
                                        (_g2015120170_ _g2015220174_))))
                                (_g2015120170_ _g2015220174_))))
                        (_g2015120170_ _g2015220174_)))))
            (_g2015020228_ _stx20145_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20312_)
        (letrec ((_generate20315_
                  (lambda (_hd20399_ _slots20401_ _body20402_)
                    (let* ((_g2040520417_
                            (lambda (_g2040620413_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2040620413_)))
                           (_g2040420428_
                            (lambda (_g2040620421_)
                              ((lambda ()
                                 (if (gx#identifier? _hd20399_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20312_
                                      _hd20399_
                                      '()
                                      _slots20401_
                                      _body20402_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx20312_
                                      _hd20399_))))))
                           (_g2040320460_
                            (lambda (_g2040620432_)
                              (if (gx#stx-pair? _g2040620432_)
                                  (let ((_e2040920435_
                                         (gx#syntax-e _g2040620432_)))
                                    (let ((_hd2041020439_
                                           (##car _e2040920435_))
                                          (_tl2041120442_
                                           (##cdr _e2040920435_)))
                                      ((lambda (_L20445_ _L20447_)
                                         (if (if (gx#stx-list? _L20445_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L20445_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx20312_
                                              _L20447_
                                              (gx#syntax->list _L20445_)
                                              _slots20401_
                                              _body20402_
                                              '#f)
                                             (_g2040420428_ _g2040620432_)))
                                       _tl2041120442_
                                       _hd2041020439_)))
                                  (_g2040420428_ _g2040620432_)))))
                      (_g2040320460_ _hd20399_)))))
          (let* ((_g2031820337_
                  (lambda (_g2031920333_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2031920333_)))
                 (_g2031720395_
                  (lambda (_g2031920341_)
                    (if (gx#stx-pair? _g2031920341_)
                        (let ((_e2032320344_ (gx#syntax-e _g2031920341_)))
                          (let ((_hd2032420348_ (##car _e2032320344_))
                                (_tl2032520351_ (##cdr _e2032320344_)))
                            (if (gx#stx-pair? _tl2032520351_)
                                (let ((_e2032620354_
                                       (gx#syntax-e _tl2032520351_)))
                                  (let ((_hd2032720358_ (##car _e2032620354_))
                                        (_tl2032820361_ (##cdr _e2032620354_)))
                                    (if (gx#stx-pair? _tl2032820361_)
                                        (let ((_e2032920364_
                                               (gx#syntax-e _tl2032820361_)))
                                          (let ((_hd2033020368_
                                                 (##car _e2032920364_))
                                                (_tl2033120371_
                                                 (##cdr _e2032920364_)))
                                            ((lambda (_L20374_
                                                      _L20376_
                                                      _L20377_)
                                               (if (if (gx#identifier-list?
                                                        _L20376_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20374_)
                                                       '#f)
                                                   (_generate20315_
                                                    _L20377_
                                                    _L20376_
                                                    _L20374_)
                                                   (_g2031820337_
                                                    _g2031920341_)))
                                             _tl2033120371_
                                             _hd2033020368_
                                             _hd2032720358_)))
                                        (_g2031820337_ _g2031920341_))))
                                (_g2031820337_ _g2031920341_))))
                        (_g2031820337_ _g2031920341_)))))
            (_g2031720395_ _stx20312_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20464_)
        (letrec ((_wrap20467_
                  (lambda (_e-stx20804_)
                    (gx#stx-wrap-source
                     _e-stx20804_
                     (gx#stx-source _stx20464_))))
                 (_method-opt?20469_
                  (lambda (_x20801_) (memq (gx#stx-e _x20801_) '(rebind:)))))
          (let* ((_g2047120500_
                  (lambda (_g2047220496_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2047220496_)))
                 (_g2047020797_
                  (lambda (_g2047220504_)
                    (if (gx#stx-pair? _g2047220504_)
                        (let ((_e2047720507_ (gx#syntax-e _g2047220504_)))
                          (let ((_hd2047820511_ (##car _e2047720507_))
                                (_tl2047920514_ (##cdr _e2047720507_)))
                            (if (gx#stx-pair? _tl2047920514_)
                                (let ((_e2048020517_
                                       (gx#syntax-e _tl2047920514_)))
                                  (let ((_hd2048120521_ (##car _e2048020517_))
                                        (_tl2048220524_ (##cdr _e2048020517_)))
                                    (if (gx#stx-pair? _hd2048120521_)
                                        (let ((_e2048320527_
                                               (gx#syntax-e _hd2048120521_)))
                                          (let ((_hd2048420531_
                                                 (##car _e2048320527_))
                                                (_tl2048520534_
                                                 (##cdr _e2048320527_)))
                                            (if (gx#identifier? _hd2048420531_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g35390_|
                                                     _hd2048420531_)
                                                    (if (gx#stx-pair?
                                                         _tl2048520534_)
                                                        (let ((_e2048620537_
                                                               (gx#syntax-e
                                                                _tl2048520534_)))
                                                          (let ((_hd2048720541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2048620537_))
                        (_tl2048820544_ (##cdr _e2048620537_)))
                    (if (gx#stx-pair? _tl2048820544_)
                        (let ((_e2048920547_ (gx#syntax-e _tl2048820544_)))
                          (let ((_hd2049020551_ (##car _e2048920547_))
                                (_tl2049120554_ (##cdr _e2048920547_)))
                            (if (gx#stx-null? _tl2049120554_)
                                (if (gx#stx-pair? _tl2048220524_)
                                    (let ((_e2049220557_
                                           (gx#syntax-e _tl2048220524_)))
                                      (let ((_hd2049320561_
                                             (##car _e2049220557_))
                                            (_tl2049420564_
                                             (##cdr _e2049220557_)))
                                        ((lambda (_L20567_
                                                  _L20569_
                                                  _L20570_
                                                  _L20571_)
                                           (if (if (gx#identifier? _L20571_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L20570_)
                                                       (gx#stx-plist?
                                                        _L20567_
                                                        _method-opt?20469_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20596_
                                                       (gx#syntax-local-value
                                                        _L20570_))
                                                      (_rebind?20599_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20567_))
                                                           '#t
                                                           '#f))
                                                      (_g2060220610_
                                                       (lambda (_g2060320606_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2060320606_)))
                                                      (_g2060120793_
                                                       (lambda (_g2060320614_)
                                                         ((lambda (_L20617_)
                                                            (let ()
                                                              (let* ((_g2063120639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2063220635_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2063220635_)))
                             (_g2063020789_
                              (lambda (_g2063220643_)
                                ((lambda (_L20646_)
                                   (let ()
                                     (let* ((_g2065920667_
                                             (lambda (_g2066020663_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2066020663_)))
                                            (_g2065820785_
                                             (lambda (_g2066020671_)
                                               ((lambda (_L20674_)
                                                  (let ()
                                                    (let* ((_g2068720695_
                                                            (lambda (_g2068820691_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2068820691_)))
                                                           (_g2068620781_
                                                            (lambda (_g2068820699_)
                                                              ((lambda (_L20702_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2071520723_
                                   (lambda (_g2071620719_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2071620719_)))
                                  (_g2071420777_
                                   (lambda (_g2071620727_)
                                     ((lambda (_L20730_)
                                        (let ()
                                          (let* ((_g2074320751_
                                                  (lambda (_g2074420747_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2074420747_)))
                                                 (_g2074220773_
                                                  (lambda (_g2074420755_)
                                                    ((lambda (_L20758_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20467_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20702_ (cons _L20758_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2074420755_))))
                                            (_g2074220773_
                                             (_wrap20467_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20617_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20571_ '()))
                        (cons _L20646_ (cons _L20730_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2071620727_))))
                             (_g2071420777_ _rebind?20599_))))
                       _g2068820699_))))
              (_g2068620781_
               (_wrap20467_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20646_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20674_
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
                                                            (cons _L20617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20571_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20569_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2066020671_))))
                                       (_g2065820785_
                                        (gx#stx-identifier
                                         _L20571_
                                         '@next-method)))))
                                 _g2063220643_))))
                        (_g2063020789_
                         (gx#stx-identifier
                          _L20571_
                          _L20570_
                          '"::"
                          _L20571_)))))
                  _g2060320614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2060120793_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20596_)))
                                               (if (not (gx#identifier?
                                                         _L20571_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20464_
                                                    _L20571_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L20570_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20464_
                                                        _L20570_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20464_)))))
                                         _tl2049420564_
                                         _hd2049320561_
                                         _hd2049020551_
                                         _hd2048720541_)))
                                    (_g2047120500_ _g2047220504_))
                                (_g2047120500_ _g2047220504_))))
                        (_g2047120500_ _g2047220504_))))
                (_g2047120500_ _g2047220504_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2047120500_
                                                     _g2047220504_))
                                                (_g2047120500_
                                                 _g2047220504_))))
                                        (_g2047120500_ _g2047220504_))))
                                (_g2047120500_ _g2047220504_))))
                        (_g2047120500_ _g2047220504_)))))
            (_g2047020797_ _stx20464_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx20807_)
        (let* ((_g2081220861_
                (lambda (_g2081320857_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2081320857_)))
               (_g2081120960_
                (lambda (_g2081320865_)
                  (if (gx#stx-pair? _g2081320865_)
                      (let ((_e2083820868_ (gx#syntax-e _g2081320865_)))
                        (let ((_hd2083920872_ (##car _e2083820868_))
                              (_tl2084020875_ (##cdr _e2083820868_)))
                          (if (gx#stx-pair? _tl2084020875_)
                              (let ((_e2084120878_
                                     (gx#syntax-e _tl2084020875_)))
                                (let ((_hd2084220882_ (##car _e2084120878_))
                                      (_tl2084320885_ (##cdr _e2084120878_)))
                                  (if (gx#stx-pair? _tl2084320885_)
                                      (let ((_e2084420888_
                                             (gx#syntax-e _tl2084320885_)))
                                        (let ((_hd2084520892_
                                               (##car _e2084420888_))
                                              (_tl2084620895_
                                               (##cdr _e2084420888_)))
                                          (if (gx#stx-pair/null?
                                               _tl2084620895_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2084620895_)
                                                        '0)
                                                  (let ((_g35391_
                                                         (gx#syntax-split-splice
                                                          _tl2084620895_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35392_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35391_)
                         (##vector-length _g35391_)
                         1)))
                (if (not (##fx= _g35392_ 2))
                    (error "Context expects 2 values" _g35392_)))
              (let ((_target2084720898_ (##vector-ref _g35391_ 0))
                    (_tl2084920901_ (##vector-ref _g35391_ 1)))
                (if (gx#stx-null? _tl2084920901_)
                    (letrec ((_loop2085020904_
                              (lambda (_hd2084820908_ _arg2085420911_)
                                (if (gx#stx-pair? _hd2084820908_)
                                    (let ((_e2085120914_
                                           (gx#syntax-e _hd2084820908_)))
                                      (let ((_lp-hd2085220918_
                                             (##car _e2085120914_))
                                            (_lp-tl2085320921_
                                             (##cdr _e2085120914_)))
                                        (_loop2085020904_
                                         _lp-tl2085320921_
                                         (cons _lp-hd2085220918_
                                               _arg2085420911_))))
                                    (let ((_arg2085520924_
                                           (reverse _arg2085420911_)))
                                      ((lambda (_L20928_ _L20930_ _L20931_)
                                         (if (gx#identifier? _L20931_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L20930_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L20931_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g2095120954_ _g2095220957_)
                                  (cons _g2095120954_ _g2095220957_))
                                '()
                                _L20928_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2081220861_ _g2081320865_)))
                                       _arg2085520924_
                                       _hd2084520892_
                                       _hd2084220882_))))))
                      (_loop2085020904_ _target2084720898_ '()))
                    (_g2081220861_ _g2081320865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2081220861_
                                                   _g2081320865_))
                                              (_g2081220861_ _g2081320865_))))
                                      (_g2081220861_ _g2081320865_))))
                              (_g2081220861_ _g2081320865_))))
                      (_g2081220861_ _g2081320865_))))
               (_g2081021066_
                (lambda (_g2081320964_)
                  (if (gx#stx-pair? _g2081320964_)
                      (let ((_e2081720967_ (gx#syntax-e _g2081320964_)))
                        (let ((_hd2081820971_ (##car _e2081720967_))
                              (_tl2081920974_ (##cdr _e2081720967_)))
                          (if (gx#stx-pair? _tl2081920974_)
                              (let ((_e2082020977_
                                     (gx#syntax-e _tl2081920974_)))
                                (let ((_hd2082120981_ (##car _e2082020977_))
                                      (_tl2082220984_ (##cdr _e2082020977_)))
                                  (if (gx#stx-pair? _tl2082220984_)
                                      (let ((_e2082320987_
                                             (gx#syntax-e _tl2082220984_)))
                                        (let ((_hd2082420991_
                                               (##car _e2082320987_))
                                              (_tl2082520994_
                                               (##cdr _e2082320987_)))
                                          (if (gx#stx-pair/null?
                                               _tl2082520994_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2082520994_)
                                                        '0)
                                                  (let ((_g35393_
                                                         (gx#syntax-split-splice
                                                          _tl2082520994_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35394_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35393_)
                         (##vector-length _g35393_)
                         1)))
                (if (not (##fx= _g35394_ 2))
                    (error "Context expects 2 values" _g35394_)))
              (let ((_target2082620997_ (##vector-ref _g35393_ 0))
                    (_tl2082821000_ (##vector-ref _g35393_ 1)))
                (if (gx#stx-null? _tl2082821000_)
                    (letrec ((_loop2082921003_
                              (lambda (_hd2082721007_ _arg2083321010_)
                                (if (gx#stx-pair? _hd2082721007_)
                                    (let ((_e2083021013_
                                           (gx#syntax-e _hd2082721007_)))
                                      (let ((_lp-hd2083121017_
                                             (##car _e2083021013_))
                                            (_lp-tl2083221020_
                                             (##cdr _e2083021013_)))
                                        (_loop2082921003_
                                         _lp-tl2083221020_
                                         (cons _lp-hd2083121017_
                                               _arg2083321010_))))
                                    (let ((_arg2083421023_
                                           (reverse _arg2083321010_)))
                                      ((lambda (_L21027_ _L21029_ _L21030_)
                                         (if (if (gx#identifier? _L21030_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2104921052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2105021055_)
                     (cons _g2104921052_ _g2105021055_))
                   '()
                   _L21027_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L21029_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L21030_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2105721060_
                                                           _g2105821063_)
                                                    (cons _g2105721060_
                                                          _g2105821063_))
                                                  '()
                                                  _L21027_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2081120960_ _g2081320964_)))
                                       _arg2083421023_
                                       _hd2082420991_
                                       _hd2082120981_))))))
                      (_loop2082921003_ _target2082620997_ '()))
                    (_g2081120960_ _g2081320964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2081120960_
                                                   _g2081320964_))
                                              (_g2081120960_ _g2081320964_))))
                                      (_g2081120960_ _g2081320964_))))
                              (_g2081120960_ _g2081320964_))))
                      (_g2081120960_ _g2081320964_)))))
          (_g2081021066_ _$stx20807_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21072_)
        (let* ((_g2107721117_
                (lambda (_g2107821113_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2107821113_)))
               (_g2107621218_
                (lambda (_g2107821121_)
                  (if (gx#stx-pair? _g2107821121_)
                      (let ((_e2109421124_ (gx#syntax-e _g2107821121_)))
                        (let ((_hd2109521128_ (##car _e2109421124_))
                              (_tl2109621131_ (##cdr _e2109421124_)))
                          (if (gx#stx-pair? _tl2109621131_)
                              (let ((_e2109721134_
                                     (gx#syntax-e _tl2109621131_)))
                                (let ((_hd2109821138_ (##car _e2109721134_))
                                      (_tl2109921141_ (##cdr _e2109721134_)))
                                  (if (gx#stx-pair? _tl2109921141_)
                                      (let ((_e2110021144_
                                             (gx#syntax-e _tl2109921141_)))
                                        (let ((_hd2110121148_
                                               (##car _e2110021144_))
                                              (_tl2110221151_
                                               (##cdr _e2110021144_)))
                                          (if (gx#stx-pair/null?
                                               _tl2110221151_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2110221151_)
                                                        '0)
                                                  (let ((_g35395_
                                                         (gx#syntax-split-splice
                                                          _tl2110221151_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35396_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35395_)
                         (##vector-length _g35395_)
                         1)))
                (if (not (##fx= _g35396_ 2))
                    (error "Context expects 2 values" _g35396_)))
              (let ((_target2110321154_ (##vector-ref _g35395_ 0))
                    (_tl2110521157_ (##vector-ref _g35395_ 1)))
                (if (gx#stx-null? _tl2110521157_)
                    (letrec ((_loop2110621160_
                              (lambda (_hd2110421164_ _rest2111021167_)
                                (if (gx#stx-pair? _hd2110421164_)
                                    (let ((_e2110721170_
                                           (gx#syntax-e _hd2110421164_)))
                                      (let ((_lp-hd2110821174_
                                             (##car _e2110721170_))
                                            (_lp-tl2110921177_
                                             (##cdr _e2110721170_)))
                                        (_loop2110621160_
                                         _lp-tl2110921177_
                                         (cons _lp-hd2110821174_
                                               _rest2111021167_))))
                                    (let ((_rest2111121180_
                                           (reverse _rest2111021167_)))
                                      ((lambda (_L21184_
                                                _L21186_
                                                _L21187_
                                                _L21188_)
                                         (cons _L21188_
                                               (cons (cons _L21188_
                                                           (cons _L21187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L21186_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2120921212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2121021215_)
                        (cons _g2120921212_ _g2121021215_))
                      '()
                      _L21184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest2111121180_
                                       _hd2110121148_
                                       _hd2109821138_
                                       _hd2109521128_))))))
                      (_loop2110621160_ _target2110321154_ '()))
                    (_g2107721117_ _g2107821121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2107721117_
                                                   _g2107821121_))
                                              (_g2107721117_ _g2107821121_))))
                                      (_g2107721117_ _g2107821121_))))
                              (_g2107721117_ _g2107821121_))))
                      (_g2107721117_ _g2107821121_))))
               (_g2107521272_
                (lambda (_g2107821222_)
                  (if (gx#stx-pair? _g2107821222_)
                      (let ((_e2108121225_ (gx#syntax-e _g2107821222_)))
                        (let ((_hd2108221229_ (##car _e2108121225_))
                              (_tl2108321232_ (##cdr _e2108121225_)))
                          (if (gx#stx-pair? _tl2108321232_)
                              (let ((_e2108421235_
                                     (gx#syntax-e _tl2108321232_)))
                                (let ((_hd2108521239_ (##car _e2108421235_))
                                      (_tl2108621242_ (##cdr _e2108421235_)))
                                  (if (gx#stx-pair? _tl2108621242_)
                                      (let ((_e2108721245_
                                             (gx#syntax-e _tl2108621242_)))
                                        (let ((_hd2108821249_
                                               (##car _e2108721245_))
                                              (_tl2108921252_
                                               (##cdr _e2108721245_)))
                                          (if (gx#stx-null? _tl2108921252_)
                                              ((lambda (_L21255_ _L21257_)
                                                 (if (gx#identifier? _L21255_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L21257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L21255_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2107621218_
                                                      _g2107821222_)))
                                               _hd2108821249_
                                               _hd2108521239_)
                                              (_g2107621218_ _g2107821222_))))
                                      (_g2107621218_ _g2107821222_))))
                              (_g2107621218_ _g2107821222_))))
                      (_g2107621218_ _g2107821222_)))))
          (_g2107521272_ _$stx21072_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21277_)
        (let* ((_g2128221334_
                (lambda (_g2128321330_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2128321330_)))
               (_g2128121463_
                (lambda (_g2128321338_)
                  (if (gx#stx-pair? _g2128321338_)
                      (let ((_e2130521341_ (gx#syntax-e _g2128321338_)))
                        (let ((_hd2130621345_ (##car _e2130521341_))
                              (_tl2130721348_ (##cdr _e2130521341_)))
                          (if (gx#stx-pair? _tl2130721348_)
                              (let ((_e2130821351_
                                     (gx#syntax-e _tl2130721348_)))
                                (let ((_hd2130921355_ (##car _e2130821351_))
                                      (_tl2131021358_ (##cdr _e2130821351_)))
                                  (if (gx#stx-pair? _tl2131021358_)
                                      (let ((_e2131121361_
                                             (gx#syntax-e _tl2131021358_)))
                                        (let ((_hd2131221365_
                                               (##car _e2131121361_))
                                              (_tl2131321368_
                                               (##cdr _e2131121361_)))
                                          (if (gx#stx-pair/null?
                                               _tl2131321368_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2131321368_)
                                                        '2)
                                                  (let ((_g35397_
                                                         (gx#syntax-split-splice
                                                          _tl2131321368_
                                                          '2)))
                                                    (begin
                                                      (let ((_g35398_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35397_)
                         (##vector-length _g35397_)
                         1)))
                (if (not (##fx= _g35398_ 2))
                    (error "Context expects 2 values" _g35398_)))
              (let ((_target2131421371_ (##vector-ref _g35397_ 0))
                    (_tl2131621374_ (##vector-ref _g35397_ 1)))
                (if (gx#stx-pair? _tl2131621374_)
                    (let ((_e2132321377_ (gx#syntax-e _tl2131621374_)))
                      (let ((_hd2132421381_ (##car _e2132321377_))
                            (_tl2132521384_ (##cdr _e2132321377_)))
                        (if (gx#stx-pair? _tl2132521384_)
                            (let ((_e2132621387_ (gx#syntax-e _tl2132521384_)))
                              (let ((_hd2132721391_ (##car _e2132621387_))
                                    (_tl2132821394_ (##cdr _e2132621387_)))
                                (if (gx#stx-null? _tl2132821394_)
                                    (letrec ((_loop2131721397_
                                              (lambda (_hd2131521401_
                                                       _path2132121404_)
                                                (if (gx#stx-pair?
                                                     _hd2131521401_)
                                                    (let ((_e2131821407_
                                                           (gx#syntax-e
                                                            _hd2131521401_)))
                                                      (let ((_lp-hd2131921411_
                                                             (##car _e2131821407_))
                                                            (_lp-tl2132021414_
                                                             (##cdr _e2131821407_)))
                                                        (_loop2131721397_
                                                         _lp-tl2132021414_
                                                         (cons _lp-hd2131921411_
                                                               _path2132121404_))))
                                                    (let ((_path2132221417_
                                                           (reverse _path2132121404_)))
                                                      ((lambda (_L21421_
                                                                _L21423_
                                                                _L21424_
                                                                _L21425_
                                                                _L21426_
                                                                _L21427_)
                                                         (cons _L21427_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L21426_
                                         (cons _L21425_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2145421457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2145521460_)
                  (cons _g2145421457_ _g2145521460_))
                '()
                _L21424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L21423_ (cons _L21421_ '())))))
               _hd2132721391_
               _hd2132421381_
               _path2132221417_
               _hd2131221365_
               _hd2130921355_
               _hd2130621345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2131721397_
                                       _target2131421371_
                                       '()))
                                    (_g2128221334_ _g2128321338_))))
                            (_g2128221334_ _g2128321338_))))
                    (_g2128221334_ _g2128321338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2128221334_
                                                   _g2128321338_))
                                              (_g2128221334_ _g2128321338_))))
                                      (_g2128221334_ _g2128321338_))))
                              (_g2128221334_ _g2128321338_))))
                      (_g2128221334_ _g2128321338_))))
               (_g2128021531_
                (lambda (_g2128321467_)
                  (if (gx#stx-pair? _g2128321467_)
                      (let ((_e2128721470_ (gx#syntax-e _g2128321467_)))
                        (let ((_hd2128821474_ (##car _e2128721470_))
                              (_tl2128921477_ (##cdr _e2128721470_)))
                          (if (gx#stx-pair? _tl2128921477_)
                              (let ((_e2129021480_
                                     (gx#syntax-e _tl2128921477_)))
                                (let ((_hd2129121484_ (##car _e2129021480_))
                                      (_tl2129221487_ (##cdr _e2129021480_)))
                                  (if (gx#stx-pair? _tl2129221487_)
                                      (let ((_e2129321490_
                                             (gx#syntax-e _tl2129221487_)))
                                        (let ((_hd2129421494_
                                               (##car _e2129321490_))
                                              (_tl2129521497_
                                               (##cdr _e2129321490_)))
                                          (if (gx#stx-pair? _tl2129521497_)
                                              (let ((_e2129621500_
                                                     (gx#syntax-e
                                                      _tl2129521497_)))
                                                (let ((_hd2129721504_
                                                       (##car _e2129621500_))
                                                      (_tl2129821507_
                                                       (##cdr _e2129621500_)))
                                                  (if (gx#stx-null?
                                                       _tl2129821507_)
                                                      ((lambda (_L21510_
                                                                _L21512_
                                                                _L21513_)
                                                         (if (gx#identifier?
                                                              _L21512_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L21513_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21512_ '()))
                                       (cons _L21510_ '()))))
                     (_g2128121463_ _g2128321467_)))
               _hd2129721504_
               _hd2129421494_
               _hd2129121484_)
              (_g2128121463_ _g2128321467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2128121463_ _g2128321467_))))
                                      (_g2128121463_ _g2128321467_))))
                              (_g2128121463_ _g2128321467_))))
                      (_g2128121463_ _g2128321467_)))))
          (_g2128021531_ _$stx21277_))))))
