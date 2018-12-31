(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g41942_|
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
      (lambda _$args20888_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20888_)))
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
      (lambda _$args20884_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20884_)))
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
      (lambda _$args20880_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20880_)))
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
      (lambda _$args20876_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20876_)))
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
      (lambda _$args20872_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20872_)))
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
      (lambda _$args20868_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20868_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20842_ _is?20844_)
        (if (gx#identifier? _stx20842_)
            (let ((_e2084520847_ (gx#syntax-local-value _stx20842_ false)))
              (if _e2084520847_
                  (let ((_e20851_ _e2084520847_))
                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                         _e20851_)
                        (_is?20844_ _e20851_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20858_)
        (let ((_is?20861_ true))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20858_
           _is?20861_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g41928_
        (let ((_g41927_ (length _g41928_)))
          (cond ((##fx= _g41927_ 1)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                        _g41928_))
                ((##fx= _g41927_ 2)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                        _g41928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g41928_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20838_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20838_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20835_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20835_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20829_)
        (if _id20829_
            (let ((_info20832_ (gx#syntax-local-value _id20829_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20832_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20832_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20594_ _stx20596_)
        (let* ((_g2059820618_
                (lambda (_g2059920614_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2059920614_)))
               (_g2059720825_
                (lambda (_g2059920622_)
                  (if (gx#stx-pair? _g2059920622_)
                      (let ((_e2060120625_ (gx#syntax-e _g2059920622_)))
                        (let ((_hd2060220629_ (##car _e2060120625_))
                              (_tl2060320632_ (##cdr _e2060120625_)))
                          (if (gx#stx-pair/null? _tl2060320632_)
                              (let ((_g41929_
                                     (gx#syntax-split-splice
                                      _tl2060320632_
                                      '0)))
                                (begin
                                  (let ((_g41930_
                                         (if (##values? _g41929_)
                                             (##vector-length _g41929_)
                                             1)))
                                    (if (not (##fx= _g41930_ 2))
                                        (error "Context expects 2 values"
                                               _g41930_)))
                                  (let ((_target2060420635_
                                         (##vector-ref _g41929_ 0))
                                        (_tl2060620638_
                                         (##vector-ref _g41929_ 1)))
                                    (if (gx#stx-null? _tl2060620638_)
                                        (letrec ((_loop2060720641_
                                                  (lambda (_hd2060520645_
                                                           _arg2061120648_)
                                                    (if (gx#stx-pair?
                                                         _hd2060520645_)
                                                        (let ((_e2060820651_
                                                               (gx#syntax-e
                                                                _hd2060520645_)))
                                                          (let ((_lp-hd2060920655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2060820651_))
                        (_lp-tl2061020658_ (##cdr _e2060820651_)))
                    (_loop2060720641_
                     _lp-tl2061020658_
                     (cons _lp-hd2060920655_ _arg2061120648_))))
                (let ((_arg2061220661_ (reverse _arg2061120648_)))
                  ((lambda (_L20665_)
                     (let* ((_g2068120712_
                             (lambda (_g2068220708_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2068220708_)))
                            (_g2068020821_
                             (lambda (_g2068220716_)
                               (if (gx#stx-pair? _g2068220716_)
                                   (let ((_e2068920719_
                                          (gx#syntax-e _g2068220716_)))
                                     (let ((_hd2069020723_
                                            (##car _e2068920719_))
                                           (_tl2069120726_
                                            (##cdr _e2068920719_)))
                                       (if (gx#stx-pair? _tl2069120726_)
                                           (let ((_e2069220729_
                                                  (gx#syntax-e
                                                   _tl2069120726_)))
                                             (let ((_hd2069320733_
                                                    (##car _e2069220729_))
                                                   (_tl2069420736_
                                                    (##cdr _e2069220729_)))
                                               (if (gx#stx-pair?
                                                    _tl2069420736_)
                                                   (let ((_e2069520739_
                                                          (gx#syntax-e
                                                           _tl2069420736_)))
                                                     (let ((_hd2069620743_
                                                            (##car _e2069520739_))
                                                           (_tl2069720746_
                                                            (##cdr _e2069520739_)))
                                                       (if (gx#stx-pair?
                                                            _tl2069720746_)
                                                           (let ((_e2069820749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2069720746_)))
                     (let ((_hd2069920753_ (##car _e2069820749_))
                           (_tl2070020756_ (##cdr _e2069820749_)))
                       (if (gx#stx-pair? _tl2070020756_)
                           (let ((_e2070120759_ (gx#syntax-e _tl2070020756_)))
                             (let ((_hd2070220763_ (##car _e2070120759_))
                                   (_tl2070320766_ (##cdr _e2070120759_)))
                               (if (gx#stx-pair? _tl2070320766_)
                                   (let ((_e2070420769_
                                          (gx#syntax-e _tl2070320766_)))
                                     (let ((_hd2070520773_
                                            (##car _e2070420769_))
                                           (_tl2070620776_
                                            (##cdr _e2070420769_)))
                                       (if (gx#stx-null? _tl2070620776_)
                                           ((lambda (_L20779_
                                                     _L20781_
                                                     _L20782_
                                                     _L20783_
                                                     _L20784_
                                                     _L20785_)
                                              (let ()
                                                (cons _L20783_
                                                      (foldr (lambda (_g2081220815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2081320818_)
                       (cons _g2081220815_ _g2081320818_))
                     '()
                     _L20665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2070520773_
                                            _hd2070220763_
                                            _hd2069920753_
                                            _hd2069620743_
                                            _hd2069320733_
                                            _hd2069020723_)
                                           (_g2068120712_ _g2068220716_))))
                                   (_g2068120712_ _g2068220716_))))
                           (_g2068120712_ _g2068220716_))))
                   (_g2068120712_ _g2068220716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2068120712_
                                                    _g2068220716_))))
                                           (_g2068120712_ _g2068220716_))))
                                   (_g2068120712_ _g2068220716_)))))
                       (_g2068020821_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                         _self20594_))))
                   _arg2061220661_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2060720641_
                                           _target2060420635_
                                           '()))
                                        (_g2059820618_ _g2059920622_)))))
                              (_g2059820618_ _g2059920622_))))
                      (_g2059820618_ _g2059920622_)))))
          (_g2059720825_ _stx20596_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20585_)
        (letrec ((_body-opt?20588_
                  (lambda (_key20591_)
                    (memq (gx#stx-e _key20591_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20585_ _body-opt?20588_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx19413_
               _id19415_
               _super-ref19416_
               _els19417_
               _body19418_
               _struct?19419_)
        (letrec* ((_wrap19421_
                   (lambda (_e-stx20582_)
                     (gx#stx-wrap-source
                      _e-stx20582_
                      (gx#stx-source _stx19413_))))
                  (_make-id19423_
                   (if (uninterned-symbol? (gx#stx-e _id19415_))
                       (lambda _g41931_ (gx#genident _id19415_))
                       (lambda _args20579_
                         (apply gx#stx-identifier _id19415_ _args20579_)))))
          (gx#check-duplicate-identifiers _els19417_ _stx19413_)
          (let* ((_name19425_ (symbol->string (gx#stx-e _id19415_)))
                 (_super19428_
                  (if _struct?19419_
                      (if _super-ref19416_
                          (gx#syntax-local-value _super-ref19416_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19416_)))
                 (_g1943119439_
                  (lambda (_g1943219435_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1943219435_)))
                 (_g1943020573_
                  (lambda (_g1943219443_)
                    ((lambda (_L19446_)
                       (let ()
                         (let* ((_g1946219470_
                                 (lambda (_g1946319466_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1946319466_)))
                                (_g1946120569_
                                 (lambda (_g1946319474_)
                                   ((lambda (_L19477_)
                                      (let ()
                                        (let* ((_g1949019498_
                                                (lambda (_g1949119494_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1949119494_)))
                                               (_g1948920565_
                                                (lambda (_g1949119502_)
                                                  ((lambda (_L19505_)
                                                     (let ()
                                                       (let* ((_g1951819526_
                                                               (lambda (_g1951919522_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1951919522_)))
                      (_g1951720561_
                       (lambda (_g1951919530_)
                         ((lambda (_L19533_)
                            (let ()
                              (let* ((_g1954619554_
                                      (lambda (_g1954719550_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1954719550_)))
                                     (_g1954520557_
                                      (lambda (_g1954719558_)
                                        ((lambda (_L19561_)
                                           (let ()
                                             (let* ((_g1957419582_
                                                     (lambda (_g1957519578_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1957519578_)))
                                                    (_g1957320553_
                                                     (lambda (_g1957519586_)
                                                       ((lambda (_L19589_)
                                                          (let ()
                                                            (let* ((_g1960219619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1960319615_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1960319615_)))
                           (_g1960120549_
                            (lambda (_g1960319623_)
                              (if (gx#stx-pair/null? _g1960319623_)
                                  (let ((_g41932_
                                         (gx#syntax-split-splice
                                          _g1960319623_
                                          '0)))
                                    (begin
                                      (let ((_g41933_
                                             (if (##values? _g41932_)
                                                 (##vector-length _g41932_)
                                                 1)))
                                        (if (not (##fx= _g41933_ 2))
                                            (error "Context expects 2 values"
                                                   _g41933_)))
                                      (let ((_target1960519626_
                                             (##vector-ref _g41932_ 0))
                                            (_tl1960719629_
                                             (##vector-ref _g41932_ 1)))
                                        (if (gx#stx-null? _tl1960719629_)
                                            (letrec ((_loop1960819632_
                                                      (lambda (_hd1960619636_
                                                               _attr1961219639_)
                                                        (if (gx#stx-pair?
                                                             _hd1960619636_)
                                                            (let ((_e1960919642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1960619636_)))
                      (let ((_lp-hd1961019646_ (##car _e1960919642_))
                            (_lp-tl1961119649_ (##cdr _e1960919642_)))
                        (_loop1960819632_
                         _lp-tl1961119649_
                         (cons _lp-hd1961019646_ _attr1961219639_))))
                    (let ((_attr1961319652_ (reverse _attr1961219639_)))
                      ((lambda (_L19656_)
                         (let ()
                           (let* ((_g1967319690_
                                   (lambda (_g1967419686_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1967419686_)))
                                  (_g1967220540_
                                   (lambda (_g1967419694_)
                                     (if (gx#stx-pair/null? _g1967419694_)
                                         (let ((_g41934_
                                                (gx#syntax-split-splice
                                                 _g1967419694_
                                                 '0)))
                                           (begin
                                             (let ((_g41935_
                                                    (if (##values? _g41934_)
                                                        (##vector-length
                                                         _g41934_)
                                                        1)))
                                               (if (not (##fx= _g41935_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41935_)))
                                             (let ((_target1967619697_
                                                    (##vector-ref _g41934_ 0))
                                                   (_tl1967819700_
                                                    (##vector-ref _g41934_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1967819700_)
                                                   (letrec ((_loop1967919703_
                                                             (lambda (_hd1967719707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1968319710_)
                       (if (gx#stx-pair? _hd1967719707_)
                           (let ((_e1968019713_ (gx#syntax-e _hd1967719707_)))
                             (let ((_lp-hd1968119717_ (##car _e1968019713_))
                                   (_lp-tl1968219720_ (##cdr _e1968019713_)))
                               (_loop1967919703_
                                _lp-tl1968219720_
                                (cons _lp-hd1968119717_ _getf1968319710_))))
                           (let ((_getf1968419723_ (reverse _getf1968319710_)))
                             ((lambda (_L19727_)
                                (let ()
                                  (let* ((_g1974419761_
                                          (lambda (_g1974519757_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1974519757_)))
                                         (_g1974320531_
                                          (lambda (_g1974519765_)
                                            (if (gx#stx-pair/null?
                                                 _g1974519765_)
                                                (let ((_g41936_
                                                       (gx#syntax-split-splice
                                                        _g1974519765_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41937_
                                                           (if (##values?
                                                                _g41936_)
                                                               (##vector-length
                                                                _g41936_)
                                                               1)))
                                                      (if (not (##fx= _g41937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41937_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1974719768_
                                                           (##vector-ref
                                                            _g41936_
                                                            0))
                                                          (_tl1974919771_
                                                           (##vector-ref
                                                            _g41936_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1974919771_)
                                                          (letrec ((_loop1975019774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1974819778_ _setf1975419781_)
                              (if (gx#stx-pair? _hd1974819778_)
                                  (let ((_e1975119784_
                                         (gx#syntax-e _hd1974819778_)))
                                    (let ((_lp-hd1975219788_
                                           (##car _e1975119784_))
                                          (_lp-tl1975319791_
                                           (##cdr _e1975119784_)))
                                      (_loop1975019774_
                                       _lp-tl1975319791_
                                       (cons _lp-hd1975219788_
                                             _setf1975419781_))))
                                  (let ((_setf1975519794_
                                         (reverse _setf1975419781_)))
                                    ((lambda (_L19798_)
                                       (let ()
                                         (let* ((_type-attr19843_
                                                 (if (gx#stx-null? _els19417_)
                                                     '()
                                                     (if _struct?19419_
                                                         (cons 'fields:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L19798_
                                _L19727_
                                _L19656_)
                               (foldr (lambda (_g1981419819_
                                               _g1981519822_
                                               _g1981619824_
                                               _g1981719826_)
                                        (cons (cons _g1981619824_
                                                    (cons _g1981519822_
                                                          (cons _g1981419819_
                                                                '())))
                                              _g1981719826_))
                                      '()
                                      _L19798_
                                      _L19727_
                                      _L19656_))
                             '()))
                 (cons 'slots:
                       (cons (begin
                               (gx#syntax-check-splice-targets
                                _L19798_
                                _L19727_
                                _L19656_)
                               (foldr (lambda (_g1982819833_
                                               _g1982919836_
                                               _g1983019838_
                                               _g1983119840_)
                                        (cons (cons _g1983019838_
                                                    (cons _g1982919836_
                                                          (cons _g1982819833_
                                                                '())))
                                              _g1983119840_))
                                      '()
                                      _L19798_
                                      _L19727_
                                      _L19656_))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19850_
                                                 (cons 'name:
                                                       (cons (let ((_$e19846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body19418_)))
                       (if _$e19846_ _$e19846_ _id19415_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19865_
                                                 (let ((_$e19861_
                                                        (let ((_e1985219854_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body19418_)))
                                                          (if _e1985219854_
                                                              (let ((_e19858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1985219854_))
                        (cons 'id: (cons _e19858_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19861_
                                                       _$e19861_
                                                       '())))
                                                (_type-ctor19880_
                                                 (let ((_$e19876_
                                                        (let ((_e1986719869_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body19418_)))
                                                          (if _e1986719869_
                                                              (let ((_e19873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1986719869_))
                        (cons 'constructor: (cons _e19873_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19876_
                                                       _$e19876_
                                                       '())))
                                                (_plist19924_
                                                 (let* ((_plist19887_
                                                         (let ((_$e19883_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'plist:
                         _body19418_)))
                   (if _$e19883_ _$e19883_ '())))
                (_plist19890_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body19418_))
                     (cons (cons 'transparent: '#t) _plist19887_)
                     _plist19887_))
                (_plist19893_
                 (if (gx#stx-e (gx#stx-getq 'final: _body19418_))
                     (cons (cons 'final: '#t) _plist19890_)
                     _plist19890_))
                (_plist19906_
                 (let ((_$e19896_
                        (gx#stx-e (gx#stx-getq 'print: _body19418_))))
                   (if _$e19896_
                       ((lambda (_print19900_)
                          (let ((_print19903_
                                 (if (eq? _print19900_ '#t)
                                     _els19417_
                                     _print19900_)))
                            (cons (cons 'print: _print19903_) _plist19893_)))
                        _$e19896_)
                       _plist19893_)))
                (_plist19919_
                 (let ((_$e19909_
                        (gx#stx-e (gx#stx-getq 'equal: _body19418_))))
                   (if _$e19909_
                       ((lambda (_equal19913_)
                          (let ((_equal19916_
                                 (if (eq? _equal19913_ '#t)
                                     _els19417_
                                     _equal19913_)))
                            (cons (cons 'equal: _equal19916_) _plist19906_)))
                        _$e19909_)
                       _plist19906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _plist19919_))
                                                (_type-plist19964_
                                                 (if (null? _plist19924_)
                                                     _plist19924_
                                                     (let* ((_g1992719935_
                                                             (lambda (_g1992819931_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1992819931_)))
                                                            (_g1992619960_
                                                             (lambda (_g1992819939_)
                                                               ((lambda (_L19942_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'plist:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L19942_ '()))
                                        '()))))
                        _g1992819939_))))
               (_g1992619960_ _plist19924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked19979_
                                                 (let ((_$e19975_
                                                        (let ((_e1996619968_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body19418_)))
                                                          (if _e1996619968_
                                                              (let ((_e19972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1996619968_))
                        (cons 'unchecked: (cons _e19972_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19975_
                                                       _$e19975_
                                                       '())))
                                                (_g1998219999_
                                                 (lambda (_g1998319995_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1998319995_)))
                                                (_g1998120527_
                                                 (lambda (_g1998320003_)
                                                   (if (gx#stx-pair/null?
                                                        _g1998320003_)
                                                       (let ((_g41938_
                                                              (gx#syntax-split-splice
                                                               _g1998320003_
                                                               '0)))
                                                         (begin
                                                           (let ((_g41939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g41938_)
                              (##vector-length _g41938_)
                              1)))
                     (if (not (##fx= _g41939_ 2))
                         (error "Context expects 2 values" _g41939_)))
                   (let ((_target1998520006_ (##vector-ref _g41938_ 0))
                         (_tl1998720009_ (##vector-ref _g41938_ 1)))
                     (if (gx#stx-null? _tl1998720009_)
                         (letrec ((_loop1998820012_
                                   (lambda (_hd1998620016_
                                            _type-body1999220019_)
                                     (if (gx#stx-pair? _hd1998620016_)
                                         (let ((_e1998920022_
                                                (gx#syntax-e _hd1998620016_)))
                                           (let ((_lp-hd1999020026_
                                                  (##car _e1998920022_))
                                                 (_lp-tl1999120029_
                                                  (##cdr _e1998920022_)))
                                             (_loop1998820012_
                                              _lp-tl1999120029_
                                              (cons _lp-hd1999020026_
                                                    _type-body1999220019_))))
                                         (let ((_type-body1999320032_
                                                (reverse _type-body1999220019_)))
                                           ((lambda (_L20036_)
                                              (let ()
                                                (let* ((_g2005320061_
                                                        (lambda (_g2005420057_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2005420057_)))
                                                       (_g2005220515_
                                                        (lambda (_g2005420065_)
                                                          ((lambda (_L20068_)
                                                             (let ()
                                                               (let* ((_g2008120089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2008220085_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2008220085_)))
                              (_g2008020511_
                               (lambda (_g2008220093_)
                                 ((lambda (_L20096_)
                                    (let ()
                                      (let* ((_g2010920117_
                                              (lambda (_g2011020113_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2011020113_)))
                                             (_g2010820425_
                                              (lambda (_g2011020121_)
                                                ((lambda (_L20124_)
                                                   (let ()
                                                     (let* ((_g2013720145_
                                                             (lambda (_g2013820141_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2013820141_)))
                                                            (_g2013620421_
                                                             (lambda (_g2013820149_)
                                                               ((lambda (_L20152_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2016520173_
                                    (lambda (_g2016620169_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2016620169_)))
                                   (_g2016420417_
                                    (lambda (_g2016620177_)
                                      ((lambda (_L20180_)
                                         (let ()
                                           (let* ((_g2019320201_
                                                   (lambda (_g2019420197_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2019420197_)))
                                                  (_g2019220375_
                                                   (lambda (_g2019420205_)
                                                     ((lambda (_L20208_)
                                                        (let ()
                                                          (let* ((_g2022120229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2022220225_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2022220225_)))
                         (_g2022020371_
                          (lambda (_g2022220233_)
                            ((lambda (_L20236_)
                               (let ()
                                 (let* ((_g2024920257_
                                         (lambda (_g2025020253_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2025020253_)))
                                        (_g2024820367_
                                         (lambda (_g2025020261_)
                                           ((lambda (_L20264_)
                                              (let ()
                                                (let* ((_g2027720285_
                                                        (lambda (_g2027820281_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2027820281_)))
                                                       (_g2027620363_
                                                        (lambda (_g2027820289_)
                                                          ((lambda (_L20292_)
                                                             (let ()
                                                               (let* ((_g2030520313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2030620309_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2030620309_)))
                              (_g2030420335_
                               (lambda (_g2030620317_)
                                 ((lambda (_L20320_)
                                    (let ()
                                      (let ()
                                        (_wrap19421_
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons _L20068_
                                                     (cons _L20320_ '())))))))
                                  _g2030620317_))))
                         (_g2030420335_
                          (_wrap19421_
                           (cons (gx#datum->syntax '#f 'defsyntax)
                                 (cons _L19477_
                                       (cons (cons _L20096_
                                                   (cons 'runtime-identifier:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _L19505_ '()))
                       (cons 'expander-identifiers:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons _L20124_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _L19505_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L19533_ '()))
                   (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _L19561_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (foldr (lambda (_g2033820345_
                                                     _g2033920348_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g2033820345_
                                                                '()))
                                                    _g2033920348_))
                                            '()
                                            _L19727_))
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (foldr (lambda (_g2034020351_
                                                           _g2034120354_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _g2034020351_ '()))
                  _g2034120354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19798_))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons 'type-exhibitor:
                                         (cons (cons _L20152_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L20180_ '()))
                   (cons _L20208_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L20236_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L20264_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L20292_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons (foldr (lambda (_g2034220357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2034320360_)
                              (cons _g2034220357_ _g2034320360_))
                            '()
                            _L19656_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))))
                   _g2027820289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2027620363_
                                                   _plist19924_))))
                                            _g2025020261_))))
                                   (_g2024820367_
                                    (if (not (null? _type-ctor19880_))
                                        (cadr _type-ctor19880_)
                                        '#f)))))
                             _g2022220233_))))
                    (_g2022020371_ (cadr _type-name19850_)))))
              _g2019420205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2019220375_
                                              (let ((_quote-e20414_
                                                     (lambda (_x-ref20379_)
                                                       (if _x-ref20379_
                                                           (let* ((_g2038220390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2038320386_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2038320386_)))
                          (_g2038120410_
                           (lambda (_g2038320394_)
                             ((lambda (_L20397_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L20397_ '()))))
                              _g2038320394_))))
                     (_g2038120410_ _x-ref20379_))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _struct?19419_
                                                    (_quote-e20414_
                                                     _super-ref19416_)
                                                    (cons 'list
                                                          (map _quote-e20414_
                                                               _super-ref19416_))))))))
                                       _g2016620177_))))
                              (_g2016420417_
                               (if (not (null? _type-id19865_))
                                   (cadr _type-id19865_)
                                   '#f)))))
                        _g2013820149_))))
               (_g2013620421_
                (if _struct?19419_
                    (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                    (gx#datum->syntax '#f 'make-runtime-class-exhibitor))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2011020121_))))
                                        (_g2010820425_
                                         (if _struct?19419_
                                             (if _super19428_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _L19589_ '()))
                                                 '#f)
                                             (let* ((_g2042920446_
                                                     (lambda (_g2043020442_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2043020442_)))
                                                    (_g2042820507_
                                                     (lambda (_g2043020450_)
                                                       (if (gx#stx-pair/null?
                                                            _g2043020450_)
                                                           (let ((_g41940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2043020450_ '0)))
                     (begin
                       (let ((_g41941_
                              (if (##values? _g41940_)
                                  (##vector-length _g41940_)
                                  1)))
                         (if (not (##fx= _g41941_ 2))
                             (error "Context expects 2 values" _g41941_)))
                       (let ((_target2043220453_ (##vector-ref _g41940_ 0))
                             (_tl2043420456_ (##vector-ref _g41940_ 1)))
                         (if (gx#stx-null? _tl2043420456_)
                             (letrec ((_loop2043520459_
                                       (lambda (_hd2043320463_
                                                _super-id2043920466_)
                                         (if (gx#stx-pair? _hd2043320463_)
                                             (let ((_e2043620469_
                                                    (gx#syntax-e
                                                     _hd2043320463_)))
                                               (let ((_lp-hd2043720473_
                                                      (##car _e2043620469_))
                                                     (_lp-tl2043820476_
                                                      (##cdr _e2043620469_)))
                                                 (_loop2043520459_
                                                  _lp-tl2043820476_
                                                  (cons _lp-hd2043720473_
                                                        _super-id2043920466_))))
                                             (let ((_super-id2044020479_
                                                    (reverse _super-id2043920466_)))
                                               ((lambda (_L20483_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (foldr (lambda (_g2049820501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2049920504_)
                           (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _g2049820501_ '()))
                                 _g2049920504_))
                         '()
                         _L20483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _super-id2044020479_))))))
                               (_loop2043520459_ _target2043220453_ '()))
                             (_g2042920446_ _g2043020450_)))))
                   (_g2042920446_ _g2043020450_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2042820507_ _L19589_)))))))
                                  _g2008220093_))))
                         (_g2008020511_
                          (if _struct?19419_
                              (gx#datum->syntax '#f 'make-extended-struct-info)
                              (gx#datum->syntax
                               '#f
                               'make-extended-class-info))))))
                   _g2005420065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2005220515_
                                                   (_wrap19421_
                                                    (cons _L19446_
                                                          (cons _L19505_
                                                                (cons _L19589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L19533_
                                    (cons _L19561_
                                          (foldr (lambda (_g2051820521_
                                                          _g2051920524_)
                                                   (cons _g2051820521_
                                                         _g2051920524_))
                                                 '()
                                                 _L20036_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _type-body1999320032_))))))
                           (_loop1998820012_ _target1998520006_ '()))
                         (_g1998219999_ _g1998320003_)))))
               (_g1998219999_ _g1998320003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1998120527_
                                            (foldr cons
                                                   (foldr cons
                                                          (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr cons
                                (foldr cons
                                       _type-unchecked19979_
                                       _type-plist19964_)
                                _type-ctor19880_)
                         _type-name19850_)
                  _type-id19865_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _type-attr19843_)))))
                                     _setf1975519794_))))))
                    (_loop1975019774_ _target1974719768_ '()))
                  (_g1974419761_ _g1974519765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1974419761_
                                                 _g1974519765_)))))
                                    (_g1974320531_
                                     (gx#stx-map
                                      (lambda (_g2053420536_)
                                        (_make-id19423_
                                         _name19425_
                                         '"-"
                                         _g2053420536_
                                         '"-set!"))
                                      _els19417_)))))
                              _getf1968419723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1967919703_
                                                      _target1967619697_
                                                      '()))
                                                   (_g1967319690_
                                                    _g1967419694_)))))
                                         (_g1967319690_ _g1967419694_)))))
                             (_g1967220540_
                              (gx#stx-map
                               (lambda (_g2054320545_)
                                 (_make-id19423_
                                  _name19425_
                                  '"-"
                                  _g2054320545_))
                               _els19417_)))))
                       _attr1961319652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1960819632_
                                               _target1960519626_
                                               '()))
                                            (_g1960219619_ _g1960319623_)))))
                                  (_g1960219619_ _g1960319623_)))))
                      (_g1960120549_ _els19417_))))
                _g1957519586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1957320553_
                                                (if _struct?19419_
                                                    (if _super19428_
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19428_)
                                                        '#f)
                                                    (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19428_))))))
                                         _g1954719558_))))
                                (_g1954520557_
                                 (_make-id19423_ _name19425_ '"?")))))
                          _g1951919530_))))
                 (_g1951720561_ (_make-id19423_ '"make-" _name19425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1949119502_))))
                                          (_g1948920565_
                                           (_make-id19423_
                                            _name19425_
                                            '"::t")))))
                                    _g1946319474_))))
                           (_g1946120569_ _id19415_))))
                     _g1943219443_))))
            (_g1943020573_
             (if _struct?19419_
                 (gx#datum->syntax '#f 'defstruct-type)
                 (gx#datum->syntax '#f 'defclass-type)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20901_)
        (letrec ((_generate20904_
                  (lambda (_hd20988_ _fields20990_ _body20991_)
                    (let* ((___stx3886938870_ _hd20988_)
                           (_g2099421009_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3886938870_))))
                      (let ((___kont3887238873_
                             (lambda (_L21047_ _L21049_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20901_
                                _L21049_
                                _L21047_
                                _fields20990_
                                _body20991_
                                '#t)))
                            (___kont3887438875_
                             (lambda ()
                               (if (gx#identifier? _hd20988_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20901_
                                    _hd20988_
                                    '#f
                                    _fields20990_
                                    _body20991_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20901_
                                    _hd20988_)))))
                        (let ((___match3889038891_
                               (lambda (_e2099821027_
                                        _hd2099921031_
                                        _tl2100021034_
                                        _e2100121037_
                                        _hd2100221041_
                                        _tl2100321044_)
                                 (let ((_L21047_ _hd2100221041_)
                                       (_L21049_ _hd2099921031_))
                                   (if (and (gx#identifier? _L21049_)
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                             _L21047_))
                                       (___kont3887238873_ _L21047_ _L21049_)
                                       (___kont3887438875_))))))
                          (if (gx#stx-pair? ___stx3886938870_)
                              (let ((_e2099821027_
                                     (gx#syntax-e ___stx3886938870_)))
                                (let ((_tl2100021034_ (##cdr _e2099821027_))
                                      (_hd2099921031_ (##car _e2099821027_)))
                                  (if (gx#stx-pair? _tl2100021034_)
                                      (let ((_e2100121037_
                                             (gx#syntax-e _tl2100021034_)))
                                        (let ((_tl2100321044_
                                               (##cdr _e2100121037_))
                                              (_hd2100221041_
                                               (##car _e2100121037_)))
                                          (if (gx#stx-null? _tl2100321044_)
                                              (___match3889038891_
                                               _e2099821027_
                                               _hd2099921031_
                                               _tl2100021034_
                                               _e2100121037_
                                               _hd2100221041_
                                               _tl2100321044_)
                                              (___kont3887438875_))))
                                      (___kont3887438875_))))
                              (___kont3887438875_))))))))
          (let* ((_g2090720926_
                  (lambda (_g2090820922_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2090820922_)))
                 (_g2090620984_
                  (lambda (_g2090820930_)
                    (if (gx#stx-pair? _g2090820930_)
                        (let ((_e2091220933_ (gx#syntax-e _g2090820930_)))
                          (let ((_hd2091320937_ (##car _e2091220933_))
                                (_tl2091420940_ (##cdr _e2091220933_)))
                            (if (gx#stx-pair? _tl2091420940_)
                                (let ((_e2091520943_
                                       (gx#syntax-e _tl2091420940_)))
                                  (let ((_hd2091620947_ (##car _e2091520943_))
                                        (_tl2091720950_ (##cdr _e2091520943_)))
                                    (if (gx#stx-pair? _tl2091720950_)
                                        (let ((_e2091820953_
                                               (gx#syntax-e _tl2091720950_)))
                                          (let ((_hd2091920957_
                                                 (##car _e2091820953_))
                                                (_tl2092020960_
                                                 (##cdr _e2091820953_)))
                                            ((lambda (_L20963_
                                                      _L20965_
                                                      _L20966_)
                                               (if (and (gx#identifier-list?
                                                         _L20965_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L20963_))
                                                   (_generate20904_
                                                    _L20966_
                                                    _L20965_
                                                    _L20963_)
                                                   (_g2090720926_
                                                    _g2090820930_)))
                                             _tl2092020960_
                                             _hd2091920957_
                                             _hd2091620947_)))
                                        (_g2090720926_ _g2090820930_))))
                                (_g2090720926_ _g2090820930_))))
                        (_g2090720926_ _g2090820930_)))))
            (_g2090620984_ _stx20901_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx21068_)
        (letrec ((_generate21071_
                  (lambda (_hd21155_ _slots21157_ _body21158_)
                    (let* ((___stx3889338894_ _hd21155_)
                           (_g2116121173_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3889338894_))))
                      (let ((___kont3889638897_
                             (lambda (_L21201_ _L21203_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx21068_
                                _L21203_
                                (gx#syntax->list _L21201_)
                                _slots21157_
                                _body21158_
                                '#f)))
                            (___kont3889838899_
                             (lambda ()
                               (if (gx#identifier? _hd21155_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx21068_
                                    _hd21155_
                                    '()
                                    _slots21157_
                                    _body21158_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx21068_
                                    _hd21155_)))))
                        (let ((___match3890638907_
                               (lambda (_e2116521191_
                                        _hd2116621195_
                                        _tl2116721198_)
                                 (let ((_L21201_ _tl2116721198_)
                                       (_L21203_ _hd2116621195_))
                                   (if (and (gx#stx-list? _L21201_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21201_))
                                       (___kont3889638897_ _L21201_ _L21203_)
                                       (___kont3889838899_))))))
                          (if (gx#stx-pair? ___stx3889338894_)
                              (let ((_e2116521191_
                                     (gx#syntax-e ___stx3889338894_)))
                                (let ((_tl2116721198_ (##cdr _e2116521191_))
                                      (_hd2116621195_ (##car _e2116521191_)))
                                  (___match3890638907_
                                   _e2116521191_
                                   _hd2116621195_
                                   _tl2116721198_)))
                              (___kont3889838899_))))))))
          (let* ((_g2107421093_
                  (lambda (_g2107521089_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2107521089_)))
                 (_g2107321151_
                  (lambda (_g2107521097_)
                    (if (gx#stx-pair? _g2107521097_)
                        (let ((_e2107921100_ (gx#syntax-e _g2107521097_)))
                          (let ((_hd2108021104_ (##car _e2107921100_))
                                (_tl2108121107_ (##cdr _e2107921100_)))
                            (if (gx#stx-pair? _tl2108121107_)
                                (let ((_e2108221110_
                                       (gx#syntax-e _tl2108121107_)))
                                  (let ((_hd2108321114_ (##car _e2108221110_))
                                        (_tl2108421117_ (##cdr _e2108221110_)))
                                    (if (gx#stx-pair? _tl2108421117_)
                                        (let ((_e2108521120_
                                               (gx#syntax-e _tl2108421117_)))
                                          (let ((_hd2108621124_
                                                 (##car _e2108521120_))
                                                (_tl2108721127_
                                                 (##cdr _e2108521120_)))
                                            ((lambda (_L21130_
                                                      _L21132_
                                                      _L21133_)
                                               (if (and (gx#identifier-list?
                                                         _L21132_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L21130_))
                                                   (_generate21071_
                                                    _L21133_
                                                    _L21132_
                                                    _L21130_)
                                                   (_g2107421093_
                                                    _g2107521097_)))
                                             _tl2108721127_
                                             _hd2108621124_
                                             _hd2108321114_)))
                                        (_g2107421093_ _g2107521097_))))
                                (_g2107421093_ _g2107521097_))))
                        (_g2107421093_ _g2107521097_)))))
            (_g2107321151_ _stx21068_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx21220_)
        (letrec ((_wrap21223_
                  (lambda (_e-stx21560_)
                    (gx#stx-wrap-source
                     _e-stx21560_
                     (gx#stx-source _stx21220_))))
                 (_method-opt?21225_
                  (lambda (_x21557_) (memq (gx#stx-e _x21557_) '(rebind:)))))
          (let* ((_g2122721256_
                  (lambda (_g2122821252_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2122821252_)))
                 (_g2122621553_
                  (lambda (_g2122821260_)
                    (if (gx#stx-pair? _g2122821260_)
                        (let ((_e2123321263_ (gx#syntax-e _g2122821260_)))
                          (let ((_hd2123421267_ (##car _e2123321263_))
                                (_tl2123521270_ (##cdr _e2123321263_)))
                            (if (gx#stx-pair? _tl2123521270_)
                                (let ((_e2123621273_
                                       (gx#syntax-e _tl2123521270_)))
                                  (let ((_hd2123721277_ (##car _e2123621273_))
                                        (_tl2123821280_ (##cdr _e2123621273_)))
                                    (if (gx#stx-pair? _hd2123721277_)
                                        (let ((_e2123921283_
                                               (gx#syntax-e _hd2123721277_)))
                                          (let ((_hd2124021287_
                                                 (##car _e2123921283_))
                                                (_tl2124121290_
                                                 (##cdr _e2123921283_)))
                                            (if (gx#identifier? _hd2124021287_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g41942_|
                                                     _hd2124021287_)
                                                    (if (gx#stx-pair?
                                                         _tl2124121290_)
                                                        (let ((_e2124221293_
                                                               (gx#syntax-e
                                                                _tl2124121290_)))
                                                          (let ((_hd2124321297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2124221293_))
                        (_tl2124421300_ (##cdr _e2124221293_)))
                    (if (gx#stx-pair? _tl2124421300_)
                        (let ((_e2124521303_ (gx#syntax-e _tl2124421300_)))
                          (let ((_hd2124621307_ (##car _e2124521303_))
                                (_tl2124721310_ (##cdr _e2124521303_)))
                            (if (gx#stx-null? _tl2124721310_)
                                (if (gx#stx-pair? _tl2123821280_)
                                    (let ((_e2124821313_
                                           (gx#syntax-e _tl2123821280_)))
                                      (let ((_hd2124921317_
                                             (##car _e2124821313_))
                                            (_tl2125021320_
                                             (##cdr _e2124821313_)))
                                        ((lambda (_L21323_
                                                  _L21325_
                                                  _L21326_
                                                  _L21327_)
                                           (if (and (gx#identifier? _L21327_)
                                                    (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                     _L21326_)
                                                    (gx#stx-plist?
                                                     _L21323_
                                                     _method-opt?21225_))
                                               (let* ((_klass21352_
                                                       (gx#syntax-local-value
                                                        _L21326_))
                                                      (_rebind?21355_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L21323_))
                                                           '#t
                                                           '#f))
                                                      (_g2135821366_
                                                       (lambda (_g2135921362_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2135921362_)))
                                                      (_g2135721549_
                                                       (lambda (_g2135921370_)
                                                         ((lambda (_L21373_)
                                                            (let ()
                                                              (let* ((_g2138721395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2138821391_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2138821391_)))
                             (_g2138621545_
                              (lambda (_g2138821399_)
                                ((lambda (_L21402_)
                                   (let ()
                                     (let* ((_g2141521423_
                                             (lambda (_g2141621419_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2141621419_)))
                                            (_g2141421541_
                                             (lambda (_g2141621427_)
                                               ((lambda (_L21430_)
                                                  (let ()
                                                    (let* ((_g2144321451_
                                                            (lambda (_g2144421447_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2144421447_)))
                                                           (_g2144221537_
                                                            (lambda (_g2144421455_)
                                                              ((lambda (_L21458_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2147121479_
                                   (lambda (_g2147221475_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2147221475_)))
                                  (_g2147021533_
                                   (lambda (_g2147221483_)
                                     ((lambda (_L21486_)
                                        (let ()
                                          (let* ((_g2149921507_
                                                  (lambda (_g2150021503_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2150021503_)))
                                                 (_g2149821529_
                                                  (lambda (_g2150021511_)
                                                    ((lambda (_L21514_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21223_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L21458_ (cons _L21514_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2150021511_))))
                                            (_g2149821529_
                                             (_wrap21223_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L21373_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L21327_ '()))
                        (cons _L21402_ (cons _L21486_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2147221483_))))
                             (_g2147021533_ _rebind?21355_))))
                       _g2144421455_))))
              (_g2144221537_
               (_wrap21223_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L21402_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L21430_
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
                                                            (cons _L21373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L21327_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L21325_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2141621427_))))
                                       (_g2141421541_
                                        (gx#stx-identifier
                                         _L21327_
                                         '@next-method)))))
                                 _g2138821399_))))
                        (_g2138621545_
                         (gx#stx-identifier
                          _L21327_
                          _L21326_
                          '"::"
                          _L21327_)))))
                  _g2135921370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2135721549_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass21352_)))
                                               (if (not (gx#identifier?
                                                         _L21327_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx21220_
                                                    _L21327_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                             _L21326_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx21220_
                                                        _L21326_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx21220_)))))
                                         _tl2125021320_
                                         _hd2124921317_
                                         _hd2124621307_
                                         _hd2124321297_)))
                                    (_g2122721256_ _g2122821260_))
                                (_g2122721256_ _g2122821260_))))
                        (_g2122721256_ _g2122821260_))))
                (_g2122721256_ _g2122821260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2122721256_
                                                     _g2122821260_))
                                                (_g2122721256_
                                                 _g2122821260_))))
                                        (_g2122721256_ _g2122821260_))))
                                (_g2122721256_ _g2122821260_))))
                        (_g2122721256_ _g2122821260_)))))
            (_g2122621553_ _stx21220_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21563_)
        (let* ((___stx3890938910_ _$stx21563_)
               (_g2156821617_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3890938910_))))
          (let ((___kont3891238913_
                 (lambda (_L21783_ _L21785_ _L21786_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21785_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21786_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (foldr (lambda (_g2181321816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2181421819_)
                        (cons _g2181321816_ _g2181421819_))
                      '()
                      _L21783_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3891638917_
                 (lambda (_L21684_ _L21686_ _L21687_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21686_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21687_ '()))
                                     (foldr (lambda (_g2170721710_
                                                     _g2170821713_)
                                              (cons _g2170721710_
                                                    _g2170821713_))
                                            '()
                                            _L21684_)))))))
            (let* ((___match3897238973_
                    (lambda (_e2159421624_
                             _hd2159521628_
                             _tl2159621631_
                             _e2159721634_
                             _hd2159821638_
                             _tl2159921641_
                             _e2160021644_
                             _hd2160121648_
                             _tl2160221651_
                             ___splice3891838919_
                             _target2160321654_
                             _tl2160521657_)
                      (letrec ((_loop2160621660_
                                (lambda (_hd2160421664_ _arg2161021667_)
                                  (if (gx#stx-pair? _hd2160421664_)
                                      (let ((_e2160721670_
                                             (gx#syntax-e _hd2160421664_)))
                                        (let ((_lp-tl2160921677_
                                               (##cdr _e2160721670_))
                                              (_lp-hd2160821674_
                                               (##car _e2160721670_)))
                                          (_loop2160621660_
                                           _lp-tl2160921677_
                                           (cons _lp-hd2160821674_
                                                 _arg2161021667_))))
                                      (let ((_arg2161121680_
                                             (reverse _arg2161021667_)))
                                        (let ((_L21684_ _arg2161121680_)
                                              (_L21686_ _hd2160121648_)
                                              (_L21687_ _hd2159821638_))
                                          (if (gx#identifier? _L21687_)
                                              (___kont3891638917_
                                               _L21684_
                                               _L21686_
                                               _L21687_)
                                              (_g2156821617_))))))))
                        (_loop2160621660_ _target2160321654_ '()))))
                   (___match3894638947_
                    (lambda (_e2157321723_
                             _hd2157421727_
                             _tl2157521730_
                             _e2157621733_
                             _hd2157721737_
                             _tl2157821740_
                             _e2157921743_
                             _hd2158021747_
                             _tl2158121750_
                             ___splice3891438915_
                             _target2158221753_
                             _tl2158421756_)
                      (letrec ((_loop2158521759_
                                (lambda (_hd2158321763_ _arg2158921766_)
                                  (if (gx#stx-pair? _hd2158321763_)
                                      (let ((_e2158621769_
                                             (gx#syntax-e _hd2158321763_)))
                                        (let ((_lp-tl2158821776_
                                               (##cdr _e2158621769_))
                                              (_lp-hd2158721773_
                                               (##car _e2158621769_)))
                                          (_loop2158521759_
                                           _lp-tl2158821776_
                                           (cons _lp-hd2158721773_
                                                 _arg2158921766_))))
                                      (let ((_arg2159021779_
                                             (reverse _arg2158921766_)))
                                        (let ((_L21783_ _arg2159021779_)
                                              (_L21785_ _hd2158021747_)
                                              (_L21786_ _hd2157721737_))
                                          (if (and (gx#identifier? _L21786_)
                                                   (gx#stx-ormap
                                                    gx#ellipsis?
                                                    (foldr (lambda (_g2180521808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2180621811_)
                     (cons _g2180521808_ _g2180621811_))
                   '()
                   _L21783_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3891238913_
                                               _L21783_
                                               _L21785_
                                               _L21786_)
                                              (___match3897238973_
                                               _e2157321723_
                                               _hd2157421727_
                                               _tl2157521730_
                                               _e2157621733_
                                               _hd2157721737_
                                               _tl2157821740_
                                               _e2157921743_
                                               _hd2158021747_
                                               _tl2158121750_
                                               ___splice3891438915_
                                               _target2158221753_
                                               _tl2158421756_))))))))
                        (_loop2158521759_ _target2158221753_ '())))))
              (if (gx#stx-pair? ___stx3890938910_)
                  (let ((_e2157321723_ (gx#syntax-e ___stx3890938910_)))
                    (let ((_tl2157521730_ (##cdr _e2157321723_))
                          (_hd2157421727_ (##car _e2157321723_)))
                      (if (gx#stx-pair? _tl2157521730_)
                          (let ((_e2157621733_ (gx#syntax-e _tl2157521730_)))
                            (let ((_tl2157821740_ (##cdr _e2157621733_))
                                  (_hd2157721737_ (##car _e2157621733_)))
                              (if (gx#stx-pair? _tl2157821740_)
                                  (let ((_e2157921743_
                                         (gx#syntax-e _tl2157821740_)))
                                    (let ((_tl2158121750_
                                           (##cdr _e2157921743_))
                                          (_hd2158021747_
                                           (##car _e2157921743_)))
                                      (if (gx#stx-pair/null? _tl2158121750_)
                                          (let ((___splice3891438915_
                                                 (gx#syntax-split-splice
                                                  _tl2158121750_
                                                  '0)))
                                            (let ((_tl2158421756_
                                                   (##vector-ref
                                                    ___splice3891438915_
                                                    '1))
                                                  (_target2158221753_
                                                   (##vector-ref
                                                    ___splice3891438915_
                                                    '0)))
                                              (if (gx#stx-null? _tl2158421756_)
                                                  (___match3894638947_
                                                   _e2157321723_
                                                   _hd2157421727_
                                                   _tl2157521730_
                                                   _e2157621733_
                                                   _hd2157721737_
                                                   _tl2157821740_
                                                   _e2157921743_
                                                   _hd2158021747_
                                                   _tl2158121750_
                                                   ___splice3891438915_
                                                   _target2158221753_
                                                   _tl2158421756_)
                                                  (_g2156821617_))))
                                          (_g2156821617_))))
                                  (_g2156821617_))))
                          (_g2156821617_))))
                  (_g2156821617_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21828_)
        (let* ((___stx3897538976_ _$stx21828_)
               (_g2183321873_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3897538976_))))
          (let ((___kont3897838979_
                 (lambda (_L22011_ _L22013_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L22013_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22011_ '()))
                                     '())))))
                (___kont3898038981_
                 (lambda (_L21940_ _L21942_ _L21943_ _L21944_)
                   (cons _L21944_
                         (cons (cons _L21944_
                                     (cons _L21943_ (cons _L21942_ '())))
                               (foldr (lambda (_g2196521968_ _g2196621971_)
                                        (cons _g2196521968_ _g2196621971_))
                                      '()
                                      _L21940_))))))
            (let* ((___match3903039031_
                    (lambda (_e2185021880_
                             _hd2185121884_
                             _tl2185221887_
                             _e2185321890_
                             _hd2185421894_
                             _tl2185521897_
                             _e2185621900_
                             _hd2185721904_
                             _tl2185821907_
                             ___splice3898238983_
                             _target2185921910_
                             _tl2186121913_)
                      (letrec ((_loop2186221916_
                                (lambda (_hd2186021920_ _rest2186621923_)
                                  (if (gx#stx-pair? _hd2186021920_)
                                      (let ((_e2186321926_
                                             (gx#syntax-e _hd2186021920_)))
                                        (let ((_lp-tl2186521933_
                                               (##cdr _e2186321926_))
                                              (_lp-hd2186421930_
                                               (##car _e2186321926_)))
                                          (_loop2186221916_
                                           _lp-tl2186521933_
                                           (cons _lp-hd2186421930_
                                                 _rest2186621923_))))
                                      (let ((_rest2186721936_
                                             (reverse _rest2186621923_)))
                                        (___kont3898038981_
                                         _rest2186721936_
                                         _hd2185721904_
                                         _hd2185421894_
                                         _hd2185121884_))))))
                        (_loop2186221916_ _target2185921910_ '()))))
                   (___match3900439005_
                    (lambda (_e2183721981_
                             _hd2183821985_
                             _tl2183921988_
                             _e2184021991_
                             _hd2184121995_
                             _tl2184221998_
                             _e2184322001_
                             _hd2184422005_
                             _tl2184522008_)
                      (let ((_L22011_ _hd2184422005_)
                            (_L22013_ _hd2184121995_))
                        (if (gx#identifier? _L22011_)
                            (___kont3897838979_ _L22011_ _L22013_)
                            (if (gx#stx-pair/null? _tl2184522008_)
                                (let ((___splice3898238983_
                                       (gx#syntax-split-splice
                                        _tl2184522008_
                                        '0)))
                                  (let ((_tl2186121913_
                                         (##vector-ref
                                          ___splice3898238983_
                                          '1))
                                        (_target2185921910_
                                         (##vector-ref
                                          ___splice3898238983_
                                          '0)))
                                    (if (gx#stx-null? _tl2186121913_)
                                        (___match3903039031_
                                         _e2183721981_
                                         _hd2183821985_
                                         _tl2183921988_
                                         _e2184021991_
                                         _hd2184121995_
                                         _tl2184221998_
                                         _e2184322001_
                                         _hd2184422005_
                                         _tl2184522008_
                                         ___splice3898238983_
                                         _target2185921910_
                                         _tl2186121913_)
                                        (_g2183321873_))))
                                (_g2183321873_)))))))
              (if (gx#stx-pair? ___stx3897538976_)
                  (let ((_e2183721981_ (gx#syntax-e ___stx3897538976_)))
                    (let ((_tl2183921988_ (##cdr _e2183721981_))
                          (_hd2183821985_ (##car _e2183721981_)))
                      (if (gx#stx-pair? _tl2183921988_)
                          (let ((_e2184021991_ (gx#syntax-e _tl2183921988_)))
                            (let ((_tl2184221998_ (##cdr _e2184021991_))
                                  (_hd2184121995_ (##car _e2184021991_)))
                              (if (gx#stx-pair? _tl2184221998_)
                                  (let ((_e2184322001_
                                         (gx#syntax-e _tl2184221998_)))
                                    (let ((_tl2184522008_
                                           (##cdr _e2184322001_))
                                          (_hd2184422005_
                                           (##car _e2184322001_)))
                                      (if (gx#stx-null? _tl2184522008_)
                                          (___match3900439005_
                                           _e2183721981_
                                           _hd2183821985_
                                           _tl2183921988_
                                           _e2184021991_
                                           _hd2184121995_
                                           _tl2184221998_
                                           _e2184322001_
                                           _hd2184422005_
                                           _tl2184522008_)
                                          (if (gx#stx-pair/null?
                                               _tl2184522008_)
                                              (let ((___splice3898238983_
                                                     (gx#syntax-split-splice
                                                      _tl2184522008_
                                                      '0)))
                                                (let ((_tl2186121913_
                                                       (##vector-ref
                                                        ___splice3898238983_
                                                        '1))
                                                      (_target2185921910_
                                                       (##vector-ref
                                                        ___splice3898238983_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl2186121913_)
                                                      (___match3903039031_
                                                       _e2183721981_
                                                       _hd2183821985_
                                                       _tl2183921988_
                                                       _e2184021991_
                                                       _hd2184121995_
                                                       _tl2184221998_
                                                       _e2184322001_
                                                       _hd2184422005_
                                                       _tl2184522008_
                                                       ___splice3898238983_
                                                       _target2185921910_
                                                       _tl2186121913_)
                                                      (_g2183321873_))))
                                              (_g2183321873_)))))
                                  (_g2183321873_))))
                          (_g2183321873_))))
                  (_g2183321873_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx22033_)
        (let* ((___stx3903339034_ _$stx22033_)
               (_g2203822090_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3903339034_))))
          (let ((___kont3903639037_
                 (lambda (_L22266_ _L22268_ _L22269_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22269_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22268_ '()))
                                     (cons _L22266_ '()))))))
                (___kont3903839039_
                 (lambda (_L22177_
                          _L22179_
                          _L22180_
                          _L22181_
                          _L22182_
                          _L22183_)
                   (cons _L22183_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22182_
                                           (cons _L22181_
                                                 (foldr (lambda (_g2221022213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2221122216_)
                  (cons _g2221022213_ _g2221122216_))
                '()
                _L22180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22179_ (cons _L22177_ '())))))))
            (let* ((___match3910839109_
                    (lambda (_e2206122097_
                             _hd2206222101_
                             _tl2206322104_
                             _e2206422107_
                             _hd2206522111_
                             _tl2206622114_
                             _e2206722117_
                             _hd2206822121_
                             _tl2206922124_
                             ___splice3904039041_
                             _target2207022127_
                             _tl2207222130_
                             _e2207922133_
                             _hd2208022137_
                             _tl2208122140_
                             _e2208222143_
                             _hd2208322147_
                             _tl2208422150_)
                      (letrec ((_loop2207322153_
                                (lambda (_hd2207122157_ _path2207722160_)
                                  (if (gx#stx-pair? _hd2207122157_)
                                      (let ((_e2207422163_
                                             (gx#syntax-e _hd2207122157_)))
                                        (let ((_lp-tl2207622170_
                                               (##cdr _e2207422163_))
                                              (_lp-hd2207522167_
                                               (##car _e2207422163_)))
                                          (_loop2207322153_
                                           _lp-tl2207622170_
                                           (cons _lp-hd2207522167_
                                                 _path2207722160_))))
                                      (let ((_path2207822173_
                                             (reverse _path2207722160_)))
                                        (___kont3903839039_
                                         _hd2208322147_
                                         _hd2208022137_
                                         _path2207822173_
                                         _hd2206822121_
                                         _hd2206522111_
                                         _hd2206222101_))))))
                        (_loop2207322153_ _target2207022127_ '()))))
                   (___match3906839069_
                    (lambda (_e2204322226_
                             _hd2204422230_
                             _tl2204522233_
                             _e2204622236_
                             _hd2204722240_
                             _tl2204822243_
                             _e2204922246_
                             _hd2205022250_
                             _tl2205122253_
                             _e2205222256_
                             _hd2205322260_
                             _tl2205422263_)
                      (let ((_L22266_ _hd2205322260_)
                            (_L22268_ _hd2205022250_)
                            (_L22269_ _hd2204722240_))
                        (if (gx#identifier? _L22268_)
                            (___kont3903639037_ _L22266_ _L22268_ _L22269_)
                            (if (gx#stx-pair/null? _tl2205122253_)
                                (if (fx>= (gx#stx-length _tl2205122253_) '2)
                                    (let ((___splice3904039041_
                                           (gx#syntax-split-splice
                                            _tl2205122253_
                                            '2)))
                                      (let ((_tl2207222130_
                                             (##vector-ref
                                              ___splice3904039041_
                                              '1))
                                            (_target2207022127_
                                             (##vector-ref
                                              ___splice3904039041_
                                              '0)))
                                        (if (gx#stx-pair? _tl2207222130_)
                                            (let ((_e2207922133_
                                                   (gx#syntax-e
                                                    _tl2207222130_)))
                                              (let ((_tl2208122140_
                                                     (##cdr _e2207922133_))
                                                    (_hd2208022137_
                                                     (##car _e2207922133_)))
                                                (if (gx#stx-pair?
                                                     _tl2208122140_)
                                                    (let ((_e2208222143_
                                                           (gx#syntax-e
                                                            _tl2208122140_)))
                                                      (let ((_tl2208422150_
                                                             (##cdr _e2208222143_))
                                                            (_hd2208322147_
                                                             (##car _e2208222143_)))
                                                        (if (gx#stx-null?
                                                             _tl2208422150_)
                                                            (___match3910839109_
                                                             _e2204322226_
                                                             _hd2204422230_
                                                             _tl2204522233_
                                                             _e2204622236_
                                                             _hd2204722240_
                                                             _tl2204822243_
                                                             _e2204922246_
                                                             _hd2205022250_
                                                             _tl2205122253_
                                                             ___splice3904039041_
                                                             _target2207022127_
                                                             _tl2207222130_
                                                             _e2207922133_
                                                             _hd2208022137_
                                                             _tl2208122140_
                                                             _e2208222143_
                                                             _hd2208322147_
                                                             _tl2208422150_)
                                                            (_g2203822090_))))
                                                    (_g2203822090_))))
                                            (_g2203822090_))))
                                    (_g2203822090_))
                                (_g2203822090_)))))))
              (if (gx#stx-pair? ___stx3903339034_)
                  (let ((_e2204322226_ (gx#syntax-e ___stx3903339034_)))
                    (let ((_tl2204522233_ (##cdr _e2204322226_))
                          (_hd2204422230_ (##car _e2204322226_)))
                      (if (gx#stx-pair? _tl2204522233_)
                          (let ((_e2204622236_ (gx#syntax-e _tl2204522233_)))
                            (let ((_tl2204822243_ (##cdr _e2204622236_))
                                  (_hd2204722240_ (##car _e2204622236_)))
                              (if (gx#stx-pair? _tl2204822243_)
                                  (let ((_e2204922246_
                                         (gx#syntax-e _tl2204822243_)))
                                    (let ((_tl2205122253_
                                           (##cdr _e2204922246_))
                                          (_hd2205022250_
                                           (##car _e2204922246_)))
                                      (if (gx#stx-pair? _tl2205122253_)
                                          (let ((_e2205222256_
                                                 (gx#syntax-e _tl2205122253_)))
                                            (let ((_tl2205422263_
                                                   (##cdr _e2205222256_))
                                                  (_hd2205322260_
                                                   (##car _e2205222256_)))
                                              (if (gx#stx-null? _tl2205422263_)
                                                  (___match3906839069_
                                                   _e2204322226_
                                                   _hd2204422230_
                                                   _tl2204522233_
                                                   _e2204622236_
                                                   _hd2204722240_
                                                   _tl2204822243_
                                                   _e2204922246_
                                                   _hd2205022250_
                                                   _tl2205122253_
                                                   _e2205222256_
                                                   _hd2205322260_
                                                   _tl2205422263_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2205122253_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2205122253_)
                        '2)
                  (let ((___splice3904039041_
                         (gx#syntax-split-splice _tl2205122253_ '2)))
                    (let ((_tl2207222130_
                           (##vector-ref ___splice3904039041_ '1))
                          (_target2207022127_
                           (##vector-ref ___splice3904039041_ '0)))
                      (if (gx#stx-pair? _tl2207222130_)
                          (let ((_e2207922133_ (gx#syntax-e _tl2207222130_)))
                            (let ((_tl2208122140_ (##cdr _e2207922133_))
                                  (_hd2208022137_ (##car _e2207922133_)))
                              (if (gx#stx-pair? _tl2208122140_)
                                  (let ((_e2208222143_
                                         (gx#syntax-e _tl2208122140_)))
                                    (let ((_tl2208422150_
                                           (##cdr _e2208222143_))
                                          (_hd2208322147_
                                           (##car _e2208222143_)))
                                      (if (gx#stx-null? _tl2208422150_)
                                          (___match3910839109_
                                           _e2204322226_
                                           _hd2204422230_
                                           _tl2204522233_
                                           _e2204622236_
                                           _hd2204722240_
                                           _tl2204822243_
                                           _e2204922246_
                                           _hd2205022250_
                                           _tl2205122253_
                                           ___splice3904039041_
                                           _target2207022127_
                                           _tl2207222130_
                                           _e2207922133_
                                           _hd2208022137_
                                           _tl2208122140_
                                           _e2208222143_
                                           _hd2208322147_
                                           _tl2208422150_)
                                          (_g2203822090_))))
                                  (_g2203822090_))))
                          (_g2203822090_))))
                  (_g2203822090_))
              (_g2203822090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2205122253_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2205122253_)
                                                        '2)
                                                  (let ((___splice3904039041_
                                                         (gx#syntax-split-splice
                                                          _tl2205122253_
                                                          '2)))
                                                    (let ((_tl2207222130_
                                                           (##vector-ref
                                                            ___splice3904039041_
                                                            '1))
                                                          (_target2207022127_
                                                           (##vector-ref
                                                            ___splice3904039041_
                                                            '0)))
                                                      (if (gx#stx-pair?
                                                           _tl2207222130_)
                                                          (let ((_e2207922133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2207222130_)))
                    (let ((_tl2208122140_ (##cdr _e2207922133_))
                          (_hd2208022137_ (##car _e2207922133_)))
                      (if (gx#stx-pair? _tl2208122140_)
                          (let ((_e2208222143_ (gx#syntax-e _tl2208122140_)))
                            (let ((_tl2208422150_ (##cdr _e2208222143_))
                                  (_hd2208322147_ (##car _e2208222143_)))
                              (if (gx#stx-null? _tl2208422150_)
                                  (___match3910839109_
                                   _e2204322226_
                                   _hd2204422230_
                                   _tl2204522233_
                                   _e2204622236_
                                   _hd2204722240_
                                   _tl2204822243_
                                   _e2204922246_
                                   _hd2205022250_
                                   _tl2205122253_
                                   ___splice3904039041_
                                   _target2207022127_
                                   _tl2207222130_
                                   _e2207922133_
                                   _hd2208022137_
                                   _tl2208122140_
                                   _e2208222143_
                                   _hd2208322147_
                                   _tl2208422150_)
                                  (_g2203822090_))))
                          (_g2203822090_))))
                  (_g2203822090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2203822090_))
                                              (_g2203822090_)))))
                                  (_g2203822090_))))
                          (_g2203822090_))))
                  (_g2203822090_)))))))))
