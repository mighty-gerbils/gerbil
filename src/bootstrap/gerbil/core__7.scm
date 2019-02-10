(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g42122_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
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
      (lambda _$args21014_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args21014_)))
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
      (lambda _$args21010_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args21010_)))
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
      (lambda _$args21006_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args21006_)))
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
      (lambda _$args21002_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args21002_)))
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
      (lambda _$args20998_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20998_)))
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
      (lambda _$args20994_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20994_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20968_ _is?20970_)
        (if (gx#identifier? _stx20968_)
            (let ((_e2097120973_ (gx#syntax-local-value _stx20968_ false)))
              (if _e2097120973_
                  (let ((_e20977_ _e2097120973_))
                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                         _e20977_)
                        (_is?20970_ _e20977_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20984_)
        (let ((_is?20987_ true))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20984_
           _is?20987_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g42108_
        (let ((_g42107_ (length _g42108_)))
          (cond ((##fx= _g42107_ 1)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                        _g42108_))
                ((##fx= _g42107_ 2)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                        _g42108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g42108_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20964_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20964_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20961_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20961_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20955_)
        (if _id20955_
            (let ((_info20958_ (gx#syntax-local-value _id20955_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20958_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20958_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20720_ _stx20722_)
        (let* ((_g2072420744_
                (lambda (_g2072520740_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2072520740_)))
               (_g2072320951_
                (lambda (_g2072520748_)
                  (if (gx#stx-pair? _g2072520748_)
                      (let ((_e2072720751_ (gx#syntax-e _g2072520748_)))
                        (let ((_hd2072820755_ (##car _e2072720751_))
                              (_tl2072920758_ (##cdr _e2072720751_)))
                          (if (gx#stx-pair/null? _tl2072920758_)
                              (let ((_g42109_
                                     (gx#syntax-split-splice
                                      _tl2072920758_
                                      '0)))
                                (begin
                                  (let ((_g42110_
                                         (if (##values? _g42109_)
                                             (##vector-length _g42109_)
                                             1)))
                                    (if (not (##fx= _g42110_ 2))
                                        (error "Context expects 2 values"
                                               _g42110_)))
                                  (let ((_target2073020761_
                                         (##vector-ref _g42109_ 0))
                                        (_tl2073220764_
                                         (##vector-ref _g42109_ 1)))
                                    (if (gx#stx-null? _tl2073220764_)
                                        (letrec ((_loop2073320767_
                                                  (lambda (_hd2073120771_
                                                           _arg2073720774_)
                                                    (if (gx#stx-pair?
                                                         _hd2073120771_)
                                                        (let ((_e2073420777_
                                                               (gx#syntax-e
                                                                _hd2073120771_)))
                                                          (let ((_lp-hd2073520781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2073420777_))
                        (_lp-tl2073620784_ (##cdr _e2073420777_)))
                    (_loop2073320767_
                     _lp-tl2073620784_
                     (cons _lp-hd2073520781_ _arg2073720774_))))
                (let ((_arg2073820787_ (reverse _arg2073720774_)))
                  ((lambda (_L20791_)
                     (let* ((_g2080720838_
                             (lambda (_g2080820834_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2080820834_)))
                            (_g2080620947_
                             (lambda (_g2080820842_)
                               (if (gx#stx-pair? _g2080820842_)
                                   (let ((_e2081520845_
                                          (gx#syntax-e _g2080820842_)))
                                     (let ((_hd2081620849_
                                            (##car _e2081520845_))
                                           (_tl2081720852_
                                            (##cdr _e2081520845_)))
                                       (if (gx#stx-pair? _tl2081720852_)
                                           (let ((_e2081820855_
                                                  (gx#syntax-e
                                                   _tl2081720852_)))
                                             (let ((_hd2081920859_
                                                    (##car _e2081820855_))
                                                   (_tl2082020862_
                                                    (##cdr _e2081820855_)))
                                               (if (gx#stx-pair?
                                                    _tl2082020862_)
                                                   (let ((_e2082120865_
                                                          (gx#syntax-e
                                                           _tl2082020862_)))
                                                     (let ((_hd2082220869_
                                                            (##car _e2082120865_))
                                                           (_tl2082320872_
                                                            (##cdr _e2082120865_)))
                                                       (if (gx#stx-pair?
                                                            _tl2082320872_)
                                                           (let ((_e2082420875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2082320872_)))
                     (let ((_hd2082520879_ (##car _e2082420875_))
                           (_tl2082620882_ (##cdr _e2082420875_)))
                       (if (gx#stx-pair? _tl2082620882_)
                           (let ((_e2082720885_ (gx#syntax-e _tl2082620882_)))
                             (let ((_hd2082820889_ (##car _e2082720885_))
                                   (_tl2082920892_ (##cdr _e2082720885_)))
                               (if (gx#stx-pair? _tl2082920892_)
                                   (let ((_e2083020895_
                                          (gx#syntax-e _tl2082920892_)))
                                     (let ((_hd2083120899_
                                            (##car _e2083020895_))
                                           (_tl2083220902_
                                            (##cdr _e2083020895_)))
                                       (if (gx#stx-null? _tl2083220902_)
                                           ((lambda (_L20905_
                                                     _L20907_
                                                     _L20908_
                                                     _L20909_
                                                     _L20910_
                                                     _L20911_)
                                              (let ()
                                                (cons _L20909_
                                                      (foldr (lambda (_g2093820941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2093920944_)
                       (cons _g2093820941_ _g2093920944_))
                     '()
                     _L20791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2083120899_
                                            _hd2082820889_
                                            _hd2082520879_
                                            _hd2082220869_
                                            _hd2081920859_
                                            _hd2081620849_)
                                           (_g2080720838_ _g2080820842_))))
                                   (_g2080720838_ _g2080820842_))))
                           (_g2080720838_ _g2080820842_))))
                   (_g2080720838_ _g2080820842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2080720838_
                                                    _g2080820842_))))
                                           (_g2080720838_ _g2080820842_))))
                                   (_g2080720838_ _g2080820842_)))))
                       (_g2080620947_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                         _self20720_))))
                   _arg2073820787_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2073320767_
                                           _target2073020761_
                                           '()))
                                        (_g2072420744_ _g2072520748_)))))
                              (_g2072420744_ _g2072520748_))))
                      (_g2072420744_ _g2072520748_)))))
          (_g2072320951_ _stx20722_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20711_)
        (letrec ((_body-opt?20714_
                  (lambda (_key20717_)
                    (memq (gx#stx-e _key20717_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20711_ _body-opt?20714_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx19539_
               _id19541_
               _super-ref19542_
               _els19543_
               _body19544_
               _struct?19545_)
        (letrec* ((_wrap19547_
                   (lambda (_e-stx20708_)
                     (gx#stx-wrap-source
                      _e-stx20708_
                      (gx#stx-source _stx19539_))))
                  (_make-id19549_
                   (if (uninterned-symbol? (gx#stx-e _id19541_))
                       (lambda _g42111_ (gx#genident _id19541_))
                       (lambda _args20705_
                         (apply gx#stx-identifier _id19541_ _args20705_)))))
          (gx#check-duplicate-identifiers _els19543_ _stx19539_)
          (let* ((_name19551_ (symbol->string (gx#stx-e _id19541_)))
                 (_super19554_
                  (if _struct?19545_
                      (if _super-ref19542_
                          (gx#syntax-local-value _super-ref19542_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19542_)))
                 (_g1955719565_
                  (lambda (_g1955819561_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1955819561_)))
                 (_g1955620699_
                  (lambda (_g1955819569_)
                    ((lambda (_L19572_)
                       (let ()
                         (let* ((_g1958819596_
                                 (lambda (_g1958919592_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1958919592_)))
                                (_g1958720695_
                                 (lambda (_g1958919600_)
                                   ((lambda (_L19603_)
                                      (let ()
                                        (let* ((_g1961619624_
                                                (lambda (_g1961719620_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1961719620_)))
                                               (_g1961520691_
                                                (lambda (_g1961719628_)
                                                  ((lambda (_L19631_)
                                                     (let ()
                                                       (let* ((_g1964419652_
                                                               (lambda (_g1964519648_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1964519648_)))
                      (_g1964320687_
                       (lambda (_g1964519656_)
                         ((lambda (_L19659_)
                            (let ()
                              (let* ((_g1967219680_
                                      (lambda (_g1967319676_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1967319676_)))
                                     (_g1967120683_
                                      (lambda (_g1967319684_)
                                        ((lambda (_L19687_)
                                           (let ()
                                             (let* ((_g1970019708_
                                                     (lambda (_g1970119704_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1970119704_)))
                                                    (_g1969920679_
                                                     (lambda (_g1970119712_)
                                                       ((lambda (_L19715_)
                                                          (let ()
                                                            (let* ((_g1972819745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1972919741_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1972919741_)))
                           (_g1972720675_
                            (lambda (_g1972919749_)
                              (if (gx#stx-pair/null? _g1972919749_)
                                  (let ((_g42112_
                                         (gx#syntax-split-splice
                                          _g1972919749_
                                          '0)))
                                    (begin
                                      (let ((_g42113_
                                             (if (##values? _g42112_)
                                                 (##vector-length _g42112_)
                                                 1)))
                                        (if (not (##fx= _g42113_ 2))
                                            (error "Context expects 2 values"
                                                   _g42113_)))
                                      (let ((_target1973119752_
                                             (##vector-ref _g42112_ 0))
                                            (_tl1973319755_
                                             (##vector-ref _g42112_ 1)))
                                        (if (gx#stx-null? _tl1973319755_)
                                            (letrec ((_loop1973419758_
                                                      (lambda (_hd1973219762_
                                                               _attr1973819765_)
                                                        (if (gx#stx-pair?
                                                             _hd1973219762_)
                                                            (let ((_e1973519768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1973219762_)))
                      (let ((_lp-hd1973619772_ (##car _e1973519768_))
                            (_lp-tl1973719775_ (##cdr _e1973519768_)))
                        (_loop1973419758_
                         _lp-tl1973719775_
                         (cons _lp-hd1973619772_ _attr1973819765_))))
                    (let ((_attr1973919778_ (reverse _attr1973819765_)))
                      ((lambda (_L19782_)
                         (let ()
                           (let* ((_g1979919816_
                                   (lambda (_g1980019812_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1980019812_)))
                                  (_g1979820666_
                                   (lambda (_g1980019820_)
                                     (if (gx#stx-pair/null? _g1980019820_)
                                         (let ((_g42114_
                                                (gx#syntax-split-splice
                                                 _g1980019820_
                                                 '0)))
                                           (begin
                                             (let ((_g42115_
                                                    (if (##values? _g42114_)
                                                        (##vector-length
                                                         _g42114_)
                                                        1)))
                                               (if (not (##fx= _g42115_ 2))
                                                   (error "Context expects 2 values"
                                                          _g42115_)))
                                             (let ((_target1980219823_
                                                    (##vector-ref _g42114_ 0))
                                                   (_tl1980419826_
                                                    (##vector-ref _g42114_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1980419826_)
                                                   (letrec ((_loop1980519829_
                                                             (lambda (_hd1980319833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1980919836_)
                       (if (gx#stx-pair? _hd1980319833_)
                           (let ((_e1980619839_ (gx#syntax-e _hd1980319833_)))
                             (let ((_lp-hd1980719843_ (##car _e1980619839_))
                                   (_lp-tl1980819846_ (##cdr _e1980619839_)))
                               (_loop1980519829_
                                _lp-tl1980819846_
                                (cons _lp-hd1980719843_ _getf1980919836_))))
                           (let ((_getf1981019849_ (reverse _getf1980919836_)))
                             ((lambda (_L19853_)
                                (let ()
                                  (let* ((_g1987019887_
                                          (lambda (_g1987119883_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1987119883_)))
                                         (_g1986920657_
                                          (lambda (_g1987119891_)
                                            (if (gx#stx-pair/null?
                                                 _g1987119891_)
                                                (let ((_g42116_
                                                       (gx#syntax-split-splice
                                                        _g1987119891_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42117_
                                                           (if (##values?
                                                                _g42116_)
                                                               (##vector-length
                                                                _g42116_)
                                                               1)))
                                                      (if (not (##fx= _g42117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g42117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1987319894_
                                                           (##vector-ref
                                                            _g42116_
                                                            0))
                                                          (_tl1987519897_
                                                           (##vector-ref
                                                            _g42116_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1987519897_)
                                                          (letrec ((_loop1987619900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1987419904_ _setf1988019907_)
                              (if (gx#stx-pair? _hd1987419904_)
                                  (let ((_e1987719910_
                                         (gx#syntax-e _hd1987419904_)))
                                    (let ((_lp-hd1987819914_
                                           (##car _e1987719910_))
                                          (_lp-tl1987919917_
                                           (##cdr _e1987719910_)))
                                      (_loop1987619900_
                                       _lp-tl1987919917_
                                       (cons _lp-hd1987819914_
                                             _setf1988019907_))))
                                  (let ((_setf1988119920_
                                         (reverse _setf1988019907_)))
                                    ((lambda (_L19924_)
                                       (let ()
                                         (let* ((_type-attr19969_
                                                 (if (gx#stx-null? _els19543_)
                                                     '()
                                                     (if _struct?19545_
                                                         (cons 'fields:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L19924_
                                _L19853_
                                _L19782_)
                               (foldr (lambda (_g1994019945_
                                               _g1994119948_
                                               _g1994219950_
                                               _g1994319952_)
                                        (cons (cons _g1994219950_
                                                    (cons _g1994119948_
                                                          (cons _g1994019945_
                                                                '())))
                                              _g1994319952_))
                                      '()
                                      _L19924_
                                      _L19853_
                                      _L19782_))
                             '()))
                 (cons 'slots:
                       (cons (begin
                               (gx#syntax-check-splice-targets
                                _L19924_
                                _L19853_
                                _L19782_)
                               (foldr (lambda (_g1995419959_
                                               _g1995519962_
                                               _g1995619964_
                                               _g1995719966_)
                                        (cons (cons _g1995619964_
                                                    (cons _g1995519962_
                                                          (cons _g1995419959_
                                                                '())))
                                              _g1995719966_))
                                      '()
                                      _L19924_
                                      _L19853_
                                      _L19782_))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19976_
                                                 (cons 'name:
                                                       (cons (let ((_$e19972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body19544_)))
                       (if _$e19972_ _$e19972_ _id19541_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19991_
                                                 (let ((_$e19987_
                                                        (let ((_e1997819980_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body19544_)))
                                                          (if _e1997819980_
                                                              (let ((_e19984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1997819980_))
                        (cons 'id: (cons _e19984_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19987_
                                                       _$e19987_
                                                       '())))
                                                (_type-ctor20006_
                                                 (let ((_$e20002_
                                                        (let ((_e1999319995_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body19544_)))
                                                          (if _e1999319995_
                                                              (let ((_e19999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1999319995_))
                        (cons 'constructor: (cons _e19999_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e20002_
                                                       _$e20002_
                                                       '())))
                                                (_plist20050_
                                                 (let* ((_plist20013_
                                                         (let ((_$e20009_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'plist:
                         _body19544_)))
                   (if _$e20009_ _$e20009_ '())))
                (_plist20016_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body19544_))
                     (cons (cons 'transparent: '#t) _plist20013_)
                     _plist20013_))
                (_plist20019_
                 (if (gx#stx-e (gx#stx-getq 'final: _body19544_))
                     (cons (cons 'final: '#t) _plist20016_)
                     _plist20016_))
                (_plist20032_
                 (let ((_$e20022_
                        (gx#stx-e (gx#stx-getq 'print: _body19544_))))
                   (if _$e20022_
                       ((lambda (_print20026_)
                          (let ((_print20029_
                                 (if (eq? _print20026_ '#t)
                                     _els19543_
                                     _print20026_)))
                            (cons (cons 'print: _print20029_) _plist20019_)))
                        _$e20022_)
                       _plist20019_)))
                (_plist20045_
                 (let ((_$e20035_
                        (gx#stx-e (gx#stx-getq 'equal: _body19544_))))
                   (if _$e20035_
                       ((lambda (_equal20039_)
                          (let ((_equal20042_
                                 (if (eq? _equal20039_ '#t)
                                     _els19543_
                                     _equal20039_)))
                            (cons (cons 'equal: _equal20042_) _plist20032_)))
                        _$e20035_)
                       _plist20032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _plist20045_))
                                                (_type-plist20090_
                                                 (if (null? _plist20050_)
                                                     _plist20050_
                                                     (let* ((_g2005320061_
                                                             (lambda (_g2005420057_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2005420057_)))
                                                            (_g2005220086_
                                                             (lambda (_g2005420065_)
                                                               ((lambda (_L20068_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'plist:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L20068_ '()))
                                        '()))))
                        _g2005420065_))))
               (_g2005220086_ _plist20050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked20105_
                                                 (let ((_$e20101_
                                                        (let ((_e2009220094_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body19544_)))
                                                          (if _e2009220094_
                                                              (let ((_e20098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e2009220094_))
                        (cons 'unchecked: (cons _e20098_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e20101_
                                                       _$e20101_
                                                       '())))
                                                (_g2010820125_
                                                 (lambda (_g2010920121_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2010920121_)))
                                                (_g2010720653_
                                                 (lambda (_g2010920129_)
                                                   (if (gx#stx-pair/null?
                                                        _g2010920129_)
                                                       (let ((_g42118_
                                                              (gx#syntax-split-splice
                                                               _g2010920129_
                                                               '0)))
                                                         (begin
                                                           (let ((_g42119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g42118_)
                              (##vector-length _g42118_)
                              1)))
                     (if (not (##fx= _g42119_ 2))
                         (error "Context expects 2 values" _g42119_)))
                   (let ((_target2011120132_ (##vector-ref _g42118_ 0))
                         (_tl2011320135_ (##vector-ref _g42118_ 1)))
                     (if (gx#stx-null? _tl2011320135_)
                         (letrec ((_loop2011420138_
                                   (lambda (_hd2011220142_
                                            _type-body2011820145_)
                                     (if (gx#stx-pair? _hd2011220142_)
                                         (let ((_e2011520148_
                                                (gx#syntax-e _hd2011220142_)))
                                           (let ((_lp-hd2011620152_
                                                  (##car _e2011520148_))
                                                 (_lp-tl2011720155_
                                                  (##cdr _e2011520148_)))
                                             (_loop2011420138_
                                              _lp-tl2011720155_
                                              (cons _lp-hd2011620152_
                                                    _type-body2011820145_))))
                                         (let ((_type-body2011920158_
                                                (reverse _type-body2011820145_)))
                                           ((lambda (_L20162_)
                                              (let ()
                                                (let* ((_g2017920187_
                                                        (lambda (_g2018020183_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2018020183_)))
                                                       (_g2017820641_
                                                        (lambda (_g2018020191_)
                                                          ((lambda (_L20194_)
                                                             (let ()
                                                               (let* ((_g2020720215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2020820211_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2020820211_)))
                              (_g2020620637_
                               (lambda (_g2020820219_)
                                 ((lambda (_L20222_)
                                    (let ()
                                      (let* ((_g2023520243_
                                              (lambda (_g2023620239_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2023620239_)))
                                             (_g2023420551_
                                              (lambda (_g2023620247_)
                                                ((lambda (_L20250_)
                                                   (let ()
                                                     (let* ((_g2026320271_
                                                             (lambda (_g2026420267_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2026420267_)))
                                                            (_g2026220547_
                                                             (lambda (_g2026420275_)
                                                               ((lambda (_L20278_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2029120299_
                                    (lambda (_g2029220295_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2029220295_)))
                                   (_g2029020543_
                                    (lambda (_g2029220303_)
                                      ((lambda (_L20306_)
                                         (let ()
                                           (let* ((_g2031920327_
                                                   (lambda (_g2032020323_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2032020323_)))
                                                  (_g2031820501_
                                                   (lambda (_g2032020331_)
                                                     ((lambda (_L20334_)
                                                        (let ()
                                                          (let* ((_g2034720355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2034820351_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2034820351_)))
                         (_g2034620497_
                          (lambda (_g2034820359_)
                            ((lambda (_L20362_)
                               (let ()
                                 (let* ((_g2037520383_
                                         (lambda (_g2037620379_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2037620379_)))
                                        (_g2037420493_
                                         (lambda (_g2037620387_)
                                           ((lambda (_L20390_)
                                              (let ()
                                                (let* ((_g2040320411_
                                                        (lambda (_g2040420407_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2040420407_)))
                                                       (_g2040220489_
                                                        (lambda (_g2040420415_)
                                                          ((lambda (_L20418_)
                                                             (let ()
                                                               (let* ((_g2043120439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2043220435_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2043220435_)))
                              (_g2043020461_
                               (lambda (_g2043220443_)
                                 ((lambda (_L20446_)
                                    (let ()
                                      (let ()
                                        (_wrap19547_
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons _L20194_
                                                     (cons _L20446_ '())))))))
                                  _g2043220443_))))
                         (_g2043020461_
                          (_wrap19547_
                           (cons (gx#datum->syntax '#f 'defsyntax)
                                 (cons _L19603_
                                       (cons (cons _L20222_
                                                   (cons 'runtime-identifier:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _L19631_ '()))
                       (cons 'expander-identifiers:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons _L20250_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _L19631_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L19659_ '()))
                   (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _L19687_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (foldr (lambda (_g2046420471_
                                                     _g2046520474_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g2046420471_
                                                                '()))
                                                    _g2046520474_))
                                            '()
                                            _L19853_))
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (foldr (lambda (_g2046620477_
                                                           _g2046720480_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _g2046620477_ '()))
                  _g2046720480_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19924_))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons 'type-exhibitor:
                                         (cons (cons _L20278_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L20306_ '()))
                   (cons _L20334_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L20362_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L20390_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L20418_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons (foldr (lambda (_g2046820483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2046920486_)
                              (cons _g2046820483_ _g2046920486_))
                            '()
                            _L19782_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))))
                   _g2040420415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2040220489_
                                                   _plist20050_))))
                                            _g2037620387_))))
                                   (_g2037420493_
                                    (if (not (null? _type-ctor20006_))
                                        (cadr _type-ctor20006_)
                                        '#f)))))
                             _g2034820359_))))
                    (_g2034620497_ (cadr _type-name19976_)))))
              _g2032020331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2031820501_
                                              (let ((_quote-e20540_
                                                     (lambda (_x-ref20505_)
                                                       (if _x-ref20505_
                                                           (let* ((_g2050820516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2050920512_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2050920512_)))
                          (_g2050720536_
                           (lambda (_g2050920520_)
                             ((lambda (_L20523_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L20523_ '()))))
                              _g2050920520_))))
                     (_g2050720536_ _x-ref20505_))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _struct?19545_
                                                    (_quote-e20540_
                                                     _super-ref19542_)
                                                    (cons 'list
                                                          (map _quote-e20540_
                                                               _super-ref19542_))))))))
                                       _g2029220303_))))
                              (_g2029020543_
                               (if (not (null? _type-id19991_))
                                   (cadr _type-id19991_)
                                   '#f)))))
                        _g2026420275_))))
               (_g2026220547_
                (if _struct?19545_
                    (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                    (gx#datum->syntax '#f 'make-runtime-class-exhibitor))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2023620247_))))
                                        (_g2023420551_
                                         (if _struct?19545_
                                             (if _super19554_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _L19715_ '()))
                                                 '#f)
                                             (let* ((_g2055520572_
                                                     (lambda (_g2055620568_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2055620568_)))
                                                    (_g2055420633_
                                                     (lambda (_g2055620576_)
                                                       (if (gx#stx-pair/null?
                                                            _g2055620576_)
                                                           (let ((_g42120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2055620576_ '0)))
                     (begin
                       (let ((_g42121_
                              (if (##values? _g42120_)
                                  (##vector-length _g42120_)
                                  1)))
                         (if (not (##fx= _g42121_ 2))
                             (error "Context expects 2 values" _g42121_)))
                       (let ((_target2055820579_ (##vector-ref _g42120_ 0))
                             (_tl2056020582_ (##vector-ref _g42120_ 1)))
                         (if (gx#stx-null? _tl2056020582_)
                             (letrec ((_loop2056120585_
                                       (lambda (_hd2055920589_
                                                _super-id2056520592_)
                                         (if (gx#stx-pair? _hd2055920589_)
                                             (let ((_e2056220595_
                                                    (gx#syntax-e
                                                     _hd2055920589_)))
                                               (let ((_lp-hd2056320599_
                                                      (##car _e2056220595_))
                                                     (_lp-tl2056420602_
                                                      (##cdr _e2056220595_)))
                                                 (_loop2056120585_
                                                  _lp-tl2056420602_
                                                  (cons _lp-hd2056320599_
                                                        _super-id2056520592_))))
                                             (let ((_super-id2056620605_
                                                    (reverse _super-id2056520592_)))
                                               ((lambda (_L20609_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (foldr (lambda (_g2062420627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2062520630_)
                           (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _g2062420627_ '()))
                                 _g2062520630_))
                         '()
                         _L20609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _super-id2056620605_))))))
                               (_loop2056120585_ _target2055820579_ '()))
                             (_g2055520572_ _g2055620576_)))))
                   (_g2055520572_ _g2055620576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2055420633_ _L19715_)))))))
                                  _g2020820219_))))
                         (_g2020620637_
                          (if _struct?19545_
                              (gx#datum->syntax '#f 'make-extended-struct-info)
                              (gx#datum->syntax
                               '#f
                               'make-extended-class-info))))))
                   _g2018020191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2017820641_
                                                   (_wrap19547_
                                                    (cons _L19572_
                                                          (cons _L19631_
                                                                (cons _L19715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L19659_
                                    (cons _L19687_
                                          (foldr (lambda (_g2064420647_
                                                          _g2064520650_)
                                                   (cons _g2064420647_
                                                         _g2064520650_))
                                                 '()
                                                 _L20162_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _type-body2011920158_))))))
                           (_loop2011420138_ _target2011120132_ '()))
                         (_g2010820125_ _g2010920129_)))))
               (_g2010820125_ _g2010920129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2010720653_
                                            (foldr cons
                                                   (foldr cons
                                                          (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr cons
                                (foldr cons
                                       _type-unchecked20105_
                                       _type-plist20090_)
                                _type-ctor20006_)
                         _type-name19976_)
                  _type-id19991_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _type-attr19969_)))))
                                     _setf1988119920_))))))
                    (_loop1987619900_ _target1987319894_ '()))
                  (_g1987019887_ _g1987119891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1987019887_
                                                 _g1987119891_)))))
                                    (_g1986920657_
                                     (gx#stx-map
                                      (lambda (_g2066020662_)
                                        (_make-id19549_
                                         _name19551_
                                         '"-"
                                         _g2066020662_
                                         '"-set!"))
                                      _els19543_)))))
                              _getf1981019849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1980519829_
                                                      _target1980219823_
                                                      '()))
                                                   (_g1979919816_
                                                    _g1980019820_)))))
                                         (_g1979919816_ _g1980019820_)))))
                             (_g1979820666_
                              (gx#stx-map
                               (lambda (_g2066920671_)
                                 (_make-id19549_
                                  _name19551_
                                  '"-"
                                  _g2066920671_))
                               _els19543_)))))
                       _attr1973919778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1973419758_
                                               _target1973119752_
                                               '()))
                                            (_g1972819745_ _g1972919749_)))))
                                  (_g1972819745_ _g1972919749_)))))
                      (_g1972720675_ _els19543_))))
                _g1970119712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1969920679_
                                                (if _struct?19545_
                                                    (if _super19554_
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19554_)
                                                        '#f)
                                                    (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19554_))))))
                                         _g1967319684_))))
                                (_g1967120683_
                                 (_make-id19549_ _name19551_ '"?")))))
                          _g1964519656_))))
                 (_g1964320687_ (_make-id19549_ '"make-" _name19551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1961719628_))))
                                          (_g1961520691_
                                           (_make-id19549_
                                            _name19551_
                                            '"::t")))))
                                    _g1958919600_))))
                           (_g1958720695_ _id19541_))))
                     _g1955819569_))))
            (_g1955620699_
             (if _struct?19545_
                 (gx#datum->syntax '#f 'defstruct-type)
                 (gx#datum->syntax '#f 'defclass-type)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx21027_)
        (letrec ((_generate21030_
                  (lambda (_hd21114_ _fields21116_ _body21117_)
                    (let* ((___stx3904739048_ _hd21114_)
                           (_g2112021135_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3904739048_))))
                      (let ((___kont3905039051_
                             (lambda (_L21173_ _L21175_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx21027_
                                _L21175_
                                _L21173_
                                _fields21116_
                                _body21117_
                                '#t)))
                            (___kont3905239053_
                             (lambda ()
                               (if (gx#identifier? _hd21114_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx21027_
                                    _hd21114_
                                    '#f
                                    _fields21116_
                                    _body21117_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx21027_
                                    _hd21114_)))))
                        (let ((___match3906839069_
                               (lambda (_e2112421153_
                                        _hd2112521157_
                                        _tl2112621160_
                                        _e2112721163_
                                        _hd2112821167_
                                        _tl2112921170_)
                                 (let ((_L21173_ _hd2112821167_)
                                       (_L21175_ _hd2112521157_))
                                   (if (and (gx#identifier? _L21175_)
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                             _L21173_))
                                       (___kont3905039051_ _L21173_ _L21175_)
                                       (___kont3905239053_))))))
                          (if (gx#stx-pair? ___stx3904739048_)
                              (let ((_e2112421153_
                                     (gx#syntax-e ___stx3904739048_)))
                                (let ((_tl2112621160_ (##cdr _e2112421153_))
                                      (_hd2112521157_ (##car _e2112421153_)))
                                  (if (gx#stx-pair? _tl2112621160_)
                                      (let ((_e2112721163_
                                             (gx#syntax-e _tl2112621160_)))
                                        (let ((_tl2112921170_
                                               (##cdr _e2112721163_))
                                              (_hd2112821167_
                                               (##car _e2112721163_)))
                                          (if (gx#stx-null? _tl2112921170_)
                                              (___match3906839069_
                                               _e2112421153_
                                               _hd2112521157_
                                               _tl2112621160_
                                               _e2112721163_
                                               _hd2112821167_
                                               _tl2112921170_)
                                              (___kont3905239053_))))
                                      (___kont3905239053_))))
                              (___kont3905239053_))))))))
          (let* ((_g2103321052_
                  (lambda (_g2103421048_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2103421048_)))
                 (_g2103221110_
                  (lambda (_g2103421056_)
                    (if (gx#stx-pair? _g2103421056_)
                        (let ((_e2103821059_ (gx#syntax-e _g2103421056_)))
                          (let ((_hd2103921063_ (##car _e2103821059_))
                                (_tl2104021066_ (##cdr _e2103821059_)))
                            (if (gx#stx-pair? _tl2104021066_)
                                (let ((_e2104121069_
                                       (gx#syntax-e _tl2104021066_)))
                                  (let ((_hd2104221073_ (##car _e2104121069_))
                                        (_tl2104321076_ (##cdr _e2104121069_)))
                                    (if (gx#stx-pair? _tl2104321076_)
                                        (let ((_e2104421079_
                                               (gx#syntax-e _tl2104321076_)))
                                          (let ((_hd2104521083_
                                                 (##car _e2104421079_))
                                                (_tl2104621086_
                                                 (##cdr _e2104421079_)))
                                            ((lambda (_L21089_
                                                      _L21091_
                                                      _L21092_)
                                               (if (and (gx#identifier-list?
                                                         _L21091_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L21089_))
                                                   (_generate21030_
                                                    _L21092_
                                                    _L21091_
                                                    _L21089_)
                                                   (_g2103321052_
                                                    _g2103421056_)))
                                             _tl2104621086_
                                             _hd2104521083_
                                             _hd2104221073_)))
                                        (_g2103321052_ _g2103421056_))))
                                (_g2103321052_ _g2103421056_))))
                        (_g2103321052_ _g2103421056_)))))
            (_g2103221110_ _stx21027_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx21194_)
        (letrec ((_generate21197_
                  (lambda (_hd21281_ _slots21283_ _body21284_)
                    (let* ((___stx3907139072_ _hd21281_)
                           (_g2128721299_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3907139072_))))
                      (let ((___kont3907439075_
                             (lambda (_L21327_ _L21329_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx21194_
                                _L21329_
                                (gx#syntax->list _L21327_)
                                _slots21283_
                                _body21284_
                                '#f)))
                            (___kont3907639077_
                             (lambda ()
                               (if (gx#identifier? _hd21281_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx21194_
                                    _hd21281_
                                    '()
                                    _slots21283_
                                    _body21284_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx21194_
                                    _hd21281_)))))
                        (let ((___match3908439085_
                               (lambda (_e2129121317_
                                        _hd2129221321_
                                        _tl2129321324_)
                                 (let ((_L21327_ _tl2129321324_)
                                       (_L21329_ _hd2129221321_))
                                   (if (and (gx#stx-list? _L21327_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21327_))
                                       (___kont3907439075_ _L21327_ _L21329_)
                                       (___kont3907639077_))))))
                          (if (gx#stx-pair? ___stx3907139072_)
                              (let ((_e2129121317_
                                     (gx#syntax-e ___stx3907139072_)))
                                (let ((_tl2129321324_ (##cdr _e2129121317_))
                                      (_hd2129221321_ (##car _e2129121317_)))
                                  (___match3908439085_
                                   _e2129121317_
                                   _hd2129221321_
                                   _tl2129321324_)))
                              (___kont3907639077_))))))))
          (let* ((_g2120021219_
                  (lambda (_g2120121215_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2120121215_)))
                 (_g2119921277_
                  (lambda (_g2120121223_)
                    (if (gx#stx-pair? _g2120121223_)
                        (let ((_e2120521226_ (gx#syntax-e _g2120121223_)))
                          (let ((_hd2120621230_ (##car _e2120521226_))
                                (_tl2120721233_ (##cdr _e2120521226_)))
                            (if (gx#stx-pair? _tl2120721233_)
                                (let ((_e2120821236_
                                       (gx#syntax-e _tl2120721233_)))
                                  (let ((_hd2120921240_ (##car _e2120821236_))
                                        (_tl2121021243_ (##cdr _e2120821236_)))
                                    (if (gx#stx-pair? _tl2121021243_)
                                        (let ((_e2121121246_
                                               (gx#syntax-e _tl2121021243_)))
                                          (let ((_hd2121221250_
                                                 (##car _e2121121246_))
                                                (_tl2121321253_
                                                 (##cdr _e2121121246_)))
                                            ((lambda (_L21256_
                                                      _L21258_
                                                      _L21259_)
                                               (if (and (gx#identifier-list?
                                                         _L21258_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L21256_))
                                                   (_generate21197_
                                                    _L21259_
                                                    _L21258_
                                                    _L21256_)
                                                   (_g2120021219_
                                                    _g2120121223_)))
                                             _tl2121321253_
                                             _hd2121221250_
                                             _hd2120921240_)))
                                        (_g2120021219_ _g2120121223_))))
                                (_g2120021219_ _g2120121223_))))
                        (_g2120021219_ _g2120121223_)))))
            (_g2119921277_ _stx21194_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx21346_)
        (letrec ((_wrap21349_
                  (lambda (_e-stx21686_)
                    (gx#stx-wrap-source
                     _e-stx21686_
                     (gx#stx-source _stx21346_))))
                 (_method-opt?21351_
                  (lambda (_x21683_) (memq (gx#stx-e _x21683_) '(rebind:)))))
          (let* ((_g2135321382_
                  (lambda (_g2135421378_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2135421378_)))
                 (_g2135221679_
                  (lambda (_g2135421386_)
                    (if (gx#stx-pair? _g2135421386_)
                        (let ((_e2135921389_ (gx#syntax-e _g2135421386_)))
                          (let ((_hd2136021393_ (##car _e2135921389_))
                                (_tl2136121396_ (##cdr _e2135921389_)))
                            (if (gx#stx-pair? _tl2136121396_)
                                (let ((_e2136221399_
                                       (gx#syntax-e _tl2136121396_)))
                                  (let ((_hd2136321403_ (##car _e2136221399_))
                                        (_tl2136421406_ (##cdr _e2136221399_)))
                                    (if (gx#stx-pair? _hd2136321403_)
                                        (let ((_e2136521409_
                                               (gx#syntax-e _hd2136321403_)))
                                          (let ((_hd2136621413_
                                                 (##car _e2136521409_))
                                                (_tl2136721416_
                                                 (##cdr _e2136521409_)))
                                            (if (gx#identifier? _hd2136621413_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g42122_|
                                                     _hd2136621413_)
                                                    (if (gx#stx-pair?
                                                         _tl2136721416_)
                                                        (let ((_e2136821419_
                                                               (gx#syntax-e
                                                                _tl2136721416_)))
                                                          (let ((_hd2136921423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2136821419_))
                        (_tl2137021426_ (##cdr _e2136821419_)))
                    (if (gx#stx-pair? _tl2137021426_)
                        (let ((_e2137121429_ (gx#syntax-e _tl2137021426_)))
                          (let ((_hd2137221433_ (##car _e2137121429_))
                                (_tl2137321436_ (##cdr _e2137121429_)))
                            (if (gx#stx-null? _tl2137321436_)
                                (if (gx#stx-pair? _tl2136421406_)
                                    (let ((_e2137421439_
                                           (gx#syntax-e _tl2136421406_)))
                                      (let ((_hd2137521443_
                                             (##car _e2137421439_))
                                            (_tl2137621446_
                                             (##cdr _e2137421439_)))
                                        ((lambda (_L21449_
                                                  _L21451_
                                                  _L21452_
                                                  _L21453_)
                                           (if (and (gx#identifier? _L21453_)
                                                    (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                     _L21452_)
                                                    (gx#stx-plist?
                                                     _L21449_
                                                     _method-opt?21351_))
                                               (let* ((_klass21478_
                                                       (gx#syntax-local-value
                                                        _L21452_))
                                                      (_rebind?21481_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L21449_))
                                                           '#t
                                                           '#f))
                                                      (_g2148421492_
                                                       (lambda (_g2148521488_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2148521488_)))
                                                      (_g2148321675_
                                                       (lambda (_g2148521496_)
                                                         ((lambda (_L21499_)
                                                            (let ()
                                                              (let* ((_g2151321521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2151421517_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2151421517_)))
                             (_g2151221671_
                              (lambda (_g2151421525_)
                                ((lambda (_L21528_)
                                   (let ()
                                     (let* ((_g2154121549_
                                             (lambda (_g2154221545_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2154221545_)))
                                            (_g2154021667_
                                             (lambda (_g2154221553_)
                                               ((lambda (_L21556_)
                                                  (let ()
                                                    (let* ((_g2156921577_
                                                            (lambda (_g2157021573_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2157021573_)))
                                                           (_g2156821663_
                                                            (lambda (_g2157021581_)
                                                              ((lambda (_L21584_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2159721605_
                                   (lambda (_g2159821601_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2159821601_)))
                                  (_g2159621659_
                                   (lambda (_g2159821609_)
                                     ((lambda (_L21612_)
                                        (let ()
                                          (let* ((_g2162521633_
                                                  (lambda (_g2162621629_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2162621629_)))
                                                 (_g2162421655_
                                                  (lambda (_g2162621637_)
                                                    ((lambda (_L21640_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21349_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L21584_ (cons _L21640_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2162621637_))))
                                            (_g2162421655_
                                             (_wrap21349_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L21499_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L21453_ '()))
                        (cons _L21528_ (cons _L21612_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2159821609_))))
                             (_g2159621659_ _rebind?21481_))))
                       _g2157021581_))))
              (_g2156821663_
               (_wrap21349_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L21528_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L21556_
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
                                                            (cons _L21499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L21453_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L21451_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2154221553_))))
                                       (_g2154021667_
                                        (gx#stx-identifier
                                         _L21453_
                                         '@next-method)))))
                                 _g2151421525_))))
                        (_g2151221671_
                         (gx#stx-identifier
                          _L21453_
                          _L21452_
                          '"::"
                          _L21453_)))))
                  _g2148521496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2148321675_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass21478_)))
                                               (if (not (gx#identifier?
                                                         _L21453_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx21346_
                                                    _L21453_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                             _L21452_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx21346_
                                                        _L21452_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx21346_)))))
                                         _tl2137621446_
                                         _hd2137521443_
                                         _hd2137221433_
                                         _hd2136921423_)))
                                    (_g2135321382_ _g2135421386_))
                                (_g2135321382_ _g2135421386_))))
                        (_g2135321382_ _g2135421386_))))
                (_g2135321382_ _g2135421386_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2135321382_
                                                     _g2135421386_))
                                                (_g2135321382_
                                                 _g2135421386_))))
                                        (_g2135321382_ _g2135421386_))))
                                (_g2135321382_ _g2135421386_))))
                        (_g2135321382_ _g2135421386_)))))
            (_g2135221679_ _stx21346_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21689_)
        (let* ((___stx3908739088_ _$stx21689_)
               (_g2169421743_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3908739088_))))
          (let ((___kont3909039091_
                 (lambda (_L21909_ _L21911_ _L21912_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21911_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21912_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (foldr (lambda (_g2193921942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2194021945_)
                        (cons _g2193921942_ _g2194021945_))
                      '()
                      _L21909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3909439095_
                 (lambda (_L21810_ _L21812_ _L21813_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21812_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21813_ '()))
                                     (foldr (lambda (_g2183321836_
                                                     _g2183421839_)
                                              (cons _g2183321836_
                                                    _g2183421839_))
                                            '()
                                            _L21810_)))))))
            (let* ((___match3915039151_
                    (lambda (_e2172021750_
                             _hd2172121754_
                             _tl2172221757_
                             _e2172321760_
                             _hd2172421764_
                             _tl2172521767_
                             _e2172621770_
                             _hd2172721774_
                             _tl2172821777_
                             ___splice3909639097_
                             _target2172921780_
                             _tl2173121783_)
                      (letrec ((_loop2173221786_
                                (lambda (_hd2173021790_ _arg2173621793_)
                                  (if (gx#stx-pair? _hd2173021790_)
                                      (let ((_e2173321796_
                                             (gx#syntax-e _hd2173021790_)))
                                        (let ((_lp-tl2173521803_
                                               (##cdr _e2173321796_))
                                              (_lp-hd2173421800_
                                               (##car _e2173321796_)))
                                          (_loop2173221786_
                                           _lp-tl2173521803_
                                           (cons _lp-hd2173421800_
                                                 _arg2173621793_))))
                                      (let ((_arg2173721806_
                                             (reverse _arg2173621793_)))
                                        (let ((_L21810_ _arg2173721806_)
                                              (_L21812_ _hd2172721774_)
                                              (_L21813_ _hd2172421764_))
                                          (if (gx#identifier? _L21813_)
                                              (___kont3909439095_
                                               _L21810_
                                               _L21812_
                                               _L21813_)
                                              (_g2169421743_))))))))
                        (_loop2173221786_ _target2172921780_ '()))))
                   (___match3912439125_
                    (lambda (_e2169921849_
                             _hd2170021853_
                             _tl2170121856_
                             _e2170221859_
                             _hd2170321863_
                             _tl2170421866_
                             _e2170521869_
                             _hd2170621873_
                             _tl2170721876_
                             ___splice3909239093_
                             _target2170821879_
                             _tl2171021882_)
                      (letrec ((_loop2171121885_
                                (lambda (_hd2170921889_ _arg2171521892_)
                                  (if (gx#stx-pair? _hd2170921889_)
                                      (let ((_e2171221895_
                                             (gx#syntax-e _hd2170921889_)))
                                        (let ((_lp-tl2171421902_
                                               (##cdr _e2171221895_))
                                              (_lp-hd2171321899_
                                               (##car _e2171221895_)))
                                          (_loop2171121885_
                                           _lp-tl2171421902_
                                           (cons _lp-hd2171321899_
                                                 _arg2171521892_))))
                                      (let ((_arg2171621905_
                                             (reverse _arg2171521892_)))
                                        (let ((_L21909_ _arg2171621905_)
                                              (_L21911_ _hd2170621873_)
                                              (_L21912_ _hd2170321863_))
                                          (if (and (gx#identifier? _L21912_)
                                                   (gx#stx-ormap
                                                    gx#ellipsis?
                                                    (foldr (lambda (_g2193121934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2193221937_)
                     (cons _g2193121934_ _g2193221937_))
                   '()
                   _L21909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3909039091_
                                               _L21909_
                                               _L21911_
                                               _L21912_)
                                              (___match3915039151_
                                               _e2169921849_
                                               _hd2170021853_
                                               _tl2170121856_
                                               _e2170221859_
                                               _hd2170321863_
                                               _tl2170421866_
                                               _e2170521869_
                                               _hd2170621873_
                                               _tl2170721876_
                                               ___splice3909239093_
                                               _target2170821879_
                                               _tl2171021882_))))))))
                        (_loop2171121885_ _target2170821879_ '())))))
              (if (gx#stx-pair? ___stx3908739088_)
                  (let ((_e2169921849_ (gx#syntax-e ___stx3908739088_)))
                    (let ((_tl2170121856_ (##cdr _e2169921849_))
                          (_hd2170021853_ (##car _e2169921849_)))
                      (if (gx#stx-pair? _tl2170121856_)
                          (let ((_e2170221859_ (gx#syntax-e _tl2170121856_)))
                            (let ((_tl2170421866_ (##cdr _e2170221859_))
                                  (_hd2170321863_ (##car _e2170221859_)))
                              (if (gx#stx-pair? _tl2170421866_)
                                  (let ((_e2170521869_
                                         (gx#syntax-e _tl2170421866_)))
                                    (let ((_tl2170721876_
                                           (##cdr _e2170521869_))
                                          (_hd2170621873_
                                           (##car _e2170521869_)))
                                      (if (gx#stx-pair/null? _tl2170721876_)
                                          (let ((___splice3909239093_
                                                 (gx#syntax-split-splice
                                                  _tl2170721876_
                                                  '0)))
                                            (let ((_tl2171021882_
                                                   (##vector-ref
                                                    ___splice3909239093_
                                                    '1))
                                                  (_target2170821879_
                                                   (##vector-ref
                                                    ___splice3909239093_
                                                    '0)))
                                              (if (gx#stx-null? _tl2171021882_)
                                                  (___match3912439125_
                                                   _e2169921849_
                                                   _hd2170021853_
                                                   _tl2170121856_
                                                   _e2170221859_
                                                   _hd2170321863_
                                                   _tl2170421866_
                                                   _e2170521869_
                                                   _hd2170621873_
                                                   _tl2170721876_
                                                   ___splice3909239093_
                                                   _target2170821879_
                                                   _tl2171021882_)
                                                  (_g2169421743_))))
                                          (_g2169421743_))))
                                  (_g2169421743_))))
                          (_g2169421743_))))
                  (_g2169421743_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21954_)
        (let* ((___stx3915339154_ _$stx21954_)
               (_g2195921999_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3915339154_))))
          (let ((___kont3915639157_
                 (lambda (_L22137_ _L22139_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L22139_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22137_ '()))
                                     '())))))
                (___kont3915839159_
                 (lambda (_L22066_ _L22068_ _L22069_ _L22070_)
                   (cons _L22070_
                         (cons (cons _L22070_
                                     (cons _L22069_ (cons _L22068_ '())))
                               (foldr (lambda (_g2209122094_ _g2209222097_)
                                        (cons _g2209122094_ _g2209222097_))
                                      '()
                                      _L22066_))))))
            (let* ((___match3920839209_
                    (lambda (_e2197622006_
                             _hd2197722010_
                             _tl2197822013_
                             _e2197922016_
                             _hd2198022020_
                             _tl2198122023_
                             _e2198222026_
                             _hd2198322030_
                             _tl2198422033_
                             ___splice3916039161_
                             _target2198522036_
                             _tl2198722039_)
                      (letrec ((_loop2198822042_
                                (lambda (_hd2198622046_ _rest2199222049_)
                                  (if (gx#stx-pair? _hd2198622046_)
                                      (let ((_e2198922052_
                                             (gx#syntax-e _hd2198622046_)))
                                        (let ((_lp-tl2199122059_
                                               (##cdr _e2198922052_))
                                              (_lp-hd2199022056_
                                               (##car _e2198922052_)))
                                          (_loop2198822042_
                                           _lp-tl2199122059_
                                           (cons _lp-hd2199022056_
                                                 _rest2199222049_))))
                                      (let ((_rest2199322062_
                                             (reverse _rest2199222049_)))
                                        (___kont3915839159_
                                         _rest2199322062_
                                         _hd2198322030_
                                         _hd2198022020_
                                         _hd2197722010_))))))
                        (_loop2198822042_ _target2198522036_ '()))))
                   (___match3918239183_
                    (lambda (_e2196322107_
                             _hd2196422111_
                             _tl2196522114_
                             _e2196622117_
                             _hd2196722121_
                             _tl2196822124_
                             _e2196922127_
                             _hd2197022131_
                             _tl2197122134_)
                      (let ((_L22137_ _hd2197022131_)
                            (_L22139_ _hd2196722121_))
                        (if (gx#identifier? _L22137_)
                            (___kont3915639157_ _L22137_ _L22139_)
                            (if (gx#stx-pair/null? _tl2197122134_)
                                (let ((___splice3916039161_
                                       (gx#syntax-split-splice
                                        _tl2197122134_
                                        '0)))
                                  (let ((_tl2198722039_
                                         (##vector-ref
                                          ___splice3916039161_
                                          '1))
                                        (_target2198522036_
                                         (##vector-ref
                                          ___splice3916039161_
                                          '0)))
                                    (if (gx#stx-null? _tl2198722039_)
                                        (___match3920839209_
                                         _e2196322107_
                                         _hd2196422111_
                                         _tl2196522114_
                                         _e2196622117_
                                         _hd2196722121_
                                         _tl2196822124_
                                         _e2196922127_
                                         _hd2197022131_
                                         _tl2197122134_
                                         ___splice3916039161_
                                         _target2198522036_
                                         _tl2198722039_)
                                        (_g2195921999_))))
                                (_g2195921999_)))))))
              (if (gx#stx-pair? ___stx3915339154_)
                  (let ((_e2196322107_ (gx#syntax-e ___stx3915339154_)))
                    (let ((_tl2196522114_ (##cdr _e2196322107_))
                          (_hd2196422111_ (##car _e2196322107_)))
                      (if (gx#stx-pair? _tl2196522114_)
                          (let ((_e2196622117_ (gx#syntax-e _tl2196522114_)))
                            (let ((_tl2196822124_ (##cdr _e2196622117_))
                                  (_hd2196722121_ (##car _e2196622117_)))
                              (if (gx#stx-pair? _tl2196822124_)
                                  (let ((_e2196922127_
                                         (gx#syntax-e _tl2196822124_)))
                                    (let ((_tl2197122134_
                                           (##cdr _e2196922127_))
                                          (_hd2197022131_
                                           (##car _e2196922127_)))
                                      (if (gx#stx-null? _tl2197122134_)
                                          (___match3918239183_
                                           _e2196322107_
                                           _hd2196422111_
                                           _tl2196522114_
                                           _e2196622117_
                                           _hd2196722121_
                                           _tl2196822124_
                                           _e2196922127_
                                           _hd2197022131_
                                           _tl2197122134_)
                                          (if (gx#stx-pair/null?
                                               _tl2197122134_)
                                              (let ((___splice3916039161_
                                                     (gx#syntax-split-splice
                                                      _tl2197122134_
                                                      '0)))
                                                (let ((_tl2198722039_
                                                       (##vector-ref
                                                        ___splice3916039161_
                                                        '1))
                                                      (_target2198522036_
                                                       (##vector-ref
                                                        ___splice3916039161_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl2198722039_)
                                                      (___match3920839209_
                                                       _e2196322107_
                                                       _hd2196422111_
                                                       _tl2196522114_
                                                       _e2196622117_
                                                       _hd2196722121_
                                                       _tl2196822124_
                                                       _e2196922127_
                                                       _hd2197022131_
                                                       _tl2197122134_
                                                       ___splice3916039161_
                                                       _target2198522036_
                                                       _tl2198722039_)
                                                      (_g2195921999_))))
                                              (_g2195921999_)))))
                                  (_g2195921999_))))
                          (_g2195921999_))))
                  (_g2195921999_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx22159_)
        (let* ((___stx3921139212_ _$stx22159_)
               (_g2216422216_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3921139212_))))
          (let ((___kont3921439215_
                 (lambda (_L22392_ _L22394_ _L22395_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22395_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22394_ '()))
                                     (cons _L22392_ '()))))))
                (___kont3921639217_
                 (lambda (_L22303_
                          _L22305_
                          _L22306_
                          _L22307_
                          _L22308_
                          _L22309_)
                   (cons _L22309_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22308_
                                           (cons _L22307_
                                                 (foldr (lambda (_g2233622339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2233722342_)
                  (cons _g2233622339_ _g2233722342_))
                '()
                _L22306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22305_ (cons _L22303_ '())))))))
            (let* ((___match3928639287_
                    (lambda (_e2218722223_
                             _hd2218822227_
                             _tl2218922230_
                             _e2219022233_
                             _hd2219122237_
                             _tl2219222240_
                             _e2219322243_
                             _hd2219422247_
                             _tl2219522250_
                             ___splice3921839219_
                             _target2219622253_
                             _tl2219822256_
                             _e2220522259_
                             _hd2220622263_
                             _tl2220722266_
                             _e2220822269_
                             _hd2220922273_
                             _tl2221022276_)
                      (letrec ((_loop2219922279_
                                (lambda (_hd2219722283_ _path2220322286_)
                                  (if (gx#stx-pair? _hd2219722283_)
                                      (let ((_e2220022289_
                                             (gx#syntax-e _hd2219722283_)))
                                        (let ((_lp-tl2220222296_
                                               (##cdr _e2220022289_))
                                              (_lp-hd2220122293_
                                               (##car _e2220022289_)))
                                          (_loop2219922279_
                                           _lp-tl2220222296_
                                           (cons _lp-hd2220122293_
                                                 _path2220322286_))))
                                      (let ((_path2220422299_
                                             (reverse _path2220322286_)))
                                        (___kont3921639217_
                                         _hd2220922273_
                                         _hd2220622263_
                                         _path2220422299_
                                         _hd2219422247_
                                         _hd2219122237_
                                         _hd2218822227_))))))
                        (_loop2219922279_ _target2219622253_ '()))))
                   (___match3924639247_
                    (lambda (_e2216922352_
                             _hd2217022356_
                             _tl2217122359_
                             _e2217222362_
                             _hd2217322366_
                             _tl2217422369_
                             _e2217522372_
                             _hd2217622376_
                             _tl2217722379_
                             _e2217822382_
                             _hd2217922386_
                             _tl2218022389_)
                      (let ((_L22392_ _hd2217922386_)
                            (_L22394_ _hd2217622376_)
                            (_L22395_ _hd2217322366_))
                        (if (gx#identifier? _L22394_)
                            (___kont3921439215_ _L22392_ _L22394_ _L22395_)
                            (if (gx#stx-pair/null? _tl2217722379_)
                                (if (fx>= (gx#stx-length _tl2217722379_) '2)
                                    (let ((___splice3921839219_
                                           (gx#syntax-split-splice
                                            _tl2217722379_
                                            '2)))
                                      (let ((_tl2219822256_
                                             (##vector-ref
                                              ___splice3921839219_
                                              '1))
                                            (_target2219622253_
                                             (##vector-ref
                                              ___splice3921839219_
                                              '0)))
                                        (if (gx#stx-pair? _tl2219822256_)
                                            (let ((_e2220522259_
                                                   (gx#syntax-e
                                                    _tl2219822256_)))
                                              (let ((_tl2220722266_
                                                     (##cdr _e2220522259_))
                                                    (_hd2220622263_
                                                     (##car _e2220522259_)))
                                                (if (gx#stx-pair?
                                                     _tl2220722266_)
                                                    (let ((_e2220822269_
                                                           (gx#syntax-e
                                                            _tl2220722266_)))
                                                      (let ((_tl2221022276_
                                                             (##cdr _e2220822269_))
                                                            (_hd2220922273_
                                                             (##car _e2220822269_)))
                                                        (if (gx#stx-null?
                                                             _tl2221022276_)
                                                            (___match3928639287_
                                                             _e2216922352_
                                                             _hd2217022356_
                                                             _tl2217122359_
                                                             _e2217222362_
                                                             _hd2217322366_
                                                             _tl2217422369_
                                                             _e2217522372_
                                                             _hd2217622376_
                                                             _tl2217722379_
                                                             ___splice3921839219_
                                                             _target2219622253_
                                                             _tl2219822256_
                                                             _e2220522259_
                                                             _hd2220622263_
                                                             _tl2220722266_
                                                             _e2220822269_
                                                             _hd2220922273_
                                                             _tl2221022276_)
                                                            (_g2216422216_))))
                                                    (_g2216422216_))))
                                            (_g2216422216_))))
                                    (_g2216422216_))
                                (_g2216422216_)))))))
              (if (gx#stx-pair? ___stx3921139212_)
                  (let ((_e2216922352_ (gx#syntax-e ___stx3921139212_)))
                    (let ((_tl2217122359_ (##cdr _e2216922352_))
                          (_hd2217022356_ (##car _e2216922352_)))
                      (if (gx#stx-pair? _tl2217122359_)
                          (let ((_e2217222362_ (gx#syntax-e _tl2217122359_)))
                            (let ((_tl2217422369_ (##cdr _e2217222362_))
                                  (_hd2217322366_ (##car _e2217222362_)))
                              (if (gx#stx-pair? _tl2217422369_)
                                  (let ((_e2217522372_
                                         (gx#syntax-e _tl2217422369_)))
                                    (let ((_tl2217722379_
                                           (##cdr _e2217522372_))
                                          (_hd2217622376_
                                           (##car _e2217522372_)))
                                      (if (gx#stx-pair? _tl2217722379_)
                                          (let ((_e2217822382_
                                                 (gx#syntax-e _tl2217722379_)))
                                            (let ((_tl2218022389_
                                                   (##cdr _e2217822382_))
                                                  (_hd2217922386_
                                                   (##car _e2217822382_)))
                                              (if (gx#stx-null? _tl2218022389_)
                                                  (___match3924639247_
                                                   _e2216922352_
                                                   _hd2217022356_
                                                   _tl2217122359_
                                                   _e2217222362_
                                                   _hd2217322366_
                                                   _tl2217422369_
                                                   _e2217522372_
                                                   _hd2217622376_
                                                   _tl2217722379_
                                                   _e2217822382_
                                                   _hd2217922386_
                                                   _tl2218022389_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2217722379_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2217722379_)
                        '2)
                  (let ((___splice3921839219_
                         (gx#syntax-split-splice _tl2217722379_ '2)))
                    (let ((_tl2219822256_
                           (##vector-ref ___splice3921839219_ '1))
                          (_target2219622253_
                           (##vector-ref ___splice3921839219_ '0)))
                      (if (gx#stx-pair? _tl2219822256_)
                          (let ((_e2220522259_ (gx#syntax-e _tl2219822256_)))
                            (let ((_tl2220722266_ (##cdr _e2220522259_))
                                  (_hd2220622263_ (##car _e2220522259_)))
                              (if (gx#stx-pair? _tl2220722266_)
                                  (let ((_e2220822269_
                                         (gx#syntax-e _tl2220722266_)))
                                    (let ((_tl2221022276_
                                           (##cdr _e2220822269_))
                                          (_hd2220922273_
                                           (##car _e2220822269_)))
                                      (if (gx#stx-null? _tl2221022276_)
                                          (___match3928639287_
                                           _e2216922352_
                                           _hd2217022356_
                                           _tl2217122359_
                                           _e2217222362_
                                           _hd2217322366_
                                           _tl2217422369_
                                           _e2217522372_
                                           _hd2217622376_
                                           _tl2217722379_
                                           ___splice3921839219_
                                           _target2219622253_
                                           _tl2219822256_
                                           _e2220522259_
                                           _hd2220622263_
                                           _tl2220722266_
                                           _e2220822269_
                                           _hd2220922273_
                                           _tl2221022276_)
                                          (_g2216422216_))))
                                  (_g2216422216_))))
                          (_g2216422216_))))
                  (_g2216422216_))
              (_g2216422216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2217722379_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2217722379_)
                                                        '2)
                                                  (let ((___splice3921839219_
                                                         (gx#syntax-split-splice
                                                          _tl2217722379_
                                                          '2)))
                                                    (let ((_tl2219822256_
                                                           (##vector-ref
                                                            ___splice3921839219_
                                                            '1))
                                                          (_target2219622253_
                                                           (##vector-ref
                                                            ___splice3921839219_
                                                            '0)))
                                                      (if (gx#stx-pair?
                                                           _tl2219822256_)
                                                          (let ((_e2220522259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2219822256_)))
                    (let ((_tl2220722266_ (##cdr _e2220522259_))
                          (_hd2220622263_ (##car _e2220522259_)))
                      (if (gx#stx-pair? _tl2220722266_)
                          (let ((_e2220822269_ (gx#syntax-e _tl2220722266_)))
                            (let ((_tl2221022276_ (##cdr _e2220822269_))
                                  (_hd2220922273_ (##car _e2220822269_)))
                              (if (gx#stx-null? _tl2221022276_)
                                  (___match3928639287_
                                   _e2216922352_
                                   _hd2217022356_
                                   _tl2217122359_
                                   _e2217222362_
                                   _hd2217322366_
                                   _tl2217422369_
                                   _e2217522372_
                                   _hd2217622376_
                                   _tl2217722379_
                                   ___splice3921839219_
                                   _target2219622253_
                                   _tl2219822256_
                                   _e2220522259_
                                   _hd2220622263_
                                   _tl2220722266_
                                   _e2220822269_
                                   _hd2220922273_
                                   _tl2221022276_)
                                  (_g2216422216_))))
                          (_g2216422216_))))
                  (_g2216422216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2216422216_))
                                              (_g2216422216_)))))
                                  (_g2216422216_))))
                          (_g2216422216_))))
                  (_g2216422216_)))))))))
